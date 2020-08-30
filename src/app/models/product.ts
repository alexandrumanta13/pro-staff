export interface Product {
    id: number,
    product_name: string,
    image: string,
    colors: string[],
    newProduct: Boolean,
    discount: number,
    price: number
}