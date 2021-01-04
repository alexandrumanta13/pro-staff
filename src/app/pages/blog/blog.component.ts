import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Blog } from '../../models/blog.model'
import { BlogService } from '../../services/blog.service'


@Component({
  selector: 'app-blog',
  templateUrl: './blog.component.html',
  styleUrls: ['./blog.component.scss']
})
export class BlogComponent implements OnInit {

  data: any[];
  p: number = 1;

  posts: Blog[];



  private _categoryRoute: string;
  blogsCategories: any;
  constructor(
    private _httpClient: HttpClient,
    private route: ActivatedRoute,
    private _BlogService: BlogService
  ) {

  }

  ngOnInit(): void {

    this.route.paramMap.subscribe(params => {
      this._categoryRoute = params.get('categorySlug');
    });

    this.getBlogsCategories();

    if(!this._categoryRoute) {
      this.getBlogs();
    } else {
      this.getByCategory();
    }
  }
  
  getBlogs() {
    this._BlogService.getBlogs().then(blogs => {
      this.posts = blogs.data;
    })
  }

  getBlogsCategories() {
    this._BlogService.getBlogsCategories().then(categories => {
      this.blogsCategories = categories.data;
    })
  }

  getByCategory() {
    this._BlogService.getBlogsByCategory(this._categoryRoute).then(blogs => {
      console.log(blogs)
      this.posts = blogs.data;
    })
  }

}
