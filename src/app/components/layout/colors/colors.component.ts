import { HttpClient } from '@angular/common/http';
import { Component, ElementRef, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { AuthService, ModalService } from 'app/services';
import { ProductService } from 'app/services/products.service';
import { ToastrService } from 'ngx-toastr';
import { Subscription } from 'rxjs';

@Component({
  selector: 'app-colors',
  templateUrl: './colors.component.html',
  styleUrls: ['./colors.component.scss']
})
export class ColorsComponent implements OnInit {
  @Input() id: string;
  @Input() slug: string;
  @Output() selectedColor: EventEmitter<any> = new EventEmitter<any>();


  private SEND_COLOR = "https://pro-staff.ro/data/sendColor.php";
 
  isAuthentificated = false;
  private userSub: Subscription;


  private element: any;
  private _httpClient: HttpClient;
  clickedColor: boolean = false;
  NCScolors: any;
  RALcolors: any;
  colorBg: any;
  colorName: any;
  emailNCScolors: any;
  private userEmail: string;

  constructor(
    httpClient: HttpClient,
    private modalService: ModalService,
    private el: ElementRef,
    private productService: ProductService,
    private toaster: ToastrService,
    private authService: AuthService
  ) {
    this._httpClient = httpClient;
    this.element = el.nativeElement;
  }

  ngOnInit(): void {
    if (!this.id) {
      console.error('modal must have an id');
      return;
    }

    // move element to bottom of page (just before </body>) so it can be displayed above everything else
    document.body.appendChild(this.element);

    // close modal on background click
    this.element.addEventListener('click', el => {
      if (el.target.className === 'modal-background') {
        this.clickedColor = false;
        this.close();
      }
    });

    // add self (this modal instance) to the modal service so it's accessible from controllers
    this.modalService.add(this);

    this.userSub = this.authService.user.subscribe(user => {
      this.isAuthentificated = !!user;
      this.userEmail = user.email;
      console.log(user);
    })
  }

  public chooseColor(name: any, color: any): void {
    this.selectedColor.emit({'name': name, 'color':color});
    this.close();
  }

  getColorOffer(event, color, name) {
    event.stopPropagation();

    const activeColor = <HTMLElement>document.querySelector('.color-class.active');
    if (activeColor) {
      activeColor.classList.remove('active');
    }

    this.colorBg = color;
    this.colorName = name;

    event.target.parentElement.classList.add('active');
  }
  // remove self from modal service when component is destroyed
  ngOnDestroy(): void {
    this.modalService.remove(this.id);
    this.element.remove();
    this.userSub.unsubscribe();
  }

  // open modal
  open(slug): void {
    //this.getProducts(slug);
    this.element.style.display = 'block';
    document.body.classList.add('modal-open');
    this.productService.getColors(13)
      .then(data => {
        console.log(data)
        this.NCScolors = data;
      });
    this.productService.getColors(12)
      .then(data => {
        this.RALcolors = data;
      });
  }

  // close modal
  close(): void {
    this.element.style.display = 'none';
    document.body.classList.remove('modal-open');
  }

  askNCScolorsPrice(colorBg, colorName) {
    console.log(colorBg, colorName)
    if(!this.emailNCScolors && !this.isAuthentificated) {
      
      this.toaster.warning('Te rugam sa adaugi adresa de email!', '', {
        timeOut: 3000,
        positionClass: 'toast-bottom-right'
      });

      return;
    } 
    
    if(this.isAuthentificated) {
      this.emailNCScolors = this.userEmail;
      console.log(this.userEmail)
    } 

    
    
    this._httpClient.post(this.SEND_COLOR, {colorBg: colorBg, colorName: colorName, email: this.emailNCScolors}).subscribe((data: any) => {
      console.log(data)
      if(data.status == 'success') {
        this.toaster.success('Iti multumim!', `${colorBg}`, {
          timeOut: 3000,
          positionClass: 'toast-bottom-right'
        });

        this.close();
      }
    })
  }

  

}
