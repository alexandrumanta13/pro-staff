// // import { Injectable } from '@angular/core';
// // import { Router, CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';

// // import { AuthenticationService } from '../services';

// // @Injectable({ providedIn: 'root' })
// // export class AuthGuard implements CanActivate {
// //     constructor(
// //         private router: Router,
// //         private AuthenticationService: AuthenticationService
// //     ) {}

// //     canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
// //         const currentUser = this.AuthenticationService.currentUserValue;
// //         if (currentUser) {
// //             // authorised so return true
// //             return true;
// //         }

// //         // not logged in so redirect to login page with the return url
// //         this.router.navigate(['/login'], { queryParams: { returnUrl: state.url }});
// //         return false;
// //     }
// // }

// import { CanActivate, Router, ActivatedRouteSnapshot, CanLoad, Route, RouterStateSnapshot } from '@angular/router';
// import { Observable } from 'rxjs';
// import { Injectable } from '@angular/core';
// import { AuthenticationService } from '../services';
// import { Role } from '../models/role';

// @Injectable()
// export class AuthGuard implements CanActivate, CanLoad {
//     constructor(
//         private router: Router,
//         private authService: AuthenticationService
//     ) { }

//     canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<boolean> | Promise<boolean> | boolean {
//         if (!this.authService.isAuthorized()) {
//             this.router.navigate(['login']);
//             return false;
//         }

//         const roles = route.data.roles as Role[];
//         if (roles && !roles.some(r => this.authService.hasRole(r))) {
//             this.router.navigate(['error', 'not-found']);
//             return false;
//         }

//         return true;
//     }

//     canLoad(route: Route): Observable<boolean> | Promise<boolean> | boolean {
//         if (!this.authService.isAuthorized()) {
//             return false;
//         }

//         const roles = route.data && route.data.roles as Role[];
//         if (roles && !roles.some(r => this.authService.hasRole(r))) {
//             return false;
//         }

//         return true;
//     }
// }
