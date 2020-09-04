import { Component, OnInit } from '@angular/core';
import { Product } from '../../components/products/product.model'
import { HttpClient } from '@angular/common/http';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  public active;
  public dynamicProductViewer;
  public _products = [];
  private _httpClient:HttpClient;


  constructor(private httpClient:HttpClient) {
    this._httpClient = httpClient;
  }

  ngOnInit() {
    this.active = 1;
    this.dynamicProductViewer = 'vopsea-lavabila';
    this.getProducts();
  }

  openModal(){
    const buttonModal = document.getElementById("openModalButton")
    console.log('buttonModal', buttonModal)
    buttonModal.click()
  }

  getProducts(id?:string, category_type = "parent")
  {
    if(!id)
    {
        this._httpClient.get("http://pro-staff.ro/prostaff-api/v1/products/category/vopsea-lavabila").subscribe((data:any) => {
        this._products = data.products;
      });
    } else {
      if(category_type == "parent")
      {
        this._httpClient.get(`http://pro-staff.ro/prostaff-api/v1/products/category/${id}`).subscribe((data:any) => {
        this._products = data.products;
        });
      }
      if(category_type == "child")
      {
        this._httpClient.get(`http://pro-staff.ro/prostaff-api/v1/products/subcategory/${id}`).subscribe((data:any) => {
        this._products = data.products;
        });
      }
    }
    return this._products;
  }

}
