export class Product {
    constructor(
     
      public product_name: string,
      public image: string,
      public colors: string[],
      public newProduct: Boolean,
      public discount: number,
      public price: number) 
    {}
  }

  