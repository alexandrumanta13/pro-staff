import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { QuickFormContactComponent } from './quick-form-contact.component';

describe('QuickFormContactComponent', () => {
  let component: QuickFormContactComponent;
  let fixture: ComponentFixture<QuickFormContactComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ QuickFormContactComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(QuickFormContactComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
