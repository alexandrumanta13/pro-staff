import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HowToReturnComponent } from './how-to-return.component';

describe('HowToReturnComponent', () => {
  let component: HowToReturnComponent;
  let fixture: ComponentFixture<HowToReturnComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HowToReturnComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HowToReturnComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
