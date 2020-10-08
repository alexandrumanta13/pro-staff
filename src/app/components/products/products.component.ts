import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { PaginationComponent } from '../pagination/pagination.component';
import { FormGroup, FormControl } from '@angular/forms';
import { ModalService } from 'app/services';
import { BehaviorSubject } from 'rxjs';

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.scss']
})
export class ProductsComponent implements OnInit {


  private _httpClient: HttpClient;
  public dynamicProductViewer;
  public active;
  onCategoryChanged: BehaviorSubject<any>;
  items$: any;
  category: any;


  public currentPage: number = 1;
  private previousPage: number = this.currentPage - 1;
  private nextPage: number = this.currentPage + 1;
  public totalPages: number = 1;
  public pages: number[] = [];

  public _products: any = [];

  inputForm: FormGroup;

  constructor(httpClient: HttpClient, private modalService: ModalService) {
    this._httpClient = httpClient;
    this.onCategoryChanged = new BehaviorSubject({});
    this.inputForm = new FormGroup({
      rentPrice: new FormControl('3000'),

    });

  }

  ngOnInit() {
    this.active = 1;
    this.getProducts();
    this.dynamicProductViewer = 'vopsea-lavabila';
  }

  output(e) {
    console.log(e.target.value)
  }

  getCategory(slug) {
    this._httpClient.get('https://pro-staff.ro/prostaff-api/v1/category/' + slug)
      .subscribe((response: any) => {

        this.onCategoryChanged.next(response.data);
        this.items$ = this.onCategoryChanged.asObservable();
        this.items$.subscribe(data => {
          this.category = data;
          console.log(this.category)
        })

      });
  }

  // getProducts() {
  //   this._httpClient.get(`http://pro-staff.ro/prostaff-api/v1/products/${this.currentPage}`).subscribe((data: any) => {
  //     this._products = data.products;
  //     this.setTotalPages(data.no_of_pages);
  //     this.setPagesArray(this.totalPages);
  //   });
  // }

  getProducts(id?: string, category_type = "parent") {
    
    this._httpClient.get('https://pro-staff.ro/prostaff-api/v1/category/' + id)
      .subscribe((response: any) => {
        console.log(response)
        this.onCategoryChanged.next(response.data);
        this.items$ = this.onCategoryChanged.asObservable();
        this.items$.subscribe(data => {
          console.log(data)
          this.category = data;
         
        })

      });
    if (!id) {
      this._httpClient.get(`https://pro-staff.ro/prostaff-api/v1/products/${this.currentPage}`).subscribe((data: any) => {
        this._products = data.products;
        this.setTotalPages(data.no_of_pages);
        this.setPagesArray(this.totalPages);

      });
    }
    else if (category_type == "parent") {
      this._httpClient.get(`https://pro-staff.ro/prostaff-api/v1/products/category/${id}`).subscribe((data: any) => {
        this._products = data.products;
        this.setTotalPages(data.no_of_pages);
        this.setPagesArray(this.totalPages);
      });
    }
    else if (category_type == "child") {
      this._httpClient.get(`https://pro-staff.ro/prostaff-api/v1/products/subcategory/${id}`).subscribe((data: any) => {
        this._products = data.products;
        this.setTotalPages(data.no_of_pages);
        this.setPagesArray(this.totalPages);
      });
    } else {
      this._httpClient.get(`https://pro-staff.ro/prostaff-api/v1/products/${this.currentPage}`).subscribe((data: any) => {
        this._products = data.products;
        this.setTotalPages(data.no_of_pages);
        this.setPagesArray(this.totalPages);
      });
    }
    document.getElementById("products").scrollIntoView();
    console.log(this._products)
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

  openModal(id: string, slug: string) {
    this.modalService.open(id, slug);
  }
}
