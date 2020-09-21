import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { CartService } from 'app/services/cart.service';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.scss']
})

export class CartComponent implements OnInit {

  constructor(
    public router: Router,
    private cartService: CartService) { }

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
  }

  emptyCart() {
    this.cartService.emptyCart();
  }


}
