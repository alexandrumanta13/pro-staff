import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class DpdService {

  private REST_API_SERVER = "https://la-petite.ro/la-petite-api/v1/";
  private dpdusername: string = '200900001';
  private dpdpassword: string = '9886142696';
  private countrId = '642'; //Romania

  private dpdApi = 'https://api.dpd.ro/v1/location/site/?username=' + this.dpdusername + '&password=' + this.dpdpassword + '&country_id=' + this.countrId + '&name='

  /**
   * Constructor
   *
   * @param {HttpClient} _httpClient
   */

  constructor(private _httpClient: HttpClient,) { }

  /**
   * Calculate price
   *
   * @returns {Promise<any>}
   */


  public calculatePrice(weight, site): Promise<any> {
    return new Promise((resolve, reject) => {
      this._httpClient.post<any>(`https://pro-staff.ro/shipping/priceCalculation.php`, { 'weight': weight, 'site': site })
        .subscribe((response: any) => {
          resolve(response);
        }, reject);
    });
  }

  /**
   * Get town
   *
   * @returns {Promise<any>}
   */


  public getTown(town): Promise<any> {
    return new Promise((resolve, reject) => {
      this._httpClient.post<any>(`https://pro-staff.ro/shipping/getTown.php`, { 'town': town })
        .subscribe((response: any) => {
          resolve(response);
        }, reject);
    });
  }

}
