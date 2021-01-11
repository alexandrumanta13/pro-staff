import { HttpClient } from '@angular/common/http';
import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { NgForm } from '@angular/forms';
import { NewsletterService } from 'app/services';
import { ToastrService } from 'ngx-toastr';
@Component({
  selector: 'app-footer',
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.scss']
})
export class FooterComponent implements OnInit {

  fullYear: Date = new Date();
  getYear;
  model: any = {};

  private SEND_EMAIL = "https://pro-staff.ro/data/sendCoupon.php";

  
  @Output() navigate = new EventEmitter();

  constructor(
    private _newsletterService: NewsletterService, 
    private _toaster: ToastrService, 
    private _httpClient: HttpClient) { }

  ngOnInit(): void {
    this.getYear = this.fullYear.getFullYear();
  }

 
  changeLink(){
    this.navigate.emit(null)
  }

  onSubmit(form: NgForm) {
    this._newsletterService.generateCoupon(this.model.email).then(data => {
      
      if(data['success'] === true) {
        this._httpClient.post(this.SEND_EMAIL, {email: this.model.email, coupon: data['coupon']}).subscribe(data => {
          this._toaster.success(`${data['message']}`, `Ai fost abonat cu succes la newsletter. Beneficiezi de un coupon de reducere de 10% pentru prima ta comanda`, {
            timeOut: 8000,
            positionClass: 'toast-bottom-right'
          });
        })
        
      } else {
        this._toaster.warning(`${data['message']}`, `${data['message']}`, {
          timeOut: 3000,
          positionClass: 'toast-bottom-right'
        });
      }

      form.reset();
    })
  }

}
