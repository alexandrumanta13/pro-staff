import { Component } from '@angular/core';
import { SEOServiceService } from './services/seoservice.service';
import { Router, NavigationEnd, ActivatedRoute } from '@angular/router';
import { filter, map, mergeMap } from 'rxjs/operators';
import { Role } from './models/role';
import { AuthenticationService } from './services';
import { User } from './models';


declare var $: any;
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  currentUser: User;
  constructor(
    public router: Router,
    private activatedRoute: ActivatedRoute,
    private _seoService: SEOServiceService,
    private authService: AuthenticationService,
  ) {
    this.authService.currentUser.subscribe(x => this.currentUser = x);
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
       
       // $.getScript('../assets/js/main.js');
      });
  }

  ngAfterViewInit() {
 
   // $.getScript('../assets/js/main.js');
  }


  get isAuthorized() {
    return this.authService.isAuthorized();
  }

  get isAdmin() {
    return this.authService.hasRole(Role.Admin);
  }



  logout() {
    this.authService.logout();
    this.router.navigate(['login']);
  }
}
