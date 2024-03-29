import { CanActivate, CanLoad, ActivatedRouteSnapshot, Router, Route, RouterStateSnapshot} from '@angular/router';

import { Observable } from 'rxjs';
import { Injectable } from '@angular/core';
import { AuthService } from './services';
import { Role } from './models/role';

@Injectable()
export class AuthGuard {
// export class AuthGuard implements CanActivate, CanLoad {
    constructor(
        public router: Router,
        private authService: AuthService
    ) { }

    //canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<boolean> | Promise<boolean> | boolean {
        // if (!this.authService.isAuthorized()) {
        //     this.router.navigate(['login'], { queryParams: { returnUrl: state.url }});
        //     return false;
        // }

        // const roles = route.data.roles as Role[];
        // if (roles && !roles.some(r => this.authService.hasRole(r))) {
        //     this.router.navigate(['error', 'not-found'], { queryParams: { returnUrl: state.url }});
        //     return false;
        // }

        // return true;
    //}

    //canLoad(route: Route): Observable<boolean> | Promise<boolean> | boolean {
        // if (!this.authService.isAuthorized()) {
        //     return false;
        // }

        // const roles = route.data && route.data.roles as Role[];
        // if (roles && !roles.some(r => this.authService.hasRole(r))) {
        //     return false;
        // }

        //return true;
    //}
}

