import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CarpetCleaningComponent } from './carpet-cleaning.component';

describe('CarpetCleaningComponent', () => {
  let component: CarpetCleaningComponent;
  let fixture: ComponentFixture<CarpetCleaningComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CarpetCleaningComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CarpetCleaningComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
