import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './pages/home/home.component';
import { AboutComponent } from './pages/about/about.component';
import { ContactComponent } from './pages/contact/contact.component';
import { NotFoundComponent } from './pages/not-found/not-found.component';
import { ThankYouComponent } from "./pages/thank-you/thank-you.component";
import { GdprComponent } from './pages/gdpr/gdpr.component';
import { ConfidentialityComponent } from './pages/confidentiality/confidentiality.component';
import { CookiesComponent } from "./pages/cookies/cookies.component";
import { TermsComponent } from "./pages/terms/terms.component";

import { ProductsComponent } from "./components/products/products.component";

import { ProductDetailsComponent } from './components/products/product-details/product-details.component';
import { CartComponent } from './components/cart/cart.component';
import { LoginComponent } from './pages/login/login.component';


import {CategoryProductsComponent} from './components/category-products/category-products.component';


import { AuthGuard } from './app-routing.guard';
import { AuthenticationService } from './services';
import { Role } from './models/role';
import { InterorComponent } from './pages/projects/interor/interor.component';
import { ExteriorComponent } from './pages/projects/exterior/exterior.component';
import { BlogComponent } from './pages/blog/blog.component';
import { CategoryComponent } from './components/category/category.component';


const routes: Routes = [
  {
    path: '', component: HomeComponent,
    data: {
      title: 'Pro staff',
      description: 'Description Meta Tag Content',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'proiecte/interior', component: InterorComponent,
    data: {
      title: 'Pro staff',
      description: 'Description Meta Tag Content',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'despre-noi', component: AboutComponent,
    data: {
      title: 'Pro staff',
      description: 'Description Meta Tag Content',
      ogUrl: 'your og url'
    }
  },

  {
    path: 'blog', component: BlogComponent,
    data: {
      title: 'Pro staff',
      description: 'Description Meta Tag Content',
      ogUrl: 'your og url'
    }
  },


  {
    path: 'proiecte/exterior', component: ExteriorComponent,
    data: {
      title: 'Pro staff',
      description: 'Description Meta Tag Content',
      ogUrl: 'your og url'
    }
  },

  { path: 'produse', component: ProductsComponent },
  { path: 'produse/categorie/:categorySlug', component: CategoryProductsComponent},
  { path: 'produs/:productName', component: ProductDetailsComponent },


  { path: 'categorie/:categorySlug', component: CategoryComponent },


  { path: 'cos-cumparaturi', component: CartComponent },

  {
    path: 'setari-gdpr', component: GdprComponent,
    data: {
      title: 'Setari GDPR',
      description: '',
      ogUrl: 'your og url'
    }
  },



  {
    path: 'confidentialitate', component: ConfidentialityComponent,
    data: {
      title: 'Confidentialitate',
      description: '',
      ogUrl: 'your og url'
    }
  },
  {
    path: 'setari-cookies', component: CookiesComponent,
    data: {
      title: 'Setari cookies',
      description: '',
      ogUrl: 'your og url'
    }
  },
  {
    path: 'termeni-si-conditii', component: TermsComponent,
    data: {
      title: 'Termeni si conditii',
      description: '',
      ogUrl: 'your og url'
    }
  },
  {
    path: 'contact', component: ContactComponent,
    data: {
      title: 'Contact',
      description: '',
      ogUrl: 'your og url'
    }
  },

  { path: 'login', component: LoginComponent },

  {
    path: 'admin',
    // canLoad: [AuthGuard],
    // canActivate: [AuthGuard],
    data: {
      roles: [
        Role.Admin,
      ]
    },
    loadChildren: () => import('./pages/admin/admin.module').then(m => m.AdminModule)
  },

  { path: '404', component: NotFoundComponent },

  { path: 'thank-you', component: ThankYouComponent },

  { path: '**', redirectTo: '/404' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
  providers: [
    AuthGuard,
    AuthenticationService
  ]
})
export class AppRoutingModule { }
