import { Component, OnInit } from '@angular/core';
import { Router } from "@angular/router";

@Component({
  selector: 'app-service-biocid',
  templateUrl: './service-biocid.component.html',
  styleUrls: ['./service-biocid.component.scss']
})
export class ServiceBiocidComponent implements OnInit {

  constructor(public router: Router) { }

  ngOnInit(): void {
  }

}
