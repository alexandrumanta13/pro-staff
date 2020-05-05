import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CouchCleaningComponent } from './couch-cleaning.component';

describe('CouchCleaningComponent', () => {
  let component: CouchCleaningComponent;
  let fixture: ComponentFixture<CouchCleaningComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CouchCleaningComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CouchCleaningComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
