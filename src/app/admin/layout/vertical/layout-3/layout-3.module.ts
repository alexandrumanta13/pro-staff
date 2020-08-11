import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';

import { FuseSidebarModule } from 'src/@fuse/components/index';
import { FuseSharedModule } from 'src/@fuse/shared.module';

import { ChatPanelModule } from '../../../layout/components/chat-panel/chat-panel.module';
import { ContentModule } from '../../../layout/components/content/content.module';
import { FooterModule } from '../../../layout/components/footer/footer.module';
import { NavbarModule } from '../../../layout/components/navbar/navbar.module';
import { QuickPanelModule } from '../../../layout/components/quick-panel/quick-panel.module';
import { ToolbarModule } from '../../../layout/components/toolbar/toolbar.module';

import { VerticalLayout3Component } from '../../../layout/vertical/layout-3/layout-3.component';

@NgModule({
    declarations: [
        VerticalLayout3Component
    ],
    imports     : [
        RouterModule,

        FuseSharedModule,
        FuseSidebarModule,

        ChatPanelModule,
        ContentModule,
        FooterModule,
        NavbarModule,
        QuickPanelModule,
        ToolbarModule
    ],
    exports     : [
        VerticalLayout3Component
    ]
})
export class VerticalLayout3Module
{
}
