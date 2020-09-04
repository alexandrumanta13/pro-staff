import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-category',
  templateUrl: './category.component.html',
  styleUrls: ['./category.component.scss']
})
export class CategoryComponent implements OnInit {

  private _httpClient: HttpClient;
  private _route;
  
  public currentPage: number = 1;
  private previousPage: number = this.currentPage - 1;
  private nextPage: number = this.currentPage + 1;
  public totalPages: number = 1;
  public pages: number[] = [];

  public _products: any = [];
  public dynamicProductViewer;
  public active;

  constructor(httpClient: HttpClient, private route:ActivatedRoute) {
    this._httpClient = httpClient;
  }

  ngOnInit() {
    this.route.paramMap.subscribe(params => {
      this._route = params.get('categorySlug');
    });
    this.active = 1;
    this.getProducts();
    this.dynamicProductViewer = 'vopsea-lavabila';
  }

  getProducts() {
    
      this._httpClient.get(`http://pro-staff.ro/prostaff-api/v1/products/category/${this._route}/page/${this.currentPage}`).subscribe((data: any) => {
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
    this.getProducts();
  }

  increaseCurrentPage() {
    if (this.currentPage < this.totalPages) {
      this.currentPage += 1;
    }
    this.getProducts();
  }

  decreaseCurrentPage() {
    if (this.currentPage > 1) {
      this.currentPage -= 1;
    }
    this.getProducts();
  }

}
