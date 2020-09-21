import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-category-slider',
  templateUrl: './category-slider.component.html',
  styleUrls: ['./category-slider.component.scss']
})
export class CategorySliderComponent implements OnInit {

  private _httpClient: HttpClient;
  public _vopseaDecorativa: any = [];
  public _accesoriiProfesionale: any = [];
  public _vopseaLavabila: any = [];

  constructor(httpClient: HttpClient) {
    this._httpClient = httpClient;
  }

  ngOnInit(): void {
    this.getProducts() 
  }

  getProducts() {
    
    this._httpClient.post(`https://pro-staff.ro/prostaff-api/v1/products/featured/category/vopsea-decorativa`, {limit: 5 }).subscribe((data: any) => {
        this._vopseaDecorativa = data.products;
    });
    this._httpClient.post(`https://pro-staff.ro/prostaff-api/v1/products/featured/subcategory/accesorii-profesionale`, {limit: 5 }).subscribe((data: any) => {
        this._accesoriiProfesionale = data.products;
    });
    this._httpClient.post(`https://pro-staff.ro/prostaff-api/v1/products/featured/category/vopsea-lavabila`, {limit: 5 }).subscribe((data: any) => {
        this._vopseaLavabila = data.products;
    });
}

}
