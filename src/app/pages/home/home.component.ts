import { Component, OnInit, ViewChild } from '@angular/core';
import { Product } from '../../components/products/product.model'
import { HttpClient } from '@angular/common/http';
import { ModalService } from 'app/services';
import { CategoryFilterComponent } from 'app/components/category-filter/category-filter.component';


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

  @ViewChild(CategoryFilterComponent) category;


  constructor(private httpClient:HttpClient, private modalService: ModalService) {
    this._httpClient = httpClient;
    
  }

  ngOnInit() {
    this.active = 1;
    this.dynamicProductViewer = 'vopsea-lavabila';
    this.getProducts();
  }

  
  getProducts(category?:string, category_type = "parent")
  {
    if(!category)
    {
        this._httpClient.get("https://pro-staff.ro/prostaff-api/v1/products/category/vopsea-lavabila").subscribe((data:any) => {
        this._products = data.products;
      });
    } else {
      if(category_type == "parent")
      {
        this._httpClient.get(`https://pro-staff.ro/prostaff-api/v1/products/category/${category}`).subscribe((data:any) => {
        this._products = data.products;
        this.dynamicProductViewer = category;
        });
      }
      if(category_type == "child")
      {
        this._httpClient.get(`https://pro-staff.ro/prostaff-api/v1/products/subcategory/${category}`).subscribe((data:any) => {
        this._products = data.products;
        this.dynamicProductViewer = category;
        });
      }
    }
    return this._products;
  }

  openModal(id: string, slug: string) {
    this.modalService.open(id, slug);
  }

}
