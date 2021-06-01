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
import { CheckoutComponent } from './pages/checkout/checkout.component';
import { LoginComponent } from './pages/login/login.component';



import { AuthGuard } from './helpers/auth.guard';
import { AuthService } from './services';
import { Role } from './models/role';
import { InterorComponent } from './pages/projects/interor/interor.component';
import { ExteriorComponent } from './pages/projects/exterior/exterior.component';
import { BlogComponent } from './pages/blog/blog.component';
import { CategoryComponent } from './components/category/category.component';
import { ConfirmOrderComponent } from './pages/confirm-order/confirm-order.component';
import { AuthComponent } from './pages/auth/auth.component';
import { MyAccountComponent } from './pages/my-account/my-account.component';
import { BlogSingleComponent } from './pages/blog-single/blog-single.component';
import { MyOrdersComponent } from './pages/my-account/my-orders/my-orders.component';
import { OrderDetailsComponent } from './pages/my-account/order-details/order-details.component';
import { RecoverComponent } from './pages/recover/recover.component';
import { HowToBuyComponent } from './pages/how-to-buy/how-to-buy.component';
import { HowToPayComponent } from './pages/how-to-pay/how-to-pay.component';
import { HowToDeliveryComponent } from './pages/how-to-delivery/how-to-delivery.component';
import { HowToReturnComponent } from './pages/how-to-return/how-to-return.component';
import { ReturnFormComponent } from './pages/return-form/return-form.component';


const routes: Routes = [
  {
    path: '', component: HomeComponent,
    data: {
      title: 'Magazin specializat vopseluri profesionale | PROSTAFF',
      keyword: 'Magazin specializat vopseluri profesionale',
      description: 'PROSTAFF - magazin online de vopseluri profesionale, vopsea lavabila, vopsea decorativa, aparate, scule de vopsit, cu showroom in Bucuresti si livrare in toata tara.',
      ogUrl: 'your og url',
      dynamic: false
    }
  },

  {
    path: 'proiecte/interior', component: InterorComponent,
    data: {
      title: 'Pro staff',
      description: '',
      ogUrl: '',
      dynamic: false
    }
  },

  {
    path: 'despre-noi', component: AboutComponent,
    data: {
      title: 'Pro staff',
      description: '',
      ogUrl: '',
      dynamic: false
    }
  },

  {
    path: 'blog', component: BlogComponent,
    data: {
      title: 'Pro staff',
      description: '',
      ogUrl: '',
      dynamic: false
    }
  },

  {
    path: 'blog/:postSlug', component: BlogSingleComponent,
    data: {
      title: 'Pro staff',
      description: '',
      ogUrl: '',
      dynamic: false
    }
  },


  {
    path: 'blog/categorie/:categorySlug', component: BlogComponent,
    data: {
      title: 'Pro staff',
      description: '',
      ogUrl: '',
      dynamic: false
    }
  },

  {
    path: 'blog/arhiva/:data', component: BlogComponent,
    data: {
      title: 'Pro staff',
      description: '',
      ogUrl: '',
      dynamic: false
    }
  },


  {
    path: 'proiecte/exterior', component: ExteriorComponent,
    data: {
      title: 'Pro staff',
      description: '',
      ogUrl: '',
      dynamic: false
    }
  },

  {
    path: 'produse', component: ProductsComponent,
    data: {
      title: 'Pro staff',
      description: '',
      ogUrl: '',
      dynamic: false
    }
  },
  {
    path: 'produs/:productName', component: ProductDetailsComponent,
    data: {
      title: 'Pro staff',
      description: '',
      ogUrl: '',
      dynamic: true
    }
  },
  {
    path: 'categorie/:categorySlug', component: CategoryComponent,
    data: {
      title: 'Pro staff',
      description: '',
      ogUrl: '',
      dynamic: true
    }
  },
  {
    path: 'produse/:categorySlug', component: ProductsComponent,
    data: {
      title: 'Pro staff',
      description: '',
      ogUrl: '',
      dynamic: true
    }
  },
  {
    path: 'produse/:categorySlug/:subcategorySlug', component: ProductsComponent,
    data: {
      title: 'Pro staff',
      description: '',
      ogUrl: '',
      dynamic: true
    }
  },
  {
    path: 'produse/:categorySlug/brand/:brandSlug', component: ProductsComponent,
    data: {
      title: 'Pro staff',
      description: '',
      ogUrl: '',
      dynamic: true
    }
  },


  { path: 'cos-cumparaturi', component: CartComponent },

  { path: 'finalizeaza-comanda', component: CheckoutComponent },

  { path: 'confirmare-si-plata', component: ConfirmOrderComponent },

  {
    path: 'gdpr-cookies', component: GdprComponent,
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

  { path: 'cum-cumpar', component: HowToBuyComponent },
  { path: 'modalitati-de-plata', component: HowToPayComponent },
  { path: 'livrarea-produselor', component: HowToDeliveryComponent },
  { path: 'politica-de-retur', component: HowToReturnComponent },
  { path: 'formular-retur', component: ReturnFormComponent },

  { path: 'login', component: AuthComponent },

  { path: 'autentificare', component: AuthComponent },

  { path: 'am-uitat-parola', component: RecoverComponent },
  { path: 'am-uitat-parola/:token', component: RecoverComponent },

  { path: 'contul-meu', component: MyAccountComponent, canActivate: [AuthGuard] },
  { path: 'comenzile-mele', component: MyOrdersComponent, canActivate: [AuthGuard] },
  { path: 'comenzile-mele/:orderUUID', component: OrderDetailsComponent, canActivate: [AuthGuard] },

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

  { path: 'autentificare', component: AuthComponent },

  { path: '404', component: NotFoundComponent },

  { path: 'thank-you', component: ThankYouComponent },

  { path: '**', redirectTo: '/404' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes, {
    scrollPositionRestoration: 'top', // Add options right here
  })],
  exports: [RouterModule],
  providers: [
    //AuthGuard,
    AuthService
  ]
})
export class AppRoutingModule { }
