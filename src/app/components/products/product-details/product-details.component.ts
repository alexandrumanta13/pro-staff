import { Component, OnInit } from '@angular/core';

import { ActivatedRoute } from '@angular/router';
import { HttpClient } from '@angular/common/http';


@Component({
  selector: 'app-product-details',
  templateUrl: './product-details.component.html',
  styleUrls: ['./product-details.component.scss']
})
export class ProductDetailsComponent implements OnInit {


  private _productSlug: string;
  private _httpClient: HttpClient;
  private _route;
  public product: any = [];

  constructor(httpClient: HttpClient, route: ActivatedRoute) {
    this._httpClient = httpClient;
    this._route = route;
  }

  ngOnInit() {
    this._route.paramMap.subscribe(params => {
      this._productSlug = params.get('productName');
    });
    this.getProducts();
  }

  getProducts() {
    this._httpClient.get(`http://pro-staff.ro/prostaff-api/v1/product/${this._productSlug}`).subscribe((data:any) => {
      this.product = data.product;
    });
    console.log(this.product);
  }

}
