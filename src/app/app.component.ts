import { Component, HostListener, Inject, PLATFORM_ID } from '@angular/core';
import { SEOServiceService } from './services/seoservice.service';
import { Router, NavigationEnd, ActivatedRoute, RouterEvent } from '@angular/router';
import { filter, map, mergeMap } from 'rxjs/operators';
import { Role } from './models/role';
import { AuthService } from './services';
import { User } from './models';
import { NgcCookieConsentService, NgcInitializeEvent, NgcNoCookieLawEvent, NgcStatusChangeEvent } from 'ngx-cookieconsent';
import { Subscription } from 'rxjs';


import { isPlatformBrowser } from '@angular/common';



declare var $: any;
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  currentUser: User;
  public cartProducts = [];
  private _route: string;


  private popupOpenSubscription: Subscription;
  private popupCloseSubscription: Subscription;
  private initializeSubscription: Subscription;
  private statusChangeSubscription: Subscription;
  private revokeChoiceSubscription: Subscription;
  private noCookieLawSubscription: Subscription;



  constructor(
    public router: Router,
    private activatedRoute: ActivatedRoute,
    private _seoService: SEOServiceService,
    private authService: AuthService,
    private ccService: NgcCookieConsentService,
    @Inject(PLATFORM_ID) private platformId: Object) {
      this.router.events.pipe(
        filter((event:RouterEvent) => event instanceof NavigationEnd)
      ).subscribe(event => {
        if (isPlatformBrowser(this.platformId)) {
          window.scroll(0, 0);
        }
      });
    }
 

  


  onScroll(e) {
    const header = (<HTMLElement>document.querySelector('.sticky-header'));
    const headerHeight = header.getBoundingClientRect().height
    if (e.target.scrollTop > headerHeight) {
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

        this.moveToTop()
        if (!event['dynamic']) {
          this._seoService.updateTitle(event['title']);
          this._seoService.updateOgUrl(event['ogUrl']);
          //Updating Description tag dynamically with title
          this._seoService.updateDescription(event['title'] + event['description'])
          this._seoService.updateKeywords(event['keywords'])
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

    this.router.events.subscribe((evt) => {
      if (!(evt instanceof NavigationEnd)) {
        return;
      }

      window.scrollTo(0, 0);
    });

    // subscribe to cookieconsent observables to react to main events
    this.popupOpenSubscription = this.ccService.popupOpen$.subscribe(
      () => {
        // you can use this.ccService.getConfig() to do stuff...
        console.log('popupOpen');
      });

    this.popupCloseSubscription = this.ccService.popupClose$.subscribe(
      () => {
        // you can use this.ccService.getConfig() to do stuff...
        console.log('popuClose');
      });

    this.initializeSubscription = this.ccService.initialize$.subscribe(
      (event: NgcInitializeEvent) => {
        // you can use this.ccService.getConfig() to do stuff...
        console.log(`initialize: ${JSON.stringify(event)}`);
      });

    this.statusChangeSubscription = this.ccService.statusChange$.subscribe(
      (event: NgcStatusChangeEvent) => {
        // you can use this.ccService.getConfig() to do stuff...
        console.log(`statusChange: ${JSON.stringify(event)}`);
      });

    this.revokeChoiceSubscription = this.ccService.revokeChoice$.subscribe(
      () => {
        // you can use this.ccService.getConfig() to do stuff...
        console.log(`revokeChoice`);
      });

    this.noCookieLawSubscription = this.ccService.noCookieLaw$.subscribe(
      (event: NgcNoCookieLawEvent) => {
        // you can use this.ccService.getConfig() to do stuff...
        console.log(`noCookieLaw: ${JSON.stringify(event)}`);
      });

  }

  ngOnDestroy() {
    // unsubscribe to cookieconsent observables to prevent memory leaks
    this.popupOpenSubscription.unsubscribe();
    this.popupCloseSubscription.unsubscribe();
    this.initializeSubscription.unsubscribe();
    this.statusChangeSubscription.unsubscribe();
    this.revokeChoiceSubscription.unsubscribe();
    this.noCookieLawSubscription.unsubscribe();
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

  onDeactivate() {
    document.body.scrollTop = 0;
    // Alternatively, you can scroll to top by using this other call:
    // window.scrollTo(0, 0)
  }

  logout() {
    // this.authService.logout();
    this.router.navigate(['login']);
  }

  moveToTop() {
    const scrollToContainer = document.querySelector('.page-wrapper');
    scrollToContainer.scrollIntoView({ behavior: "smooth", block: "start", inline: "nearest" });
    if (window.innerWidth > 991 && scrollToContainer) {


    }
    window.scrollTo(0, 0)
  }
}
