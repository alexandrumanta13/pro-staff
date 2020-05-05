import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ConstructorCleaningComponent } from './constructor-cleaning.component';

describe('ConstructorCleaningComponent', () => {
  let component: ConstructorCleaningComponent;
  let fixture: ComponentFixture<ConstructorCleaningComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ConstructorCleaningComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ConstructorCleaningComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
