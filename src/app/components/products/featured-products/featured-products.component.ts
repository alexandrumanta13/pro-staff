import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { Injectable } from '@angular/core';
import { Product } from '../product.model'
import { FeaturedProduct } from './featured-product.model'
import { ProductService } from '../../../services/products.service';
import { ModalService } from '../../../services/modal.service';
import { Subject } from 'rxjs';
import { takeUntil, map } from 'rxjs/operators';
import { HttpResponse } from '@angular/common/http';

import { HttpClient } from '@angular/common/http';
import { OwlOptions } from 'ngx-owl-carousel-o';


@Component({
  selector: 'app-featured-products',
  templateUrl: './featured-products.component.html',
  styleUrls: ['./featured-products.component.scss']
})
export class FeaturedProductsComponent {


  public _featuredProducts = [];
  productAlias: string;


  customOptions: OwlOptions = {
    loop: true,
    autoplay: true,
    center: true,
    dots: false,
    autoHeight: true,
    autoWidth: true,
    nav: false,
    responsive: {
      0: {
        items: 1,
      },
      414: {
        items: 1,
      },
      600: {
        items: 3,
      },
      1000: {
        items: 5,
      }
    }
  }

  constructor(
    private httpClient: HttpClient,
    private productService: ProductService,
    private modalService: ModalService
  ) { }


  ngOnInit() {
    this.getFeaturedProducts();
  }


  openModal(id: string, slug: string) {
    this.modalService.open(id, slug);
  }

  getFeaturedProducts() {
    this.httpClient.get("https://pro-staff.ro/prostaff-api/v1/products/featured").subscribe((data: any) => {
      console.log(data)
      this._featuredProducts = data.products;
    });
    return this._featuredProducts;
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
