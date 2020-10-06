export interface Product {
    id: number,
    product_name: string,
    image_url: string,
    sku: string,
    price: number,
    description: string,
    alias: string,
    featured: number,
    num: number,
    availableQuantities: any;
    selectedQnt: any;
    selectedColor: any;
    selectedColorName: any;
    selectedPrice;
    cart_uuid;
}

// colors: string[],
//     newProduct: Boolean,
//     discount: number,