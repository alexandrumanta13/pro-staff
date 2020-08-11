import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatIconModule } from '@angular/material/icon';
import { MatInputModule } from '@angular/material/input';
import { MatListModule } from '@angular/material/list';
import { MatMenuModule } from '@angular/material/menu';
import { MatRadioModule } from '@angular/material/radio';
import { MatSidenavModule } from '@angular/material/sidenav';
import { MatToolbarModule } from '@angular/material/toolbar';

import { FuseSharedModule } from '../../../../../../src/@fuse/shared.module';

import { ChatService } from '../../../main/apps/chat/chat.service';
import { ChatComponent } from '../../../main/apps/chat/chat.component';
import { ChatStartComponent } from '../../../main/apps/chat/chat-start/chat-start.component';
import { ChatViewComponent } from '../../../main/apps/chat/chat-view/chat-view.component';
import { ChatChatsSidenavComponent } from '../../../main/apps/chat/sidenavs/left/chats/chats.component';
import { ChatUserSidenavComponent } from '../../../main/apps/chat/sidenavs/left/user/user.component';
import { ChatLeftSidenavComponent } from '../../../main/apps/chat/sidenavs/left/left.component';
import { ChatRightSidenavComponent } from '../../../main/apps/chat/sidenavs/right/right.component';
import { ChatContactSidenavComponent } from '../../../main/apps/chat/sidenavs/right/contact/contact.component';

const routes: Routes = [
    {
        path: '**',
        component: ChatComponent,
        children: [],
        resolve: {
            chat: ChatService
        }
    }
];

@NgModule({
    declarations: [
        ChatComponent,
        ChatViewComponent,
        ChatStartComponent,
        ChatChatsSidenavComponent,
        ChatUserSidenavComponent,
        ChatLeftSidenavComponent,
        ChatRightSidenavComponent,
        ChatContactSidenavComponent
    ],
    imports     : [
        RouterModule.forChild(routes),

        MatButtonModule,
        MatCardModule,
        MatFormFieldModule,
        MatIconModule,
        MatInputModule,
        MatListModule,
        MatMenuModule,
        MatRadioModule,
        MatSidenavModule,
        MatToolbarModule,

        FuseSharedModule
    ],
    providers   : [
        ChatService
    ]
})
export class ChatModule
{
}
