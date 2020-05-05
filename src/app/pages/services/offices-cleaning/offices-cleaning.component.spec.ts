import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { OfficesCleaningComponent } from './offices-cleaning.component';

describe('OfficesCleaningComponent', () => {
  let component: OfficesCleaningComponent;
  let fixture: ComponentFixture<OfficesCleaningComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ OfficesCleaningComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(OfficesCleaningComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
