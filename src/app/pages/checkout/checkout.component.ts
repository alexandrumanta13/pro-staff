import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { FormGroup, Validators, FormControl, NgForm } from '@angular/forms';
import { Router } from '@angular/router';
import { CartService } from 'app/services/cart.service';
import { BehaviorSubject, Observable, Subscription } from 'rxjs';
import { take, map } from 'rxjs/operators';
import { RadioButtonItem } from 'app/components/radio-button/radio-button.component';
import { DatePipe } from '@angular/common';
import { AuthResponseData, AuthService } from 'app/services';
import { User } from 'app/models';

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.scss'],
  providers: [DatePipe]
})
export class CheckoutComponent implements OnInit {

  public email: string;
  public name: string;
  public lastName: string;
  public address: string;
  public county: string;
  public town: string;
  public phone: string;
  public endpoint: string;
  public dpdEndPoint: string;

  private http: HttpClient;
  private dpdusername: string = '200900001';
  private dpdpassword: string = '9886142696';
  private countrId = '642'; //Romania

  private dpdApi = 'https://api.dpd.ro/v1/location/site/?username=' + this.dpdusername + '&password=' + this.dpdpassword + '&country_id=' + this.countrId + '&name='


  search = '';
  timeout = null;
  show = false;
  isAuthentificated = false;
  private userSub: Subscription;
  addresses: any;
  user: User;
  selectedAddress: any;
  searchTowns: any;
  hasSelectedTown: boolean = false;
  lat: any;
  lng: any;
  weight: number = 0;
  delivery: any;
  discount: any;




  constructor(
    http: HttpClient,
    private router: Router,
    private cartService: CartService,
    private authService: AuthService,
    private datePipe: DatePipe) {
    this.http = http;

  }

  public cartItems$ = this.cartService.items$;
  public cartTotal$: number;
  public totalPrice$: number;
  public products;
  public ProductId: number;
  public cartProducts = [];
  public selectedItem: any = 'card';
  public payment: string;
  public dateTime: any = new Date();

  form: FormGroup = new FormGroup({
    name: new FormControl('', [Validators.required, Validators.minLength(3)]),
    email: new FormControl('', [Validators.required, Validators.email, Validators.pattern(new RegExp("[A-Za-z0-9._%-]+@[A-Za-z0-9._%-]+\\.[a-z]{2,3}"))]),
    phone: new FormControl('', [Validators.required, Validators.pattern(new RegExp("[0-9 ]{10}"))]),
    lastName: new FormControl('', Validators.required),
    address: new FormControl('', Validators.required),
    county: new FormControl('', Validators.required),
    town: new FormControl('', Validators.required)

  });

  get f() {
    return this.form.controls;
  }

  items: RadioButtonItem[] = [
    { name: 'Ramburs', value: 'ramburs' },
    { name: 'Card', value: 'card' }
  ];



  ngOnInit() {
    this.cartService.numTotal.subscribe(info => {
      this.cartTotal$ = info;
    })

    this.cartService.totalPrice.subscribe(info => {
      this.totalPrice$ = info;
    })

    this.getProducts();
    this.endpoint = "https://pro-staff.ro/prostaff-api/v1/order/add";
    // this.online = this.online.value;
    //this.payment = 'card';

    this.dateTime = this.datePipe.transform(new Date(), 'yyyy-MM-dd HH:mm:ss');

    this.userSub = this.authService.user.subscribe(user => {
      this.isAuthentificated = !!user;
      if (this.isAuthentificated) {
        this.user = user;
        this.getAddresses(user);
        console.log(this.user)
      }

    });

    const checkDiscount = JSON.parse(localStorage.getItem("prostaffDiscount"));

    if (checkDiscount) {
        const prevAccepted = checkDiscount.date;
        this.discount = checkDiscount.percent;
        this.totalPrice$ = this.totalPrice$ - (this.totalPrice$ * this.discount / 100);
    }
  }

  getProducts() {
    this.cartItems$.pipe(
      take(1),
      map((products) => {
        if (products.length > 0) {
          this.cartProducts = products;
          this.weight;
          this.cartProducts.map(product => {
            if (product.selectedQnt.includes('L') || product.selectedQnt.includes('Kg') || product.selectedQnt.includes('buc')) {
              let productQnt = parseInt(product.selectedQnt.replace(/\D/g, ""));
              this.weight += productQnt;
            }

          })
          console.log(this.weight)
          this.cartTotal$;
        } else {
          this.router.navigate(['/']);
        }

      }),
    ).subscribe();
  }

  onLogin(form: NgForm) {
    if (!form.valid) {
      return;
    }

    const email = form.value.email;
    const password = form.value.password;



    let authObs: Observable<AuthResponseData>;

    authObs = this.authService.login(email, password);

    authObs.subscribe(user => {
      this.isAuthentificated = !!user;
      this.getAddresses(user)
    }, error => {
      console.log(error)
    });
    form.reset();
  }

  getAddresses(user) {

    this.http.get<any>(`https://pro-staff.ro/prostaff-api/v1/addresses/${user.id}`).subscribe(addresses => {
      this.addresses = addresses.data;
      this.selectedAddress = this.addresses[0];

      this.http.post<any>(`https://pro-staff.ro/shipping/getTown.php`, { town: this.selectedAddress.town })

        .subscribe(data => {
          let townsJson = JSON.parse(data)
          this.searchTowns = townsJson.sites[0];
          console.log(this.searchTowns)

          this.http.post<any>(`https://pro-staff.ro/shipping/priceCalculation.php`, { weight: this.weight, site: this.searchTowns.id })

            .subscribe(data => {
              let deliveryPrice = JSON.parse(data)
              this.delivery = deliveryPrice.calculations[0].price.total;

              console.log(this.delivery)
            })
        })

    })



  }

  selectAddress(addressIndex, event) {
    this.selectedAddress = this.addresses[addressIndex];
    const active = document.querySelectorAll('.shipping-address-box.active');
    for (let i = 0; i < active.length; i++) {
      active[i].classList.remove('active');
    }
    event.target.closest(".shipping-address-box").classList.add('active');
    console.log(this.selectedAddress)

    this.http.post<any>(`https://pro-staff.ro/shipping/getTown.php`, { town: this.selectedAddress.town })

        .subscribe(data => {
          let townsJson = JSON.parse(data)
          this.searchTowns = townsJson.sites[0];
          console.log(this.searchTowns)

          this.http.post<any>(`https://pro-staff.ro/shipping/priceCalculation.php`, { weight: this.weight, site: this.searchTowns.id })

            .subscribe(data => {
              let deliveryPrice = JSON.parse(data)
              this.delivery = deliveryPrice.calculations[0].price.total;

              console.log(this.delivery)
            })
        })

    

  }



  submit() {

    let postVars = {};

    this.cartItems$.subscribe(data => {
      // this.products = data;
      console.log(data);
      const orders = [];
      for (const key in data) {

        orders.push(
          {
            id: data[key].id,
            name: data[key].product_name,
            quantity: data[key].num,
            
            selectedPrice: data[key].selectedPrice,
            selectedColor: data[key].selectedColor,
            selectedColorName: data[key].selectedColorName,
            selectedQnt: data[key].selectedQnt,
           
          }
        )
      }
      postVars['products'] = orders;
    })

    if (this.isAuthentificated) {
      postVars['customer'] = {
        email: this.user.email,
        firstName: this.user.name,
        lastName: this.user.last_name,
        phone: this.user.phone,
      }
    } else {
      postVars['customer'] = {
        email: this.form.value.email,
        firstName: this.form.value.name,
        lastName: this.form.value.lastName,
        phone: this.form.value.phone,
      }
    }


    if (this.selectedAddress) {
      console.log(this.selectedAddress)
      postVars['customer']['shippingAddress'] = {
        address: this.selectedAddress.address,
        county: this.selectedAddress.county,
        town: this.selectedAddress.town,
        lat: this.selectedAddress.y,
        lng: this.selectedAddress.x

      }
    } else {

      postVars['customer']['shippingAddress'] = {
        address: this.form.value.address,
        county: this.form.value.county,
        town: this.search,
        lat: this.lat,
        lng: this.lng

      }
    }

    postVars['payment'] = {
      // 0 if ramburs else we must get te transaction id from eu platesc
      transactionId: '0',
      amount: this.totalPrice$.toFixed(2),
      method: this.selectedItem,
      date: this.dateTime,
      delivery: this.delivery,
      weight: this.weight
    }

    this.cartService.sendOrder(postVars)
    this.router.navigate(['/confirmare-si-plata'])

  }

  open() {
    this.show = true
  }
  hide() {
    this.show = false;
  }
  clear() {
    this.search = '';
    this.form.get('county').setValue('');
    this.hasSelectedTown = false;
    this.form.controls['town'].enable();
  }
  selectTown(selectedTown, county, i) {
    this.search = selectedTown;
    this.hasSelectedTown = true;
    this.form.get('county').setValue(county);
    this.form.get('town').setValue(selectedTown);
    this.form.controls['town'].disable();
    this.lat = this.searchTowns[i].y;
    this.lng = this.searchTowns[i].x;

    this.http.post<any>(`https://pro-staff.ro/shipping/priceCalculation.php`, { weight: this.weight, site: this.searchTowns[i].id })

      .subscribe(data => {
        let deliveryPrice = JSON.parse(data)
        this.delivery = deliveryPrice.calculations[0].price.total;
      })

    this.hide();
  }

  fetchResults(town, count) {
    if (!town) this.hide();
    // let headers = new HttpHeaders();
    // headers.append('Content-Type', 'multipart/form-data');
    // headers.append('Accept', 'application/json');
    // headers.append('Access-Control-Allow-Origin', '* Chrome Extension');
    // headers.append('Content-Transfer-Encoding:', 'binary');
    // headers.append('Content-Type', 'application/x-www-form-urlencoded');
    // headers.append('Content-Type', 'charset=UTF-8');
    // headers.append('Cache-Control', 'public');
    // let options = { headers: headers };

    // this.http.get<any>(`https://api.dpd.ro/v1/location/site/?username=${this.dpdusername}&password=${this.dpdpassword}&country_id=${this.countrId}&name=${town}`, options).subscribe(data =>{
    //   console.log(data)
    // })
    this.http.post<any>(`https://pro-staff.ro/shipping/getTown.php`, { town: town })

      .subscribe(data => {
        let townsJson = JSON.parse(data)
        this.searchTowns = townsJson.sites;
        console.log(this.searchTowns)
      })
  }
  searchFunc(val) {
    if (this.hasSelectedTown === false) {
      this.search = val;
      if (val != '') {
        clearTimeout(this.timeout)
        this.timeout = setTimeout(() => {
          this.show = true

          this.fetchResults(this.search, 10)

        }, 500);
      } else {
        this.clear();
        this.hide();
      }
    }
  }
}
