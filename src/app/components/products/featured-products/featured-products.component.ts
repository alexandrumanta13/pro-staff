import { Component, OnInit } from '@angular/core';
import { Injectable } from '@angular/core';
import { Product } from '../product.model'
import { FeaturedProduct } from './featured-product.model'
import { ProductService } from '../../../services/products.service';
import { Subject } from 'rxjs';
import { takeUntil, map } from 'rxjs/operators';
import { HttpResponse } from '@angular/common/http';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-featured-products',
  templateUrl: './featured-products.component.html',
  styleUrls: ['./featured-products.component.scss']
})
export class FeaturedProductsComponent {

  products = [];

  constructor(private httpClient : HttpClient) {  }

  ngOnInit() {
    this.httpClient.get("http://pro-staff.ro/prostaff-api/v1/products/featured").subscribe((data:any) => this.products = data.products);
  }

  public firstPage() {
    return null;
  }

  public previousPage() {
    return null;
  }

  public nextPage() {
    return null;
  }

  public lastPage() {
    return null;
  }

  // constructor(private dataService: ProductService) {
  //   this.dataService.readProducts().subscribe((products) => {
  //     this.products.push(products.products)
  //     console.log(products.products);
  //     this.dataService.first = '1';
  //     this.dataService.current = products.page;
  //     this.dataService.last = products.no_of_pages;
  //   })

  // }

  // public firstPage() {
  //   this.products = [];
  //   this.dataService.sendGetRequestToUrl(this.dataService.first).pipe(takeUntil(this.destroy$)).subscribe((res: HttpResponse<any>) => {
  //     console.log(res);
  //     this.products = res.body;
  //   })
  // }
  // public previousPage() {

  //   if (this.dataService.prev !== undefined && this.dataService.prev !== '') {
  //     this.products = [];
  //     this.dataService.sendGetRequestToUrl(this.dataService.prev).pipe(takeUntil(this.destroy$)).subscribe((res: HttpResponse<any>) => {
  //       console.log(res);
  //       this.products = res.body;
  //     })
  //   }

  // }
  // public nextPage() {
  //   if (this.dataService.next !== undefined && this.dataService.next !== '') {
  //     this.products = [];
  //     this.dataService.sendGetRequestToUrl(this.dataService.next).pipe(takeUntil(this.destroy$)).subscribe((res: HttpResponse<any>) => {
  //       console.log(res);
  //       this.products = res.body;
  //     })
  //   }
  // }
  // public lastPage() {
  //   this.products = [];
  //   this.dataService.sendGetRequestToUrl(this.dataService.last).pipe(takeUntil(this.destroy$)).subscribe((res: HttpResponse<any>) => {
  //     console.log(res);
  //     this.products = res.body;
  //   })
  // }
}
