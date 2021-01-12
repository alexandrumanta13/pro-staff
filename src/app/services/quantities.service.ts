import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class QuantitiesService {

  private REST_API_SERVER = "https://pro-staff.ro/prostaff-api/v1/";

   /**
   * Constructor
   *
   * @param {HttpClient} _httpClient
   */

  constructor(private _httpClient: HttpClient) { }

  /**
   * Get Quantities
   *
   * @returns {Promise<any>}
   */

  getQuantities() {
    return new Promise((resolve, reject) => {
      this._httpClient.get(this.REST_API_SERVER + 'quantities', )
        .subscribe((response: any) => {
          resolve(response);
        }, reject);
    });
  }
  getCountProductsQuantitites(id) {
    return new Promise((resolve, reject) => {
      this._httpClient.get(this.REST_API_SERVER + 'products/quantity/' + id)
        .subscribe((response: any) => {
          resolve(response);
        }, reject);
    });
  }

  getQuantitiesByCategory(categorySlug) {
    return new Promise((resolve, reject) => {
      this._httpClient.get(this.REST_API_SERVER + 'products/quantity/category/' + categorySlug)
        .subscribe((response: any) => {
          resolve(response);
        }, reject);
    });
  }

  getQuantitiesByCategoryAndSubcategory(categorySlug, subcategorySlug) {
    return new Promise((resolve, reject) => {
      this._httpClient.get(this.REST_API_SERVER + 'products/quantity/category/' + categorySlug + '/subcategory/' + subcategorySlug)
        .subscribe((response: any) => {
          resolve(response);
        }, reject);
    });
  }
}
