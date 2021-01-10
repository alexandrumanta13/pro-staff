import { Component, EventEmitter, OnInit, Output } from '@angular/core';

import { ActivatedRoute } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { map } from 'rxjs/operators';
import { ProductService } from 'app/services/products.service';
import { Product } from 'app/models/product';
import { OwlOptions } from 'ngx-owl-carousel-o';
import { ModalService } from 'app/services';
import { v4 as uuidv4 } from 'uuid';
import { CartService } from 'app/services/cart.service';


@Component({
  selector: 'app-product-details',
  templateUrl: './product-details.component.html',
  styleUrls: ['./product-details.component.scss']
})
export class ProductDetailsComponent implements OnInit {
  @Output() addToCartEmit = new EventEmitter();
  @Output() num = new EventEmitter();

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
  old_price: any;

  selectedImage: string;


  customOptions: OwlOptions = {
    items: 1, dots: false, margin: 0, stagePadding: 0, autoWidth: true, autoHeight: true,
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
  }

  dotsOptions: OwlOptions;
  additionalImages: any;
  basecolors: any[];
  ncsandralpalette: boolean = false;

  constructor(
    httpClient: HttpClient,
    route: ActivatedRoute,
    private productService: ProductService,
    private modalService: ModalService,
    private cartService: CartService
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

  }

  addToCart(product) {
    console.log(product)
    product.selectedQnt = this.selectedQnt;
    product.selectedColorName = this.selectedColorName;
    product.selectedColor = this.selectedColor;
    product.cart_uuid = uuidv4();
    if (this.selectedColor) {
      product.selectedPrice = parseInt(this.price) + 20;
    } else {
      product.selectedPrice = this.price;
    }
    const inputValue = (<HTMLInputElement>document.querySelector('.horizontal-quantity')).value;
    this.cartService.addToCart(product, parseInt(inputValue));

  }

  selectedColorFn(color: any) {
    this.selectedColor = color.name;
    this.selectedColorName = color.color;
    console.log(this.selectedColorName, this.selectedColor);
  }

  getProducts(slug) {

    this.productService.getProductDetails(slug)
      .subscribe(data => {
        console.log(data)
        this.product = data;
        console.log(this.product)
        console.log(this.product.PaletteColorID)
        if (this.product.PaletteColorID > 0) {

          this.getBaseColors(this.product.PaletteColorID)
        } else if (this.product.PaletteColorID < 0) {
          console.log(this.product.PaletteColorID)
          this.ncsandralpalette = true;
          // this.NCScolors = data;
          // console.log('asdadasd')
          // this.productService.getColors(13)
          //   .then(data => {
          //     console.log(data)
          //     this.NCScolors = data;
          //   });
          // this.productService.getColors(12)
          //   .then(data => {
          //     this.RALcolors = data;
          //   });
        } else {
          this.ncsandralpalette = false;
        }


        this.additionalImages = this.product.images.length;
        this.dotsOptions = {
          items: this.product.images.length, dots: false, margin: 8, autoWidth: true, navText: ['<i class="icon-angle-left">', '<i class="icon-angle-right">'], nav: true
        }
      });

    const checkExistQnt = setInterval(() => {
      const qnt = <HTMLElement>document.querySelector('.qnt-class.active a');
      if (qnt) {
        qnt.click();
        clearInterval(checkExistQnt);
      }
    }, 100); // check every 100ms
  }

  getBaseColors(palette) {
    this.productService.getBaseColors(palette)
      .then(data => {
        console.log(data)
        if (data) {
          this.basecolors = data.filter((item, index, self) =>
            index === self.findIndex((t) => (
              t.base_image === item.base_image && t.base_name === item.base_name
            ))
          )

          for (let i in this.basecolors) {
            console.log()
            this.productService.getColorsBase(this.basecolors[i].id)
              .then(colors => {
                this.basecolors[i].colors = [...colors]
              })
          }
          console.log(this.basecolors)
        }
      });
  }

  getColor(colorValue, event, mode) {
    const activeColor = <HTMLElement>document.querySelector('.color-class.active');
      if(activeColor) {
        activeColor.classList.remove('active');
      }

      if(mode == 'color') {
        this.clickedColor = true;
        const productPrice = <HTMLElement>document.querySelector('.product-price');
        const productPriceColor = <HTMLElement>document.querySelector('.product-price.color');

        let currentPrice = parseFloat(productPrice.innerText) + parseFloat("20.00");

        productPriceColor.innerText = `${currentPrice} Lei` ;
      } else {
        this.clickedColor = false;
      }

      event.target.parentElement.parentElement.classList.add('active');
      this.selectedColor = event.target.dataset.image;
      this.selectedColorName = event.target.dataset.color;
  }
  getPrice(qntValue, um, event) {
    this.product.information.map(qnt => {
      if (qnt.quantity == qntValue) {
        this.price = qnt.price;
        this.old_price = qnt.old_price;
        console.log(qnt.old_price)
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

  openModal(id: string, slug: string) {
    this.modalService.open(id, slug);
  }

}
