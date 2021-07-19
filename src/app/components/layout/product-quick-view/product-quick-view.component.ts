import { Component, OnInit, Input, ElementRef, Output, EventEmitter } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ModalService } from 'app/services';
import { ProductService } from 'app/services/products.service';
import { CartService } from 'app/services/cart.service';
import { v4 as uuidv4 } from 'uuid';
import { OwlOptions } from 'ngx-owl-carousel-o';
import { Router } from '@angular/router';

declare var $: any;

@Component({
  selector: 'app-product-quick-view',
  templateUrl: './product-quick-view.component.html',
  styleUrls: ['./product-quick-view.component.scss']
})
export class ProductQuickViewComponent implements OnInit {
  @Input() id: string;
  @Input() slug: string;
  @Output() addToCartEmit = new EventEmitter();
  @Output() num = new EventEmitter();


  private _httpClient: HttpClient;
  public product: any = [];
  public colors: any = [];

  private element: any;
  price: any;
  clickedQnt: boolean = false;
  clickedColor: boolean = false;
  selectedQnt: string;
  selectedColor: any;
  selectedColorName: any;
  
  old_price: any;
  label: string = 'Cantitati';

  selectedImage: string;


  customOptionsQuick: OwlOptions = {
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
  loaded: boolean = false;
  basecolors: any;

  constructor(
    httpClient: HttpClient,
    private modalService: ModalService,
    private el: ElementRef,
    private productService: ProductService,
    private cartService: CartService,
    public router: Router,) {
    this._httpClient = httpClient;
    this.element = el.nativeElement;
  }






  ngOnInit(): void {

    if (!this.id) {
      console.error('modal must have an id');
      return;
    }

    // move element to bottom of page (just before </body>) so it can be displayed above everything else
    document.body.appendChild(this.element);

    // close modal on background click
    this.element.addEventListener('click', el => {
      if (el.target.className === 'modal-background') {
        this.clickedColor = false;
        this.close();
      }
    });

    // add self (this modal instance) to the modal service so it's accessible from controllers
    this.modalService.add(this);
  }

  changeimage(image: string) {
    this.selectedImage = image;
  }

  getProducts(slug) {
    this.productService.getProductDetails(slug)
      .subscribe(data => {
        console.log(data)
        this.product = data;
        this.additionalImages = this.product.images.length;
        if (this.product.PaletteColorID && (this.product.PaletteColorID != 0 || this.product.PaletteColorID != -1)) {
          this.getBaseColors(this.product.PaletteColorID)
        }
        this.dotsOptions = {
          items: this.product.images.length, dots: false, margin: 8, autoWidth: true, navText: ['<i class="icon-angle-left">', '<i class="icon-angle-right">'], nav: true
        }
        this.product.availableQuantities.map(qnt => {
          if (qnt.um === 'mm' || qnt.um === 'cm') {
            this.label = 'Dimensiuni';
          }
        })
      });

    
    const checkExistQnt = setInterval(() => {
      const qnt = <HTMLElement>document.querySelector('.qnt-class.active a');
      if (qnt) {
        qnt.click();
        
        this.loaded = true
        clearInterval(checkExistQnt);
      }
    }, 100); // check every 100ms

    // const checkExistColor = setInterval(() => {
    //   const color = <HTMLElement>document.querySelector('.color-class.active a');
    //   if (color) {
    //     color.click();
    //     clearInterval(checkExistColor);
    //   }
    // }, 100); // check every 100ms

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

          for(let i in this.basecolors) {
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

  getColors(qnt, event) {
    this.colors = this.product.information.filter((qnt) => qnt !== this.product.information.quantity);
    const activeQnt = <HTMLElement>document.querySelector('.qnt-class.active');
    if (this.clickedQnt == true) {
      activeQnt.classList.remove('active');
      event.target.parentElement.classList.add('active');
    }
    this.clickedQnt = true;
  }

  // getPrice(colorValue, event) {
  //   this.product.information.map(color => {
  //     if (color.color == colorValue) {
  //       this.price = color.price;
  //       const activeColor = <HTMLElement>document.querySelector('.color-class.active');

  //       if (this.clickedColor == true) {
  //         activeColor.classList.remove('active');
  //         event.target.parentElement.parentElement.classList.add('active');
  //       }


  //     }
  //   })
  //   this.clickedColor = true;
  // }

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
  getPrice(qntValue, um, event) {
    this.product.information.map(qnt => {
      if (qnt.quantity == qntValue) {
        this.price = qnt.price;
        this.old_price = qnt.old_price;
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



  // remove self from modal service when component is destroyed
  ngOnDestroy(): void {
    this.modalService.remove(this.id);
    this.element.remove();
  }

  // open modal
  open(slug): void {
    this.getProducts(slug);
    this.element.style.display = 'block';
    document.body.classList.add('modal-open');

  }

  // close modal
  close(): void {
    this.element.style.display = 'none';
    document.body.classList.remove('modal-open');
  }

  goToProduct(alias) {
    this.router.navigate(['/produs/'+alias]);
    
    
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
    this.close();
  }

  onDestroy(): void {
    this.element.unsubscribe();
  }

  ngAfterViewInit() {
    // $('.owl-carousel').owlCarousel({loop: true,
    //   margin: 0,
    //   responsiveClass: true,
    //   nav: false,
    //   navText: ['<i class="icon-angle-left">', '<i class="icon-angle-right">'],
    //   dots: true,
    //   autoplay: true,
    //   autoplayTimeout: 15000,
    //   items: 1,});
    //   $('.owl-carousel').trigger("refresh.owl.carousel");

    // var sliderDefaultOptions = {
    //   loop: true,
    //   margin: 0,
    //   responsiveClass: true,
    //   nav: false,
    //   navText: ['<i class="icon-angle-left">', '<i class="icon-angle-right">'],
    //   dots: true,
    //   autoplay: true,
    //   autoplayTimeout: 15000,
    //   items: 1,
    // };
    // $('.product-single-default .product-single-carousel').owlCarousel($.extend(true, {}, sliderDefaultOptions, {
    //   nav: true,
    //   dotsContainer: '#carousel-custom-dots',
    //   autoplay: false,
    //   onInitialized: function () {
    //     var $source = this.$element;

    //     if ($.fn.elevateZoom) {
    //       $source.find('img').each(function () {
    //         var $this = $(this),
    //           zoomConfig = {
    //             responsive: true,
    //             zoomWindowFadeIn: 350,
    //             zoomWindowFadeOut: 200,
    //             borderSize: 0,
    //             zoomContainer: $this.parent(),
    //             zoomType: 'inner',
    //             cursor: 'grab'
    //           };
    //         $this.elevateZoom(zoomConfig);
    //       });
    //     }
    //   },
    // }));

    // $('.product-single-extended .product-single-carousel').owlCarousel($.extend(true, {}, sliderDefaultOptions, {
    //   dots: false,
    //   autoplay: false,
    //   responsive: {
    //     0: {
    //       items: 1
    //     },
    //     480: {
    //       items: 2
    //     },
    //     1200: {
    //       items: 3
    //     }
    //   }
    // }));

    // $('#carousel-custom-dots .owl-dot').click(function () {
    //   console.log('asdas')
    //   $('.product-single-carousel').trigger('to.owl.carousel', [$(this).index(), 300]);
    // });
    
  }
 
}
