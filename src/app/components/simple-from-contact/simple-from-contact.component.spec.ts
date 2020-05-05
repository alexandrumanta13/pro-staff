import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SimpleFromContactComponent } from './simple-from-contact.component';

describe('SimpleFromContactComponent', () => {
  let component: SimpleFromContactComponent;
  let fixture: ComponentFixture<SimpleFromContactComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SimpleFromContactComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SimpleFromContactComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
