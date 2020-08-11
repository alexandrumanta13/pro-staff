import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AdminModule } from './admin/admin.module';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './components/layout/header/header.component';
import { FooterComponent } from './components/layout/footer/footer.component';


import { QuickFormContactComponent } from './components/quick-form-contact/quick-form-contact.component';


import { NotFoundComponent } from './components/not-found/not-found.component';
import { ServiceWorkerModule } from '@angular/service-worker';
import { environment } from '../environments/environment';
import { FormContactCategoriesComponent } from './components/form-contact-categories/form-contact-categories.component';

import { SimpleFromContactComponent } from './components/simple-from-contact/simple-from-contact.component';

import { ContactComponent } from './pages/contact/contact.component';
import { GdprComponent } from './pages/gdpr/gdpr.component';
import { ConfidentialityComponent } from './pages/confidentiality/confidentiality.component';
import { CookiesComponent } from './pages/cookies/cookies.component';
import { TermsComponent } from './pages/terms/terms.component';
import { ThankYouComponent } from './components/thank-you/thank-you.component';
import { WhatsappComponent } from './components/whatsapp/whatsapp.component';
import { HomeComponent } from './pages/home/home.component';
import { SliderComponent } from './pages/home/slider/slider.component';
import { MobileMenuComponent } from './components/layout/mobile-menu/mobile-menu.component';
import { ProductQuickViewComponent } from './components/layout/product-quick-view/product-quick-view.component';
import { ProductsComponent } from './components/products/products.component';
import { FeaturedProductsComponent } from './components/products/featured-products/featured-products.component';
import { ProductDetailsComponent } from './components/products/product-details/product-details.component';


import { OwlModule } from 'ngx-owl-carousel';
import { CartComponent } from './components/cart/cart.component';
  

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    QuickFormContactComponent,
    HomeComponent,
    NotFoundComponent,
    FormContactCategoriesComponent,
    SimpleFromContactComponent,
    ContactComponent,
    GdprComponent,
    ConfidentialityComponent,
    CookiesComponent,
    TermsComponent,
    ThankYouComponent,
    WhatsappComponent,
    SliderComponent,
    MobileMenuComponent,
    ProductQuickViewComponent,
    ProductsComponent,
    FeaturedProductsComponent,
    ProductDetailsComponent,
    CartComponent,
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    ReactiveFormsModule,
    ServiceWorkerModule.register('ngsw-worker.js', { enabled: environment.production }),
    OwlModule
   // AdminModule
  ],
  exports: [
    QuickFormContactComponent
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
