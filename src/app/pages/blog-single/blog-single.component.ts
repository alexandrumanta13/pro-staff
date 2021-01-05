import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { BlogService } from 'app/services/blog.service';
import { OwlOptions } from 'ngx-owl-carousel-o';

@Component({
  selector: 'app-blog-single',
  templateUrl: './blog-single.component.html',
  styleUrls: ['./blog-single.component.scss']
})
export class BlogSingleComponent implements OnInit {


  private BLOG = 'https://pro-staff.ro/prostaff-api/v1/blog';
  private _route: string;
  post: any;
  same: any;

  customRelatedOptions: OwlOptions = {
    loop: false,
    margin: 30,
    responsive: {
      0: {
        items: 1
      },
      480: {
        items: 2
      },
      1200: {
        items: 3
      }
    }
  }


  constructor(
    private _httpClient: HttpClient,
    private route: ActivatedRoute,
    private _BlogService: BlogService,
    private _router: Router) {
    this._router.routeReuseStrategy.shouldReuseRoute = () => false;
  }

  ngOnInit(): void {
    this.route.paramMap.subscribe(params => {
      this._route = params.get('postSlug');

    });
    this._httpClient.get(`https://pro-staff.ro/prostaff-api/v1/blog/${this._route}`).subscribe((data: any) => {
      this.post = data.post[0];

    });
    this.getSame();

    this.moveToTop();
  }

  getSame() {
    this._BlogService.getSameArticles().then(blogs => {
      this.same = blogs.data;
      console.log(this.same)
    })

  }

  moveToTop() {
    const scrollToContainer = document.querySelector('.header');
    if (window.innerWidth > 991 && scrollToContainer) {
      scrollToContainer.scrollIntoView({ behavior: "smooth", block: "start", inline: "nearest" });

    }
  }
}
