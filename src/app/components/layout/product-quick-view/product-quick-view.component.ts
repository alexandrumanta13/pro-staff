import { Component, OnInit, Input, ElementRef, Output, EventEmitter } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ModalService } from 'app/services';
import { ProductService } from 'app/services/products.service';
import { CartService } from 'app/services/cart.service';


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

  constructor(
    httpClient: HttpClient,
    private modalService: ModalService,
    private el: ElementRef,
    private productService: ProductService,
    private cartService: CartService) {
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
        this.close();
      }
    });

    // add self (this modal instance) to the modal service so it's accessible from controllers
    this.modalService.add(this);
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

    const checkExistColor = setInterval(() => {
      const color = <HTMLElement>document.querySelector('.color-class.active a');
      if (color) {
        color.click();
        clearInterval(checkExistColor);
      }
    }, 100); // check every 100ms

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

  getPrice(colorValue, event) {
    this.product.information.map(color => {
      if (color.color == colorValue) {
        this.price = color.price;
        const activeColor = <HTMLElement>document.querySelector('.color-class.active');

        if (this.clickedColor == true) {
          activeColor.classList.remove('active');
          event.target.parentElement.parentElement.classList.add('active');
        }

       
      }
    })
    this.clickedColor = true;
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


  addToCart(product) {
    const inputValue = (<HTMLInputElement>document.querySelector('.horizontal-quantity')).value;
    this.cartService.addToCart(product, parseInt(inputValue));
    this.close();
  }

  onDestroy(): void {
    this.element.unsubscribe();
  }
}
