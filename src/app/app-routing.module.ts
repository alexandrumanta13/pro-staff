import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AboutComponent } from './pages/about/about.component';
import { HomeComponent } from './pages/home/home.component';
import { UtilsComponent } from './pages/utils/utils.component';
import { PricesComponent } from './pages/prices/prices.component';
import { ContactComponent } from './pages/contact/contact.component';


import { NotFoundComponent } from './components/not-found/not-found.component';
import { ThankYouComponent } from "./components/thank-you/thank-you.component";
import { OfficesCleaningComponent } from './pages/services/offices-cleaning/offices-cleaning.component';
import { HomeCleaningComponent } from './pages/services/home-cleaning/home-cleaning.component';
import { ServicesComponent } from './pages/services/services.component';
import { ComercialCleaningComponent } from './pages/services/comercial-cleaning/comercial-cleaning.component';
import { IndustrialCleaningComponent } from './pages/services/industrial-cleaning/industrial-cleaning.component';
import { ConstructorCleaningComponent } from './pages/services/constructor-cleaning/constructor-cleaning.component';
import { EventsCleaningComponent } from './pages/services/events-cleaning/events-cleaning.component';
import { AutoCleaningComponent } from './pages/services/auto-cleaning/auto-cleaning.component';

import { CouchCleaningComponent } from './pages/cleaning/couch-cleaning/couch-cleaning.component';
import { FloorCleaningComponent } from './pages/cleaning/floor-cleaning/floor-cleaning.component';
import { CarpetCleaningComponent } from './pages/cleaning/carpet-cleaning/carpet-cleaning.component';

import { GdprComponent } from './pages/gdpr/gdpr.component';
import { ConfidentialityComponent } from './pages/confidentiality/confidentiality.component';
import { CookiesComponent } from "./pages/cookies/cookies.component";
import { TermsComponent } from "./pages/terms/terms.component";


const routes: Routes = [
  {
    path: '', component: HomeComponent,
    data: {
      title: 'Curatenie perfecta',
      description: 'Description Meta Tag Content',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'despre-noi', component: AboutComponent,
    data: {
      title: 'Despre noi',
      description: 'Apeleaza la servicii profesionale de curatenie la domiciliu. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov. Preturi competitive.Description Meta Tag Content',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'servicii-curatenie', component: ServicesComponent,
    data: {
      title: 'Servicii curatenie',
      description: 'Apeleaza la servicii profesionale de curatenie la domiciliu. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov. Preturi competitive.',
      ogUrl: 'your og url'
    }
  },


  {
    path: 'curatenie-birouri', component: OfficesCleaningComponent,
    data: {
      title: 'Curatenie Birouri',
      description: 'Apeleaza la servicii profesionale de curatenie birouri. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov.',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'curatenie-la-domiciliu', component: HomeCleaningComponent,
    data: {
      title: 'Curatenie la domiciliu',
      description: 'Apeleaza la servicii profesionale de curatenie la domiciliu. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov. Preturi competitive.',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'curatenie-spatii-comerciale', component: ComercialCleaningComponent,
    data: {
      title: 'Curatenie spatii comerciale',
      description: 'Apeleaza la servicii profesionale de curatenie spatii comerciale. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov. Preturi competitive.',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'curatenie-spatii-industriale', component: IndustrialCleaningComponent,
    data: {
      title: 'Curatenie spatii industriale',
      description: 'Apeleaza la servicii profesionale de curatenie industriala. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov. Preturi competitive.',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'curatenie-dupa-constructor', component: ConstructorCleaningComponent,
    data: {
      title: 'Curatenie dupa constructor',
      description: 'Apeleaza la servicii profesionale de curatenie dupa constructor sau renovare. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov.',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'curatenie-dupa-evenimente', component: EventsCleaningComponent,
    data: {
      title: 'Curatenie evenimente',
      description: 'Apeleaza la servicii profesionale de curatenie inainte si dupa evenimente. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov. Preturi competitive.',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'curatare-tapiterie-auto-detailing', component: AutoCleaningComponent,
    data: {
      title: 'Curatare tapiterie auto',
      description: 'Vrei curatare tapiterie auto si detailing auto la cel mai bun raport pret? Suntem o firma de curatenie profesionala din bucuresti si Ilfov.',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'curatare-canapele', component: CouchCleaningComponent,
    data: {
      title: 'Curatare canapele si fotolii',
      description: 'Apeleaza la servicii profesionale de curatare canapele la domiciliu. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov.',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'spalare-mecanizata-podele', component: FloorCleaningComponent,
    data: {
      title: 'Spalare mecanizata podele',
      description: 'Vrei ca podelele sa-si recapete stralucirea de la inceput? Apeleaza la serviciile de spalare mecanizata podele. Ne deplasam oriunde in Bucuresti si Ilfov.',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'curatare-mocheta-covor', component: CarpetCleaningComponent,
    data: {
      title: 'Curatare mocheta',
      description: 'Apeleaza la servicii profesionale de curatare mocheta si covor la domiciliu. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov. Preturi competitive.',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'utile', component: UtilsComponent,
    data: {
      title: 'Utile',
      description: 'Apeleaza la servicii profesionale de curatare mocheta si covor la domiciliu. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov. Preturi competitive.',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'preturi', component: PricesComponent,
    data: {
      title: 'Preturi',
      description: 'Apeleaza la servicii profesionale de curatare mocheta si covor la domiciliu. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov. Preturi competitive.',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'setari-gdpr', component: GdprComponent,
    data: {
      title: 'Setari GDPR',
      description: 'Apeleaza la servicii profesionale de curatare mocheta si covor la domiciliu. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov. Preturi competitive.',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'confidentialitate', component: ConfidentialityComponent,
    data: {
      title: 'Confidentialitate',
      description: 'Apeleaza la servicii profesionale de curatare mocheta si covor la domiciliu. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov. Preturi competitive.',
      ogUrl: 'your og url'
    }
  },
  {
    path: 'setari-cookies', component: CookiesComponent,
    data: {
      title: 'Setari cookies',
      description: 'Apeleaza la servicii profesionale de curatare mocheta si covor la domiciliu. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov. Preturi competitive.',
      ogUrl: 'your og url'
    }
  },
  {
    path: 'termeni-si-conditii', component: TermsComponent,
    data: {
      title: 'Termeni si conditii',
      description: 'Apeleaza la servicii profesionale de curatare mocheta si covor la domiciliu. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov. Preturi competitive.',
      ogUrl: 'your og url'
    }
  },
  {
    path: 'contact', component: ContactComponent,
    data: {
      title: 'Contact',
      description: 'Apeleaza la servicii profesionale de curatare mocheta si covor la domiciliu. Suntem o firma de curatenie ce oferim servicii in Bucuresti si Ilfov. Preturi competitive.',
      ogUrl: 'your og url'
    }
  },
  { path: '404', component: NotFoundComponent },

  { path: 'thank-you', component: ThankYouComponent },

  { path: '**', redirectTo: '/404' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
