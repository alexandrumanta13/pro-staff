import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { MyAccountService } from 'app/services';

@Component({
  selector: 'app-order-details',
  templateUrl: './order-details.component.html',
  styleUrls: ['./order-details.component.scss']
})
export class OrderDetailsComponent implements OnInit {
  order: any;

  constructor(private myAccountService: MyAccountService, private _route: ActivatedRoute,) { }

  ngOnInit(): void {
    this._route.paramMap.subscribe(params => {
      this.myAccountService.getUserOrder(params.get('orderUUID')).then(data => {
        this.order = data[0];
        console.log(this.order)
      })
    });
  }
}
