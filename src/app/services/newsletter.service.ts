import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class NewsletterService {

  private REST_API_SERVER = "https://pro-staff.ro/prostaff-api/v1/";


  /**
   * Constructor
   *
   * @param {HttpClient} _httpClient
   */

  constructor(private _httpClient: HttpClient) { }

  /**
   * Generate coupon
   *
   * @returns {Promise<any>}
   */

  generateCoupon(email) {
    return new Promise((resolve, reject) => {
      this._httpClient.post(this.REST_API_SERVER + 'coupon/generate', { email: email })
        .subscribe((response: any) => {
          resolve(response);
        }, reject);
    });
  }

  /**
   * Use coupon
   *
   * @returns {Promise<any>}
   */

  useCoupon(email, coupon, options) {
    return new Promise((resolve, reject) => {

      this._httpClient.post(this.REST_API_SERVER + 'coupon/use', { email: email, coupon: coupon }, options)
        .subscribe((response: any) => {
          resolve(response);
        }, reject);
    });
  }
}
