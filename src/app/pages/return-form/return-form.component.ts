import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-return-form',
  templateUrl: './return-form.component.html',
  styleUrls: ['./return-form.component.scss']
})
export class ReturnFormComponent implements OnInit {

  model: any = {};
  endpoint: string;

  constructor(private http: HttpClient, private router: Router,) { }

  ngOnInit(): void {
    this.endpoint = "https://pro-staff.ro/data/returnForm.php";
  }

  submit(f: NgForm) {

    // if (!this.terms) {
    //   this.toaster.warning('', 'Trebuie sa fii de acord cu termenii si conditiile site-ului!', {
    //     timeOut: 3000,
    //     positionClass: 'toast-bottom-right'
    //   });
    //   return;
    // }

    // if (!this.gdpr) {
    //   this.toaster.warning('', 'Trebuie sa fii de acord cu politica de confidentialitate a site-ului!', {
    //     timeOut: 3000,
    //     positionClass: 'toast-bottom-right'
    //   });
    //   return;
    // }
   
    let postVars = {
      email: this.model.email,
      name: this.model.name,
      order: this.model.order,
      product: this.model.product,
      message: this.model.message,
    };

    this.http.post(this.endpoint, postVars)
      .subscribe(
        response => {
          f.reset();
          this.router.navigate(['/']);
        }
        
      )

  }

}
