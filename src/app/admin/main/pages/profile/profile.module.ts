import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule } from '@angular/material/button';
import { MatDividerModule } from '@angular/material/divider';
import { MatIconModule } from '@angular/material/icon';
import { MatTabsModule } from '@angular/material/tabs';

import { FuseSharedModule } from 'src/@fuse/shared.module';

import { ProfileService } from '../../../main/pages/profile/profile.service';
import { ProfileComponent } from '../../../main/pages/profile/profile.component';
import { ProfileTimelineComponent } from '../../../main/pages/profile/tabs/timeline/timeline.component';
import { ProfileAboutComponent } from '../../../main/pages/profile/tabs/about/about.component';
import { ProfilePhotosVideosComponent } from '../../../main/pages/profile/tabs/photos-videos/photos-videos.component';


const routes = [
    {
        path     : 'profile',
        component: ProfileComponent,
        resolve  : {
            profile: ProfileService
        }
    }
];

@NgModule({
    declarations: [
        ProfileComponent,
        ProfileTimelineComponent,
        ProfileAboutComponent,
        ProfilePhotosVideosComponent
    ],
    imports     : [
        RouterModule.forChild(routes),

        MatButtonModule,
        MatDividerModule,
        MatIconModule,
        MatTabsModule,

        FuseSharedModule
    ],
    providers   : [
        ProfileService
    ]
})
export class ProfileModule
{
}
