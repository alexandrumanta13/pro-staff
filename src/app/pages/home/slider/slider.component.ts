import { HttpClient } from '@angular/common/http';
import { Component, ElementRef, HostBinding, Input, OnInit, ViewChild } from '@angular/core';
import { OwlOptions } from 'ngx-owl-carousel-o';

declare var $: any;
@Component({
  selector: 'app-slider',
  templateUrl: './slider.component.html',
  styleUrls: ['./slider.component.scss']
})



export class SliderComponent implements OnInit {
  sliders: any;



  $owlElement: any;

  defaultOptions: OwlOptions = {
    loop: true,
    mouseDrag: false,
    touchDrag: false,
    pullDrag: false,
    dots: true,
    dotsData: true,
    autoplay: false,
    navSpeed: 15000,
    animateOut: 'fadeOut',
    navText: ['<i class="icon-angle-left">', '<i class="icon-angle-right">'],
    responsive: {
      0: {
        items: 1
      },
      400: {
        items: 1
      },
      740: {
        items: 1
      },
      940: {
        items: 1
      }
    },
    nav: false
  }


  constructor(
    private _httpClient: HttpClient,
    private el: ElementRef
  ) {

    this._httpClient.get('https://pro-staff.ro/prostaff-api/v1/sliders')
      .subscribe((response: any) => {

        response.map(slider => {
          // this.getSliders(slider.id);
        })

      });
  }

  getSliders(id) {
    this._httpClient.get('https://pro-staff.ro/prostaff-api/v1/sliders/' + id + '/slider')
      .subscribe((response: any) => {
        console.log(response)
        this.sliders = response;
        // this.onSlidersChanged.next(this.slider);
        // this.items$ = this.onSlidersChanged.asObservable();

      });
  }

  ngOnInit(): void {

    this._httpClient.get('https://pro-staff.ro/prostaff-api/v1/sliders/slider')
      .subscribe((response: any) => {
        console.log(response)
        this.sliders = response;
      });
  }

  ngAfterViewInit() {
        
    const checkExist = setInterval(() => {
      let bg = document.querySelectorAll<HTMLElement>('.slide-bg.home')
      if (bg.length && $('.owl-item ul.scene')) {
        $('.owl-item ul.scene').parallax();
        bg.forEach(node => node.style.backgroundImage = "url('" + node.dataset.src + "')");
        clearInterval(checkExist);
      }
    }, 100);

  }

  changeSlide(i) {
    const dots: HTMLElement = document.querySelectorAll('.owl-dots .owl-dot-text')[i] as HTMLElement;
    dots.click();
  }

  ngOnDestroy() {
    // this.$owlElement.owlCarousel('destroy');
    // this.$owlElement = null;
  }

}
