import { Component, OnInit, ViewChild } from '@angular/core';
import { ActivatedRoute, RouterLinkActive } from '@angular/router';
import { AuthService, MyAccountService } from 'app/services';

@Component({
  selector: 'app-my-orders',
  templateUrl: './my-orders.component.html',
  styleUrls: ['./my-orders.component.scss']
})
export class MyOrdersComponent implements OnInit {
  orders: any;
  ordersLink: any;
  @ViewChild(RouterLinkActive) private routerLinkActive: RouterLinkActive;

  
  p: number = 1;
  constructor(
    private myAccountService: MyAccountService, 
    private authService: AuthService,
    private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.ordersLink = this.route.snapshot.data['comenzile-mele'];
    this.authService.user.subscribe(user => {
      this.myAccountService.getUserOrders(user.id).then(data => {
        this.orders = data.orders;
        console.log(this.orders)
      })
    })
  }

}
