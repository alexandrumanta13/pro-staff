import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EventsCleaningComponent } from './events-cleaning.component';

describe('EventsCleaningComponent', () => {
  let component: EventsCleaningComponent;
  let fixture: ComponentFixture<EventsCleaningComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EventsCleaningComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EventsCleaningComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
