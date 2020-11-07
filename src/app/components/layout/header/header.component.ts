import { Component, OnInit, Output, EventEmitter, Input, HostListener } from '@angular/core';
import { Router, NavigationEnd, ActivatedRoute } from '@angular/router';
import { CartService } from 'app/services/cart.service';
import { take, map } from 'rxjs/operators';
import { fromEvent, Subscription } from 'rxjs';
import { AuthService } from 'app/services';
@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {
  public cartProducts = [];
  scrolling: boolean;
  isAuthentificated = false;
  private userSub: Subscription;

  constructor(
    public router: Router,
    private cartService: CartService,
    private authService: AuthService) {
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
      this.totalPrice$ = info.toFixed(2);
    });

    this.userSub = this.authService.user.subscribe(user => {
      this.isAuthentificated = !!user;
      console.log(!user);
      console.log(!!user);
    })

  }

  isSticky: boolean = false;

  @HostListener('window:scroll', ['$event']) onScrollEvent($event) {
    // console.log($event['Window']);
    console.log("scrolling");

    if (!this.scrolling) {
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

  onLogout() {
    this.authService.logout();
  }

  ngOnDestroy() {
    this.userSub.unsubscribe();
  }

}
