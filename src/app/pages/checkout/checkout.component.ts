import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { FormGroup, Validators, FormControl } from '@angular/forms';
import { Router } from '@angular/router';
import { CartService } from 'app/services/cart.service';

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.scss']
})
export class CheckoutComponent implements OnInit {

  email: string;
  name: string;
  lastName: string;
  address: string;
  city: string;
  zip: string;
  phone: string;
  endpoint: string;

  http: HttpClient;


  constructor(http: HttpClient, private router: Router, private cartService: CartService) {
    this.http = http;
  }

  items$ = this.cartService.items$;
  products;
  ProductId: number;

  form = new FormGroup({
    name: new FormControl('', [Validators.required, Validators.minLength(3)]),
    email: new FormControl('', [Validators.required, Validators.email, Validators.pattern(new RegExp("[A-Za-z0-9._%-]+@[A-Za-z0-9._%-]+\\.[a-z]{2,3}"))]),
    phone: new FormControl('', [Validators.required, Validators.pattern(new RegExp("[0-9 ]{10}"))]),
    lastName: new FormControl('', Validators.required),
    address: new FormControl('', Validators.required),
    city: new FormControl('', Validators.required),
    zip: new FormControl('', Validators.required)
  });

  get f() {
    return this.form.controls;
  }

  ngOnInit(): void {
    this.endpoint = "https://pro-staff.ro/prostaff-api/v1/order/add";
  }

  submit() {

    let postVars = {};
    
    postVars['order'] = {}

    this.items$.subscribe(data => {
      this.products = data;
      const orders = [];
      for(const key in data) {
        console.log(data[key].id);
        orders.push({ProductId: data[key].id, quantity: data[key].num})
      }
      postVars['order'] = orders;
    })
    

    postVars['order-information'] = {
      email: this.form.value.email,
      name: this.form.value.name,
      lastName: this.form.value.lastName,
      address: this.form.value.address,
      city: this.form.value.city,
      zip: this.form.value.zip,
      phone: this.form.value.phone,
    }
    console.log(postVars);

    this.http.post(this.endpoint, postVars)
      .subscribe(
        response => {
          //this.closeModal.nativeElement.click()
          // document.getElementById("closeModal").click()
          // this.router.navigate(['/thank-you'])
        }
      )

  }

}
