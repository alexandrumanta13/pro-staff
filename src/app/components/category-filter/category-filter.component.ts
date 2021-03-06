import { HttpClient } from '@angular/common/http';
import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-category-filter',
  templateUrl: './category-filter.component.html',
  styleUrls: ['./category-filter.component.scss']
})
export class CategoryFilterComponent implements OnInit {
  categories: any;
  active: number = 0;
  public _products = [];

  @Output() categoryEvent = new EventEmitter<string>();
  public _route: string;
  subcategoryValue: any;
  public _route_subcategory: string;
  noProducts: boolean = false;

  constructor(private _httpClient: HttpClient, private route:ActivatedRoute, public router: Router) { }

  ngOnInit(): void {
    
    this.route.paramMap.subscribe(params => {
      this._route = params.get('categorySlug');
      this._route_subcategory = params.get('subcategorySlug');
      
    });
    this.getCategories();
    if(this._route) {
      this.getSubcategory();
    }
    
    
  }

  /**
     * Get categories
     *
     * @returns {Promise<any>}
     */
  getCategories(): Promise<any> {
    return new Promise((resolve, reject) => {

      this._httpClient.get('https://pro-staff.ro/prostaff-api/v1/categories')
        .subscribe((response: any) => {
          this.categories = response.data;
          if(this.categories.length === 0) {
            this.noProducts = !this.noProducts;
          }
          resolve(response);
        }, reject);

    });
  }

  getSubcategory() {
    return new Promise((resolve, reject) => {

      this._httpClient.get('https://pro-staff.ro/prostaff-api/v1/category/' + this._route + '/subcategories')
        .subscribe((response: any) => {
          this.subcategoryValue = response.data;
          if(this.subcategoryValue.length === 0) {
            this.noProducts = !this.noProducts;
          }
          resolve(response);
        }, reject);

    });

  }

  getProducts(id?: string) {
    console.log(id)
    this.categoryEvent.emit(id)
  }

}
