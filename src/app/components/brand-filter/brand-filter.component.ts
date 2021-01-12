import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { BrandService } from 'app/services';

@Component({
  selector: 'app-brand-filter',
  templateUrl: './brand-filter.component.html',
  styleUrls: ['./brand-filter.component.scss']
})
export class BrandFilterComponent implements OnInit {
  route_category: string;
  route_subcategory: string;

  @Output() brandEvent = new EventEmitter<string>();
  brands: any;


  constructor(
    private _brandService: BrandService,
    private _route: ActivatedRoute,
    public _router: Router,
  ) { }

  ngOnInit(): void {
    this._route.paramMap.subscribe(params => {
      this.route_category = params.get('categorySlug');
      this.route_subcategory = params.get('subcategorySlug');
    });
  }


  ngAfterViewInit() {
    this.getBrands();
  }

  getBrands() {

    if (this.route_category && !this.route_subcategory) {

      this._brandService.getBrandsByCategory(this.route_category).then(quantity => {
        this.brands = quantity['data'];
        console.log(quantity['data'])
      })
    } else if (this.route_subcategory) {
      this._brandService.getBrandsByCategoryAndSubcategory(this.route_category, this.route_subcategory).then(quantity => {
        this.brands = quantity['data'];
      })
    } else {

      this._brandService.getBrands().then(quantity => {
        this.brands = quantity['data'];
      })
    }
  }

  getProductsByBrand(id?: string) {
    this.brandEvent.emit(id)
  }


}
