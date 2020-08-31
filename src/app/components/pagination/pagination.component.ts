import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-pagination',
  templateUrl: './pagination.component.html',
  styleUrls: ['./pagination.component.scss']
})
export class PaginationComponent implements OnInit {

  public currentPage: number = 1;
  public previousPage: number = this.currentPage - 1;
  public nextPage: number = this.currentPage + 1;
  public totalPages: number = 1;
  public pages: number[] = [];

  constructor() { }

  ngOnInit(): void {
  }

  getTotalPages()
  {
    return this.totalPages;
  }

  setTotalPages(page: number)
  {
    this.totalPages = page;
  }

  setPagesArray(maxPage: number)
  {
    this.pages = Array(maxPage).fill(0).map((x,i) => i+1);
  }

  setCurrentPage(page: number) {
    if (this.currentPage <= this.totalPages) {
      this.currentPage = page;
    }
  }

  increaseCurrentPage() {
    if (this.currentPage < this.totalPages) {
      this.currentPage += 1;
    }
  }

  decreaseCurrentPage() {
    if (this.currentPage > 1) {
      this.currentPage -= 1;
    }
  }

}
