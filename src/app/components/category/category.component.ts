import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ActivatedRoute } from '@angular/router';
import { ModalService } from 'app/services';

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

  constructor(httpClient: HttpClient, private route:ActivatedRoute, private modalService: ModalService) {
    this._httpClient = httpClient;
  }

  ngOnInit() {
    this.route.paramMap.subscribe(params => {
      this._route = params.get('categorySlug');
    });
    this.active = 1;
    this.getProducts();
    this.dynamicProductViewer = 'vopsea-lavabila';
    console.log(this._route )
  }

  getProducts() {
    
      this._httpClient.get(`https://pro-staff.ro/prostaff-api/v1/products/category/${this._route}/page/${this.currentPage}`).subscribe((data: any) => {
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

  openModal(id: string, slug: string) {
    console.log(id, slug)
    this.modalService.open(id, slug);
  }


}
