import { Component, OnInit } from '@angular/core';
import { Router } from "@angular/router";

@Component({
  selector: 'app-menu-services',
  templateUrl: './menu-services.component.html',
  styleUrls: ['./menu-services.component.scss']
})
export class MenuServicesComponent implements OnInit {

  constructor(public router: Router) { }

  ngOnInit(): void {
  }

}
