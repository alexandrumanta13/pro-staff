import { Component, OnInit } from '@angular/core';
import { CartService } from 'app/services/cart.service';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { take, map } from 'rxjs/operators';

import { FormGroup, FormControl, Validators } from '@angular/forms';
import { DatePipe } from '@angular/common';




@Component({
  selector: 'app-confirm-order',
  templateUrl: './confirm-order.component.html',
  styleUrls: ['./confirm-order.component.scss'],
  providers: [DatePipe]
})
export class ConfirmOrderComponent implements OnInit {

  private _httpClient: HttpClient;
  public endpoint: string;
  public euplatesctSend: string;
  public euplatesctAPI: string;
  public shippingAddress: any;
  public shippingAddressPF: any;
  public payment: any;
  public dataBill;
  public dataAll;

  public companyName;
  public J;
  public J1;
  public J2;
  public J3;
  public prefcode;
  public cui;
  public bank;
  public bankAccount;
  public address;
  public county;
  public town;
  order_guid: any;


  constructor(private httpClient: HttpClient, private router: Router, private cartService: CartService, private datePipe: DatePipe) {
    this._httpClient = httpClient;

  }

  public shippingItems$ = this.cartService.shippingItems$;
  public cartItems$ = this.cartService.items$;
  public cartTotal$;
  public totalPrice$;
  public products;
  public ProductId: number;
  public cartProducts = [];
  public order: object = {};
  public changeBillAddress: boolean = true;
  public shippingDetails: object = {};
  status;
  public dateTime: any = new Date();

  form = new FormGroup({
    companyName: new FormControl(''),
    J: new FormControl(''),
    J1: new FormControl(''),
    J2: new FormControl(''),
    J3: new FormControl(''),
    prefcode: new FormControl(''),
    cui: new FormControl(''),
    bank: new FormControl(''),
    bankAccount: new FormControl(''),
    address: new FormControl('', Validators.required),
    county: new FormControl('', Validators.required),
    town: new FormControl('', Validators.required)
  });

  get f() {
    return this.form.controls;
  }


  ngOnInit() {

    this.cartService.numTotal.subscribe(info => {
      this.cartTotal$ = info;
    })

    this.cartService.totalPrice.subscribe(info => {
      this.totalPrice$ = info;
    })

    this.getProducts();
    this.endpoint = "https://pro-staff.ro/prostaff-api/v1/order/add";
    this.euplatesctSend = "https://pro-staff.ro/payment/ep_send.php"
    this.euplatesctAPI = "https://secure.euplatesc.ro/tdsprocess/tranzactd.php";
    
    this.shippingItems$.pipe(
      take(1),
      map((items) => {
        console.log(items)
        if(items) {
          this.payment = items['payment'];
          this.order = items;
          this.shippingAddress = items['customer']['shippingAddress'];
        } else {
          this.router.navigate(['/finalizeaza-comanda']);
        }

      }),
    ).subscribe();

    this.dateTime = this.datePipe.transform(new Date(), 'yyyy-MM-dd HH:mm:ss');
    console.log(this.order['payment']['delivery']);
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

  pay() {
    if (!this.changeBillAddress) {


      this.shippingAddressPF = {
        companyName: this.form.value.companyName,
        registerNumber: this.form.value.J + ' ' + this.form.value.J1 + ' ' + this.form.value.J2 + ' ' + this.form.value.J3,
        cui: this.form.value.prefcode + ' ' + this.form.value.cui,
        bank: this.form.value.bank,
        bankAccount: this.form.value.bankAccount,
        address: this.form.value.address,
        county: this.form.value.county,
        town: this.form.value.town,
      }
      this.order['customer']['invoiceAddress'] = this.shippingAddressPF;
      this.order['hasCompany'] = true;
    }


    this.order['total'] = this.totalPrice$ + this.order['payment']['delivery'];
    console.log(this.order['total'])
    this.order['discount'] = '0';
    this.order['date'] = this.dateTime;

    this.shippingDetails = {
      tracking: 0,
      carrier: 'DPD Courier',
      weight: 0,
      fee: this.order['payment']['delivery'],
      date: this.dateTime
    }

    this.order['shippingDetails'] = this.shippingDetails;

    if (this.order['payment']['method'] == 'card') {
      this.status = [
        {
          name: 'Awaiting payment',
          color: 'blue-500',
        }
      ]
    } else {
      this.status = [
        {
          name: 'Order placed',
          color: 'blue-500',
        }
      ]
    }


    this.order['status'] = this.status;
    this.order['payment']['transactionId'] = Math.floor((Math.random() * 10000) + 1);
    console.log(this.order['payment'])
    this._httpClient.post(`https://pro-staff.ro/prostaff-api/v1/order/add`, this.order).subscribe((data: any) => {

      if (data.status == "success") {
        let dataSend = {
          amount: this.order['total'].toFixed(2),
          invoice_id: data.order_guid
        };
        console.log(dataSend)
        this.cartService.emptyCart();

        this.order_guid = data.order_guid;
        this._httpClient.post(this.euplatesctSend, dataSend)
          .pipe(
            take(1),
            map((response) => {
              console.log(response)
              this.dataAll = response;
              return response;
            }),
          )
          .subscribe((data: any) => {
            if (data) {
              setTimeout(() => {
                
                if (this.order['payment']['method'] == 'card') {
                  
                  this.submit();
                } else {
                  
                  this.router.navigate(['/']);
                }

              }, 1000);
            }
          })

      }
    })
  }

  submit() {
    const epForm = <HTMLFormElement>document.getElementById('epForm');
    //epForm.submit();
  }
}
