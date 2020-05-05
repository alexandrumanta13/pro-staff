import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HomeCleaningComponent } from './home-cleaning.component';

describe('HomeCleaningComponent', () => {
  let component: HomeCleaningComponent;
  let fixture: ComponentFixture<HomeCleaningComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HomeCleaningComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HomeCleaningComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
