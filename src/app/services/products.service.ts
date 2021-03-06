import { Injectable } from '@angular/core';

import { HttpClient, HttpErrorResponse, HttpParams, HttpHeaders } from "@angular/common/http";

import { throwError, Observable } from 'rxjs';
import { retry, catchError, tap, map } from 'rxjs/operators';
import { Product } from '../models/product'

@Injectable({
    providedIn: 'root'
})
export class ProductService {


    private REST_API_SERVER = "https://pro-staff.ro/prostaff-api/v1/";

    public first: string;
    public prev: string;
    public next: string;
    public last: string;
    public current: string;

    constructor(private httpClient: HttpClient,
       ) {

    }

    readProducts(){
        return this.httpClient.get<any>(`${this.REST_API_SERVER}`);
    }

    getProductDetails(productAlias: string): Observable<Product> {
        return this.httpClient.get<Product>(this.REST_API_SERVER + 'product/' + productAlias);
      }

    handleError(error: HttpErrorResponse) {
        let errorMessage = 'Unknown error!';
        if (error.error instanceof ErrorEvent) {
            // Client-side errors
            errorMessage = `Error: ${error.error.message}`;
        } else {
            // Server-side errors
            errorMessage = `Error Code: ${error.status}\nMessage: ${error.message}`;
        }
        window.alert(errorMessage);
        return throwError(errorMessage);
    }

    public sendGetRequest() {
        return this.httpClient.get(this.REST_API_SERVER, {observe: "response", responseType: "json"}).pipe(retry(3), catchError(this.handleError)
        )
        ;
    }

    parseLinkHeader(header) {
        if (header.length == 0) {
            return;
        }
        
        let parts = header.split(',');
        console.log(parts);
        var links = {};
        parts.forEach(p => {
            let section = p.split(';');
            var url = section[0].replace(/<(.*)>/, '$1').trim();
            var name = section[1].replace(/rel="(.*)"/, '$1').trim();
            links[name] = url;

        });
        
        this.first = links["first"];
        this.last = links["last"];
        this.prev = links["prev"];
        this.next = links["next"];
    }

    public sendGetRequestToUrl(url: string) {
        return this.httpClient.get(this.REST_API_SERVER + url, {observe: "response"}).pipe(retry(3), catchError(this.handleError))
        // return this.httpClient.get<Product[]>(url, { observe: "response" }).pipe(retry(3), catchError(this.handleError));
    }


    public getColors(id: any): Promise<any> {
        return new Promise((resolve, reject) => {

            this.httpClient.get('https://pro-staff.ro/prostaff-api/v1/palette/' + id + '/colors')
                .subscribe((response: any) => {
                    console.log(response)

                    resolve(response);
                }, reject);

        });
    }

    

    getColorsBase(id): Promise<any> {
        return new Promise((resolve, reject) => {

            this.httpClient.get('https://pro-staff.ro/prostaff-api/v1/basecolor/' + id + '/colors')
                .subscribe((response: any) => {
                    resolve(response);
                }, reject);

        });
    }

    getBaseColors(palette): Promise<any> {
        return new Promise((resolve, reject) => {

            this.httpClient.get('https://pro-staff.ro/prostaff-api/v1/basecolor/' + palette)
                .subscribe((response: any) => {
                    console.log(response)

                    resolve(response);
                }, reject);

        });
    }

    /**
     * Get products
     *
     * @returns {Promise<any>}
     */
    getProductsAll() : Promise<any>
    {
        return new Promise((resolve, reject) => {
            this.httpClient.get('https://pro-staff.ro/prostaff-api/v1/productsAll')
                .subscribe((response: any) => {
                    resolve(response);
                }, reject);
        });
       
    }
}
