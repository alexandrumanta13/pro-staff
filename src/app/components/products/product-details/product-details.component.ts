import { Component, OnInit } from '@angular/core';

import { ActivatedRoute } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { map } from 'rxjs/operators';
import { ProductService } from 'app/services/products.service';
import { Product } from 'app/models/product';


@Component({
  selector: 'app-product-details',
  templateUrl: './product-details.component.html',
  styleUrls: ['./product-details.component.scss']
})
export class ProductDetailsComponent implements OnInit {


  private _productSlug: string;
  private _httpClient: HttpClient;
  private _route;
  //public product: any = [];
  public product: Product;

  constructor(
    httpClient: HttpClient, 
    route: ActivatedRoute,  
    private productService: ProductService,
    ) {
    this._httpClient = httpClient;
    this._route = route;
  }

  ngOnInit() {
    this._route.paramMap.subscribe(params => {
      this._productSlug = params.get('productName');
    });

    this.productService.getProductDetails(this._productSlug)
    .subscribe(data => {
      this.product = data;
    });
  }
}
