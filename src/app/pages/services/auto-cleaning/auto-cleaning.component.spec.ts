import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AutoCleaningComponent } from './auto-cleaning.component';

describe('AutoCleaningComponent', () => {
  let component: AutoCleaningComponent;
  let fixture: ComponentFixture<AutoCleaningComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AutoCleaningComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AutoCleaningComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
