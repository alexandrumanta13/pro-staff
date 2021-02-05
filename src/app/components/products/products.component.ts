import { Component, OnInit, ViewChild } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { PaginationComponent } from '../pagination/pagination.component';
import { FormGroup, FormControl } from '@angular/forms';
import { ModalService } from 'app/services';
import { BehaviorSubject } from 'rxjs';
import { ActivatedRoute, Router } from '@angular/router';
import { CategoryFilterComponent } from '../category-filter/category-filter.component';

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.scss']
})
export class ProductsComponent implements OnInit {

  @ViewChild(CategoryFilterComponent) subcategory;
  private _httpClient: HttpClient;
  public dynamicProductViewer;
  public active;
  onCategoryChanged: BehaviorSubject<any>;
  items$: any;
  category: any = [];


  public currentPage: number = 1;
  private previousPage: number = this.currentPage - 1;
  private nextPage: number = this.currentPage + 1;
  public totalPages: number = 1;
  public pages: number[] = [];

  public _products: any = [];

  inputForm: FormGroup;
  min_price: any;
  discount: boolean = false;
  public _route: string;

  public _route_subcategory: string;
  subcategoryValue: any;
  loaded: boolean = false;
  private _route_brand: string;

  constructor(httpClient: HttpClient, private route: ActivatedRoute, private modalService: ModalService, public router: Router) {
    this._httpClient = httpClient;
    this.onCategoryChanged = new BehaviorSubject({});
    this.inputForm = new FormGroup({
      rentPrice: new FormControl('3000'),

    });

  }

  ngOnInit() {
    this.active = 1;

    this.dynamicProductViewer = 'vopsea-lavabila';
    this.route.paramMap.subscribe(params => {
      this._route = params.get('categorySlug');
      this._route_subcategory = params.get('subcategorySlug');
      this._route_brand = params.get('brandSlug');
      console.log(this._route, this._route_subcategory, this._route_brand)
      if (this.router.url.includes('/brand')) {
        this.getProductsByBrand(this._route_brand)
      } else {
        this.getProducts();

        this.getCategory(this._route);
        this.getSubcategory();
      }
     
      


    });
  }

  ngAfterViewInit() {

  }


  output(e) {
    console.log(e.target.value)
  }

  getCategory(slug) {
    this._httpClient.get('https://pro-staff.ro/prostaff-api/v1/category/' + slug)
      .subscribe((response: any) => {
        this.loaded = true;
        this.category = response.data;
        console.log(slug)
        this.onCategoryChanged.next(response.data);
        this.items$ = this.onCategoryChanged.asObservable();
        this.items$.subscribe(data => {

        })
      });
  }

  getSubcategory() {
    return new Promise((resolve, reject) => {

      this._httpClient.get('https://pro-staff.ro/prostaff-api/v1/subcategory/' + this._route_subcategory)
        .subscribe((response: any) => {
          this.subcategoryValue = response.data;
          console.log(this.subcategoryValue)
          resolve(response);
        }, reject);

    });

  }




  // getProducts() {
  //   this._httpClient.get(`http://pro-staff.ro/prostaff-api/v1/products/${this.currentPage}`).subscribe((data: any) => {
  //     this._products = data.products;
  //     this.setTotalPages(data.no_of_pages);
  //     this.setPagesArray(this.totalPages);
  //   });
  // }

  getProductsByQnt(id) {
    this._httpClient.post(`https://pro-staff.ro/prostaff-api/v1/products/quantity`, { 'id': id }).subscribe((data: any) => {
      this._products = data.products;
      console.log(this._products)
      this.setTotalPages(data.no_of_pages);
      this.setPagesArray(this.totalPages);
      this.moveToTop()

    });
  }
  getProductsByBrand(slug) {
    this._httpClient.post(`https://pro-staff.ro/prostaff-api/v1/products/brand`, { 'brandSlug': slug }).subscribe((data: any) => {
      this._products = data.products;
      console.log(this._products)
      this.setTotalPages(data.no_of_pages);
      this.setPagesArray(this.totalPages);
      this.moveToTop()
    });
  }

  getProducts() {

    if (!this._route) {
      this._httpClient.get(`https://pro-staff.ro/prostaff-api/v1/products/${this.currentPage}`).subscribe((data: any) => {
        this._products = data.products;
        console.log(this._products)
        this.setTotalPages(data.no_of_pages);
        this.setPagesArray(this.totalPages);

      });
    }
    else if (this._route_subcategory) {
      this._httpClient.get(`https://pro-staff.ro/prostaff-api/v1/products/subcategory/${this._route_subcategory}/page/${this.currentPage}`).subscribe((data: any) => {
        this._products = data.products;
        console.log(this._products)
        this.setTotalPages(data.no_of_pages);
        this.setPagesArray(this.totalPages);

      });
    } else {
      this._httpClient.get(`https://pro-staff.ro/prostaff-api/v1/products/category/${this._route}/page/${this.currentPage}`).subscribe((data: any) => {
        this._products = data.products;
        this.setTotalPages(data.no_of_pages);
        this.setPagesArray(this.totalPages);

      });
    }

    this._products.map(product => {
      if (product.information.old_price > 0) {
        console.log(product.information.old_price)
        this.discount = true;
      }
    })

    const checkExist = setInterval(() => {
      let bg = document.getElementById("products")
      if (bg) {
        bg.scrollIntoView();
        clearInterval(checkExist);
      }
    }, 100);


    this.moveToTop();
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


  moveToTop() {
    
    const scrollToContainer = document.querySelector('.page-wrapper');
    console.log(scrollToContainer)
    scrollToContainer.scrollIntoView({ behavior: "smooth", block: "start", inline: "nearest" });
    // if(window.innerWidth > 991 && scrollToContainer) {
      

    // }
  }
}
