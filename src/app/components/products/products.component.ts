import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { PaginationComponent } from '../pagination/pagination.component';
import { FormGroup, FormControl } from '@angular/forms';

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.scss']
})
export class ProductsComponent implements OnInit {


  private _httpClient: HttpClient;
  public dynamicProductViewer;
  public active;


  public currentPage: number = 1;
  private previousPage: number = this.currentPage - 1;
  private nextPage: number = this.currentPage + 1;
  public totalPages: number = 1;
  public pages: number[] = [];

  public _products: any = [];

  inputForm: FormGroup;

  constructor(httpClient: HttpClient) {
    this._httpClient = httpClient;
    this.inputForm = new FormGroup({
      rentPrice : new FormControl('3000') ,
      
  });
  }

  ngOnInit() {
    this.active = 1;
    this.getProducts();
    this.dynamicProductViewer = 'vopsea-lavabila';
  }

  output(e){
    console.log(e.target.value)
  }

  // getProducts() {
  //   this._httpClient.get(`http://pro-staff.ro/prostaff-api/v1/products/${this.currentPage}`).subscribe((data: any) => {
  //     this._products = data.products;
  //     this.setTotalPages(data.no_of_pages);
  //     this.setPagesArray(this.totalPages);
  //   });
  // }

  getProducts(id?:string, category_type = "parent")
  {
    if(!id)
    {
        this._httpClient.get("http://pro-staff.ro/prostaff-api/v1/products/category/vopsea-lavabila").subscribe((data:any) => {
        this._products = data.products;
        this.setTotalPages(data.no_of_pages);
      this.setPagesArray(this.totalPages);
      });
    } else {
      if(category_type == "parent")
      {
        this._httpClient.get(`http://pro-staff.ro/prostaff-api/v1/products/category/${id}`).subscribe((data:any) => {
        this._products = data.products;
        this.setTotalPages(data.no_of_pages);
      this.setPagesArray(this.totalPages);
        });
      }
      if(category_type == "child")
      {
        this._httpClient.get(`http://pro-staff.ro/prostaff-api/v1/products/subcategory/${id}`).subscribe((data:any) => {
        this._products = data.products;
        this.setTotalPages(data.no_of_pages);
      this.setPagesArray(this.totalPages);
        });
      }
    }
    return this._products;
  }

  getTotalPages() {
    return this.totalPages;
  }

  setTotalPages(page: number) {
    this.totalPages = page;
  }

  setPagesArray(maxPage: number) {
    this.pages = Array(maxPage).fill(0).map((x, i) => i + 1);
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
