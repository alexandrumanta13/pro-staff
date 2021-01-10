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
        let existingCartItems = JSON.parse(localStorage.getItem('productsProstaff'));
        if (!existingCartItems) {
            existingCartItems = [];
        }
        this.itemsSubject.next(existingCartItems);
        this.numTotal.next(existingCartItems.reduce((acc, pr) => acc += pr.num, 0));
        this.totalPrice.next(existingCartItems.reduce((acc, pr) => acc += pr.selectedPrice * pr.num, 0));
    }

    private itemsSubject = new BehaviorSubject<Product[]>([]);

    items$ = this.itemsSubject.asObservable();
    shippingItems$ = this.shippingSubject.asObservable();


    addToCart(product, value: number) {

        this.items$.pipe(
            take(1),
            map((products) => {
                // const existing = products.find(({ product_name }) => product.product_name === product_name);
                // const selectedQnt = products.find(({selectedQnt}) => product.selectedQnt === selectedQnt);
                // const selectedColorName = products.find(({selectedColorName}) => product.selectedColorName === selectedColorName);

                const filter = {
                    'id': product.id,
                    'selectedQnt': product.selectedQnt,
                    'selectedColorName': product.selectedColorName
                };


                const productsInLocalstorageWithColor = products.filter(function (item) {
                    for (var key in filter) {
                        if (item[key] === undefined || item[key] != filter[key])
                            return false;
                    }
                    return true;
                });

                const productsInLocalstorageWithoutColor = products.filter(function(v, i) {
                    return (v["id"] == product.id && v["selectedQnt"] == product.selectedQnt && v["selectedColor"] == undefined);
                  })

                  

                if (productsInLocalstorageWithColor.length > 0) {
                    productsInLocalstorageWithColor[0].num = value;

                } else if(productsInLocalstorageWithoutColor.length > 0) {
                    console.log(productsInLocalstorageWithoutColor)
                    productsInLocalstorageWithoutColor[0].num = value;
                } else {
                    products.push({ ...product, num: value });
                }
                localStorage.setItem('productsProstaff', JSON.stringify(products));
                this.calcTotal();
            }),
        ).subscribe();


    }

    removeFromCart(product: Product) {
        this.items$.pipe(
            take(1),
            map((products) => {
                products = products.filter(({ cart_uuid }) => cart_uuid !== product.cart_uuid);
                localStorage.setItem('productsProstaff', JSON.stringify(products));
                this.calcTotal();
            }),
        ).subscribe();
    }

    emptyCart() {
        localStorage.setItem('productsProstaff', JSON.stringify([]));
        let existingCartItems = JSON.parse(localStorage.getItem('productsProstaff'));
        this.itemsSubject.next(existingCartItems);
        this.numTotal.next(existingCartItems.reduce((acc, pr) => acc += pr.num, 0));
        this.totalPrice.next(existingCartItems.reduce((acc, pr) => acc += pr.selectedPrice * pr.num, 0));
        // this.router.navigate(['/produse']);
    }

    calcTotal() {
        let existingCartItems = JSON.parse(localStorage.getItem('productsProstaff'));
        this.itemsSubject.next(existingCartItems);
        this.numTotal.next(existingCartItems.reduce((acc, pr) => acc += pr.num, 0));
        this.totalPrice.next(existingCartItems.reduce((acc, pr) => acc += pr.selectedPrice * pr.num, 0));
    }

    sendOrder(postVars) {
        this.shippingSubject.next(postVars);
        console.log(this.shippingSubject)
    }


}
