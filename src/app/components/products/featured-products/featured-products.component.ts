import { Component, OnInit } from '@angular/core';
import { Product } from '../product.model'
import { FeaturedProduct } from '../featured-product.model'
import { ProductService } from '../../../services/products.service';
import { Subject } from 'rxjs';
import { takeUntil, map } from 'rxjs/operators';
import { HttpResponse } from '@angular/common/http';

@Component({
  selector: 'app-featured-products',
  templateUrl: './featured-products.component.html',
  styleUrls: ['./featured-products.component.scss']
})
export class FeaturedProductsComponent implements OnInit {

  products: Product[] = [];


  destroy$: Subject<boolean> = new Subject<boolean>();
  constructor(private dataService: ProductService) {
    this.dataService.readProducts().subscribe((products) => {
      this.products.push(products.products)
      console.log(products.products);
      this.dataService.first = '1';
      this.dataService.current = products.page;
      this.dataService.last = products.no_of_pages;
    })

  }

  ngOnInit() {

    this.dataService.sendGetRequest().pipe(
      map(responseData => {
        console.log(responseData)
      }), takeUntil(this.destroy$)).subscribe((res => {
        //this.products = res.body;
        console.log(res)
      }));

  }


  ngOnDestroy() {
    this.destroy$.next(true);
    // Unsubscribe from the subject
    this.destroy$.unsubscribe();
  }

  public firstPage() {
    this.products = [];
    this.dataService.sendGetRequestToUrl(this.dataService.first).pipe(takeUntil(this.destroy$)).subscribe((res: HttpResponse<any>) => {
      console.log(res);
      this.products = res.body;
    })
  }
  public previousPage() {

    if (this.dataService.prev !== undefined && this.dataService.prev !== '') {
      this.products = [];
      this.dataService.sendGetRequestToUrl(this.dataService.prev).pipe(takeUntil(this.destroy$)).subscribe((res: HttpResponse<any>) => {
        console.log(res);
        this.products = res.body;
      })
    }

  }
  public nextPage() {
    if (this.dataService.next !== undefined && this.dataService.next !== '') {
      this.products = [];
      this.dataService.sendGetRequestToUrl(this.dataService.next).pipe(takeUntil(this.destroy$)).subscribe((res: HttpResponse<any>) => {
        console.log(res);
        this.products = res.body;
      })
    }
  }
  public lastPage() {
    this.products = [];
    this.dataService.sendGetRequestToUrl(this.dataService.last).pipe(takeUntil(this.destroy$)).subscribe((res: HttpResponse<any>) => {
      console.log(res);
      this.products = res.body;
    })
  }
}
