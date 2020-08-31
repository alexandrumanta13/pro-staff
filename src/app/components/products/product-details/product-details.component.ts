import { Component, OnInit } from '@angular/core';

import { ActivatedRoute } from '@angular/router';

import { Product } from '../../products/product.model'
import { HttpClient } from '@angular/common/http';


@Component({
  selector: 'app-product-details',
  templateUrl: './product-details.component.html',
  styleUrls: ['./product-details.component.scss']
})
export class ProductDetailsComponent implements OnInit {


  private _productSlug: string;
  private _httpClient: HttpClient
  public product: any = [];



  constructor(private httpClient: HttpClient, private route: ActivatedRoute) {
  }

  ngOnInit(): void {
    this.route.paramMap.subscribe(params => {
      this._productSlug = params.get('productName');
    });
  }

  getProducts() {
    this._httpClient.get(`http://pro-staff.ro/prostaff-api/v1/product/details/${this._productSlug}`).subscribe((data: any) => {
      this.product = data.products;
    });
  }

}
