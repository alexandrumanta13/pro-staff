import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { ActivatedRoute, NavigationEnd, NavigationStart, Router } from '@angular/router';
import { QuantitiesService } from 'app/services';
import { filter, map } from 'rxjs/operators';

@Component({
  selector: 'app-quantity-filter',
  templateUrl: './quantity-filter.component.html',
  styleUrls: ['./quantity-filter.component.scss']
})
export class QuantityFilterComponent implements OnInit {
  quantities: any;
  public route_category: string;
  public route_subcategory: string;

  @Output() qntEvent = new EventEmitter<string>();
  constructor(
    private _quantitiesService: QuantitiesService,
    private _route: ActivatedRoute,
    public _router: Router,
    private _activatedRoute: ActivatedRoute) {
      
    this._router.events.subscribe((evt) => {
      if ((evt instanceof NavigationEnd)) {
        this.getQuantities();
      }
    });
  }

  ngOnInit(): void {
    this._route.paramMap.subscribe(params => {
      this.route_category = params.get('categorySlug');
      this.route_subcategory = params.get('subcategorySlug');
    });
  }


  ngAfterViewInit() {
    this.getQuantities();
  }

  getQuantities() {
    console.log('asdasd3')

    if (this.route_category && !this.route_subcategory) {
      console.log('asdasd1')
      this._quantitiesService.getQuantitiesByCategory(this.route_category).then(quantity => {
        this.quantities = quantity['data'];
      })
    } else if (this.route_subcategory) {
      console.log('asdasd2')

      this._quantitiesService.getQuantitiesByCategoryAndSubcategory(this.route_category, this.route_subcategory).then(quantity => {
        this.quantities = quantity['data'];
      })
    } else {
      console.log('asdasd')
      this._quantitiesService.getQuantities().then(quantity => {
        this.quantities = quantity['data'];
      })
    }
  }

  getProductsByQnt(id?: string) {
    this.qntEvent.emit(id)
  }

}
