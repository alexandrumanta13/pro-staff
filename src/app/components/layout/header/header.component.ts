import { Component, OnInit, Output, EventEmitter, Input } from '@angular/core';
import { Router, NavigationEnd, ActivatedRoute } from '@angular/router';
import { CartService } from 'app/services/cart.service';
import { take, map } from 'rxjs/operators';
@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {
  public cartProducts = [];

  constructor(
    public router: Router,
    private cartService: CartService) { }

  items$ = this.cartService.items$;
  //cartTotal$ = this.cartService.calcTotal();
 

  ngOnInit(): void {
    this.getProducts();
   // console.log(this.cartTotal$)
  }

  toggleLink(event, link) {
    const links = document.querySelectorAll('.active');

    for (let i = 0; i < links.length; i++) {
      links[i].classList.remove('active');
    }
    event.target.closest(".parent-link").classList.add('active');
    document.getElementById("collapseMenu").click();
    this.router.navigate([link]);
  }

  getProducts() {
    this.items$.pipe(
      take(1),
      map((products) => {
        this.cartProducts = products;
       // this.cartTotal$ = this.cartService.calcTotal();
      }),
    ).subscribe();
  }


  removeCart(product) {
    this.cartService.removeFromCart(product);
    this.getProducts();
  }


  // calcTotal() {
  //   return this.carProduct.reduce((acc, pr) => acc += pr.num, 0);
  // }

  // removeCart(product) {
  //   this.removeFromCart.emit(product);
  // }

  // calcTotalPrice() {
  //   return this.carProduct.reduce((acc, pr) => acc += pr.price * pr.num, 0).toLocaleString('en-US', { style: 'currency', currency: 'USD' });
  // }

}
