import { Injectable } from '@angular/core';
import { Router, CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, CanLoad, UrlTree } from '@angular/router';
import { Observable } from 'rxjs';
import { map, take, tap } from 'rxjs/operators';

import { AuthService } from '../services';

@Injectable({ providedIn: 'root' })

export class AuthGuard implements CanActivate {
    constructor(
        private router: Router,
        private authService: AuthService
    ) { }

    canActivate(route: ActivatedRouteSnapshot, router: RouterStateSnapshot): | boolean  | UrlTree  | Promise<boolean | UrlTree> | Observable<boolean | UrlTree> {
        return this.authService.user.pipe(
            take(1),
            map(user => {
                const isAuth = !!user;

                
                if (isAuth) {
                  return true;
                }
                return this.router.createUrlTree(['/autentificare']);
        }), 
        //tap(isAuth => {
           
            // if(!isAuth) {
            //     console.log('asdadsa1')
            //     return this.router.createUrlTree['/autentificare']
            // } else {
            //     console.log('asdsadas2')
            //     return this.router.createUrlTree['/contul-meu']
            // }
        //})
    )
    }

    // canLoad(route: Route): Observable<boolean> | Promise<boolean> | boolean {
    //     if (!this.authService.isAuthorized()) {
    //         return false;
    //     }

    //     const roles = route.data && route.data.roles as Role[];
    //     if (roles && !roles.some(r => this.authService.hasRole(r))) {
    //         return false;
    //     }

    //     return true;
    // }
}
