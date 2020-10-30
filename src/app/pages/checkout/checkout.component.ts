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
  
  private dpdApi = 'https://api.dpd.ro/v1/location/site/?username='+ this.dpdusername +'&password='+ this.dpdpassword +'&country_id='+ this.countrId +'&name='


  search = '';
  timeout = null;
  show = false;
  isAuthentificated = false;
  private userSub: Subscription;
  addresses: any;
  user: User;
  selectedAddress: any;



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

  form = new FormGroup({
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
      if(this.isAuthentificated) {
        this.user = user;
        this.getAddresses(user);
        console.log(this.user)
      }
      
    });
  }

  getProducts() {
    this.cartItems$.pipe(
      take(1),
      map((products) => {
        console.log(products)
        if(products.length > 0) {
          this.cartProducts = products;
          this.cartTotal$;
        } else {
          this.router.navigate(['/']);
        }
        
      }),
    ).subscribe();
  }

  onLogin(form: NgForm) {
    if(!form.valid) {
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
    
    this.http.get<any>(`https://pro-staff.ro/prostaff-api/v1/addresses/${user.id}`).subscribe(addresses=>{
      this.addresses = addresses.data;
      this.selectedAddress = this.addresses[0];
      console.log(this.selectedAddress)
    })
  }

  selectAddress(addressIndex, event) {
    this.selectedAddress = this.addresses[addressIndex];
    const active = document.querySelectorAll('.active');
    for (let i = 0; i < active.length; i++) {
      active[i].classList.remove('active');
    }
    event.target.closest(".shipping-address-box").classList.add('active');
    console.log(this.selectedAddress)
  }



  submit() {

    let postVars = {};

    this.cartItems$.subscribe(data => {
      // this.products = data;
      const orders = [];
      for (const key in data) {
        console.log(data[key].id);
        orders.push({ id: data[key].id, name: data[key].product_name, quantity: data[key].num, price: data[key].selectedPrice })
      }
      postVars['products'] = orders;
    })

    if(this.isAuthentificated) {
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


    if(this.selectedAddress != '{}') {
      console.log('tresadada')
      postVars['customer']['shippingAddress'] = {
        address: this.selectedAddress.address,
        county: this.selectedAddress.county,
        town: this.selectedAddress.town,
        lat: 44.4411895,
        lng: 26.1746886
  
      }
    } else {
      postVars['customer']['shippingAddress'] = {
        address: this.form.value.address,
        county: this.form.value.county,
        town: this.form.value.town,
        lat: 44.4411895,
        lng: 26.1746886
  
      }
    }
    
    postVars['payment'] = {
      // 0 if ramburs else we must get te transaction id from eu platesc
      transactionId: '0',
      amount: this.totalPrice$,
      method: this.selectedItem,
      date: this.dateTime
    }


    // this.http.post(this.endpoint, postVars)
    //   .subscribe(
    //     response => {
    //       //this.closeModal.nativeElement.click()
    //       // document.getElementById("closeModal").click()
    //       // this.router.navigate(['/thank-you'])
    //     }
    //   )
    this.cartService.sendOrder(postVars)
    this.router.navigate(['/confirmare-si-plata'])

  }

  open() {
    this.show = true
  }
  hide() {
    this.show = false
  }
  clear() {
    this.search = ''
  }

  fetchResults(town, count) {
    if (!town) this.hide();
    let headers = new HttpHeaders();
    headers.append('Content-Type', 'multipart/form-data');
    headers.append('Accept', 'application/json');
    headers.append('Access-Control-Allow-Origin', '*')
    let options = { headers: headers };
   
    this.http.get<any>(`https://api.dpd.ro/v1/location/site/?username=${this.dpdusername}&password=${this.dpdpassword}&country_id=${this.countrId}&name=${town}`, options).subscribe(data =>{
      console.log(data)
    })
  }
  searchFunc(val) {
    this.search = val;
      if(val != ''){
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
