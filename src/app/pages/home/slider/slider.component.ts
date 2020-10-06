import { HttpClient } from '@angular/common/http';
import { Component, ElementRef, HostBinding, Input, OnInit, ViewChild } from '@angular/core';


declare var $: any;
@Component({
  selector: 'app-slider',
  templateUrl: './slider.component.html',
  styleUrls: ['./slider.component.scss']
})



export class SliderComponent implements OnInit {
  sliders: any;
 


  $owlElement: any;

  defaultOptions: any = {
    loop: true,
    margin: 0,
    responsiveClass: true,
    nav: false,
    navText: ['<i class="icon-angle-left">', '<i class="icon-angle-right">'],
    dots: true,
    autoplay: true,
    autoplayTimeout: 15000,
    items: 1,
  };

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
    // use default - empty
    // for (var key in this.options) {
    //   this.defaultOptions[key] = this.options[key];
    // }

    // var homeSlider = $('.home-slider');

    // homeSlider.owlCarousel($.extend(true, {}, this.defaultOptions, {
    //   lazyLoad: true,
    //   dotsContainer: ".home-slider-thumbs",
    //   autoplay: false,
    //   animateOut: 'fadeOut'
    // }));
    // $('.home-slider ul.scene').parallax();

    // homeSlider.on('loaded.owl.lazy', function (event) {
    //   $(event.element).closest('.home-slide').addClass('loaded');
    // });

    // $('.home-slider-thumbs').find('a').on('click', function (e) {
    //   var $this = $(this);

    //   if (!$this.hasClass('active')) {
    //     var index = $this.index();
    //     homeSlider.trigger('to.owl.carousel', [index]);
    //     $this.addClass('active').siblings().removeClass('active');
    //   }

    //   e.preventDefault();
    // });

    // this.$owlElement = $(this.el.nativeElement).owlCarousel(this.defaultOptions);
    // $(this.sliderElement.nativeElement).owlCarousel($.extend(true, {}, this.defaultOptions, {
    //   lazyLoad: true,
    //   dotsContainer: ".home-slider-thumbs",
    //   autoplay: false,
    //   animateOut: 'fadeOut'
    // }));
    var $owl = $('.home-slider');
    $owl.trigger('destroy.owl.carousel');
    // After destory, the markup is still not the same with the initial.
    // The differences are:
    //   1. The initial content was wrapped by a 'div.owl-stage-outer';
    //   2. The '.owl-carousel' itself has an '.owl-loaded' class attached;
    //   We have to remove that before the new initialization.
    $owl.html($owl.find('.owl-stage-outer').html()).removeClass('owl-loaded');
    $owl.owlCarousel(
      this.defaultOptions
    );
    //$.getScript('/assets/js/plugins.js');
    setTimeout(() => {
      $('.home-slider ul.scene').parallax();
    },2000)
    
  }

  ngOnDestroy() {
    // this.$owlElement.owlCarousel('destroy');
    // this.$owlElement = null;
  }

}
