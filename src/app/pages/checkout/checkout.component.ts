import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { FormGroup, Validators, FormControl } from '@angular/forms';
import { Router } from '@angular/router';
import { CartService } from 'app/services/cart.service';
import { BehaviorSubject } from 'rxjs';
import { take, map } from 'rxjs/operators';
import { RadioButtonItem } from 'app/components/radio-button/radio-button.component';
import { DatePipe } from '@angular/common';

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.scss'],
  providers:[DatePipe]
})
export class CheckoutComponent implements OnInit {

  public email: string;
  public name: string;
  public lastName: string;
  public address: string;
  public city: string;
  public town: string;
  public phone: string;
  public endpoint: string;
  public dpdEndPoint: string;

  private http: HttpClient;



  constructor(http: HttpClient, private router: Router, private cartService: CartService, private datePipe: DatePipe) {
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
    city: new FormControl('', Validators.required),
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
    
  }

  getProducts() {
    this.cartItems$.pipe(
      take(1),
      map((products) => {
        this.cartProducts = products;
        this.cartTotal$;
      }),
    ).subscribe();
  }



  submit() {

    let postVars = {};

    this.cartItems$.subscribe(data => {
      // this.products = data;
      const orders = [];
      for (const key in data) {
        console.log(data[key].id);
        orders.push({ id: data[key].id, name: data[key].product_name, quantity: data[key].num, price: data[key].price })
      }
      postVars['products'] = orders;
    })


    postVars['customer'] = {
      email: this.form.value.email,
      firstName: this.form.value.name,
      lastName: this.form.value.lastName,
      phone: this.form.value.phone,
    }

    postVars['customer']['shippingAddress'] = {
      address: this.form.value.address,
      city: this.form.value.city,
      town: this.form.value.town,
      lat: 44.4411895,
      lng: 26.1746886

    }
    postVars['payment'] = {
      // 0 if ramburs else we must get te transaction id from eu platesc
      transactionId: '0',
      amount       :  this.totalPrice$,
      method       :  this.selectedItem,
      date         :  this.dateTime
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

}
