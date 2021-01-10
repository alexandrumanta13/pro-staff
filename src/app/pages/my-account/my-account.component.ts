import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService, MyAccountService } from 'app/services';
import { ToastrService } from 'ngx-toastr';
import { Subscription } from 'rxjs';

@Component({
  selector: 'app-my-account',
  templateUrl: './my-account.component.html',
  styleUrls: ['./my-account.component.scss']
})
export class MyAccountComponent implements OnInit {

  isAuthentificated = false;
  private userSub: Subscription;
  model: any = {};
  changePass: boolean = false;


  constructor(
    private authService: AuthService,
    private myAccountService: MyAccountService,
    private toaster: ToastrService,
    public router: Router
  ) { }

  ngOnInit(): void {
    this.userSub = this.authService.user.subscribe(user => {
      this.isAuthentificated = !!user;
        this.model.id = user.id;
        this.model.name = user.name;
        this.model.last_name = user.last_name;
        this.model.email = user.email;
    })
  }

  ngOnDestroy() {
    this.userSub.unsubscribe();
  }

  onSubmit() {
    console.log(this.model)
    this.myAccountService.updateUser(this.model).then(data => {
      if (data.success === true) {
        this.toaster.success('Te rugam sa te autentifici din nou!', `${data.message}`, {
          timeOut: 3000,
          positionClass: 'toast-bottom-right'
        });
        
        localStorage.setItem('ProstaffUserData', JSON.stringify(data.user));
        
      }
      if (data.success === false) {

        this.toaster.warning('', `${data.message}`, {
          timeOut: 3000,
          positionClass: 'toast-bottom-right'
        });
        return;
      }
      
    });
  }

  changePassAction() {
    this.changePass = !this.changePass;
  }

}
