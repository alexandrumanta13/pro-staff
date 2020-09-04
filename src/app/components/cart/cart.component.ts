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

    items$ = this.cartService.items$;
    products;

  ngOnInit(): void {
    this.items$.subscribe(data => {
      console.log(data)
      this.products = data
    })
  }

}
