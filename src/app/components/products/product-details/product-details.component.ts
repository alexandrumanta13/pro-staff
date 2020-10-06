import { Component, OnInit } from '@angular/core';

import { ActivatedRoute } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { map } from 'rxjs/operators';
import { ProductService } from 'app/services/products.service';
import { Product } from 'app/models/product';


@Component({
  selector: 'app-product-details',
  templateUrl: './product-details.component.html',
  styleUrls: ['./product-details.component.scss']
})
export class ProductDetailsComponent implements OnInit {


  private _productSlug: string;
  private _httpClient: HttpClient;
  private _route;
  //public product: any = [];
 // public product: Product;

  public product: any = [];
  public colors: any = [];

  private element: any;
  price: any;
  clickedQnt: boolean = false;
  clickedColor: boolean = false;
  selectedQnt: string;
  selectedColor: any;
  selectedColorName: any;
  NCScolors: any;
  RALcolors: any;

  constructor(
    httpClient: HttpClient, 
    route: ActivatedRoute,  
    private productService: ProductService,
    ) {
    this._httpClient = httpClient;
    this._route = route;
  }

  ngOnInit() {
    this._route.paramMap.subscribe(params => {
      this._productSlug = params.get('productName');
    });

    // this.productService.getProductDetails(this._productSlug)
    // .subscribe(data => {
    //   this.product = data;
    // });
    this.getProducts(this._productSlug);
    this.productService.getColors(13)
    .then(data => {
      console.log(data)
        this.NCScolors = data;
      });
      this.productService.getColors(12)
    .then(data => {
        this.RALcolors = data;
      });
  }

  getProducts(slug) {
    this.productService.getProductDetails(slug)
      .subscribe(data => {
        console.log(data)
        this.product = data;
      });

    const checkExistQnt = setInterval(() => {
      const qnt = <HTMLElement>document.querySelector('.qnt-class.active a');
      if (qnt) {
        qnt.click();
        clearInterval(checkExistQnt);
      }
    }, 100); // check every 100ms
  }

  getColor(colorValue, event) {
    console.log(event.target.parentElement.parentElement.dataset)
    this.product.availableColors.map(color => {
      if (color.color == colorValue) {
        const activeColor = <HTMLElement>document.querySelector('.color-class.active');

        if (this.clickedColor == true) {
          activeColor.classList.remove('active');
          event.target.parentElement.parentElement.classList.add('active');
        } else {
          event.target.parentElement.parentElement.classList.add('active');
        }

       this.selectedColor = event.target.dataset.image;
       this.selectedColorName = event.target.dataset.color;

      }
    })
    this.clickedColor = true;
  }
  getPrice(qntValue, um,  event) {
    this.product.information.map(qnt => {
      if (qnt.quantity == qntValue) {
        this.price = qnt.price;
        console.log(this.price)
        this.selectedQnt = qntValue + ' ' + um;
        const activeQnt = <HTMLElement>document.querySelector('.qnt-class.active');
        if (this.clickedQnt == true) {
          activeQnt.classList.remove('active');
          event.target.parentElement.classList.add('active');
        }
        this.clickedQnt = true;

       
      }
    })

  }

}
