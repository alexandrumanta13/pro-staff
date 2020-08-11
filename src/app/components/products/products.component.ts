import { Component, OnInit } from '@angular/core';
import { Product } from './product.model'

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.scss']
})
export class ProductsComponent implements OnInit {
  products: Product[]
  constructor() {
    this.products = [
      new Product(
        'Pensula 100mm pentru vopsea decorativa , Gieffe , din par natural',
        'assets/images/featured-items/pensula-vopsea-decorativa-150x150.jpg',
        [],
        false,
        0,
        34.90
      ),
      new Product(
        'PENSULA 120MM PENTRU VOPSEA DECORATIVA , GIEFFE , DIN PAR NATURAL',
        'assets/images/featured-items/pensula-vopsea-decorativa-150x150.jpg',
        [],
        false,
        0,
        39.90
      ),
      new Product(
        'DORATURA – TIXE – VOPSEA DECORATIVA EXTERIOR CU EFECT AURIU METALIC PE BAZA SOLVENT',
        'https://pro-staff.ro/wp-content/uploads/2018/06/doratura_solvente.jpg',
        ['#fdb813', '#f68c1f', '#f27022', '#61c2cb'],
        true,
        0,
        51.90
      ),
      new Product(
        'PRIMER ANTIRUGINA PE BAZA DE APA – TIXE',
        'https://pro-staff.ro/wp-content/uploads/2019/01/Primer-grund-antirugina-pe-baza-de-apa-Tixe-300x300.jpg',
        ['#ff5c01', '#b90029', '#4ac0f2', '#737373'],
        false,
        25,
        69
      ),
      new Product(
        'VOPSEA DECORATIVA CU EFECT DE MATASE – TIXE – ORGANZ',
        'https://pro-staff.ro/wp-content/uploads/2020/04/vopsea-decorativa-300x300.jpg',
        ['#37414a', '#60bb22', '#f2babb', '#a8b1b8'],
        false,
        0,
        160
      ),
      new Product(
        'GLACIAL – TIXE – VOPSEA EFECT METALE PRETIOASE',
        'https://pro-staff.ro/wp-content/uploads/2019/02/glacial-300x300.jpg',
        ['#000000', '#b2c1c1'],
        false,
        0,
        150
      ),
    ]
  }

  ngOnInit(): void {
  }

}
