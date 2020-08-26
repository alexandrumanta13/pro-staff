import { Injectable, Inject } from '@angular/core';
import { User } from '../models';
import { Role } from '../models/';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject, Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { environment } from '../../environments/environment';
import { DOCUMENT } from '@angular/common';
import { Router } from '@angular/router';



@Injectable({ providedIn: 'root' })
export class AuthenticationService {
  private currentUserSubject: BehaviorSubject<User>;
  public currentUser: Observable<User>;
  private user: User;
  private role: Role;

  constructor(private http: HttpClient, @Inject(DOCUMENT) private document: Document, public router: Router) {
    this.currentUserSubject = new BehaviorSubject<User>(JSON.parse(localStorage.getItem('currentUser')));
    this.currentUser = this.currentUserSubject.asObservable();
  }

  public get currentUserValue(): User {
    return this.currentUserSubject.value;
  }



  isAuthorized() {
    const user = localStorage.getItem('currentUser')
    const getRole = JSON.parse(user)

    if (getRole.role == 'Admin') {
      return true
    } else {
      return !!this.user;
    }

  }

  hasRole(role: Role) {
    const user = localStorage.getItem('currentUser')
    const getRole = JSON.parse(user)

    if (getRole.role == 'Admin') {
      if(this.router.url.includes('/admin/dashboard')) {
        this.document.body.classList.add('admin');
      }
     
      return this.isAuthorized();
    } else {
      return this.isAuthorized() && this.user.role === role;
    }
  }

  login(role: Role) {
    this.user = { role: role };

    localStorage.setItem('currentUser', JSON.stringify(this.user = { role: role }));
  }

  logout() {
    this.user = null;
  }

  // login(username, password, role: Role) {
  //   return this.http.post<any>(`${environment.apiUrl}/users/authenticate`, { username, password })
  //     .pipe(map(user => {
  //       // store user details and jwt token in local storage to keep user logged in between page refreshes
  //       localStorage.setItem('currentUser', JSON.stringify(user));
  //       this.user = { role: role };
  //       this.currentUserSubject.next(user);

  //       return user;
  //     }));
  // }



  // logout() {
  //   // remove user from local storage and set current user to null
  //   localStorage.removeItem('currentUser');
  //   this.currentUserSubject.next(null);
  // }
}
