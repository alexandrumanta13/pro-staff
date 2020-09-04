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

  private _httpClient: HttpClient;
  public product: any = [];

  private element: any;

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
        this.product = data;
      });
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
    this.cartService.addToCart(product);
  }



}
