import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './pages/home/home.component';
import { ContactComponent } from './pages/contact/contact.component';
import { NotFoundComponent } from './components/not-found/not-found.component';
import { ThankYouComponent } from "./components/thank-you/thank-you.component";
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
