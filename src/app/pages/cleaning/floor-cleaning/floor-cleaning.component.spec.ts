import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FloorCleaningComponent } from './floor-cleaning.component';

describe('FloorCleaningComponent', () => {
  let component: FloorCleaningComponent;
  let fixture: ComponentFixture<FloorCleaningComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FloorCleaningComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FloorCleaningComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
