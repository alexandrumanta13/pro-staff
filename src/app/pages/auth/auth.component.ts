import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-auth',
  templateUrl: './auth.component.html',
  styleUrls: ['./auth.component.scss']
})
export class AuthComponent implements OnInit {

  private _httpClient: HttpClient;
  error: string;

  constructor(private httpClient: HttpClient) {
    this._httpClient = httpClient;
  }

  ngOnInit(): void {
  }

  onSubmit(form: NgForm) {
    console.log(form.value)
    this._httpClient.post(`https://pro-staff.ro/prostaff-api/v1/login`, form.value).subscribe(
      data => {
        console.log(data);
      }, error => {
        console.log(error)
        this.error = 'S-a produs o eroare!';
      }
    )
    form.reset();


  }

}
