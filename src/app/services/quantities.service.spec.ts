import { TestBed } from '@angular/core/testing';

import { QuantitiesService } from './quantities.service';

describe('QuantitiesService', () => {
  let service: QuantitiesService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(QuantitiesService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
