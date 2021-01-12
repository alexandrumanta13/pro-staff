import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class BrandService {

  private REST_API_SERVER = "https://pro-staff.ro/prostaff-api/v1/";

  /**
  * Constructor
  *
  * @param {HttpClient} _httpClient
  */


  constructor(private _httpClient: HttpClient) { }

  /**
   * Get Brands
   *
   * @returns {Promise<any>}
   */

  getBrands() {
    return new Promise((resolve, reject) => {
      this._httpClient.get(this.REST_API_SERVER + 'brands',)
        .subscribe((response: any) => {
          resolve(response);
        }, reject);
    });
  }

  /**
   * Get Brands by category
   *
   * @returns {Promise<any>}
   */

   
  getBrandsByCategory(categorySlug) {
    return new Promise((resolve, reject) => {
      this._httpClient.get(this.REST_API_SERVER + 'products/brand/category/' + categorySlug)
        .subscribe((response: any) => {
          resolve(response);
        }, reject);
    });
  }

  getBrandsByCategoryAndSubcategory(categorySlug, subcategorySlug) {
    return new Promise((resolve, reject) => {
      this._httpClient.get(this.REST_API_SERVER + 'products/brand/category/' + categorySlug + '/subcategory/' + subcategorySlug)
        .subscribe((response: any) => {
          resolve(response);
        }, reject);
    });
  }
}
