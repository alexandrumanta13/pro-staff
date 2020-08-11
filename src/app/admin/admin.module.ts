import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { RouterModule, Routes } from '@angular/router';
import { MatMomentDateModule } from '@angular/material-moment-adapter';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { InMemoryWebApiModule } from 'angular-in-memory-web-api';
import { TranslateModule } from '@ngx-translate/core';
import 'hammerjs';

import { FuseModule } from '../../@fuse/fuse.module';
import { FuseSharedModule } from '../../@fuse/shared.module';
import { FuseProgressBarModule, FuseSidebarModule, FuseThemeOptionsModule } from '../../@fuse/components';

import { fuseConfig } from './fuse-config';

import { FakeDbService } from './fake-db/fake-db.service';
import { AppStoreModule } from './store/store.module';
import { LayoutModule } from './layout/layout.module';
import { AdminComponent } from './admin/admin.component';
import { AdminRoutingModule } from './admin.routing.module';

const appRoutes: Routes = [
    {
        path        : 'apps',
        // loadChildren: './main/apps/apps.module#AppsModule'
        //loadChildren: () => import('./main/pages/pages.module').then(m => m.PagesModule)
        //loadChildren: './main/apps/dashboards/analytics'
        loadChildren: () => import('./main/apps/dashboards/analytics/analytics.module').then(m => m.AnalyticsDashboardModule)
    },
    // {
    //     path        : 'pages',
    //     loadChildren: './main/pages/pages.module#PagesModule'
    // },
    // {
    //     path        : 'ui',
    //     loadChildren: './main/ui/ui.module#UIModule'
    // },
    // {
    //     path        : 'documentation',
    //     loadChildren: './main/documentation/documentation.module#DocumentationModule'
    // },
    // {
    //     path        : 'angular-material-elements',
    //     loadChildren: './main/angular-material-elements/angular-material-elements.module#AngularMaterialElementsModule'
    // },
    // {
    //     path      : '**',
    //     redirectTo: 'apps/dashboards/analytics'
    // }
];

@NgModule({
    imports: [
        BrowserModule,
        BrowserAnimationsModule,
        HttpClientModule,
       // AdminRoutingModule,
       RouterModule.forChild(appRoutes),

        TranslateModule.forRoot(),
        InMemoryWebApiModule.forRoot(FakeDbService, {
            delay: 0,
            passThruUnknownUrl: true
        }),

        // Material moment date module
        MatMomentDateModule,

        // Material
        MatButtonModule,
        MatIconModule,

        // Fuse modules
        FuseModule.forRoot(fuseConfig),
        FuseProgressBarModule,
        FuseSharedModule,
        FuseSidebarModule,
        FuseThemeOptionsModule,

        // App modules
        LayoutModule,
        AppStoreModule
    ],
    declarations: [
        AdminComponent,


       
    ],
   
    exports: [
        // Fuse modules
        

        FuseProgressBarModule,
        FuseSharedModule,
        FuseSidebarModule,
        FuseThemeOptionsModule,
    ],
    providers: [
        FuseModule
    ]

})
export class AdminModule {
}
