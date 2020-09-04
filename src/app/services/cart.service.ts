import { BehaviorSubject } from 'rxjs';
import { Injectable } from '@angular/core';
import { Product } from '../models/product';
import { take, map } from 'rxjs/operators';

@Injectable({
    providedIn: 'root',
})
export class CartService {

    cartTotal$: number;

    constructor() {
        let existingCartItems = JSON.parse(localStorage.getItem('products'));
        if (!existingCartItems) {
            existingCartItems = [];
        }
        this.itemsSubject.next(existingCartItems);
        this.cartTotal$ = existingCartItems.reduce((acc, pr) => acc += pr.num, 0);
        
    }

    private itemsSubject = new BehaviorSubject<Product[]>([]);
    items$ = this.itemsSubject.asObservable();


    addToCart(product: Product) {
        this.items$.pipe(
            take(1),
            map((products) => {
                const existing = products.find(({ product_name }) => product.product_name === product_name);
                if (existing) {
                    existing.num += 1;
                    return;
                }
                products.push({ ...product, num: 1 });
                localStorage.setItem('products', JSON.stringify(products));
                
                this.calcTotal();
            }),
        ).subscribe();
    }

    removeFromCart(product: Product) {
        this.items$.pipe(
            take(1),
            map((products) => {
                products = products.filter(({ product_name }) => product_name !== product.product_name);
                localStorage.setItem('products', JSON.stringify(products));
                this.calcTotal();
            }),
        ).subscribe();
    }

    calcTotal() {
        let existingCartItems = JSON.parse(localStorage.getItem('products'));
        this.itemsSubject.next(existingCartItems);
        this.cartTotal$ = existingCartItems.reduce((acc, pr) => acc+= pr.num , 0);
        console.log(this.cartTotal$)
    }
}
