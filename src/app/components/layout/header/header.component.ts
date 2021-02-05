import { Component, OnInit, Output, EventEmitter, Input, HostListener } from '@angular/core';
import { Router, NavigationEnd, ActivatedRoute } from '@angular/router';
import { CartService } from 'app/services/cart.service';
import { take, map } from 'rxjs/operators';
import { fromEvent, Subscription } from 'rxjs';
import { AuthService } from 'app/services';
import { ProductService } from 'app/services/products.service';
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
  toggler: any;
  body: any;
  user: any;
  clientMenu: boolean;
  show: boolean;
  products: any;
  results: boolean;

  constructor(
    public router: Router,
    private cartService: CartService,
    private authService: AuthService,
    private productService: ProductService,) {
    this.scrolling = false;
    
  }
  public items$ = this.cartService.items$;
  public cartTotal$;
  public totalPrice$;
  productSearch: any;


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
      this.user = user;
      
      // console.log(!user);
      // console.log(!!user);
    })

    this.router.events.subscribe((evt) => {
      if (!(evt instanceof NavigationEnd)) {
        return;
      }      
    
      const body = (<HTMLElement>document.querySelector('body'));
      body.classList.remove('mmenu-active');

    });

    
    this.productService.getProductsAll().then(products => {
      this.products = products;
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
  
  onSearchChange() {
    
    this.results = true;
    
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

  toggleMenu(event) {
    this.toggler = event.target
    this.toggler.classList.toggle('active')
    this.body = (<HTMLElement>document.querySelector('body'));
    this.body.classList.toggle('mmenu-active');
  }

  toggleClientMenu() {
    this.clientMenu = !this.clientMenu;
  }

  toggleSearch() {
    this.show = !this.show;
    this.results = false;
  }

}
