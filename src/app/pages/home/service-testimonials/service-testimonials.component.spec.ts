import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ServiceTestimonialsComponent } from './service-testimonials.component';

describe('ServiceTestimonialsComponent', () => {
  let component: ServiceTestimonialsComponent;
  let fixture: ComponentFixture<ServiceTestimonialsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ServiceTestimonialsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ServiceTestimonialsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
