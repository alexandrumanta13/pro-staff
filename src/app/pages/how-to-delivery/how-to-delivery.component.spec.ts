import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HowToDeliveryComponent } from './how-to-delivery.component';

describe('HowToDeliveryComponent', () => {
  let component: HowToDeliveryComponent;
  let fixture: ComponentFixture<HowToDeliveryComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HowToDeliveryComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HowToDeliveryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
