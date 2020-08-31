import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-category-products',
  templateUrl: './category-products.component.html',
  styleUrls: ['./category-products.component.scss']
})
export class CategoryProductsComponent implements OnInit {
  private _httpClient: HttpClient;
  private _route;

  private _categorySlug: string;
  
  public currentPage: number = 1;
  private previousPage: number = this.currentPage - 1;
  private nextPage: number = this.currentPage + 1;
  public totalPages: number = 1;
  public pages: number[] = [];

  public _products: any = [];

  constructor(httpClient: HttpClient, route: ActivatedRoute) {
    this._httpClient = httpClient;
  }

  ngOnInit() {
    this._route.paramMap.subscribe(params => {
      this.getProducts(params.get('categorySlug'));
    });
  }

  getProducts(category: string) {
      this._httpClient.get(`http://pro-staff.ro/prostaff-api/v1/products/category/${category}/page/${this.currentPage}`).subscribe((data: any) => {
          this._products = data.products;
          this.setTotalPages(data.no_of_pages);
          this.setPagesArray(this.totalPages);
      });
  }

  getTotalPages()
  {
    return this.totalPages;
  }

  setTotalPages(page: number)
  {
    this.totalPages = page;
  }

  setPagesArray(maxPage: number)
  {
    this.pages = Array(maxPage).fill(0).map((x,i) => i+1);
  }

  setCurrentPage(page: number) {
    if (this.currentPage <= this.totalPages) {
      this.currentPage = page;
    }
    this.getProducts(this._categorySlug);
  }

  increaseCurrentPage() {
    if (this.currentPage < this.totalPages) {
      this.currentPage += 1;
    }
    this.getProducts(this._categorySlug);
  }

  decreaseCurrentPage() {
    if (this.currentPage > 1) {
      this.currentPage -= 1;
    }
    this.getProducts(this._categorySlug);
  }

}
