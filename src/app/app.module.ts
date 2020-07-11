import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';

import { NgImageSliderModule } from 'ng-image-slider';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './components/layout/header/header.component';
import { FooterComponent } from './components/layout/footer/footer.component';
import { SliderSectionComponent } from './pages/home/slider-section/slider-section.component';
import { ServiceSectionComponent } from './pages/home/service-section/service-section.component';
import { AboutComponent } from './pages/about/about.component';
import { QuickFormContactComponent } from './components/quick-form-contact/quick-form-contact.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HomeComponent } from './pages/home/home.component';
import { NotFoundComponent } from './components/not-found/not-found.component';
import { ServiceWorkerModule } from '@angular/service-worker';
import { environment } from '../environments/environment';
import { FormContactCategoriesComponent } from './components/form-contact-categories/form-contact-categories.component';
import { ServicesComponent } from './pages/services/services.component';
import { OfficesCleaningComponent } from './pages/services/offices-cleaning/offices-cleaning.component';
import { MenuServicesComponent } from './pages/services/menu-services/menu-services.component';
import { LinkServicesComponent } from './pages/services/link-services/link-services.component';
import { LinksComponent } from './pages/services/link-services/links/links.component';
import { SimpleFromContactComponent } from './components/simple-from-contact/simple-from-contact.component';
import { HomeCleaningComponent } from './pages/services/home-cleaning/home-cleaning.component';
import { ComercialCleaningComponent } from './pages/services/comercial-cleaning/comercial-cleaning.component';
import { IndustrialCleaningComponent } from './pages/services/industrial-cleaning/industrial-cleaning.component';
import { ConstructorCleaningComponent } from './pages/services/constructor-cleaning/constructor-cleaning.component';
import { EventsCleaningComponent } from './pages/services/events-cleaning/events-cleaning.component';
import { AutoCleaningComponent } from './pages/services/auto-cleaning/auto-cleaning.component';
import { CouchCleaningComponent } from './pages/cleaning/couch-cleaning/couch-cleaning.component';
import { FloorCleaningComponent } from './pages/cleaning/floor-cleaning/floor-cleaning.component';
import { CarpetCleaningComponent } from './pages/cleaning/carpet-cleaning/carpet-cleaning.component';
import { ServiceBiocidComponent } from './pages/home/service-biocid/service-biocid.component';
import { ServiceTestimonialsComponent } from './pages/home/service-testimonials/service-testimonials.component';
import { GalleryCarouselComponent } from './components/gallery-carousel/gallery-carousel.component';
import { ServicePerfectCleanComponent } from './pages/home/service-perfect-clean/service-perfect-clean.component';
import { AccordionComponent } from './components/accordion/accordion.component';
import { UtilsComponent } from './pages/utils/utils.component';
import { ContactComponent } from './pages/contact/contact.component';
import { GdprComponent } from './pages/gdpr/gdpr.component';
import { ConfidentialityComponent } from './pages/confidentiality/confidentiality.component';
import { CookiesComponent } from './pages/cookies/cookies.component';
import { TermsComponent } from './pages/terms/terms.component';
import { ThankYouComponent } from './components/thank-you/thank-you.component';
import { PricesComponent } from './pages/prices/prices.component';
import { WhatsappComponent } from './components/whatsapp/whatsapp.component';
  

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    SliderSectionComponent,
    ServiceSectionComponent,
    AboutComponent,
    QuickFormContactComponent,
    HomeComponent,
    NotFoundComponent,
    FormContactCategoriesComponent,
    ServicesComponent,
    OfficesCleaningComponent,
    MenuServicesComponent,
    LinkServicesComponent,
    LinksComponent,
    SimpleFromContactComponent,
    HomeCleaningComponent,
    ComercialCleaningComponent,
    IndustrialCleaningComponent,
    ConstructorCleaningComponent,
    EventsCleaningComponent,
    AutoCleaningComponent,
    CouchCleaningComponent,
    FloorCleaningComponent,
    CarpetCleaningComponent,
    ServiceBiocidComponent,
    ServiceTestimonialsComponent,
    GalleryCarouselComponent,
    ServicePerfectCleanComponent,
    AccordionComponent,
    UtilsComponent,
    ContactComponent,
    GdprComponent,
    ConfidentialityComponent,
    CookiesComponent,
    TermsComponent,
    ThankYouComponent,
    PricesComponent,
    WhatsappComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    ReactiveFormsModule,
    ServiceWorkerModule.register('ngsw-worker.js', { enabled: environment.production }),
    NgImageSliderModule
    
  ],
  exports: [
    QuickFormContactComponent
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
