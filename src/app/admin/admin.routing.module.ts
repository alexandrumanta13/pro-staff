import { AdminComponent } from './admin/admin.component';
import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';

const routes: Routes = [
  { path: 'admin', component: AdminComponent }
];

export const routing = RouterModule.forChild(routes);

@NgModule({
  imports: [
    routing
   ],
   declarations: [
    
   ]
 
})

export class AdminRoutingModule {}