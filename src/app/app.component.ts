import { Component } from '@angular/core';
import { SEOServiceService } from './seoservice.service';
import { Router, NavigationEnd, ActivatedRoute } from '@angular/router';
import { filter, map, mergeMap } from 'rxjs/operators';


declare var $: any;
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'asdadax';
  constructor(
    private router: Router,
    private activatedRoute: ActivatedRoute,
    private _seoService: SEOServiceService
  ) { }



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
        $.getScript('../assets/js/jquery.min.js');
        $.getScript('../assets/js/bootstrap.bundle.min.js');
        $.getScript('../assets/js/plugins.min.js');
        $.getScript('../assets/js/main.js');
      });
  }
}
