import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { LinkServicesComponent } from './link-services.component';

describe('LinkServicesComponent', () => {
  let component: LinkServicesComponent;
  let fixture: ComponentFixture<LinkServicesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ LinkServicesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(LinkServicesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
