import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { MatButtonModule } from '@angular/material/button';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatRippleModule } from '@angular/material/core';
import { MatDialogModule } from '@angular/material/dialog';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatIconModule } from '@angular/material/icon';
import { MatInputModule } from '@angular/material/input';
import { MatMenuModule } from '@angular/material/menu';
import { MatSelectModule } from '@angular/material/select';
import { MatToolbarModule } from '@angular/material/toolbar';
import { TranslateModule } from '@ngx-translate/core';

import { FuseSharedModule } from '../../../../../../src/@fuse/shared.module';
import { FuseSidebarModule } from '../../../../../../src/@fuse/components';

import * as fromGuards from '../../../main/apps/mail-ngrx/store/guards/index';
import { MailNgrxStoreModule } from '../../../main/apps/mail-ngrx/store/store.module';
import { MailNgrxComponent } from '../../../main/apps/mail-ngrx/mail.component';
import { MailNgrxListComponent } from '../../../main/apps/mail-ngrx/mail-list/mail-list.component';
import { MailNgrxListItemComponent } from '../../../main/apps/mail-ngrx/mail-list/mail-list-item/mail-list-item.component';
import { MailNgrxDetailsComponent } from '../../../main/apps/mail-ngrx/mail-details/mail-details.component';
import { MailNgrxMainSidebarComponent } from '../../../main/apps/mail-ngrx/sidebars/main/main-sidebar.component';
import { MailNgrxComposeDialogComponent } from '../../../main/apps/mail-ngrx/dialogs/compose/compose.component';
import { MailNgrxService } from '../../../main/apps/mail-ngrx/mail.service';

const routes: Routes = [
    {
        path       : 'label/:labelHandle',
        component  : MailNgrxComponent,
        canActivate: [fromGuards.ResolveGuard]
    },
    {
        path       : 'label/:labelHandle/:mailId',
        component  : MailNgrxComponent,
        canActivate: [fromGuards.ResolveGuard]
    },
    {
        path       : 'filter/:filterHandle',
        component  : MailNgrxComponent,
        canActivate: [fromGuards.ResolveGuard]
    },
    {
        path       : 'filter/:filterHandle/:mailId',
        component  : MailNgrxComponent,
        canActivate: [fromGuards.ResolveGuard]
    },
    {
        path       : ':folderHandle',
        component  : MailNgrxComponent,
        canActivate: [fromGuards.ResolveGuard]
    },
    {
        path       : ':folderHandle/:mailId',
        component  : MailNgrxComponent,
        canActivate: [fromGuards.ResolveGuard]
    },
    {
        path      : '**',
        redirectTo: 'inbox'
    }
];

@NgModule({
    declarations   : [
        MailNgrxComponent,
        MailNgrxListComponent,
        MailNgrxListItemComponent,
        MailNgrxDetailsComponent,
        MailNgrxMainSidebarComponent,
        MailNgrxComposeDialogComponent
    ],
    imports        : [
        RouterModule.forChild(routes),

        MatButtonModule,
        MatCheckboxModule,
        MatDialogModule,
        MatFormFieldModule,
        MatIconModule,
        MatInputModule,
        MatMenuModule,
        MatRippleModule,
        MatSelectModule,
        MatToolbarModule,

        TranslateModule,

        FuseSharedModule,
        FuseSidebarModule,

        MailNgrxStoreModule
    ],
    providers      : [
        MailNgrxService,
        fromGuards.ResolveGuard
    ],
    entryComponents: [MailNgrxComposeDialogComponent]
})
export class MailNgrxModule
{
}
