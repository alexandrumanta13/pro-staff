import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { InterorComponent } from './interor.component';

describe('InterorComponent', () => {
  let component: InterorComponent;
  let fixture: ComponentFixture<InterorComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ InterorComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(InterorComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
