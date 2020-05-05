import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { IndustrialCleaningComponent } from './industrial-cleaning.component';

describe('IndustrialCleaningComponent', () => {
  let component: IndustrialCleaningComponent;
  let fixture: ComponentFixture<IndustrialCleaningComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ IndustrialCleaningComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(IndustrialCleaningComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
