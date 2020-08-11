import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatIconModule } from '@angular/material/icon';

import { FuseSharedModule } from '../../../../../../src/@fuse/shared.module';
import { FuseHighlightModule } from '../../../../../../src/@fuse/components';

import { DocsGettingStartedIntroductionComponent } from '../../../main/documentation/getting-started/introduction/introduction.component';
import { DocsGettingStartedInstallationComponent } from '../../../main/documentation/getting-started/installation/installation.component';

const routes = [
    {
        path     : 'introduction',
        component: DocsGettingStartedIntroductionComponent
    },
    {
        path     : 'installation',
        component: DocsGettingStartedInstallationComponent
    }
];

@NgModule({
    declarations: [
        DocsGettingStartedIntroductionComponent,
        DocsGettingStartedInstallationComponent
    ],
    imports     : [
        RouterModule.forChild(routes),

        MatIconModule,

        FuseSharedModule,
        FuseHighlightModule
    ]
})
export class GettingStartedModule
{
}
