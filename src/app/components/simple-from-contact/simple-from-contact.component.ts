import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { Router, NavigationEnd, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-simple-from-contact',
  templateUrl: './simple-from-contact.component.html',
  styleUrls: ['./simple-from-contact.component.scss']
})
export class SimpleFromContactComponent implements OnInit {

  email: string;
  name: string;
  message: string;
  categories: string
  endpoint: string;

  http: HttpClient;

  @ViewChild('closeModal') closeModal: ElementRef
  constructor(http: HttpClient, private router: Router,) {
    
    this.http = http;
  }

  form = new FormGroup({
    name: new FormControl('', [Validators.required, Validators.minLength(3)]),
    email: new FormControl('', [Validators.required, Validators.email, Validators.pattern(new RegExp("[A-Za-z0-9._%-]+@[A-Za-z0-9._%-]+\\.[a-z]{2,3}"))]),
    phone: new FormControl('', [Validators.required, Validators.pattern(new RegExp("[0-9 ]{10}"))]),
    categories: new FormControl('', Validators.required)
  });

  get f() {
    return this.form.controls;
  }

  ngOnInit() {
    this.endpoint = "https://curatenieperfecta.ro/data/sendEmail.php";
  }

  submit() {
   
    let postVars = {
      email: this.form.value.email,
      name: this.form.value.name,
      phone: this.form.value.phone,
      categories: this.form.value.categories,
    };



    this.http.post(this.endpoint, postVars)
      .subscribe(
        response => {
          //this.closeModal.nativeElement.click()
          document.getElementById("closeModal").click()
          this.router.navigate(['/thank-you'])
        }
        
      )

  }

}




  


