import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ServiceBiocidComponent } from './service-biocid.component';

describe('ServiceBiocidComponent', () => {
  let component: ServiceBiocidComponent;
  let fixture: ComponentFixture<ServiceBiocidComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ServiceBiocidComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ServiceBiocidComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
