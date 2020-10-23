import { HttpClient } from '@angular/common/http';
import { Component, ElementRef, Input, OnInit } from '@angular/core';
import { ModalService } from 'app/services';
import { ProductService } from 'app/services/products.service';

@Component({
  selector: 'app-colors',
  templateUrl: './colors.component.html',
  styleUrls: ['./colors.component.scss']
})
export class ColorsComponent implements OnInit {
  @Input() id: string;
  @Input() slug: string;


  private element: any;
  private _httpClient: HttpClient;
  clickedColor: boolean = false;
  NCScolors: any;
  RALcolors: any;

  constructor(
    httpClient: HttpClient,
    private modalService: ModalService,
    private el: ElementRef,
    private productService: ProductService,
  ) {
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

  getColorOffer(event, color, name) {
    event.stopPropagation();
    event.target.parentElement.classList.add('active')
    const activeColor = <HTMLElement>document.querySelector('.color-class.active');
    console.log(activeColor)
  }
  // remove self from modal service when component is destroyed
  ngOnDestroy(): void {
    this.modalService.remove(this.id);
    this.element.remove();
  }

  // open modal
  open(slug): void {
    //this.getProducts(slug);
    this.element.style.display = 'block';
    document.body.classList.add('modal-open');
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

  // close modal
  close(): void {
    this.element.style.display = 'none';
    document.body.classList.remove('modal-open');
  }

}
