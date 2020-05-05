import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ServicePerfectCleanComponent } from './service-perfect-clean.component';

describe('ServicePerfectCleanComponent', () => {
  let component: ServicePerfectCleanComponent;
  let fixture: ComponentFixture<ServicePerfectCleanComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ServicePerfectCleanComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ServicePerfectCleanComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
