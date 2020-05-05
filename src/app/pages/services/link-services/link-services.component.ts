import { Component, OnInit, ContentChildren, QueryList } from '@angular/core';
import { LinksComponent } from './links/links.component';
@Component({
  selector: 'app-link-services',
  templateUrl: './link-services.component.html',
  styleUrls: ['./link-services.component.scss']
})
export class LinkServicesComponent implements OnInit {
  @ContentChildren(LinksComponent) links: QueryList<LinksComponent>;

  constructor() { }

  ngOnInit(): void {
  }

}
