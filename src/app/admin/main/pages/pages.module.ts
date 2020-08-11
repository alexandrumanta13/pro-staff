import { NgModule } from '@angular/core';

import { LoginModule } from '../../main/pages/authentication/login/login.module';
import { Login2Module } from '../../main/pages/authentication/login-2/login-2.module';
import { RegisterModule } from '../../main/pages/authentication/register/register.module';
import { Register2Module } from '../../main/pages/authentication/register-2/register-2.module';
import { ForgotPasswordModule } from '../../main/pages/authentication/forgot-password/forgot-password.module';
import { ForgotPassword2Module } from '../../main/pages/authentication/forgot-password-2/forgot-password-2.module';
import { ResetPasswordModule } from '../../main/pages/authentication/reset-password/reset-password.module';
import { ResetPassword2Module } from '../../main/pages/authentication/reset-password-2/reset-password-2.module';
import { LockModule } from '../../main/pages/authentication/lock/lock.module';
import { MailConfirmModule } from '../../main/pages/authentication/mail-confirm/mail-confirm.module';
import { ComingSoonModule } from '../../main/pages/coming-soon/coming-soon.module';
import { Error404Module } from '../../main/pages/errors/404/error-404.module';
import { Error500Module } from '../../main/pages/errors/500/error-500.module';
import { InvoiceModernModule } from '../../main/pages/invoices/modern/modern.module';
import { InvoiceCompactModule } from '../../main/pages/invoices/compact/compact.module';
import { MaintenanceModule } from '../../main/pages/maintenance/maintenence.module';
import { PricingModule } from '../../main/pages/pricing/pricing.module';
import { ProfileModule } from '../../main/pages/profile/profile.module';
import { SearchClassicModule } from '../../main/pages/search/classic/search-classic.module';
import { SearchModernModule } from '../../main/pages/search/modern/search-modern.module';
import { FaqModule } from '../../main/pages/faq/faq.module';
import { KnowledgeBaseModule } from '../../main/pages/knowledge-base/knowledge-base.module';

@NgModule({
    imports: [
        // Authentication
        LoginModule,
        Login2Module,
        RegisterModule,
        Register2Module,
        ForgotPasswordModule,
        ForgotPassword2Module,
        ResetPasswordModule,
        ResetPassword2Module,
        LockModule,
        MailConfirmModule,

        // Coming-soon
        ComingSoonModule,

        // Errors
        Error404Module,
        Error500Module,

        // Invoices
        InvoiceModernModule,
        InvoiceCompactModule,

        // Maintenance
        MaintenanceModule,

        // Pricing
        PricingModule,

        // Profile
        ProfileModule,

        // Search
        SearchClassicModule,
        SearchModernModule,

        // Faq
        FaqModule,

        // Knowledge base
        KnowledgeBaseModule
    ]
})
export class PagesModule
{

}
