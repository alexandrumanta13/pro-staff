import { Component, HostListener, Inject } from '@angular/core';
import { SEOServiceService } from './services/seoservice.service';
import { Router, NavigationEnd, ActivatedRoute } from '@angular/router';
import { filter, map, mergeMap } from 'rxjs/operators';
import { Role } from './models/role';
import { AuthService } from './services';
import { User } from './models';



declare var $: any;
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  currentUser: User;
  public cartProducts = [];
  


  constructor(
    public router: Router,
    private activatedRoute: ActivatedRoute,
    private _seoService: SEOServiceService,
    private authService: AuthService,
   
  ) {
    // this.authService.currentUser.subscribe(x => this.currentUser = x);
  }


  onScroll(e) {
    const header = (<HTMLElement>document.querySelector('.sticky-header'));
    const headerHeight= header.getBoundingClientRect().height
    if(e.target.scrollTop > headerHeight) {
      header.classList.add('fixed')
    } else {
      header.classList.remove('fixed')
    }
  }

 
  ngOnInit() {
    this.router.events.pipe(
      filter((event) => event instanceof NavigationEnd),
      map(() => this.activatedRoute),
      map((route) => {
        while (route.firstChild) route = route.firstChild;
        return route;
      }),
      filter((route) => route.outlet === 'primary'),
      mergeMap((route) => route.data)
    )
      .subscribe((event) => {
        this._seoService.updateTitle(event['title']);
        this._seoService.updateOgUrl(event['ogUrl']);
        //Updating Description tag dynamically with title
        this._seoService.updateDescription(event['title'] + event['description'])
      });

    this.router.events.subscribe((evt) => {
      if (!(evt instanceof NavigationEnd)) {
        return;
      }
      window.scrollTo(0, 0)
    });

    this.router.events.pipe(
      filter(event => event instanceof NavigationEnd),
      map(() => this.activatedRoute),
    )
      .subscribe((event) => {

        $.getScript('../assets/js/main.js');
        
        $.getScript('https://s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5f50ef52d1631692')
      });

      this.authService.autoLogin();
  }

  ngAfterViewInit() {

    $.getScript('../assets/js/main.js');

    $.getScript('https://s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5f50ef52d1631692')

  }

  addToCart(product) {
    const existing = this.cartProducts.find(({ product_name }) => product.product_name === product_name);
    if (existing) {
      existing.num += 1;
      return;
    }
    this.cartProducts.push({ ...product, num: 1 });
  }

  removeFromCart(product) {
    this.cartProducts = this.cartProducts.filter(({ product_name }) => product_name !== product.product_name)
  }


  // get isAuthorized() {
  //   return this.authService.isAuthorized();
  // }

  // get isAdmin() {
  //   return this.authService.hasRole(Role.Admin);
  // }

  onActivate(event) {
    let scrollToTop = window.setInterval(() => {
      let pos = window.pageYOffset;
      if (pos > 0) {
        window.scrollTo(0, pos - 20); // how far to scroll on each step
      } else {
        window.clearInterval(scrollToTop);
      }
    }, 16);
  }

  logout() {
   // this.authService.logout();
    this.router.navigate(['login']);
  }
}
