import { Component, OnInit, Output, EventEmitter, Input, HostListener } from '@angular/core';
import { Router, NavigationEnd, ActivatedRoute } from '@angular/router';
import { CartService } from 'app/services/cart.service';
import { take, map } from 'rxjs/operators';
import { fromEvent } from 'rxjs';
@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {
  public cartProducts = [];
  scrolling: boolean;

  constructor(
    public router: Router,
    private cartService: CartService) { 
      this.scrolling = false;
    }
  public items$ = this.cartService.items$;
  public cartTotal$;
  public totalPrice$;
  

  ngOnInit() {
    this.getProducts();
    this.cartService.numTotal.subscribe(info => {
      this.cartTotal$ = info;
    })

    this.cartService.totalPrice.subscribe(info => {
      this.totalPrice$ = info;
    })
    
  }

  isSticky: boolean = false;

  @HostListener('window:scroll', ['$event']) onScrollEvent($event){
    // console.log($event['Window']);
     console.log("scrolling");
     
     if(!this.scrolling) {
      this.scrolling = true;
    }
     
  }

  @HostListener('scroll')
  public asd(): void {
  console.log('scrolling');
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
        this.cartTotal$;
      }),
    ).subscribe();
  }


  removeCart(product) {
    this.cartService.removeFromCart(product);
    this.getProducts();
  }

}
