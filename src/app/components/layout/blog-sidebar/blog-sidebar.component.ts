import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { BlogService } from 'app/services/blog.service';
import * as moment from 'moment';
import 'moment/locale/ro'  // without this line it didn't work
moment.locale('ro')

@Component({
  selector: 'app-blog-sidebar',
  templateUrl: './blog-sidebar.component.html',
  styleUrls: ['./blog-sidebar.component.scss']
})
export class BlogSidebarComponent implements OnInit {

  // @Output() dateEmit = new EventEmitter<string>();
  @Output() dateEmit: EventEmitter<string> = new EventEmitter();
  post: any;
  dates: any;
  recent: any;
  blogsCategories: any;

  constructor(
    private _BlogService: BlogService,
    private route: ActivatedRoute,
    private _router: Router
  ) { }

  ngOnInit(): void {

    this.getBlogsCategories();
    this.getDatesAdded();
    this.getRecent();
  }

  getBlogsCategories() {
    this._BlogService.getBlogsCategories().then(categories => {
      this.blogsCategories = categories.data;
    })
  }

  

  getDatesAdded() {
    this._BlogService.getBlogsDatesAdded().then(blogs => {
      const datesToShow = [];
      const dateToSend = [];
      Object.keys(blogs.data).map((date, i) => {
        datesToShow[i] = moment(new Date(date)).format('MMMM YYYY');
        dateToSend[i] = date;
      })
      const output = datesToShow.map( (s, i) => ({toShow : s, toSend : dateToSend[i]}) );
      this.dates = output;
    })
  }

  getRecent() {
    this._BlogService.getRecent().then(blogs => {
      const dates = [];
      Object.keys(blogs.data).map((date, i) => {

        dates[i] = date;
        //data[i].date_added = moment(blogs.date_added).format('MMM Do, YYYY')
       
      })
      

      this.recent = blogs.data.sort((a, b) => {
        return Date.parse(b.date_added) - Date.parse(a.date_added);
      });

      this.recent.map((date, i) => {
        date.date_added = moment(date.date_added).format('MMM Do, YYYY')
      })
    })
  }

  getBlogsByDate(date?: string) {
    const convert = new Date(date);
    const month = ("0" + (convert.getMonth() + 1)).slice(-2)
    const year = `${convert.getFullYear()}`;

    const param = month + '-' + year
    console.log();
    this._router.navigate(["blog/arhiva/", param]);
    //this.dateEmit.emit(date)
  }
  
  
}
