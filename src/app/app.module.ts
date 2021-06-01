import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule, HTTP_INTERCEPTORS  } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';



// used to create fake backend



import { AppRoutingModule } from './app-routing.module';
import { ServiceWorkerModule } from '@angular/service-worker';
import { environment } from '../environments/environment';


import { AppComponent } from './app.component';

import { HeaderComponent } from './components/layout';
import { FooterComponent } from './components/layout';
import { MobileMenuComponent } from './components/layout';
import { ProductQuickViewComponent } from './components/layout';

import { ProductsComponent } from './components/products';
import { FeaturedProductsComponent } from './components/products';
import { ProductDetailsComponent } from './components/products';

import { CartComponent } from './components';
import { AlertComponent } from './components';


import { JwtInterceptor } from './helpers';
// import { fakeBackendProvider } from './helpers';

import { NotFoundComponent } from './pages/not-found/not-found.component';
import { ContactComponent } from './pages/contact/contact.component';
import { GdprComponent } from './pages/gdpr/gdpr.component';
import { ConfidentialityComponent } from './pages/confidentiality/confidentiality.component';
import { CookiesComponent } from './pages/cookies/cookies.component';
import { TermsComponent } from './pages/terms/terms.component';
import { ThankYouComponent } from './pages/thank-you/thank-you.component';
import { WhatsappComponent } from './components/whatsapp/whatsapp.component';
import { HomeComponent } from './pages/home/home.component';
import { AboutComponent } from './pages/about/about.component';
import { SliderComponent } from './pages/home/slider/slider.component';
import { LoginComponent } from './pages/login/login.component';



//import { AuthGuard } from './app-routing.guard';
import { AuthService } from './services';

import { UserRoleDirective } from './directives/user-role.directive';
import { UserDirective } from './directives/user.directive';
import { AdminModule } from './pages/admin/admin.module';
import { InterorComponent } from './pages/projects/interor/interor.component';
import { ExteriorComponent } from './pages/projects/exterior/exterior.component';
import { BlogComponent } from './pages/blog/blog.component';
import { ProductsListComponent } from './pages/products-list/products-list.component';
import { CategoryComponent } from './components/category/category.component';
import { PaginationComponent } from './components/pagination/pagination.component';

import { RangeSlideDirective } from './directives/range.directive';
import { NgxImageZoomModule } from 'ngx-image-zoom';
import { UniversalCookieConsentModule }  from 'universal-cookie-consent';

// Import the library
import { CarouselModule } from 'ngx-owl-carousel-o';
// Needs to import the BrowserAnimationsModule
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { CheckoutComponent } from './pages/checkout/checkout.component';
import { RadioButtonComponent } from './components/radio-button/radio-button.component';
import { ConfirmOrderComponent } from './pages/confirm-order/confirm-order.component';
import { AuthComponent } from './pages/auth/auth.component';
import { CategorySliderComponent } from './pages/home/category-slider/category-slider.component';
import { CategoryFilterComponent } from './components/category-filter/category-filter.component';
import { ColorsComponent } from './components/layout/colors/colors.component';
import { MyAccountComponent } from './pages/my-account/my-account.component';
import { ToastrModule } from 'ngx-toastr';
import { NgxPaginationModule } from 'ngx-pagination';
import { BlogSingleComponent } from './pages/blog-single/blog-single.component';

import { JwSocialButtonsModule } from 'jw-angular-social-buttons';
import { SharerMethod } from 'ngx-sharebuttons';
import { ShareButtonsModule } from 'ngx-sharebuttons/buttons';
import { ShareIconsModule } from 'ngx-sharebuttons/icons';
  

import { BlogSidebarComponent } from './components/layout/blog-sidebar/blog-sidebar.component';
import { NewsletterComponent } from './components/newsletter/newsletter.component';

import { MustMatchDirective } from './helpers/must-match.directive';
import { MyOrdersComponent } from './pages/my-account/my-orders/my-orders.component';
import { RouterModule } from '@angular/router';
import { OrderDetailsComponent } from './pages/my-account/order-details/order-details.component';
import { QuantityFilterComponent } from './components/quantity-filter/quantity-filter.component';
import { BrandFilterComponent } from './components/brand-filter/brand-filter.component';
import { CheckoutFormComponent } from './components/checkout-form/checkout-form.component';
import { RecoverComponent } from './pages/recover/recover.component';

import { Ng2SearchPipeModule } from 'ng2-search-filter';
import { HowToBuyComponent } from './pages/how-to-buy/how-to-buy.component';
import { HowToPayComponent } from './pages/how-to-pay/how-to-pay.component';
import { HowToDeliveryComponent } from './pages/how-to-delivery/how-to-delivery.component';
import { HowToReturnComponent } from './pages/how-to-return/how-to-return.component';
import { routes } from './pages/admin/admin-routing.module';
import { ReturnFormComponent } from './pages/return-form/return-form.component';



@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    HomeComponent,
    AboutComponent,
    NotFoundComponent,
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
    AlertComponent,
    LoginComponent,    
    UserDirective,
    UserRoleDirective,
    InterorComponent,
    ExteriorComponent,
    BlogComponent,
    ProductsListComponent,
    CategoryComponent,
    PaginationComponent,
    CheckoutComponent,
    RangeSlideDirective,
    RadioButtonComponent,
    ConfirmOrderComponent,
    AuthComponent,
    CategorySliderComponent,
    CategoryFilterComponent,
    ColorsComponent,
    MyAccountComponent,
    BlogSingleComponent,
    BlogSidebarComponent,
    NewsletterComponent,
    MustMatchDirective,
    MyOrdersComponent,
    OrderDetailsComponent,
    QuantityFilterComponent,
    BrandFilterComponent,
    CheckoutFormComponent,
    RecoverComponent,
    HowToBuyComponent,
    HowToPayComponent,
    HowToDeliveryComponent,
    HowToReturnComponent,
    ReturnFormComponent,

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    ReactiveFormsModule,
    ServiceWorkerModule.register('ngsw-worker.js', { enabled: environment.production }),
    NgxImageZoomModule,
    AdminModule,
    BrowserAnimationsModule,
    CarouselModule,
    ToastrModule.forRoot(),
    NgxPaginationModule,
    JwSocialButtonsModule,
    ShareButtonsModule.withConfig({
      debug: true,
      sharerMethod: SharerMethod.Window
    }),
    ShareIconsModule,
    RouterModule.forRoot(routes, {
      scrollPositionRestoration: 'top'
    }),
    Ng2SearchPipeModule,
    UniversalCookieConsentModule.forRoot({
      autoShow: true,
      consentTypes: [
          {
              id: 'base',
              title: 'Base Functionality',
              description: 'These cookies are required for the functionality of this website and can\'t be disabled.',
              mandatory: true
          },
          {
              id: 'analytics',
              title: 'Analytics',
              description: 'We use these cookies to improve our website.',
              color: 'orange'
          }
      ],
      disableBodyScroll: true
  })
  ],
  exports: [
    UserDirective,
    UserRoleDirective,
    ProductQuickViewComponent,
    RouterModule
  ],
  entryComponents: [ProductQuickViewComponent],
  providers: [
    { provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true },
    // { provide: HTTP_INTERCEPTORS, useClass: ErrorInterceptor, multi: true },

    // provider used to create fake backend
    //fakeBackendProvider,
    //{ provide: LOCALE_ID, useValue: "ro-RO" },

    AuthService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
