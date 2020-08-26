import { NgModule } from '@angular/core';

import { DashboardComponent } from './dashboard/dashboard.component';
import { RouterModule } from '@angular/router';
import { routes } from './admin-routing.module';
import { AdminSidebarComponent } from '../../components/admin-sidebar/admin-sidebar.component';

@NgModule({
  declarations: [
    DashboardComponent,
    AdminSidebarComponent
  ],
  imports: [
    RouterModule.forChild(routes)
  ],
  providers: []
})
export class AdminModule { }
