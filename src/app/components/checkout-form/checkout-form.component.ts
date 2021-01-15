import { Component, ElementRef, EventEmitter, Input, OnInit, Output, SimpleChanges, ViewChild } from '@angular/core';
import { NgForm } from '@angular/forms';
import { CartService } from 'app/services/cart.service';
import { map, take } from 'rxjs/operators';
import { CheckoutService, DpdService } from '../../services';

@Component({
  selector: 'app-checkout-form',
  templateUrl: './checkout-form.component.html',
  styleUrls: ['./checkout-form.component.scss']
})
export class CheckoutFormComponent implements OnInit {

  model: any = {};
  timeout = null;
  show = false;
  searchTowns: any;
  delivery: number = 0;
  public cartItems$ = this._cartService.items$;
  weight: number = 0;

  @ViewChild('f') checkoutForm;
  @ViewChild('submit') submit: ElementRef<HTMLElement>;
  @ViewChild('triggerAutocomplete') triggerAutocomplete: ElementRef<HTMLElement>;

  @Output() formValue = new EventEmitter<string>();

  constructor(private _dpdService: DpdService, private _cartService: CartService, private _checkoutService: CheckoutService) { }

  ngOnInit(): void {
    this.cartItems$.pipe(
      take(1),
      map((products) => {
        if (products.length > 0) {
          products.map(product => {
            if (product.selectedQnt.includes('L') || product.selectedQnt.includes('Kg') || product.selectedQnt.includes('buc')) {
              let productQnt = parseInt(product.selectedQnt.replace(/\D/g, ""));
              this.weight += productQnt;
            }
          })
        }
      }),
    ).subscribe();

    this._checkoutService.onFormSubmitted.subscribe((formData: any) => {
      this.onFormSubmit();
    })
  }

  open() {
    this.show = true
  }

  hide() {
    this.show = false;
  }

  clear() {
    this.model.town = '';
    this.model.county = '';
    this.show = false;
  }

  selectTown(selectedTown, county, i) {

    this.model.county = county;
    this.model.town = selectedTown;
    this.model.lat = this.searchTowns[i].y;
    this.model.lng = this.searchTowns[i].x;

    this._dpdService.calculatePrice(this.weight, this.searchTowns[i].id)
      .then(data => {
        let deliveryPrice = JSON.parse(data)
        this.delivery = deliveryPrice.calculations[0].price.total;
        this.model.delivery = this.delivery;
      })

    this.hide();
  }

  getTown(town) {
    if (!town) this.hide();

    this._dpdService.getTown(town)
      .then(data => {
        let townsJson = JSON.parse(data)
        this.searchTowns = townsJson.sites;
      })
  }

  searchTown(town) {
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      this.show = true
      this.getTown(town)
    }, 500);
  }





  autofill() {
    const autofilled = document.querySelectorAll('.checkout-form input:-webkit-autofill');
    if(autofilled) {
      autofilled.forEach(input => {
        if (input.classList.contains('town')) {
          const autofilletSelectTown = this.triggerAutocomplete.nativeElement;
          autofilletSelectTown.click();
        }
      })
    }
    
  }

  onFormSubmit() {

    this.autofill()

    setTimeout(() => {
      const el: HTMLElement = this.submit.nativeElement;
      el.click()
      if(this.delivery <= 0) {
        this.model.town = '';
        this.hide();
      } 

      if (this.checkoutForm.valid) {
        this.formValue.emit(this.model)
      } 
    }, 500)
  }
}
