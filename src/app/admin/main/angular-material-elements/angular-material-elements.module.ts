import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { FuseSharedModule } from '../../../../../src/@fuse/shared.module';
import { FuseHighlightModule } from '../../../../../src/@fuse/components/index';
import { FuseWidgetModule } from '../../../../../src/@fuse/components/widget/widget.module';

import { MaterialModule } from '../../main/angular-material-elements/material.module';
import { EXAMPLE_LIST } from '../../main/angular-material-elements/example-components';
import { AngularMaterialElementsComponent } from '../../main/angular-material-elements/angular-material-elements.component';
import { ExampleViewerComponent } from '../../main/angular-material-elements/example-viewer/example-viewer';

const routes: Routes = [
    {
        path    : '',
        children: [
            {
                path     : ':id',
                component: AngularMaterialElementsComponent
            }
        ]
    }
];

@NgModule({
    declarations   : [
        [...EXAMPLE_LIST],
        AngularMaterialElementsComponent,
        ExampleViewerComponent
    ],
    imports        : [
        RouterModule.forChild(routes),

        MaterialModule,

        FuseSharedModule,
        FuseHighlightModule,
        FuseWidgetModule
    ],
    entryComponents: EXAMPLE_LIST,
})
export class AngularMaterialElementsModule
{
}

