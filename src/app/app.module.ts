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


// import { JwtInterceptor, ErrorInterceptor } from './helpers';
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



import { AuthGuard } from './app-routing.guard';
import { AuthenticationService } from './services';

import { UserRoleDirective } from './directives/user-role.directive';
import { UserDirective } from './directives/user.directive';
import { AdminModule } from './pages/admin/admin.module';
import { InterorComponent } from './pages/projects/interor/interor.component';
import { ExteriorComponent } from './pages/projects/exterior/exterior.component';
import { BlogComponent } from './pages/blog/blog.component';
import { ProductsListComponent } from './pages/products-list/products-list.component';
import { CategoryComponent } from './components/category/category.component';
import { PaginationComponent } from './components/pagination/pagination.component';





  

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
    PaginationComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    ReactiveFormsModule,
    ServiceWorkerModule.register('ngsw-worker.js', { enabled: environment.production }),
    AdminModule
  ],
  exports: [
    UserDirective,
    UserRoleDirective
  ],
  providers: [
    // { provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true },
    // { provide: HTTP_INTERCEPTORS, useClass: ErrorInterceptor, multi: true },

    // provider used to create fake backend
    //fakeBackendProvider,

    AuthenticationService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
