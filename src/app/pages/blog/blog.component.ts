import { HttpClient } from '@angular/common/http';
import { Component, OnInit, Pipe, PipeTransform, ViewChild } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { BlogSidebarComponent } from 'app/components/layout/blog-sidebar/blog-sidebar.component';
import { months } from 'moment';
import { Blog } from '../../models/blog.model'
import { BlogService } from '../../services/blog.service';


enum Days {
  Dimanche,
  Lundi,
  Mardi,
  Mercredi,
  Jeudi,
  Vendredi,
  Samedi
}

enum Months {
  Janvier,
  Février,
  Mars,
  Avril,
  Mai,
  Juin,
  Juillet,
  Août,
  Septembre,
  Octobre,
  Novembre,
  Décembre
}

@Component({
  selector: 'app-blog',
  templateUrl: './blog.component.html',
  styleUrls: ['./blog.component.scss']
})

@Pipe({ name: 'frenchDate' })
export class BlogComponent implements OnInit, PipeTransform {
  recent: any;

  @ViewChild(BlogSidebarComponent) sidebar;
  private _dataRoute: string;

  transform(date: Date) {

    const dayOfMonth = date.getDate();
    const nameOfDay = Days[date.getDay()];
    const nameOfMonth = Months[date.getMonth()];
    const year = date.getFullYear();

    const result = nameOfDay + ' ' + dayOfMonth + ' ' + nameOfMonth + ' ' + year;

    return result;
  }

  data: any[];
  p: number = 1;

  posts: Blog[];



  private _categoryRoute: string;
  blogsCategories: any;
  dates: any[];
  constructor(
    private _httpClient: HttpClient,
    private route: ActivatedRoute,
    private _BlogService: BlogService,
    private _router: Router
  ) {
    this._router.routeReuseStrategy.shouldReuseRoute = () => false;
  }

  ngOnInit(): void {

    this.route.paramMap.subscribe(params => {
      this._categoryRoute = params.get('categorySlug');
      this._dataRoute = params.get('data');

    });

    this.getBlogsCategories();
    this.getDatesAdded();
    this.getRecent();

    if (this._categoryRoute) {
      this.getByCategory();
    } else if(this._dataRoute) {
      this.getBlogsByDate(this._dataRoute)
    } else {
      this.getBlogs();
    }

    
   
  }

  getBlogs() {
    this._BlogService.getBlogs().then(blogs => {
      this.posts = blogs.data.sort((a, b) => {
        return Date.parse(b.date_added) - Date.parse(a.date_added);
      });
    })

    this.moveToTop()
  }

  getBlogsCategories() {
    this._BlogService.getBlogsCategories().then(categories => {
      this.blogsCategories = categories.data;
    })
  }

  getByCategory() {
    this._BlogService.getBlogsByCategory(this._categoryRoute).then(blogs => {
      this.posts = blogs.data.sort((a, b) => {
        return Date.parse(b.date_added) - Date.parse(a.date_added);
      });
    })
    this.moveToTop()
  }

  getDatesAdded() {
    this._BlogService.getBlogsDatesAdded().then(blogs => {
      const datesArr = [];
      Object.keys(blogs.data).map((date, i) => {
        datesArr[i] = date
      })

      this.dates = datesArr;
    })
  }

  getBlogsByDate(date) {
    // const convert = new Date(date);
    // const month = ("0" + (convert.getMonth() + 1)).slice(-2)
    // const year = `${convert.getFullYear()}`;

    const res = date.split("-");
    const convert = new Date(res[0] + ' ' + res[1]);
    console.log(res[0], res[1])
    const month = ("0" + (convert.getMonth() + 1)).slice(-2)
    const year = `${convert.getFullYear()}`;

    
    this._BlogService.getBlogsByDatesAdded(res[0], res[1]).then(blogs => {
      console.log(blogs)
      this.posts = blogs.data.sort((a, b) => {
        return Date.parse(b.date_added) - Date.parse(a.date_added);
      });
    })

    this.moveToTop()
  }



  getRecent() {
    this._BlogService.getRecent().then(blogs => {
      this.recent = blogs.data.sort((a, b) => {
        return Date.parse(b.date_added) - Date.parse(a.date_added);
      });
    })
  }

  moveToTop() {
    const scrollToContainer = document.querySelector('.header');
    if(window.innerWidth > 991 && scrollToContainer) {
      scrollToContainer.scrollIntoView({ behavior: "smooth", block: "start", inline: "nearest" });

    }
  }

}
