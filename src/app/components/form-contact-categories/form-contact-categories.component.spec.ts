import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FormContactCategoriesComponent } from './form-contact-categories.component';

describe('FormContactCategoriesComponent', () => {
  let component: FormContactCategoriesComponent;
  let fixture: ComponentFixture<FormContactCategoriesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FormContactCategoriesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FormContactCategoriesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
