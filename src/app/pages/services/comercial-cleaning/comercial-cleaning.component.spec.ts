import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ComercialCleaningComponent } from './comercial-cleaning.component';

describe('ComercialCleaningComponent', () => {
  let component: ComercialCleaningComponent;
  let fixture: ComponentFixture<ComercialCleaningComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ComercialCleaningComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ComercialCleaningComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
