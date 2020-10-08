import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { OwlOptions } from 'ngx-owl-carousel-o';
declare var $: any;
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
  sliders: any;

  customOptions: OwlOptions = {
    loop: true,
    mouseDrag: false,
    touchDrag: false,
    pullDrag: false,
    dots: true,
    dotsData: true,
    autoplay: false,
    navSpeed: 15000,
    animateOut: 'fadeOut',
    navText: ['<i class="icon-angle-left">', '<i class="icon-angle-right">'],
    responsive: {
      0: {
        items: 1
      },
      400: {
        items: 1
      },
      740: {
        items: 1
      },
      940: {
        items: 1
      }
    },
    nav: false
  }
  

  constructor(httpClient: HttpClient) {
    this._httpClient = httpClient;
  }

  ngOnInit(): void {
   // this.getProducts();
    this._httpClient.get('https://pro-staff.ro/prostaff-api/v1/categories/featuredCategory')
    .subscribe((response: any) => {
      
      this.sliders = response.data;
      console.log(this.sliders)
    });
  }

  ngAfterViewInit() {
        
    const checkExist = setInterval(() => {
      let bg = document.querySelectorAll<HTMLElement>('.featured-bg')


      console.log(bg)
      if (bg.length) {
      
        bg.forEach(node => node.style.backgroundImage = "url('" + node.dataset.src + "')");
        console.log("Exists!");
        clearInterval(checkExist);
      }
    }, 100);

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
