import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { QuantitiesService } from 'app/services';

@Component({
  selector: 'app-quantity-filter',
  templateUrl: './quantity-filter.component.html',
  styleUrls: ['./quantity-filter.component.scss']
})
export class QuantityFilterComponent implements OnInit {
  quantities: any;

  @Output() qntEvent = new EventEmitter<string>();
  constructor(private _quantitiesService: QuantitiesService,) { }

  ngOnInit(): void {
    this._quantitiesService.getQuantities().then(quantity => {
      this.quantities = quantity['data'];
      
        // this.quantities.map(quantity => {
        //   this._quantitiesService.getCountProductsQuantitites(quantity.id).then(qnt => {
        //     console.log(qnt)
        //   })
        // })
    })
  }

  getProductsByQnt(id?: string) {
    console.log(id)
    this.qntEvent.emit(id)
  }

}
