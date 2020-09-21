import { BehaviorSubject, Subject } from 'rxjs';
import { Injectable } from '@angular/core';
import { Product } from '../models/product';
import { take, map } from 'rxjs/operators';
import { Router } from '@angular/router';

@Injectable({
    providedIn: 'root',
})
export class CartService {

    cartTotal$: number;

    public numTotal = new BehaviorSubject<any>(0);
    public totalPrice = new BehaviorSubject<any>(0);
    public shippingSubject = new BehaviorSubject({});
    

    constructor(public router: Router) {
        let existingCartItems = JSON.parse(localStorage.getItem('products'));
        if (!existingCartItems) {
            existingCartItems = [];
        }
        this.itemsSubject.next(existingCartItems);
        this.numTotal.next(existingCartItems.reduce((acc, pr) => acc += pr.num, 0));
        this.totalPrice.next(existingCartItems.reduce((acc, pr) => acc += pr.price * pr.num, 0));
    }

    private itemsSubject = new BehaviorSubject<Product[]>([]);
 
    items$ = this.itemsSubject.asObservable();
    shippingItems$ = this.shippingSubject.asObservable();


    addToCart(product: Product, value: number) {
            this.items$.pipe(
                take(1),
                map((products) => {
                    const existing = products.find(({ product_name }) => product.product_name === product_name);
                    if (existing) {
                        existing.num += value;
                    } else {
                        products.push({ ...product, num: value });
                    }
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

    emptyCart() {
        localStorage.setItem('products', JSON.stringify([]));
        let existingCartItems = JSON.parse(localStorage.getItem('products'));
        this.itemsSubject.next(existingCartItems);
        this.numTotal.next(existingCartItems.reduce((acc, pr) => acc+= pr.num , 0));
        this.totalPrice.next(existingCartItems.reduce((acc, pr) => acc += pr.price * pr.num, 0));
       // this.router.navigate(['/produse']);
    }

    calcTotal() {
        let existingCartItems = JSON.parse(localStorage.getItem('products'));
        this.itemsSubject.next(existingCartItems);
        this.numTotal.next(existingCartItems.reduce((acc, pr) => acc+= pr.num , 0));
        this.totalPrice.next(existingCartItems.reduce((acc, pr) => acc += pr.price * pr.num, 0));
    }

    sendOrder(postVars) {
        this.shippingSubject.next(postVars);
        console.log(this.shippingSubject)
    }

   
}
