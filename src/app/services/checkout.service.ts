import { EventEmitter, Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class CheckoutService {
  onFormSubmitted = new EventEmitter<any>();
  
  constructor() { }
}
