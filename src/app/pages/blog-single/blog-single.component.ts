import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-blog-single',
  templateUrl: './blog-single.component.html',
  styleUrls: ['./blog-single.component.scss']
})
export class BlogSingleComponent implements OnInit {


  private BLOG = 'https://pro-staff.ro/prostaff-api/v1/blog';
  private _route: string;
  post: any;

  constructor(private _httpClient: HttpClient, private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.route.paramMap.subscribe(params => {
      this._route = params.get('postSlug');
      
    });
    this._httpClient.get(`https://pro-staff.ro/prostaff-api/v1/blog/${this._route}`).subscribe((data: any) => {
      console.log(data)
      this.post = data.post[0];
    });
    console.log(this._route)
  }

}
