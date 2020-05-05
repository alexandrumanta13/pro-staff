import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-links',
  templateUrl: './links.component.html',
  styleUrls: ['./links.component.scss']
})
export class LinksComponent {

  @Input('linkTitle') title: string;
  @Input('linkIcon') icon: string;

}
