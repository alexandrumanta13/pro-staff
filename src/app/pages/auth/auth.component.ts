import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { AuthResponseData, AuthService } from 'app/services';
import { Observable, Subscription } from 'rxjs';
import { Router } from '@angular/router';

@Component({
  selector: 'app-auth',
  templateUrl: './auth.component.html',
  styleUrls: ['./auth.component.scss']
})
export class AuthComponent implements OnInit {

  private _httpClient: HttpClient;
  error: string;
  authObs: Observable<any>;
  private userSub: Subscription;
  isAuthentificated: boolean;

  constructor(private httpClient: HttpClient, private authService: AuthService,  public router: Router,) {
    this._httpClient = httpClient;
  }

  ngOnInit(): void {
    this.userSub = this.authService.user.subscribe(user => {
      this.isAuthentificated = !!user;
      if(this.isAuthentificated) {
        this.router.navigate(['/contul-meu']);
      }
    })
  }

  onSubmit(form: NgForm) {
    if(!form.valid) {
      return;
    }
   
    const email = form.value.email;
    const password = form.value.password;

   

    let authObs: Observable<AuthResponseData>;

    authObs = this.authService.login(email, password);

    authObs.subscribe(data => {
      console.log(data)
      this.router.navigate(['/contul-meu']);
    }, error => {
      console.log(error)
    });
    form.reset();
  }

  signup() {

  }

}
