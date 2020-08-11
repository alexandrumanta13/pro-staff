import { NgModule } from '@angular/core';

import { UICardsModule } from '../../main/ui/cards/cards.module';
import { UIFormsModule } from '../../main/ui/forms/forms.module';
import { UIIconsModule } from '../../main/ui/icons/icons.module';
import { UITypographyModule } from '../../main/ui/typography/typography.module';
import { UIHelperClassesModule } from '../../main/ui/helper-classes/helper-classes.module';
import { UIPageLayoutsModule } from '../../main/ui/page-layouts/page-layouts.module';
import { UIColorsModule } from '../../main/ui/colors/colors.module';

@NgModule({
    imports: [
        UICardsModule,
        UIFormsModule,
        UIIconsModule,
        UITypographyModule,
        UIHelperClassesModule,
        UIPageLayoutsModule,
        UIColorsModule
    ]
})
export class UIModule
{
}
