import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { MatButtonModule } from '@angular/material/button';
import { MatRippleModule } from '@angular/material/core';
import { MatIconModule } from '@angular/material/icon';
import { MatSlideToggleModule } from '@angular/material/slide-toggle';
import { MatTableModule } from '@angular/material/table';

import { FuseSharedModule } from 'src/@fuse/shared.module';
import { FuseSidebarModule } from 'src/@fuse/components';

import { FileManagerService } from '../../../main/apps/file-manager/file-manager.service';
import { FileManagerComponent } from '../../../main/apps/file-manager/file-manager.component';
import { FileManagerDetailsSidebarComponent } from '../../../main/apps/file-manager/sidebars/details/details.component';
import { FileManagerFileListComponent } from '../../../main/apps/file-manager/file-list/file-list.component';
import { FileManagerMainSidebarComponent } from '../../../main/apps/file-manager/sidebars/main/main.component';

const routes: Routes = [
    {
        path     : '**',
        component: FileManagerComponent,
        children : [],
        resolve  : {
            files: FileManagerService
        }
    }
];

@NgModule({
    declarations: [
        FileManagerComponent,
        FileManagerFileListComponent,
        FileManagerMainSidebarComponent,
        FileManagerDetailsSidebarComponent
    ],
    imports     : [
        RouterModule.forChild(routes),

        MatButtonModule,
        MatIconModule,
        MatRippleModule,
        MatSlideToggleModule,
        MatTableModule,

        FuseSharedModule,
        FuseSidebarModule
    ],
    providers   : [
        FileManagerService
    ]
})
export class FileManagerModule
{
}
