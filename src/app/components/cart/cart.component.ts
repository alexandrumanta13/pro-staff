import { HttpClient } from '@angular/common/http';
import { Component, Input, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Router } from '@angular/router';
import { AuthService, NewsletterService } from 'app/services';
import { CartService } from 'app/services/cart.service';
import { ToastrService } from 'ngx-toastr';
import { Subscription } from 'rxjs';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.scss']
})

export class CartComponent implements OnInit {
  @Input() productNum: number;
  model: any = {};
  private token: string;
  private email: string;
  discount: any;
  isAuthentificated: boolean = false;

  constructor(
    public router: Router,
    private cartService: CartService,
    private _newsletterService: NewsletterService,
    private _toaster: ToastrService,
    private _httpClient: HttpClient,
    private _authService: AuthService,
  ) { }

  public items$ = this.cartService.items$;
  public products;
  public totalPrice$;

  ngOnInit(): void {
    this.items$.subscribe(data => {
      this.products = data
    })

    this.cartService.totalPrice.subscribe(info => {
      this.totalPrice$ = info;
    })

    this._authService.user.subscribe(user => {
      this.isAuthentificated = !!user;
      if (this.isAuthentificated) {
        this.token = user.token;
        this.email = user.email;
      }
    });

    if (this.isAuthentificated) {
      const checkDiscount = JSON.parse(localStorage.getItem("prostaffDiscount"));

      if (checkDiscount) {
        if (checkDiscount.email == this.email) {
          const prevAccepted = checkDiscount.date;
          this.discount = checkDiscount.percent;
          this.totalPrice$ = this.totalPrice$ - (this.totalPrice$ * this.discount / 100);
        }
      }
    }
  }

  emptyCart() {
    this.cartService.emptyCart();
  }

  addToCart(product, event, isBlur: boolean = false) {
    if (isBlur) {
      this.cartService.addToCart(product, event.target.value);
    } else {
      this.cartService.addToCart(product, event);
    }
  }

  addOneToCart(product) {
    this.cartService.addToCart(product, product.num + 1);
  }

  removeOneFromCart(product) {
    this.cartService.addToCart(product, product.num - 1);
  }

  onSubmit(form: NgForm) {
    let headers = new Headers();
    headers.set('X-Auth', JSON.stringify(this.token));
    let options = { headers: headers };

    this._newsletterService.useCoupon(this.email, this.model.coupon, options).then(data => {
      if (data['success']) {
        this.discount = data['percent'];
        this.totalPrice$ = this.totalPrice$ - (this.totalPrice$ * this.discount / 100);

        const currentTime = new Date();
        const date = currentTime.setTime(currentTime.getTime() + (10 * 60000))
        localStorage.setItem("prostaffDiscount", JSON.stringify({ 'date': date, 'type': data['type'], 'percent': data['percent'], 'email': this.email }));

        this._toaster.success('', `${data['message']}`, {
          timeOut: 8000,
          positionClass: 'toast-bottom-right'
        });

      } else {
        this._toaster.warning('', `${data['message']}`, {
          timeOut: 3000,
          positionClass: 'toast-bottom-right'
        });
      }

      form.reset();
    })
  }


}
