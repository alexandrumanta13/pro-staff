<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

require dirname(__DIR__) . "/class-phpass.php";

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
 */

$router->group(["prefix" => "v1"], function () use ($router) {

    // rute cupon
    $router->post('coupon/generate', function (Request $request) use ($router) {
        $email = $request->json()->get('email');

        $couponExists = DB::table('coupons')->where('email', $email)->exists();

        if ($couponExists) {
            return response()->json(['success' => false, 'message' => 'Exista un cupon activ.']);
        }

        $chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        $coupon = "";
        $coupon .= date("m");

        $randomIndex = rand(0, 14);

        for ($i = 0; $i < 15; $i++) {
            if ($i == $randomIndex) {
                $coupon .= date("d");
            }
            $coupon .= $chars[mt_rand(0, strlen($chars) - 1)];
        }
        $coupon .= date("y");
        $query = DB::table('coupons')->insert
            (
            [
                'coupon' => $coupon,
                'email' => $email,
            ]
        );

        return response()->json(['success' => true, 'message' => 'Cuponul a fost generat cu succes si asteapta sa fie folosit.', 'coupon' => $coupon]);
    });

    $router->post('coupon/use', function (Request $request) use ($router) {
        
        $token = $request->auth;
        if (!$token) {
            return response()->json(['success' => false, 'message' => 'Trebuie sa fi autentificat pentru a putea utiliza codul.']);
        }
        $user = DB::table('users')->where('token', $token);
        if (!$user->exists()) {
            return response()->json(['success' => false, 'message' => 'User invalid.']);
        }

        $coupon = $request->json()->get('coupon');
        $coupon = DB::table('coupons')->where('coupon', $coupon)->where('email', $user->value('email'));

        if (!$coupon->exists()) {
            return response()->json(['success' => false, 'message' => 'Cupon invalid.']);
        }
        if ($coupon->value('used') == 1) {
            return response()->json(['success' => false, 'message' => 'Cuponul se poate folosi o singura data.']);
        }

        $coupon->update(['used' => 1]);
        return response()->json(
            [
                'success' => true,
                'type' => $coupon->get()[0]->type,
                'percent' => $coupon->get()[0]->percent,
                'message' => 'Cuponul poate fi folosit.',
            ]
        );
    });

    // rute categorii

    $router->get('categories', function () use ($router) {
        $count = DB::table('categories')->count();
        $query = DB::table('categories')->get();

        return response()->json(['count' => $count, 'data' => $query]);
    });

    $router->get('category/{slug}/subcategories', function ($slug) use ($router) {
        $count = DB::table('subcategories')
            ->join('categories', 'categories.id', '=', 'subcategories.category_id')
            ->where('categories.slug', '=', $slug)->count();
        $query = DB::table('subcategories')
        ->select('subcategories.category_id','subcategories.id', 'subcategories.subcategory_name', 'subcategories.slug')
            ->join('categories', 'categories.id', '=', 'subcategories.category_id')
            ->where('categories.slug', '=', $slug)->get();

        return response()->json(['count' => $count, 'data' => $query]);
    });

    $router->get('category/{id}/subcategoriesID', function ($id) use ($router) {
        $count = DB::table('subcategories')
            ->join('categories', 'categories.id', '=', 'subcategories.category_id')
            ->where('categories.id', '=', $id)->count();
        $query = DB::table('subcategories')
        ->select('subcategories.category_id','subcategories.id', 'subcategories.subcategory_name', 'subcategories.slug')
            ->join('categories', 'categories.id', '=', 'subcategories.category_id')
            ->where('categories.id', '=', $id)->get();

        return response()->json(['count' => $count, 'data' => $query]);
    });

    $router->get('category/{slug}/', function ($slug) use ($router) {
        $count = DB::table('categories')->where('categories.slug', '=', $slug)->count();
        $query = DB::table('categories')->where('categories.slug', '=', $slug)->get();

        return response()->json(['count' => $count, 'data' => $query]);
    });

    $router->post('category/{slug}/update', function (Request $request) use ($router) {
        $data = $request->json()->all();
        $category = DB::table('categories')->where('categories.slug', $data['slug']);
        $category->update(['banner' => $data['banner']]);
        return response()->json(['status' => 'success', 'message' => 'Update cu succes.']);
    });

    $router->post('category/{slug}/featured', function (Request $request) use ($router) {
        $data = $request->json()->all();
        $category = DB::table('categories')->where('categories.slug', $data['slug']);
        $category->update(['featured' => $data['banner']]);
        return response()->json(['status' => 'success', 'message' => 'Update cu succes.']);
    });

    $router->get('categories/featuredCategory', function () use ($router) {
        $count = DB::table('categories')->where('categories.featured', '!=', NULL)->count();
        $query = DB::table('categories')->where('categories.featured', '!=', NULL)->get();

        return response()->json(['count' => $count, 'data' => $query]);
    });

    // ruta subcategorii

    $router->get('subcategories', function () use ($router) {
        $count = DB::table('subcategories')->count();
        $query = DB::table('subcategories')->select()->get();

        return response()->json(['count' => $count, 'data' => $query]);
    });

    $router->get('subcategory/{slug}/', function ($slug) use ($router) {
        $count = DB::table('subcategories')->where('subcategories.slug', '=', $slug)->count();
        $query = DB::table('subcategories')->where('subcategories.slug', '=', $slug)->get();

        return response()->json(['count' => $count, 'data' => $query]);
    });

    $router->get('complementary/{id}/', function ($id) use ($router) {
        // $count = DB::table('products_complementary')->where('products_complementary.ProductID', '=', $id)->count();
        // $query = DB::table('products_complementary')->where('products_complementary.ProductID', '=', $id)->get();
        $count = DB::table('products_complementary')
            ->join('products', 'products.id', '=', 'products_complementary.ComplementaryID')
            ->where('products_complementary.ProductID', '=', $id)->count();
        $query = DB::table('products_complementary')
            ->select('products_complementary.id','products.product_name', 'products.alias')
                ->join('products', 'products.id', '=', 'products_complementary.ComplementaryID')
                ->where('products_complementary.ProductID', '=', $id)->get();
        return response()->json(['count' => $count, 'data' => $query]);
    });

    $router->post('complementary/delete/', function (Request $request) use ($router) {
        $data = $request->json()->all();
        $slider = DB::table('products_complementary')->where('id', $data['id']);
        $slider->delete();
        
        
        return response()->json(['status' => 'success', 'message' => 'Produsul a fost stears cu succes.']);
    });

    $router->post('quantity/delete', function (Request $request) use ($router) {
        $data = $request->json()->all();
        $qnt = DB::table('product_info_')
        ->where('QuantityID', $data['QuantityID'])
        ->where('ProductID', $data['ProductID']);

        $qnt->delete();
        
        
        return response()->json(['success' => true, 'message' => 'Cantitatea a fost stersa cu succes.']);
    });

    // rute brand

    $router->get('brands', function () use ($router) {
        $count = DB::table('brands')->count();
        $query = DB::table('brands')
        ->select()
        ->orderBy('brand_name', 'asc')
        ->get();

        for($i = 0; $i < count($query); $i++) {
            $productsCount = DB::table('product_brands')
                ->select()
                ->join('brands', 'brands.id', '=', 'product_brands.BrandID')
                ->join('products', 'products.id', '=', 'product_brands.ProductID')
                ->where('brands.id', $query[$i]->id)
                ->where('products.isActive', '1')
                ->count();
            $query[$i]->productCount = $productsCount;
        }

        return response()->json(['count' => $count, 'data' => $query]);
    });

    $router->post('products/brand', function (Request $request) use ($router) {

        $slug = $request->json()->get('brandSlug');
        $jsonData = [
            'products' => null,
        ];
        $query = DB::table('products')
            ->select('products.id', 'product_name', 'brand', 'image_url', 'description', 'alias', 'featured', 'isActive')
            ->join('product_brands', 'product_brands.ProductID', '=', 'products.id')
            ->join('brands', 'brands.id', '=', 'product_brands.BrandID')
            ->where('brands.slug', $slug)
            ->where('isActive', '1')
            ->get();
            for ($i = 0; $i < count($query); $i++) {
                $getInfo = DB::table('product_info_')
                    ->select('product_info_.old_price', 'product_info_.price')
                    ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                    ->where('product_info_.ProductID', $query[$i]->id)
                    ->orderBy('product_info_.price', 'asc')
                    ->get();
                $query[$i]->information = $getInfo;
            }
        $jsonData["products"] = $query;
        $count = $query->count();
       
        return response()->json($jsonData);
    });

    $router->get('products/brand/category/{categorySlug}', function ($categorySlug) use ($router) {
        
        $query = DB::table('brands')
        ->select('brands.id', 'brands.brand_name')
        ->distinct()
        ->join('product_brands', 'BrandID', '=', 'brands.id')
        ->join('products', 'products.id', '=', 'product_brands.ProductID')
        ->join('product_categories', 'product_categories.ProductID', '=', 'products.id')
        ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
        ->where('categories.slug', $categorySlug)
        ->where('products.isActive', '1')
        ->get();

        for ($i = 0; $i < count($query); $i++) {
            $productCount = DB::table('product_brands')
                ->select()
                ->join('brands', 'brands.id', '=', 'product_brands.BrandID')
                ->join('products', 'products.id', '=', 'product_brands.ProductID')
                ->where('brands.id', $query[$i]->id)
                ->where('products.isActive', '1')
                ->count();
            $query[$i]->productCount = $productCount;
        }
        

        return response()->json(['data' => $query]);
    });

    $router->get('products/brand/category/{categorySlug}/subcategory/{subcategorySlug}', function ($categorySlug, $subcategorySlug) use ($router) {
        
        $query = DB::table('brands')
        ->select('brands.id', 'brands.brand_name')
        ->distinct()
        ->join('product_brands', 'BrandID', '=', 'brands.id')
        ->join('products', 'products.id', '=', 'product_brands.ProductID')
        ->join('product_categories', 'product_categories.ProductID', '=', 'products.id')
        ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
        ->join('product_subcategories', 'product_subcategories.ProductID', '=', 'products.id')
        ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
        ->where('categories.slug', $categorySlug)
        ->where('subcategories.slug', '=', $subcategorySlug)
        ->where('products.isActive', '1')
        ->get();

        for ($i = 0; $i < count($query); $i++) {
            $productCount = DB::table('product_brands')
                ->select()
                ->join('brands', 'brands.id', '=', 'product_brands.BrandID')
                ->join('products', 'products.id', '=', 'product_brands.ProductID')
                ->where('brands.id', $query[$i]->id)
                ->where('products.isActive', '1')
                ->count();
            $query[$i]->productCount = $productCount;
        }

        return response()->json(['data' => $query]);
    });

    // rute cantitati

    $router->get('quantities', function () use ($router) {
        $count = DB::table('quantities')->count();
        $query = DB::table('quantities')
        ->select()
        // ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
        // ->join('products', 'products.id', '=', 'product_info_.ProductID')
        ->orderBy('um', 'desc')
        ->get();

        for($i = 0; $i < count($query); $i++) {
            $productsCount = DB::table('product_info_')
                ->select()
                ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                ->join('products', 'products.id', '=', 'product_info_.ProductID')
                ->where('quantities.id', $query[$i]->id)
                ->count();
            $query[$i]->productCount = $productsCount;
        }

        return response()->json(['count' => $count, 'data' => $query]);
    });

    // rute produse
    $router->post('products/quantity', function (Request $request) use ($router) {

        $quantity = $request->json()->get('quantity');
        $um = $request->json()->get('um');
        $id = $request->json()->get('id');
        $jsonData = [
            'products' => null,
        ];
        $query = DB::table('products')
            ->select('products.id', 'product_name', 'sku', 'image_url', 'description', 'alias', 'featured', 'isActive')
            ->join('product_info_', 'product_info_.ProductID', '=', 'products.id')
            ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
            ->where('quantities.id', $id)
            ->orderBy('product_info_.price', 'asc')
            ->get();
            for ($i = 0; $i < count($query); $i++) {
                $getInfo = DB::table('product_info_')
                    ->select('quantities.quantity', 'quantities.um', 'product_info_.old_price', 'product_info_.price')
                    ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                    ->where('product_info_.ProductID', $query[$i]->id)
                    ->where('product_info_.QuantityID', $id)
                    ->orderBy('product_info_.price', 'asc')
                    ->get();
                $query[$i]->information = $getInfo;
            }
        $jsonData["products"] = $query;
        $count = $query->count();
       
        return response()->json($jsonData);
    });

    $router->get('products/quantity/category/{categorySlug}', function ($categorySlug) use ($router) {
        
        $query = DB::table('quantities')
        ->select('quantities.id', 'quantities.quantity', 'quantities.um')
        ->join('product_info_', 'QuantityID', '=', 'quantities.id')
        ->join('products', 'products.id', '=', 'product_info_.ProductID')
        ->join('product_categories', 'product_categories.ProductID', '=', 'products.id')
        ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
        ->where('categories.slug', $categorySlug)
        ->orderBy('um', 'desc')
        ->get();

        for($i = 0; $i < count($query); $i++) {
            $productsCount = DB::table('product_info_')
                ->select()
                ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                ->join('products', 'products.id', '=', 'product_info_.ProductID')
                ->where('quantities.id', $query[$i]->id)
                ->count();
            $query[$i]->productCount = $productsCount;
        }

        return response()->json(['data' => $query]);
    });

    $router->get('products/quantity/category/{categorySlug}/subcategory/{subcategorySlug}', function ($categorySlug, $subcategorySlug) use ($router) {
        
        $query = DB::table('quantities')
        ->select('quantities.id', 'quantities.quantity', 'quantities.um')
        ->join('product_info_', 'QuantityID', '=', 'quantities.id')
        ->join('products', 'products.id', '=', 'product_info_.ProductID')
        ->join('product_categories', 'product_categories.ProductID', '=', 'products.id')
        ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
        ->join('product_subcategories', 'product_subcategories.ProductID', '=', 'products.id')
        ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
        ->where('categories.slug', $categorySlug)
        ->where('subcategories.slug', '=', $subcategorySlug)
        ->orderBy('um', 'desc')
        ->get();

        for($i = 0; $i < count($query); $i++) {
            $productsCount = DB::table('product_info_')
                ->select()
                ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                ->join('products', 'products.id', '=', 'product_info_.ProductID')
                ->where('quantities.id', $query[$i]->id)
                ->count();
            $query[$i]->productCount = $productsCount;
        }

        return response()->json(['data' => $query]);
    });

    $router->post('product', function (Request $request) use ($router) { //add product
        $data = $request->json();
       
        // $folderPath = '/home/proadmin2018/public_html/assets/img/';
        // $i = 0;
        // $img = uniqid();
        // foreach ($_FILES['file']['name'] as $image) {
        //     $targetfolder = $folderPath . $image;
        //     move_uploaded_file($_FILES['file']['tmp_name'][$i], $targetfolder);
        // }

        // generate file name
        // $fileName = time().'.'.$data->get('image')["fileExtension"];
        // // set path to store image
        //$path = '/home/proadmin2018/public_html/assets/img/'.$fileName;

        // store decoded version of image
        // file_put_contents($path, base64_decode($data->get('image')->value));

        // $image_url = 'http://pro-staff.ro/assets/img/'.$fileName;
        $alias = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $data->get('product_name'))));

        $productId = DB::table('products')->insertGetId(
            [
                'product_name' => $data->get('product_name'),
                'sku' => $data->get('sku'),
                'brand' => $data->get('brand'),
                'isActive' => $data->get('isActive'),
                'image_url' => $data->get('image_url'),
                'description' => $data->get('description'),
                'alias' => $alias,
                'featured' => $data->get('featured'),
                'categoryFeatured' => $data->get('categoryFeatured'),
                'datasheet' => $data->get('datasheet'),
                'PaletteColorID' => $data->get('palette'),
            ]
        );

        $metadata = $data->get('information');
        $categories = $data->get('categories');
        $subcategories = $data->get('subcategories');
        $additionalImages = $data->get('additional_images');
        $complementary_products = $data->get('complementary_products');

        if($complementary_products != null) {
            for($i = 0; $i < count($complementary_products); $i++)
            {
                DB::table('products_complementary')->insert(
                    [
                        'ProductID' => $productId,
                        'ComplementaryID' => $complementary_products[$i]
                    ]
                );
            }
        }

       

        for($i = 0; $i < count($additionalImages); $i++)
        {
            DB::table('product_images')->insert(
                [
                    'ProductID' => $productId,
                    //'image_reference' => $additionalImages[$i]['image_reference'],
                    'image_reference' => null,

                    // 'image_url' => $additionalImages[$i]['image_url']
                    'image_url' => $additionalImages[$i]
                ]
            );
        }

        for($i = 0; $i < count($categories); $i++)
        {
            DB::table('product_categories')->insert(
                [
                    'ProductID' => $productId,
                    'CategoryID' => $categories[$i]
                ]
                );
        }

        for($i = 0; $i < count($subcategories); $i++)
        {
            DB::table('product_subcategories')->insert(
                [
                    'ProductID' => $productId,
                    'SubcategoryID' => $subcategories[$i]
                ]
                );
        }


        for ($i = 0; $i < count($metadata); $i++) {
            
            $quantity = DB::table('quantities')
                ->where(
                    [
                        ['quantity', $metadata[$i]['quantity']],
                        ['um', $metadata[$i]['um']],
                    ]
                );
            if ($quantity->exists()) {
                $quantityId = $quantity->value('id');

                // $colorPalette = DB::table('color_palettes')
                //     ->where('palette_name', $metadata[$i]['palette']);

                // if ($colorPalette->exists()) {
                //     $colorPaletteId = $colorPalette->value('id');
                // } else {
                //     $colorPaletteId = DB::table('color_palettes')->insertGetId(
                //         [
                //             'palette_name' => $metadata[$i]['palette'],
                //         ]
                //     );
                // }

                // for ($j = 0; $j < count($metadata[$i]['colors']); $j++) {
                //     $paletteColor = DB::table('palette_colors')
                //         ->where('color', $metadata[$i]['colors'][$j]['name']);
                //     if ($paletteColor->exists()) {
                //         $paletteColorId = $paletteColor->value('id');
                //     } else {
                //         $paletteColorId = DB::table('palette_colors')->insertGetId(
                //             [
                //                 'ColorPaletteID' => $colorPaletteId,
                //                 'color' => $metadata[$i]['colors'][$j]['name'],
                //             ]
                //         );
                //     }

                //     DB::table('product_info_')->insert([
                //         'ProductID' => $productId,
                //         'QuantityID' => $quantityId,
                //         'PaletteColorID' => $paletteColorId,
                //         'old_price' => $metadata[$i]['colors'][$j]['old_price'],
                //         'price' => $metadata[$i]['colors'][$j]['price'],
                //         'datasheet' => $metadata[$i]['datasheet'],
                //     ]);

                // }
                

                    DB::table('product_info_')->insert([
                        'ProductID' => $productId,
                        'QuantityID' => $quantityId,
                        'old_price' => $metadata[$i]['old_price'],
                        'price' => $metadata[$i]['price'],
                        
                    ]);

                
            } else {
                $quantityId = DB::table('quantities')->insertGetId([
                    'quantity' => $metadata[$i]['quantity'],
                    'um' => $metadata[$i]['um'],
                ]);

                // $colorPalette = DB::table('color_palettes')
                // ->where('palette_name', $metadata[$i]['palette']);

                // if ($colorPalette->exists()) {
                //     $colorPaletteId = $colorPalette->value('id');
                // } else {
                //     $colorPaletteId = DB::table('color_palettes')->insertGetId(
                //         [
                //             'palette_name' => $metadata[$i]['palette'],
                //         ]
                //     );
                // }

                // for ($j = 0; $j < count($metadata[$i]['colors']); $j++) {
                //     $paletteColor = DB::table('palette_colors')
                //         ->where('color', $metadata[$i]['colors'][$j]['name']);
                //     if ($paletteColor->exists()) {
                //         $paletteColorId = $paletteColor->value('id');
                //     } else {
                //         $paletteColorId = DB::table('palette_colors')->insertGetId(
                //             [
                //                 'ColorPaletteID' => $colorPaletteId,
                //                 'color' => $metadata[$i]['color'],
                //             ]
                //         );
                //     }

                //     DB::table('product_info_')->insert([
                //         'ProductID' => $productId,
                //         'QuantityID' => $quantityId,
                //         'PaletteColorID' => $paletteColorId,
                //         'old_price' => $metadata[$i]['colors'][$j]['old_price'],
                //         'price' => $metadata[$i]['colors'][$j]['price'],
                //         'datasheet' => $metadata[$i]['datasheet'],
                //     ]);
                // }
                DB::table('product_info_')->insert([
                    'ProductID' => $productId,
                    'QuantityID' => $quantityId,
                    'old_price' => $metadata[$i]['old_price'],
                    'price' => $metadata[$i]['price'],
                ]);
            }
        }

        return response()->json(['success' => true, 'message' => 'Produsul a fost adaugat in baza de date.']);
    });

    $router->post('product/update', function (Request $request) use ($router) { //update product
        $data = $request->json();
       
        $alias = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $data->get('product_name'))));

        $product = DB::table('products')->where('id', $data->get('id'));

        $product->update(
            [
                'product_name' => $data->get('product_name'),
                'sku' => $data->get('sku'),
                'alias' => $alias,
                'isActive' => $data->get('isActive'),
                'image_url' => $data->get('image_url'),
                'description' => $data->get('description'),
                'featured' => $data->get('featured'),
                'categoryFeatured' => $data->get('categoryFeatured'),
                'datasheet' => $data->get('datasheet'),
                'PaletteColorID' => $data->get('palette'),
            ]
        );

        $metadata = $data->get('information');
        $categories = $data->get('categories');
        $subcategories = $data->get('subcategories');
        $additionalImages = $data->get('additional_images');
        $complementary_products = $data->get('complementary_products');
        
        if($complementary_products != null) {
            for($i = 0; $i < count($complementary_products); $i++)
            {
                $complementary = DB::table('products_complementary');
               
                $complementary->insert(
                    [
                        'ProductID' => $data->get('id'),
                        'ComplementaryID' => $complementary_products[$i]
                    ]
                );
                    
                
            }
        }

       

        for($i = 0; $i < count($additionalImages); $i++)
        {
            DB::table('product_images')->insert(
                [
                    'ProductID' => $data->get('id'),
                    //'image_reference' => $additionalImages[$i]['image_reference'],
                    'image_reference' => null,

                    // 'image_url' => $additionalImages[$i]['image_url']
                    'image_url' => $additionalImages[$i]
                ]
            );
        }
        
        for($i = 0; $i < count($categories); $i++)
        {
            $category = DB::table('product_categories')->where(['ProductID' => $data->get('id')]);
            $category->update(
                [
                    'CategoryID' => $categories[$i]
                ]
                );
        }

        for($i = 0; $i < count($subcategories); $i++)
        {
            $subcategory = DB::table('product_subcategories')->where(['ProductID' => $data->get('id')]);
            $subcategory->update(
                [
                    'SubcategoryID' => $subcategories[$i]
                ]
                );
        }


        for ($i = 0; $i < count($metadata); $i++) {
           
            $quantity = DB::table('quantities')
                ->where(
                    [
                        ['quantity', $metadata[$i]['quantity']],
                        ['um', $metadata[$i]['um']],
                    ]
                );
            if ($quantity->exists()) {
                $quantityId = $quantity->value('id');

                    $product_info = DB::table('product_info_')->where(['ProductID' => $data->get('id')])->where(['QuantityID' => $quantityId]);
                    if($product_info->exists()) {
                        $product_info->update([
                            'old_price' => $metadata[$i]['old_price'],
                            'price' => $metadata[$i]['price'],
                        ]);
                    } else {
                        DB::table('product_info_')->insert([
                            'ProductID' => $data->get('id'),
                            'QuantityID' => $quantityId,
                            'old_price' => $metadata[$i]['old_price'],
                            'price' => $metadata[$i]['price'],
                            
                        ]);
                    }
                    

                
            } else {
                $quantityId = DB::table('quantities')->insertGetId([
                    'quantity' => $metadata[$i]['quantity'],
                    'um' => $metadata[$i]['um'],
                ]);

                
               
                    DB::table('product_info_')->insert([
                        'ProductID' => $data->get('id'),
                        'QuantityID' => $quantityId,
                        'old_price' => $metadata[$i]['old_price'],
                        'price' => $metadata[$i]['price'],
                        
                    ]);
            }
        }

        return response()->json(['success' => true, 'message' => $data->get('categoryFeatured')]);
    });

    $router->get('products[/{page:[0-9*]}]', function ($page = 1) use ($router) {
        $count = DB::table('products')->count();
        $limit = 30;
        $jsonData = [
            'page' => $page ? $page : 1,
            'no_of_pages' => ceil($count / $limit),
            'no_of_productsper_page' => $limit,
            'no_of_productson_current_page' => null,
            'total_no_of_products' => $count,
            'products' => null,
        ];

        if ($page >= 1) {
            $offset = ($limit * $page) - $limit; // pg 1 = 30*1 - 30 = 0; pg 2 = 30*2 - 30 = 30; pg 3 = 30*3 - 30 = 60
            $query = DB::table('products')
                ->select('products.id', 'product_name', 'sku', 'image_url', 'description', 'alias', 'featured', 'categoryFeatured', 'isActive')
                ->limit($limit)
                ->offset($offset)
                ->where('isActive', '1')
                ->orderBy('id', 'desc')
                ->get();
            for ($i = 0; $i < count($query); $i++) {
                $images = DB::table('product_images')
                          ->select('image_reference', 'image_url')
                          ->where('ProductID', $query[$i]->id)
                          ->get();

                $categories = DB::table('product_categories')
                            ->select('categories.id', 'categories.category_name', 'categories.slug', 'categories.banner')
                            ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
                            ->where('ProductID', $query[$i]->id)
                            ->get();

                $subcategories = DB::table('product_subcategories')
                                ->select('subcategories.category_id','subcategories.id', 'subcategories.subcategory_name', 'subcategories.slug')
                                ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
                                ->where('ProductID', $query[$i]->id)
                                ->get();
                              
                $getInfo = DB::table('product_info_')
                    ->select('quantities.quantity', 'quantities.um', 'product_info_.old_price', 'product_info_.price')
                    ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                    // ->join('palette_colors', 'palette_colors.id', '=', 'product_info_.PaletteColorID')
                    // ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                    ->where('ProductID', $query[$i]->id)->orderBy('product_info_.price', 'asc')
                    ->get();

                $availablePalettes = DB::table('products')
                                ->select('color_palettes.id', 'color_palettes.palette_name', 'color_palettes.added_at')
                                ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                                ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                                ->where('products.id', $query[$i]->id)
                                ->distinct('color_palettes.palette_name')
                                ->get();

                $availableQuantities = DB::table('product_info_')
                    ->select('quantities.quantity', 'quantities.um')
                    ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                    ->where('ProductID', $query[$i]->id)->orderBy('quantities.quantity', 'asc')
                    ->distinct()
                    ->get();
                $availableColors = DB::table('products')
                    ->select('color_palettes.palette_name', 'palette_colors.color', 'palette_colors.added_at', 'palette_colors.color_image')
                    ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                    ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                    ->where('products.id', $query[$i]->id)
                    ->distinct()
                    ->get();
                $query[$i]->images = $images;
                $query[$i]->categories = $categories;
                $query[$i]->subcategories = $subcategories;
                $query[$i]->availablePalettes = $availablePalettes;
                $query[$i]->availableQuantities = $availableQuantities;
                $query[$i]->availableColors = $availableColors;
                $query[$i]->information = $getInfo;

            }

            $jsonData["products"] = $query;
            $jsonData["no_of_productson_current_page"] = count($query);
        }
        return response()->json($jsonData);
    });

    $router->get('productsAll', function ($page = 1) use ($router) {
        $count = DB::table('products')->count();
        $limit = 30;
        $jsonData = [];

        if ($page >= 1) {
            $offset = ($limit * $page) - $limit; // pg 1 = 30*1 - 30 = 0; pg 2 = 30*2 - 30 = 30; pg 3 = 30*3 - 30 = 60
            $query = DB::table('products')
                ->select('products.id', 'product_name', 'sku', 'image_url', 'description', 'alias', 'featured', 'categoryFeatured', 'isActive')
                ->where('isActive', '1')
                ->orderBy('id', 'desc')
                ->get();
            for ($i = 0; $i < count($query); $i++) {
                $images = DB::table('product_images')
                          ->select('image_reference', 'image_url')
                          ->where('ProductID', $query[$i]->id)
                          ->get();

                $categories = DB::table('product_categories')
                            ->select('categories.id', 'categories.category_name', 'categories.slug', 'categories.banner')
                            ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
                            ->where('ProductID', $query[$i]->id)
                            ->get();

                $subcategories = DB::table('product_subcategories')
                                ->select('subcategories.category_id','subcategories.id', 'subcategories.subcategory_name', 'subcategories.slug')
                                ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
                                ->where('ProductID', $query[$i]->id)
                                ->get();
                              
                $getInfo = DB::table('product_info_')
                    ->select('quantities.quantity', 'quantities.um', 'product_info_.old_price', 'product_info_.price')
                    ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                    // ->join('palette_colors', 'palette_colors.id', '=', 'product_info_.PaletteColorID')
                    // ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                    ->where('ProductID', $query[$i]->id)->orderBy('product_info_.price', 'asc')
                    ->get();

                $availablePalettes = DB::table('products')
                                ->select('color_palettes.id', 'color_palettes.palette_name', 'color_palettes.added_at')
                                ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                                ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                                ->where('products.id', $query[$i]->id)
                                ->distinct('color_palettes.palette_name')
                                ->get();

                $availableQuantities = DB::table('product_info_')
                    ->select('quantities.quantity', 'quantities.um')
                    ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                    ->where('ProductID', $query[$i]->id)->orderBy('quantities.quantity', 'asc')
                    ->distinct()
                    ->get();
                $availableColors = DB::table('products')
                    ->select('color_palettes.palette_name', 'palette_colors.color', 'palette_colors.added_at', 'palette_colors.color_image')
                    ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                    ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                    ->where('products.id', $query[$i]->id)
                    ->distinct()
                    ->get();
                $query[$i]->images = $images;
                $query[$i]->categories = $categories;
                $query[$i]->subcategories = $subcategories;
                $query[$i]->availablePalettes = $availablePalettes;
                $query[$i]->availableQuantities = $availableQuantities;
                $query[$i]->availableColors = $availableColors;
                $query[$i]->information = $getInfo;

            }

            $jsonData = $query;
           
        }
        return response()->json($jsonData);
    });

    $router->get('products/featured[/{page:[0-9*]}]', function ($page = 1) use ($router) {
        $count = DB::table('products')->where('featured', '=', 1)->count();
        $limit = 30;
        $jsonData = [
            'page' => $page ? $page : 1,
            'no_of_pages' => ceil($count / $limit),
            'no_of_productsper_page' => $limit,
            'no_of_productson_current_page' => null,
            'total_no_of_products' => $count,
            'products' => null,
        ];

        if ($page >= 1) {
            $offset = ($limit * $page) - $limit; // pg 1 = 30*1 - 30 = 0; pg 2 = 30*2 - 30 = 30; pg 3 = 30*3 - 30 = 60
            $query = DB::table('products')
                ->select('products.id', 'product_name', 'sku', 'image_url', 'description', 'alias', 'featured', 'isActive')
                ->where('featured', '=', 1)
                ->where('isActive', '1')
                ->limit($limit)
                ->offset($offset)
                ->orderBy('id', 'desc')
                ->get();

            for ($i = 0; $i < count($query); $i++) {
                $images = DB::table('product_images')
                          ->select('image_reference', 'image_url')
                          ->where('ProductID', $query[$i]->id)
                          ->get();

                $categories = DB::table('product_categories')
                            ->select('categories.id', 'categories.category_name', 'categories.slug', 'categories.banner')
                            ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
                            ->where('ProductID', $query[$i]->id)
                            ->get();

                $subcategories = DB::table('product_subcategories')
                                ->select('subcategories.category_id','subcategories.id', 'subcategories.subcategory_name', 'subcategories.slug')
                                ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
                                ->where('ProductID', $query[$i]->id)
                                ->get();
                              
                $getInfo = DB::table('product_info_')
                    ->select('quantities.quantity', 'quantities.um', 'product_info_.old_price', 'product_info_.price')
                    ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                    // ->join('palette_colors', 'palette_colors.id', '=', 'product_info_.PaletteColorID')
                    // ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                    ->where('ProductID', $query[$i]->id)->orderBy('product_info_.price', 'asc')
                    ->get();

                $availablePalettes = DB::table('products')
                                ->select('color_palettes.id', 'color_palettes.palette_name', 'color_palettes.added_at')
                                ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                                ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                                ->where('products.id', $query[$i]->id)
                                ->distinct('color_palettes.palette_name')
                                ->get();

                $availableQuantities = DB::table('product_info_')
                    ->select('quantities.quantity', 'quantities.um')
                    ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                    ->where('ProductID', $query[$i]->id)->orderBy('quantities.quantity', 'asc')
                    ->distinct()
                    ->get();
                $availableColors = DB::table('products')
                    ->select('color_palettes.palette_name', 'palette_colors.color', 'palette_colors.added_at', 'palette_colors.color_image')
                    ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                    ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                    ->where('products.id', $query[$i]->id)
                    ->distinct()
                    ->get();
                $query[$i]->images = $images;
                $query[$i]->categories = $categories;
                $query[$i]->subcategories = $subcategories;
                $query[$i]->availablePalettes = $availablePalettes;
                $query[$i]->availableQuantities = $availableQuantities;
                $query[$i]->availableColors = $availableColors;
                $query[$i]->information = $getInfo;
            }
            $jsonData["products"] = $query;
            $jsonData["no_of_productson_current_page"] = count($query);
        }
        return response()->json($jsonData);
    });

    $router->get('products/categoryFeatured[/{page:[0-9*]}]', function ($page = 1) use ($router) {
        $count = DB::table('products')->where('categoryFeatured', '=', 1)->count();
        $limit = 30;
        $jsonData = [
            'page' => $page ? $page : 1,
            'no_of_pages' => ceil($count / $limit),
            'no_of_productsper_page' => $limit,
            'no_of_productson_current_page' => null,
            'total_no_of_products' => $count,
            'products' => null,
        ];

        if ($page >= 1) {
            $offset = ($limit * $page) - $limit; // pg 1 = 30*1 - 30 = 0; pg 2 = 30*2 - 30 = 30; pg 3 = 30*3 - 30 = 60
            $query = DB::table('products')
                ->select('products.id', 'product_name', 'sku', 'image_url', 'description', 'alias', 'categoryFeatured', 'isActive')
                ->where('categoryFeatured', '=', 1)
                ->where('isActive', '1')
                ->limit($limit)
                ->offset($offset)
                ->orderBy('id', 'desc')
                ->get();

            for ($i = 0; $i < count($query); $i++) {
                $images = DB::table('product_images')
                          ->select('image_reference', 'image_url')
                          ->where('ProductID', $query[$i]->id)
                          ->get();

                $categories = DB::table('product_categories')
                            ->select('categories.id', 'categories.category_name', 'categories.slug', 'categories.banner')
                            ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
                            ->where('ProductID', $query[$i]->id)
                            ->get();

                $subcategories = DB::table('product_subcategories')
                                ->select('subcategories.category_id','subcategories.id', 'subcategories.subcategory_name', 'subcategories.slug')
                                ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
                                ->where('ProductID', $query[$i]->id)
                                ->get();
                              
                $getInfo = DB::table('product_info_')
                    ->select('quantities.quantity', 'quantities.um', 'product_info_.old_price', 'product_info_.price')
                    ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                    // ->join('palette_colors', 'palette_colors.id', '=', 'product_info_.PaletteColorID')
                    // ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                    ->where('ProductID', $query[$i]->id)->orderBy('product_info_.price', 'asc')
                    ->get();

                $availablePalettes = DB::table('products')
                                ->select('color_palettes.id', 'color_palettes.palette_name', 'color_palettes.added_at')
                                ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                                ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                                ->where('products.id', $query[$i]->id)
                                ->distinct('color_palettes.palette_name')
                                ->get();

                $availableQuantities = DB::table('product_info_')
                    ->select('quantities.quantity', 'quantities.um')
                    ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                    ->where('ProductID', $query[$i]->id)->orderBy('quantities.quantity', 'asc')
                    ->distinct()
                    ->get();
                $availableColors = DB::table('products')
                    ->select('color_palettes.palette_name', 'palette_colors.color', 'palette_colors.added_at', 'palette_colors.color_image')
                    ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                    ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                    ->where('products.id', $query[$i]->id)
                    ->distinct()
                    ->get();
                $query[$i]->images = $images;
                $query[$i]->categories = $categories;
                $query[$i]->subcategories = $subcategories;
                $query[$i]->availablePalettes = $availablePalettes;
                $query[$i]->availableQuantities = $availableQuantities;
                $query[$i]->availableColors = $availableColors;
                $query[$i]->information = $getInfo;
            }
            $jsonData["products"] = $query;
            $jsonData["no_of_productson_current_page"] = count($query);
        }
        return response()->json($jsonData);
    });

    $router->post('products/featured/category/{slug}[/{page:[0-9*]}]', function (Request $request, $slug = null, $page = 1) use ($router) {
        if (!$slug) {
            return response()->json(['error' => 'No category id provided.']);
        }
        $limit = $request->json()->get('limit') ? : 30;
        $orderBy = $request->json()->get('orderBy');
        $type = $request->json()->get('type');
        
        $count = DB::table('products')
            ->join('product_categories', 'product_categories.ProductID', '=', 'products.id')
            ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
            ->where('products.featured', '=', 1)
            ->where('categories.slug', '=', $slug)
            ->where('isActive', '1')
            ->count();

        $jsonData = [
            'page' => $page ? $page : 1,
            'no_of_pages' => ceil($count / $limit),
            'no_of_productsper_page' => $limit,
            'no_of_productson_current_page' => null,
            'total_no_of_products' => $count,
            'products' => null,
        ];

        if ($page >= 1) {
            $offset = ($limit * $page) - $limit; // pg 1 = 30*1 - 30 = 0; pg 2 = 30*2 - 30 = 30; pg 3 = 30*3 - 30 = 60
            $query = DB::table('products')
                ->select('products.id', 'product_name', 'sku', 'image_url', 'description', 'alias', 'featured', 'isActive')
                ->join('product_categories', 'product_categories.ProductID', '=', 'products.id')
                ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
                ->where('products.featured', '=', 1)
                ->where('categories.slug', '=', $slug)
                ->where('isActive', '1')
                ->limit($limit)
                ->offset($offset);
                if($orderBy && $type) {
                    $query = $query->orderBy($orderBy, $type);
                } 

                $query = $query->get();

                for ($i = 0; $i < count($query); $i++) {
                    $images = DB::table('product_images')
                          ->select('image_reference', 'image_url')
                          ->where('ProductID', $query[$i]->id)
                          ->get();

                    $categories = DB::table('product_categories')
                                ->select('categories.id', 'categories.category_name', 'categories.slug', 'categories.banner')
                                ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
                                ->where('ProductID', $query[$i]->id)
                                ->get();

                    $subcategories = DB::table('product_subcategories')
                                    ->select('subcategories.category_id','subcategories.id', 'subcategories.subcategory_name', 'subcategories.slug')
                                    ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
                                    ->where('ProductID', $query[$i]->id)
                                    ->get();
                                
                    $getInfo = DB::table('product_info_')
                        ->select('quantities.quantity', 'quantities.um', 'product_info_.old_price', 'product_info_.price')
                        ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                        // ->join('palette_colors', 'palette_colors.id', '=', 'product_info_.PaletteColorID')
                        // ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                        ->where('ProductID', $query[$i]->id)->orderBy('product_info_.price', 'asc')
                        ->get();

                    $availablePalettes = DB::table('products')
                                    ->select('color_palettes.id', 'color_palettes.palette_name', 'color_palettes.added_at')
                                    ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                                    ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                                    ->where('products.id', $query[$i]->id)
                                    ->distinct('color_palettes.palette_name')
                                    ->get();

                    $availableQuantities = DB::table('product_info_')
                        ->select('quantities.quantity', 'quantities.um')
                        ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                        ->where('ProductID', $query[$i]->id)->orderBy('quantities.quantity', 'asc')
                        ->distinct()
                        ->get();
                    $availableColors = DB::table('products')
                        ->select('color_palettes.palette_name', 'palette_colors.color', 'palette_colors.added_at', 'palette_colors.color_image')
                        ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                        ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                        ->where('products.id', $query[$i]->id)
                        ->distinct()
                        ->get();
                    $query[$i]->images = $images;
                    $query[$i]->categories = $categories;
                    $query[$i]->subcategories = $subcategories;
                    $query[$i]->availablePalettes = $availablePalettes;
                    $query[$i]->availableQuantities = $availableQuantities;
                    $query[$i]->availableColors = $availableColors;
                    $query[$i]->information = $getInfo;
                }
            $jsonData["products"] = $query;
            $jsonData["no_of_productson_current_page"] = count($query);
        }
        return response()->json($jsonData);
    });

    $router->post('products/categoryFeatured/category/{slug}[/{page:[0-9*]}]', function (Request $request, $slug = null, $page = 1) use ($router) {
        if (!$slug) {
            return response()->json(['error' => 'No category id provided.']);
        }
        $limit = $request->json()->get('limit') ? : 30;
        $orderBy = $request->json()->get('orderBy');
        $type = $request->json()->get('type');
        
        $count = DB::table('products')
            ->join('product_categories', 'product_categories.ProductID', '=', 'products.id')
            ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
            ->where('products.categoryFeatured', '=', 1)
            ->where('categories.slug', '=', $slug)
            ->where('isActive', '1')
            ->distinct()
            ->count();

        $jsonData = [
            'page' => $page ? $page : 1,
            'no_of_pages' => ceil($count / $limit),
            'no_of_productsper_page' => $limit,
            'no_of_productson_current_page' => null,
            'total_no_of_products' => $count,
            'products' => null,
        ];

        if ($page >= 1) {
            $offset = ($limit * $page) - $limit; // pg 1 = 30*1 - 30 = 0; pg 2 = 30*2 - 30 = 30; pg 3 = 30*3 - 30 = 60
            $query = DB::table('products')
                ->select('products.id', 'product_name', 'sku', 'image_url', 'description', 'alias', 'categoryFeatured', 'isActive')
                ->join('product_categories', 'product_categories.ProductID', '=', 'products.id')
                ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
                ->where('products.categoryFeatured', '=', 1)
                ->where('categories.slug', '=', $slug)
                ->where('isActive', '1')
                ->limit($limit)
                ->offset($offset);
                if($orderBy && $type) {
                    $query = $query->orderBy($orderBy, $type);
                } 

                $query = $query->get();

                for ($i = 0; $i < count($query); $i++) {
                    $images = DB::table('product_images')
                          ->select('image_reference', 'image_url')
                          ->where('ProductID', $query[$i]->id)
                          ->get();

                    $categories = DB::table('product_categories')
                                ->select('categories.id', 'categories.category_name', 'categories.slug', 'categories.banner')
                                ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
                                ->where('ProductID', $query[$i]->id)
                                ->get();

                    $subcategories = DB::table('product_subcategories')
                                    ->select('subcategories.category_id','subcategories.id', 'subcategories.subcategory_name', 'subcategories.slug')
                                    ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
                                    ->where('ProductID', $query[$i]->id)
                                    ->get();
                                
                    $getInfo = DB::table('product_info_')
                        ->select('quantities.quantity', 'quantities.um', 'product_info_.old_price', 'product_info_.price')
                        ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                        // ->join('palette_colors', 'palette_colors.id', '=', 'product_info_.PaletteColorID')
                        // ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                        ->where('ProductID', $query[$i]->id)->orderBy('product_info_.price', 'asc')
                        ->get();

                    $availablePalettes = DB::table('products')
                                    ->select('color_palettes.id', 'color_palettes.palette_name', 'color_palettes.added_at')
                                    ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                                    ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                                    ->where('products.id', $query[$i]->id)
                                    ->distinct('color_palettes.palette_name')
                                    ->get();

                    $availableQuantities = DB::table('product_info_')
                        ->select('quantities.quantity', 'quantities.um')
                        ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                        ->where('ProductID', $query[$i]->id)->orderBy('quantities.quantity', 'asc')
                        ->distinct()
                        ->get();
                    $availableColors = DB::table('products')
                        ->select('color_palettes.palette_name', 'palette_colors.color', 'palette_colors.added_at', 'palette_colors.color_image')
                        ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                        ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                        ->where('products.id', $query[$i]->id)
                        ->distinct()
                        ->get();
                    $query[$i]->images = $images;
                    $query[$i]->categories = $categories;
                    $query[$i]->subcategories = $subcategories;
                    $query[$i]->availablePalettes = $availablePalettes;
                    $query[$i]->availableQuantities = $availableQuantities;
                    $query[$i]->availableColors = $availableColors;
                    $query[$i]->information = $getInfo;
                }
            $jsonData["products"] = $query;
            $jsonData["no_of_productson_current_page"] = count($query);
        }
        return response()->json($jsonData);
    });

    $router->post('products/featured/subcategory/{slug}[/{page:[0-9*]}]', function (Request $request, $slug = null, $page = 1) use ($router) {
        if (!$slug) {
            return response()->json(['error' => 'No subcategory id provided.']);
        }
        $limit = $request->json()->get('limit') ? : 30;
        $orderBy = $request->json()->get('orderBy');
        $type = $request->json()->get('type');

        $count = DB::table('products')
            ->join('product_subcategories', 'product_subcategories.ProductID', '=', 'products.id')
            ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
            ->where('products.featured', '=', 1)
            ->where('subcategories.slug', '=', $slug)
            ->where('isActive', '1')
            ->count();
        $limit = 30;
        $jsonData = [
            'page' => $page ? $page : 1,
            'no_of_pages' => ceil($count / $limit),
            'no_of_productsper_page' => $limit,
            'no_of_productson_current_page' => null,
            'total_no_of_products' => $count,
            'products' => null,
        ];

        if ($page >= 1) {
            $offset = ($limit * $page) - $limit; // pg 1 = 30*1 - 30 = 0; pg 2 = 30*2 - 30 = 30; pg 3 = 30*3 - 30 = 60
            $query = DB::table('products')
                ->select('products.id', 'product_name', 'sku', 'image_url', 'description', 'alias', 'featured', 'isActive')
                ->join('product_subcategories', 'product_subcategories.ProductID', '=', 'products.id')
                ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
                ->where('products.featured', '=', 1)
                ->where('subcategories.slug', '=', $slug)
                ->where('isActive', '1')
                ->limit($limit)
                ->offset($offset);
                
                if($orderBy && $type) {
                    $query = $query->orderBy($orderBy, $type);
                } 

                $query = $query->get();

                for ($i = 0; $i < count($query); $i++) {
                    $images = DB::table('product_images')
                          ->select('image_reference', 'image_url')
                          ->where('ProductID', $query[$i]->id)
                          ->get();

                    $categories = DB::table('product_categories')
                                ->select('categories.id', 'categories.category_name', 'categories.slug', 'categories.banner')
                                ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
                                ->where('ProductID', $query[$i]->id)
                                ->get();

                    $subcategories = DB::table('product_subcategories')
                                    ->select('subcategories.category_id','subcategories.id', 'subcategories.subcategory_name', 'subcategories.slug')
                                    ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
                                    ->where('ProductID', $query[$i]->id)
                                    ->get();
                                
                    $getInfo = DB::table('product_info_')
                        ->select('quantities.quantity', 'quantities.um', 'product_info_.old_price', 'product_info_.price')
                        ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                        // ->join('palette_colors', 'palette_colors.id', '=', 'product_info_.PaletteColorID')
                        // ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                        ->where('ProductID', $query[$i]->id)->orderBy('product_info_.price', 'asc')
                        ->get();

                    $availablePalettes = DB::table('products')
                                    ->select('color_palettes.id', 'color_palettes.palette_name', 'color_palettes.added_at')
                                    ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                                    ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                                    ->where('products.id', $query[$i]->id)
                                    ->distinct('color_palettes.palette_name')
                                    ->get();

                    $availableQuantities = DB::table('product_info_')
                        ->select('quantities.quantity', 'quantities.um')
                        ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                        ->where('ProductID', $query[$i]->id)->orderBy('quantities.quantity', 'asc')
                        ->distinct()
                        ->get();
                    $availableColors = DB::table('products')
                        ->select('color_palettes.palette_name', 'palette_colors.color', 'palette_colors.added_at', 'palette_colors.color_image')
                        ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                        ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                        ->where('products.id', $query[$i]->id)
                        ->distinct()
                        ->get();
                    $query[$i]->images = $images;
                    $query[$i]->categories = $categories;
                    $query[$i]->subcategories = $subcategories;
                    $query[$i]->availablePalettes = $availablePalettes;
                    $query[$i]->availableQuantities = $availableQuantities;
                    $query[$i]->availableColors = $availableColors;
                    $query[$i]->information = $getInfo;
                }
            $jsonData["products"] = $query;
            $jsonData["no_of_productson_current_page"] = count($query);
        }

        return response()->json($jsonData);
    });

    $router->post('products/categoryFeatured/subcategory/{slug}[/{page:[0-9*]}]', function (Request $request, $slug = null, $page = 1) use ($router) {
        if (!$slug) {
            return response()->json(['error' => 'No subcategory id provided.']);
        }
        $limit = $request->json()->get('limit') ? : 30;
        $orderBy = $request->json()->get('orderBy');
        $type = $request->json()->get('type');

        $count = DB::table('products')
            ->join('product_subcategories', 'product_subcategories.ProductID', '=', 'products.id')
            ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
            ->where('products.categoryFeatured', '=', 1)
            ->where('subcategories.slug', '=', $slug)
            ->where('isActive', '1')
            ->distinct()
            ->count();
        $limit = 30;
        $jsonData = [
            'page' => $page ? $page : 1,
            'no_of_pages' => ceil($count / $limit),
            'no_of_productsper_page' => $limit,
            'no_of_productson_current_page' => null,
            'total_no_of_products' => $count,
            'products' => null,
        ];

        if ($page >= 1) {
            $offset = ($limit * $page) - $limit; // pg 1 = 30*1 - 30 = 0; pg 2 = 30*2 - 30 = 30; pg 3 = 30*3 - 30 = 60
            $query = DB::table('products')
                ->select('products.id', 'product_name', 'sku', 'image_url', 'description', 'alias', 'categoryFeatured', 'isActive')
                ->join('product_subcategories', 'product_subcategories.ProductID', '=', 'products.id')
                ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
                ->where('products.categoryFeatured', '=', 1)
                ->where('subcategories.slug', '=', $slug)
                ->where('isActive', '1')
                ->distinct()
                ->limit($limit)
                ->offset($offset);
                
                if($orderBy && $type) {
                    $query = $query->orderBy($orderBy, $type);
                } 

                $query = $query->get();

                for ($i = 0; $i < count($query); $i++) {
                    $images = DB::table('product_images')
                          ->select('image_reference', 'image_url')
                          ->where('ProductID', $query[$i]->id)
                          ->get();

                    $categories = DB::table('product_categories')
                                ->select('categories.id', 'categories.category_name', 'categories.slug', 'categories.banner')
                                ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
                                ->where('ProductID', $query[$i]->id)
                                ->get();

                    $subcategories = DB::table('product_subcategories')
                                    ->select('subcategories.category_id','subcategories.id', 'subcategories.subcategory_name', 'subcategories.slug')
                                    ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
                                    ->where('ProductID', $query[$i]->id)
                                    ->get();
                                
                    $getInfo = DB::table('product_info_')
                        ->select('quantities.quantity', 'quantities.um', 'product_info_.old_price', 'product_info_.price')
                        ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                        // ->join('palette_colors', 'palette_colors.id', '=', 'product_info_.PaletteColorID')
                        // ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                        ->where('ProductID', $query[$i]->id)->orderBy('product_info_.price', 'asc')
                        ->get();

                    $availablePalettes = DB::table('products')
                                    ->select('color_palettes.id', 'color_palettes.palette_name', 'color_palettes.added_at')
                                    ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                                    ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                                    ->where('products.id', $query[$i]->id)
                                    ->distinct('color_palettes.palette_name')
                                    ->get();

                    $availableQuantities = DB::table('product_info_')
                        ->select('quantities.quantity', 'quantities.um')
                        ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                        ->where('ProductID', $query[$i]->id)->orderBy('quantities.quantity', 'asc')
                        ->distinct()
                        ->get();
                    $availableColors = DB::table('products')
                        ->select('color_palettes.palette_name', 'palette_colors.color', 'palette_colors.added_at', 'palette_colors.color_image')
                        ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                        ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                        ->where('products.id', $query[$i]->id)
                        ->distinct()
                        ->get();
                    $query[$i]->images = $images;
                    $query[$i]->categories = $categories;
                    $query[$i]->subcategories = $subcategories;
                    $query[$i]->availablePalettes = $availablePalettes;
                    $query[$i]->availableQuantities = $availableQuantities;
                    $query[$i]->availableColors = $availableColors;
                    $query[$i]->information = $getInfo;
                }
            $jsonData["products"] = $query;
            $jsonData["no_of_productson_current_page"] = count($query);
        }

        return response()->json($jsonData);
    });

    $router->get('product/{slug}', function ($slug) use ($router) {
        if (!$slug) {
            return response()->json(['error' => 'No slug provided.']);
        }
        $query = DB::table('products')
            ->select('products.id', 'product_name', 'sku', 'brand', 'image_url', 'description', 'alias', 'featured', 'isActive', 'PaletteColorID', 'datasheet')
            ->where('alias', '=', $slug)
            ->where('isActive', '1')
            ->limit(1)->get();
        $images = DB::table('product_images')
            ->select()
            ->where('ProductID', $query[0]->id)
            ->get();
        $categories = DB::table('product_categories')
            ->select('categories.id', 'categories.category_name', 'categories.slug', 'categories.banner')
            ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
            ->where('ProductID', $query[0]->id)
            ->get();

        $subcategories = DB::table('product_subcategories')
            ->select('subcategories.category_id','subcategories.id', 'subcategories.subcategory_name', 'subcategories.slug')
            ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
            ->where('ProductID', $query[0]->id)
            ->get();

        $getInfo = DB::table('product_info_')
            ->select('quantities.id', 'quantities.quantity', 'quantities.um', 'product_info_.old_price', 'product_info_.price')
            ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
            // ->join('palette_colors', 'palette_colors.id', '=', 'product_info_.PaletteColorID')
            // ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
            ->where('ProductID', $query[0]->id)->orderBy('product_info_.price', 'asc')
            ->orderBy('quantities.quantity', 'asc')
            ->get();

        // $availablePalettes = DB::table('color_palettes')
        //     ->select('color_palettes.id', 'color_palettes.palette_name', 'color_palettes.added_at')
        //     // ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
        //     // ->join('color_palettes', 'color_palettes.id', '=', 'products.ColorPaletteID')
        //     ->where('color_palettes.id', $query[0]->PaletteColorID)
        //     ->distinct('color_palettes.palette_name')
        //     ->get();
        

        $availableQuantities = DB::table('product_info_')
                    ->select('quantities.quantity', 'quantities.um')
                    ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                    ->where('ProductID', $query[0]->id)->orderBy('quantities.quantity', 'asc')
                    ->distinct()
                    ->get();
        $availableColors = DB::table('palette_colors')
                    ->select('palette_colors.color', 'palette_colors.added_at', 'palette_colors.color_image')
                    ->where('ColorPaletteID', '=', $query[0]->PaletteColorID)
                    ->distinct()
                    ->get();
                   
        $query[0]->images = $images;
        $query[0]->categories = $categories;
        $query[0]->subcategories = $subcategories;
        // $query[0]->availablePalettes = $availablePalettes;
        $query[0]->availableQuantities = $availableQuantities;
        $query[0]->availableColors = $availableColors;
        $query[0]->information = $getInfo;
        return response()->json($query[0]);
    });

    $router->get('product/{slug}/categories', function ($slug) use ($router) {
        if (!$slug) {
            return response()->json(['error' => 'No slug provided.']);
        }
        $query = DB::table('product_categories')
            ->join('products', 'products.id', '=', 'product_categories.ProductID')
            ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
            ->where('products.alias', $slug)
            ->get();
        return response()->json(["data" => $query]);
    });

    $router->get('product/{productId}/subcategories', function ($slug) use ($router) {
        if (!$slug) {
            return response()->json(['error' => 'No slug provided.']);
        }
        $query = DB::table('product_subcategories')
            ->join('products', 'products.id', '=', 'product_subcategories.ProductID')
            ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
            ->where('products.alias', $slug)
            ->get();

        return response()->json(["data" => $query]);
    });

    $router->get('products/category/{slug}[/page/{page}]', function ($slug, $page = 1) use ($router) {
        if (!$slug) {
            return response()->json(['error' => 'No slug provided.']);
        }

        $count = DB::table('products')
            ->join('product_categories', 'product_categories.ProductID', '=', 'products.id')
            ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
            ->where('categories.slug', '=', $slug)
            ->where('isActive', '1')
            ->count();
        $limit = 30;
        $jsonData = [
            'page' => $page ? $page : 1,
            'banner' => null,
            'no_of_pages' => ceil($count / $limit),
            'no_of_productsper_page' => $limit,
            'no_of_productson_current_page' => null,
            'total_no_of_products' => $count,
            'products' => null,
        ];

        $jsonData["banner"] = DB::table('categories')->where('slug', $slug)->value('banner');

        if ($page >= 1) {
            $offset = ($limit * $page) - $limit; // pg 1 = 30*1 - 30 = 0; pg 2 = 30*2 - 30 = 30; pg 3 = 30*3 - 30 = 60
            $query = DB::table('products')
                ->select('products.id', 'products.product_name', 'products.sku', 'products.image_url', 'products.description', 'products.alias', 'products.featured', 'products.isActive')
                ->join('product_categories', 'product_categories.ProductID', '=', 'products.id')
                ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
                ->where('categories.slug', '=', $slug)
                ->where('isActive', '1')
                ->distinct()
                ->offset($offset)
                ->limit($limit)
                ->get();

            for ($i = 0; $i < count($query); $i++) {
                $images = DB::table('product_images')
                        ->select('image_reference', 'image_url')
                        ->where('ProductID', $query[$i]->id)
                        ->get();

                $categories = DB::table('product_categories')
                        ->select('categories.id', 'categories.category_name', 'categories.slug', 'categories.banner')
                        ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
                        ->where('ProductID', $query[$i]->id)
                        ->get();

                $subcategories = DB::table('product_subcategories')
                        ->select('subcategories.category_id','subcategories.id', 'subcategories.subcategory_name', 'subcategories.slug')
                        ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
                        ->where('ProductID', $query[$i]->id)
                        ->get();
                                
                $getInfo = DB::table('product_info_')
                        ->select('quantities.quantity', 'quantities.um', 'product_info_.old_price', 'product_info_.price')
                        ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                        // ->join('palette_colors', 'palette_colors.id', '=', 'product_info_.PaletteColorID')
                        // ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                        ->where('ProductID', $query[$i]->id)->orderBy('product_info_.price', 'asc')
                        ->get();

                $availablePalettes = DB::table('products')
                        ->select('color_palettes.id', 'color_palettes.palette_name', 'color_palettes.added_at')
                        ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                        ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                        ->where('products.id', $query[$i]->id)
                        ->distinct('color_palettes.palette_name')
                        ->get();

                $availableQuantities = DB::table('product_info_')
                        ->select('quantities.quantity', 'quantities.um')
                        ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                        ->where('ProductID', $query[$i]->id)->orderBy('quantities.quantity', 'asc')
                        ->distinct()
                        ->get();
                $availableColors = DB::table('products')
                        ->select('color_palettes.palette_name', 'palette_colors.color', 'palette_colors.added_at', 'palette_colors.color_image')
                        ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                        ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                        ->where('products.id', $query[$i]->id)
                        ->distinct()
                        ->get();
                $query[$i]->images = $images;
                $query[$i]->categories = $categories;
                $query[$i]->subcategories = $subcategories;
                $query[$i]->availablePalettes = $availablePalettes;
                $query[$i]->availableQuantities = $availableQuantities;
                $query[$i]->availableColors = $availableColors;
                $query[$i]->information = $getInfo;
    
            }
            $jsonData["products"] = $query;
            $jsonData["no_of_productson_current_page"] = count($query);
        }

        return response()->json($jsonData);
    });

    $router->get('products/subcategory/{slug}[/page/{page}]', function ($slug, $page = 1) use ($router) {
        if (!$slug) {
            return response()->json(['error' => 'No subcategory slug provided.']);
        }

        $count = DB::table('product_subcategories')
            ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
            ->where('subcategories.slug', $slug)->count();
        $limit = 30;
        $jsonData = [
            'page' => $page ? $page : 1,
            'no_of_pages' => ceil($count / $limit),
            'no_of_productsper_page' => $limit,
            'no_of_productson_current_page' => null,
            'total_no_of_products' => $count,
            'products' => null,
        ];

        if ($page >= 1) {
            $offset = ($limit * $page) - $limit; // pg 1 = 30*1 - 30 = 0; pg 2 = 30*2 - 30 = 30; pg 3 = 30*3 - 30 = 60
            $query = DB::table('products')
                ->select('products.id', 'products.product_name', 'products.sku', 'products.image_url', 'products.description', 'products.alias', 'products.featured', 'products.isActive')
                ->join('product_subcategories', 'product_subcategories.ProductID', '=', 'products.id')
                ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
                ->where('subcategories.slug', '=', $slug)
                ->where('isActive', '1')
                ->distinct()
                ->offset($offset)
                ->limit($limit)
                ->get();

            for ($i = 0; $i < count($query); $i++) {
                $images = DB::table('product_images')
                        ->select('image_reference', 'image_url')
                        ->where('ProductID', $query[$i]->id)
                        ->get();

                $categories = DB::table('product_categories')
                        ->select('categories.id', 'categories.category_name', 'categories.slug', 'categories.banner')
                        ->join('categories', 'categories.id', '=', 'product_categories.CategoryID')
                        ->where('ProductID', $query[$i]->id)
                        ->get();

                $subcategories = DB::table('product_subcategories')
                        ->select('subcategories.category_id','subcategories.id', 'subcategories.subcategory_name', 'subcategories.slug')
                        ->join('subcategories', 'subcategories.id', '=', 'product_subcategories.SubcategoryID')
                        ->where('ProductID', $query[$i]->id)
                        ->get();
                                
                $getInfo = DB::table('product_info_')
                        ->select('quantities.quantity', 'quantities.um', 'product_info_.old_price', 'product_info_.price')
                        ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                        // ->join('palette_colors', 'palette_colors.id', '=', 'product_info_.PaletteColorID')
                        // ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                        ->where('ProductID', $query[$i]->id)->orderBy('product_info_.price', 'asc')
                        ->get();

                $availablePalettes = DB::table('products')
                        ->select('color_palettes.id', 'color_palettes.palette_name', 'color_palettes.added_at')
                        ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                        ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                        ->where('products.id', $query[$i]->id)
                        ->distinct('color_palettes.palette_name')
                        ->get();

                $availableQuantities = DB::table('product_info_')
                        ->select('quantities.quantity', 'quantities.um')
                        ->join('quantities', 'quantities.id', '=', 'product_info_.QuantityID')
                        ->where('ProductID', $query[$i]->id)->orderBy('quantities.quantity', 'asc')
                        ->distinct()
                        ->get();
                $availableColors = DB::table('products')
                        ->select('color_palettes.palette_name', 'palette_colors.color', 'palette_colors.added_at', 'palette_colors.color_image')
                        ->join('palette_colors', 'palette_colors.id', '=', 'products.PaletteColorID')
                        ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
                        ->where('products.id', $query[$i]->id)
                        ->distinct()
                        ->get();
                $query[$i]->images = $images;
                $query[$i]->categories = $categories;
                $query[$i]->subcategories = $subcategories;
                $query[$i]->availablePalettes = $availablePalettes;
                $query[$i]->availableQuantities = $availableQuantities;
                $query[$i]->availableColors = $availableColors;
                $query[$i]->information = $getInfo;
            }
            $jsonData["products"] = $query;
            $jsonData["no_of_productson_current_page"] = count($query);
        }
        return response()->json($jsonData);
    });

    // rute adrese

    

    $router->get('addresses/{user}', function ($user) use ($router) {
        if (!$user) {
            return response()->json(['error' => 'No user provided.']);
        }
        
        $query = DB::table('address')->where('user_id', $user)->get();
        return response()->json(["data" => $query]);
    });


    $router->post('address/edit', function (Request $request) use ($router) {
        
        $data = $request->json()->all();

        print_r($data);
      
        // $address = DB::table('address')->where('id', $data['id']);
        // $address->update(
        //     [
        //         'phone' => $data['SliderID'],
        //         'address' => $data['product'],
        //         'town' => $data['background'],
        //         'county' => $data['background']
        //     ]
        // );

        
        // $query = DB::table('address')->where('id', $data['id'])->get();
        // return response()->json(["success" => true, "data" => $query, 'message' => 'Adresa a fost actualizata!']);
    });

  

    // rute comenzi

    $router->get('orders[/page/{page:[0-9*]}]', function ($page = 1) use ($router) {
        $count = DB::table('orders')
            ->count();
        $limit = 30;
        $jsonData = [
            'page' => $page ? $page : 1,
            'no_of_pages' => ceil($count / $limit),
            'no_of_orders_per_page' => $limit,
            'no_of_orders_on_current_page' => null,
            'total_no_of_orders' => $count,
            'orders' => null,
        ];

        if ($page >= 1) {
            $offset = ($limit * $page) - $limit; // pg 1 = 30*1 - 30 = 0; pg 2 = 30*2 - 30 = 30; pg 3 = 30*3 - 30 = 60

            $orderBaseQuery = DB::table('orders')
                ->limit($limit)
                ->offset($offset)
                ->orderBy('date', 'desc')
                ->get();

            for ($i = 0; $i < count($orderBaseQuery); $i++) {
                $customerBaseQuery = DB::table('customers')
                    ->where('id', $orderBaseQuery[$i]->customerId)
                    ->get();

                $orderedProducts = DB::table('product_orders')
                    ->select()
                    ->where('order_id', $orderBaseQuery[$i]->order_uuid)
                    ->get();

                $orderStatuses = DB::table('status')
                    ->select()
                    ->join('orders_status', 'orders_status.status_id', '=', 'status.id')
                    ->where('orders_status.order_id', $orderBaseQuery[$i]->order_uuid)
                    ->orderBy('orders_status.status_date', 'desc')
                    ->get();

                $paymentInformation = DB::table('orders_payment')
                    ->where('id', $orderBaseQuery[$i]->paymentId)
                    ->get();

                $shippingDetails = DB::table('orders_shipping_details')
                    ->where('id', $orderBaseQuery[$i]->shippingDetailId)
                    ->get();

                $customerJson = DB::table('customers')
                    ->select('firstName', 'lastName', 'email', 'phone')
                    ->where('id', $orderBaseQuery[$i]->customerId)
                    ->get();

                if($customerBaseQuery[0]->invoiceAddressId != null)
                {
                    $invoiceAddress = DB::table('orders_invoice_address')
                    ->select('id', 'companyName', 'registerNumber', 'cui', 'bank', 'bankAccount', 'county', 'town', 'address')
                    ->where('id', $customerBaseQuery[0]->invoiceAddressId)
                    ->get();
                    $customerJson[0]->invoiceAddress = $invoiceAddress;
                }

                $shippingAddress = DB::table('orders_shipping_address')
                    ->select('id', 'address', 'county', 'town', 'lat', 'lng')
                    ->where('id', $customerBaseQuery[0]->shippingAddressId)
                    ->get();
                $customerJson[0]->shippingAddress = $shippingAddress;

                $orderBaseQuery[$i]->customer = $customerJson[0];
                $orderBaseQuery[$i]->products = $orderedProducts;
                $orderBaseQuery[$i]->status = $orderStatuses;
                $orderBaseQuery[$i]->payment = $paymentInformation[0];
                $orderBaseQuery[$i]->shippingDetails = $shippingDetails[0];
                unset($orderBaseQuery[$i]->customerId);
                unset($orderBaseQuery[$i]->shippingDetailId);
                unset($orderBaseQuery[$i]->paymentId);
            }

            $jsonData["orders"] = $orderBaseQuery;
            $jsonData["no_of_orders_on_current_page"] = count($orderBaseQuery);
        }

        return response()->json($jsonData);

    });

    $router->get('customer/orders/{customerID}', function ($customerID) use ($router) {

            $orderBaseQuery = DB::table('orders')
                ->orderBy('date', 'desc')
                ->get();

            for ($i = 0; $i < count($orderBaseQuery); $i++) {
                $customerBaseQuery = DB::table('customers')
                    ->where('id', $customerID)
                    ->get();

                $orderedProducts = DB::table('product_orders')
                    ->select('name', 'selectedPrice', 'quantity', 'ProductID')
                    ->where('order_id', $orderBaseQuery[$i]->order_uuid)
                    ->get();

                $orderStatuses = DB::table('status')
                    ->select('status.name', 'status.color', 'status.date')
                    ->join('orders_status', 'orders_status.status_id', '=', 'status.id')
                    ->where('orders_status.order_id', $orderBaseQuery[$i]->order_uuid)
                    ->orderBy('orders_status.status_date', 'desc')
                    ->get();

                $paymentInformation = DB::table('orders_payment')
                    ->where('id', $orderBaseQuery[$i]->paymentId)
                    ->get();

                $shippingDetails = DB::table('orders_shipping_details')
                    ->where('id', $orderBaseQuery[$i]->shippingDetailId)
                    ->get();

                $customerJson = DB::table('customers')
                    ->select('firstName', 'lastName', 'email', 'phone')
                    ->where('id', $orderBaseQuery[$i]->customerId)
                    ->get();

                if($customerBaseQuery[0]->invoiceAddressId != null)
                {
                    $invoiceAddress = DB::table('orders_invoice_address')
                    ->select('id', 'companyName', 'registerNumber', 'cui', 'bank', 'bankAccount', 'county', 'town', 'address')
                    ->where('id', $customerBaseQuery[0]->invoiceAddressId)
                    ->get();
                    $customerJson[0]->invoiceAddress = $invoiceAddress;
                }

                $shippingAddress = DB::table('orders_shipping_address')
                    ->select('id', 'address', 'county', 'town', 'lat', 'lng')
                    ->where('id', $customerBaseQuery[0]->shippingAddressId)
                    ->get();
                $customerJson[0]->shippingAddress = $shippingAddress;

                $orderBaseQuery[$i]->customer = $customerJson[0];
                $orderBaseQuery[$i]->products = $orderedProducts;
                $orderBaseQuery[$i]->status = $orderStatuses;
                $orderBaseQuery[$i]->payment = $paymentInformation[0];
                $orderBaseQuery[$i]->shippingDetails = $shippingDetails[0];
                unset($orderBaseQuery[$i]->customerId);
                unset($orderBaseQuery[$i]->shippingDetailId);
                unset($orderBaseQuery[$i]->paymentId);
            }

            $jsonData["orders"] = $orderBaseQuery;
        

        return response()->json($jsonData);

    });

    $router->get('order/payment/process', function (Request $request) {
        $data = $request->json()->all();

        return response()->json($data);
    });

    $router->get('order/{orderId}', function ($orderId) use ($router) {
        if (!$orderId) {
            return response()->json(['error' => 'No order id provided.']);
        }

        $orderBaseQuery = DB::table('orders')
            ->where('order_uuid', $orderId)
            ->get();

        $customerBaseQuery = DB::table('customers')
            ->where('id', $orderBaseQuery[0]->customerId)
            ->get();

        $orderedProducts = DB::table('product_orders')
            ->select('name', 'selectedPrice', 'quantity', 'ProductID')
            ->where('order_id', $orderId)
            ->get();

       

     

        $orderStatuses = DB::table('status')
            ->select('status.name', 'status.color', 'status.date')
            ->join('orders_status', 'orders_status.status_id', '=', 'status.id')
            ->where('orders_status.order_id', $orderId)
            ->orderBy('orders_status.status_date', 'desc')
            ->get();

        $paymentInformation = DB::table('orders_payment')
            ->where('id', $orderBaseQuery[0]->paymentId)
            ->get();

        $shippingDetails = DB::table('orders_shipping_details')
            ->where('id', $orderBaseQuery[0]->shippingDetailId)
            ->get();

        $orderJson = DB::table('orders')->select('order_uuid', 'reference', 'discount', 'total', 'date')
            ->where('order_uuid', '=', $orderId)
            ->get();

        $customerJson = DB::table('customers')
            ->select('firstName', 'lastName', 'email', 'phone')
            ->where('id', $orderBaseQuery[0]->customerId)
            ->get();

        $invoiceAddress = DB::table('orders_invoice_address')
            ->select('id', 'companyName', 'registerNumber', 'cui', 'bank', 'bankAccount', 'county', 'town','address')
            ->where('id', $customerBaseQuery[0]->invoiceAddressId)
            ->get();
        $shippingAddress = DB::table('orders_shipping_address')
            ->select('id', 'address', 'county', 'town', 'lat', 'lng')
            ->where('id', $customerBaseQuery[0]->shippingAddressId)
            ->get();
        $customerJson[0]->invoiceAddress = $invoiceAddress;
        $customerJson[0]->shippingAddress = $shippingAddress;

        
        for ($i = 0; $i < count($orderedProducts); $i++) {
            $productImage = DB::table('products')
            ->select('image_url', 'alias')
            ->where('id', $orderedProducts[$i]->ProductID)
            ->get();
            for ($j = 0; $j < count($productImage); $j++) {
                $orderedProducts[$i]->image_url = $productImage[$j]->image_url;
                $orderedProducts[$i]->alias = $productImage[$j]->alias;
            }
        }

        $orderJson[0]->customer = $customerJson[0];
        $orderJson[0]->products = $orderedProducts;
       
        $orderJson[0]->status = $orderStatuses;
        $orderJson[0]->payment = $paymentInformation[0];
        $orderJson[0]->shippingDetails = $shippingDetails[0];

        return response()->json($orderJson);

    });

    $router->post('order/add', function (Request $request) use ($router) {
        $data = $request->json()->all();
        $guid = uniqid('', true);

        $hasCompany = $request->json()->get('hasCompany');

        // order
        $order = $data; //reference, total, discount, date
        // customer
        $customer = $order['customer']; // id, email, firstName, lastName, phone
        $shippingAddress = $customer['shippingAddress']; // address, county, town, lat, lng -> dependent on customer
        // products
        $products = $order['products']; // id, name, quantity, price
        // status
        $status = $order['status']; // name, color, date -> for loop
        // payment
        $payment = $order['payment']; // transactionId, amount, method, date
        // shipping details
        $shippingDetails = $order['shippingDetails']; // tracking, carrier, weight, fee, date
        $invoiceAddressId = null;

        if($hasCompany)
        {
            $invoiceAddress = $customer['invoiceAddress']; // companyName, registerNumber, cui, bank, bankAccount, address, county, town -> dependent on customer CAN BE NULL
            $invoiceAddressId = DB::table('orders_invoice_address')->insertGetId(
                [
                    'companyName' => $invoiceAddress['companyName'],
                    'registerNumber' => $invoiceAddress['registerNumber'],
                    'cui' => $invoiceAddress['cui'],
                    'bank' => $invoiceAddress['bank'],
                    'bankAccount' => $invoiceAddress['bankAccount'],
                    'address' => $invoiceAddress['address'],
                    'county' => $invoiceAddress['county'],
                    'town' => $invoiceAddress['town']
                ]
            );
        }

        $shippingAddressId = DB::table('orders_shipping_address')->insertGetId(
            [
                'address' => $shippingAddress['address'],
                'county' => $shippingAddress['county'],
                'town' => $shippingAddress['town'],
                'lat' => $shippingAddress['lat'],
                'lng' => $shippingAddress['lng']
            ]
        );
        $customerId = DB::table('customers')->insertGetId(
            [
                'firstName' => $customer['firstName'],
                'lastName' => $customer['lastName'],
                'email' => $customer['email'],
                'phone' => $customer['phone'],
                'invoiceAddressId' => $invoiceAddressId,
                'shippingAddressId' => $shippingAddressId,
            ]
        );
        $paymentId = DB::table('orders_payment')->insertGetId(
            [
                'transactionId' => $payment['transactionId'],
                'amount' => $payment['amount'],
                'method' => $payment['method'],
                'date' => date($payment['date']),
            ]
        );

        $shippingDetailId = DB::table('orders_shipping_details')->insertGetId(
            [
                'tracking' => $shippingDetails['tracking'],
                'carrier' => $shippingDetails['carrier'],
                'weight' => $shippingDetails['weight'],
                'fee' => $shippingDetails['fee'],
                'date' => date($shippingDetails['date']),
            ]
        );

        // creaza comanda
        DB::table('orders')->insert(
            [
                'order_uuid' => $guid,
                'reference' => $guid,
                'discount' => $order['discount'],
                'total' => $order['total'],
                'date' => $order['date'],
                'customerId' => $customerId,
                'paymentId' => $paymentId,
                'shippingDetailId' => $shippingDetailId,
            ]
        );

        // adauga produsele comenzii
        for ($i = 0; $i < count($products); $i++) {
            DB::table('product_orders')->insert(
                [
                    'order_id' => $guid,
                    'name' => $products[$i]['name'],
                    'quantity' => $products[$i]['quantity'],

                    'ProductID' => $products[$i]['id'],
                    'selectedColorName' => $products[$i]['selectedColorName'],
                    'selectedPrice' => $products[$i]['selectedPrice'],
                    'selectedQnt' => $products[$i]['selectedQnt'],
                    'selectedColor' => $products[$i]['selectedColor'],
                ]
            );
        }

        // adauga statusurile comenzii
        for ($i = 0; $i < count($status); $i++) {
            $baseQuery = DB::table('status')->where('name', $status[$i]['name']);
            $statusId = null;
            $statusDoesntExist = $baseQuery->doesntExist();
            if ($statusDoesntExist) {
                $statusId = DB::table('status')->insertGetId(
                    [
                        'name' => $status[$i]['name'],
                        'color' => $status[$i]['color'],
                    ]
                );
            } else {
                $statusId = $baseQuery->limit(1)->get()[0]->id;
            }

            DB::table('orders_status')->insert(
                [
                    'order_id' => $guid,
                    'status_id' => $statusId,
                ]
            );
        }

        return response()->json(['status' => 'success', 'message' => 'Comanda a fost procesata.', 'order_guid' => $guid]);
    });

    $router->post('palette/add', function (Request $request) use ($router) {
        $data = $request->json()->all();

        // creaza paleta
        DB::table('color_palettes')->insert(
            [
                'palette_name' => $data['palette_name'],
            ]
        );
        return response()->json(['status' => 'success', 'message' => 'Paleta a fost adaugata.']);
    });

    $router->post('palette/{id}/color/add', function (Request $request) use ($router) {
        $data = $request->json()->all();
      
        // creaza paleta
        DB::table('palette_colors')->insert(
            [
                'ColorPaletteID' => $data['id'],
                'color' => $data['color'],
                'color_image' => $data['color_image']
            ]
        );
        return response()->json(['status' => 'success', 'message' => 'Culoarea a fost adaugata cu succes.']);
    });


    $router->get('palettes', function () use ($router) {
        $count = DB::table('color_palettes')->count();
        $query = DB::table('color_palettes')->get();

        return response()->json($query);
    });

    $router->get('palette/{id}/colors', function ($id) use ($router) {
        // $count = DB::table('palette_colors')
        //     ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
        //     ->join('color_base', 'color_base.id', '=', 'palette_colors.BaseColorID')
        //     ->where('color_palettes.id', '=', $id)
        //     ->groupBy('color_base.base_name')->count();
        $query = DB::table('palette_colors')
            ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
            ->where('color_palettes.id', '=', $id)
            ->get();
        return response()->json($query);
    });
    
    $router->get('basecolor/{palette}', function ($palette) use ($router) {
        // $count = DB::table('palette_colors')
        //     ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
        //     ->join('color_base', 'color_base.id', '=', 'palette_colors.BaseColorID')
        //     ->where('color_palettes.id', '=', $id)
        //     ->groupBy('color_base.base_name')->count();
        //DB::enableQueryLog();
        $query = DB::table('color_base')
            ->select('color_base.id', 'color_base.base_name', 'color_base.base_image')
            ->join('palette_colors', 'palette_colors.BaseColorID', '=', 'color_base.id')
            ->where('palette_colors.ColorPaletteID', '=', $palette)
            ->get();
        return response()->json($query);
    });
    
    $router->get('basecolor/{id}/colors', function ($id) use ($router) {
        // $count = DB::table('palette_colors')
        //     ->join('color_palettes', 'color_palettes.id', '=', 'palette_colors.ColorPaletteID')
        //     ->join('color_base', 'color_base.id', '=', 'palette_colors.BaseColorID')
        //     ->where('color_palettes.id', '=', $id)
        //     ->groupBy('color_base.base_name')->count();
        //DB::enableQueryLog();
        $query = DB::table('palette_colors')
            ->select('palette_colors.color', 'palette_colors.color_image')
            ->where('palette_colors.BaseColorID', '=', $id)
            ->get();
        return response()->json($query);
    });

    $router->post('sliders/add', function (Request $request) use ($router) {
        $data = $request->json()->all();

        // creaza paleta
        DB::table('sliders')->insert(
            [
                'slider_name' => $data['slider_name'],
            ]
        );
        return response()->json(['status' => 'success', 'message' => 'Paleta a fost adaugata.']);
    });

    $router->get('sliders', function () use ($router) {
        $count = DB::table('sliders')->count();
        $query = DB::table('sliders')->get();

        return response()->json($query);
    });

    $router->get('sliders/slider', function () use ($router) {
        $count = DB::table('slider_images')->count();
        $query = DB::table('slider_images')->get();

        return response()->json($query);
    });

    $router->get('sliders/{id}/slider', function ($id) use ($router) {
        $count = DB::table('slider_images')
            ->join('sliders', 'sliders.id', '=', 'slider_images.SliderID')
            ->where('sliders.id', '=', $id)->count();
        $query = DB::table('slider_images')
            ->join('sliders', 'sliders.id', '=', 'slider_images.SliderID')
            ->where('sliders.id', '=', $id)->get();

        return response()->json($query);
    });

    $router->post('sliders/{id}/slider/add', function (Request $request) use ($router) {
        $data = $request->json()->all();
      
        
        DB::table('slider_images')->insert(
            [
                'SliderID' => $data['SliderID'],
                'product' => $data['product'],
                'background' => $data['background'],
                'link' => $data['productLink'],
                'thumb' => $data['thumb'],
                'h1' => $data['h1'],
                'h3' => $data['h3']
            ]
        );
        
        return response()->json(['status' => 'success', 'message' => 'Imaginea a fost adaugata cu succes.']);
    });

    $router->post('sliders/{id}/slider/update', function (Request $request) use ($router) {
        $data = $request->json()->all();
      
        $slider = DB::table('slider_images')->where('SliderID', $data['SliderID']);
        $slider->update(
            [
                'SliderID' => $data['SliderID'],
                'product' => $data['product'],
                'background' => $data['background']
            ]
        );
        return response()->json(['status' => 'success', 'message' => 'Update cu succes.']);
    });

    $router->post('sliders/delete/', function (Request $request) use ($router) {
        $data = $request->json()->all();
        $slider = DB::table('slider_images')->where('SliderID', $data['SliderID']);
        $slider->delete();
        
        
        return response()->json(['status' => 'success', 'message' => 'Imaginea a fost stearsa cu succes.']);
    });


    $router->put('order/edit/status', function (Request $request) use ($router) {
        $guid = $request->json()->get('order_uid');
        $status = $request->json()->get('status');

        if (!$guid) {
            return response()->json(['success' => false, 'message' => 'Order uid missing.']);
        }
        if (!$status) {
            return response()->json(['success' => false, 'message' => 'Status missing.']);
        }

        for ($i = 0; $i < count($status); $i++) {
            $baseQuery = DB::table('status')->where('name', $status[$i]['name']);
            $statusId = null;
            $statusDoesntExist = $baseQuery->doesntExist();
            if ($statusDoesntExist) {
                $statusId = DB::table('status')->insertGetId(
                    [
                        'name' => $status[$i]['name'],
                        'color' => $status[$i]['color'],
                    ]
                );
            } else {
                $statusId = $baseQuery->limit(1)->get()[0]->id;
            }

            DB::table('orders_status')->insert(
                [
                    'order_id' => $guid,
                    'status_id' => $statusId,
                ]
            );
        }

        return response()->json(['success' => true, 'message' => 'Statusul comenzii a fost actualizat.']);
    });

    $router->post('login', function (Request $request) use ($router) {

        $email = $request->json()->get('email');
   
        $password = $request->json()->get('password');
       
        
        try {
            $user = DB::table('users')->where('email', $email)
            ->get()[0];

            $updateUser = DB::table('users')
            ->where('token', $user->token);
            $updateUser->update(['date_last_visit' => date('Y-m-d H:i:s')]);
           
            
        } catch(Exception $e) {
            return response()->json(['error' => true, 'message' => 'Email-ul nu exista in baza de date']);
        }

        
       

        if (password_verify($password, $user->password)) {
            return response()->json(['success' => true, 'message' => 'Ai fost autentificat cu succes.', 'user' => $user])->header('X-Auth', $user->token);
        } else {
            return response()->json(['error' => true, 'message' => 'Parola este gresita']);
        }
        

    });
    $router->post('register', function (Request $request) {
        $lastName = $request->json()->get('lastName');
        $firstName = $request->json()->get('firstName');
        $email = $request->json()->get('email');
        $phone = $request->json()->get('phone');
        $password = password_hash($request->json()->get('password'), PASSWORD_DEFAULT);

        $token = openssl_random_pseudo_bytes(16);
        $token = bin2hex($token);

     
            $emailCheck = DB::table('users')->where('email', $email)->exists();
            if($emailCheck) {
                return response()->json(['success' => false, 'message' => 'Acest email este deja inregistrat!.']);
            } else {
                $userId = DB::table('users')->insertGetId(
                    [
                        'name' => $firstName,
                        'last_name' => $lastName,
                        'email' => $email,
                        'password' => $password,
                        'access' => 0,
                        'token' => $token,
                    ]
                );
        
                $user = DB::table('users')->where(['id' => $userId])->first();
        
                return response()->json(['success' => true, 'message' => 'Contul tau a fost inregistrat cu succes.', 'user' => $user]);
            }
           
        

        
    });

    $router->post('recover', function (Request $request) {

        $token = openssl_random_pseudo_bytes(16);
        $token = bin2hex($token);
        
        $email = $request->json()->get('email');

        $emailCheck = DB::table('users')->where('email', $email)->exists();
        if($emailCheck) {
            $updateUser = DB::table('users')->where('email', $email);
            $updateUser->update(['token' => $token]);
            $user = DB::table('users')->where('email', $email)->first();

            return response()->json(['success' => true, 'message' => 'Am trimis pe email pasii de recuperare a parolei!.', 'user' => $user]);
        } else {
            return response()->json(['success' => false, 'message' => 'Acest email nu exista in baza de date']);
        }

    });

    $router->post('changePassword', function (Request $request) {

        $token = openssl_random_pseudo_bytes(16);
        $token = bin2hex($token);

        $userCheck = DB::table('users')->where(['token' => $request->json()->get('token')])->exists();
        
        
    
        if($userCheck) {
            $updateUser = DB::table('users')->where(['token' => $request->json()->get('token')]);
            $password = password_hash($request->json()->get('password'), PASSWORD_DEFAULT);
            
            $updateUser->update(
                [
                    'token' => $token,
                    'password' => $password,
                    'date_last_visit' => date('Y-m-d H:i:s')
                ]
            );
           

            return response()->json(['success' => true, 'message' => 'Parola a fost schimbata cu succes']);
        } else {
            return response()->json(['success' => false, 'message' => 'Sesiunea a expirat, va rugam sa incercati din nou']);
        }

    });


    $router->post('user/update', function (Request $request) {
        $userCheck = DB::table('users')->where(['id' => $request->json()->get('id')])->first();
        $user = DB::table('users')->where(['id' => $request->json()->get('id')]);
        
        
        $lastName = $request->json()->get('lastName');
        $firstName = $request->json()->get('firstName');
        $email = $request->json()->get('email');
        $password = $request->json()->get('password');
        
        

        if ($email != $userCheck->email) {
            $emailCheck = DB::table('users')->where('email', $email)->exists();
            if($emailCheck) {
                return response()->json(['success' => false, 'message' => 'Acest email este deja inregistrat!.']);
            } else {
                $user->update(
                    [
                    'email' => $email,
                    ]
                );
            }
           
        }
        if($password) {
            
            $password = password_hash($request->json()->get('password'), PASSWORD_DEFAULT);
            $user->update(
                [
                'password' => $password,
                ]
            );
        }

        $user->update(
            [
                'name' => $firstName,
                'last_name' => $lastName,
            ]
        );
        $userCheck = DB::table('users')->where(['id' => $request->json()->get('id')])->first();

        return response()->json(['success' => true, 'message' => 'Datele tale au fost actualizate cu success!', 'user' => $userCheck]);
    });

    // rute blog

    $router->get('blogs', function () use ($router) {
        $count = DB::table('blog')
       
        ->join('categories_blogs', 'categories_blogs.BlogID', '=', 'blog.id')
        ->join('blog_categories', 'blog_categories.id', '=', 'categories_blogs.BlogCategorID')
        ->count();
        $query = DB::table('blog')
       
        ->get();
            for ($i = 0; $i < count($query); $i++) {
                $categories = DB::table('categories_blogs')
                   
                        ->join('blog_categories', 'blog_categories.id', '=', 'categories_blogs.BlogCategorID')
                        ->where('categories_blogs.BlogID', $query[$i]->id)
                        ->get();
                $query[$i]->categories = $categories;
            }
        return response()->json(['count' => $count, 'data' => $query]);
    });


    $router->get('blog/{postSlug}', function ($postSlug) use ($router) {
        $query = DB::table('blog')
        
        ->where('blog.postSlug', $postSlug)
        ->get();
            for ($i = 0; $i < count($query); $i++) {
                $categories = DB::table('categories_blogs')
                     
                        ->join('blog_categories', 'blog_categories.id', '=', 'categories_blogs.BlogCategorID')
                        ->where('categories_blogs.BlogID', $query[$i]->id)
                        ->get();
                $query[$i]->categories = $categories;
            }
        return response()->json(['post' => $query]);
    });


    $router->get('blogs/categories', function () use ($router) {

        $query = DB::table('blog_categories')
        ->select('blog_categories.id', 'blog_categories.blog_category_name', 'blog_categories.slug')
        ->get();
            
        return response()->json(['data' => $query]);
    });

    $router->get('blog/category/{categorySlug}', function ($categorySlug) use ($router) {

        $query = DB::table('blog')
        ->join('categories_blogs', 'categories_blogs.BlogID', '=', 'blog.id')
        ->join('blog_categories', 'blog_categories.id', '=', 'categories_blogs.BlogCategorID')
        ->where('blog_categories.slug', $categorySlug)
        ->get();
        for ($i = 0; $i < count($query); $i++) {
            $categories = DB::table('categories_blogs')
                    
                    ->join('blog_categories', 'blog_categories.id', '=', 'categories_blogs.BlogCategorID')
                    ->where('categories_blogs.BlogID', $query[$i]->id)
                    ->get();
            $query[$i]->categories = $categories;
        }
            
        return response()->json(['data' => $query]);
    });

    $router->get('dates-added', function () use ($router) {
        $query = DB::table('blog')
        ->select('date_added')
  
        ->orderBy('date_added', 'desc')
        //->groupBy(DateTime::createFromFormat('%m-%Y', 'date_added'), 'desc')
        ->get()
        ->groupBy(function($val) {
            //Carbon::setLocale('ro');
            return Carbon::parse($val->date_added)->translatedFormat('F Y');
            // return Carbon::parse($val->date_added)->format('F Y');
            //return Carbon::parse($val->date_added)->format('Y-m-d');


        });
      
        
            
        return response()->json(['data' => $query]);
    });

   

    $router->post('get-by-date', function (Request $request) use ($router) {
        $month = $request->json()->get('month');
        $year = $request->json()->get('year');

       
        
       
        $query = DB::table('blog')
        // ->select('blog.id', 'blog.title', 'blog.image', 'blog.date_added', 'blog.description', 'blog.slug', 'blog_categories.blog_category_name')
        // ->join('categories_blogs', 'categories_blogs.BlogID', '=', 'blog.id')
        // ->join('blog_categories', 'blog_categories.id', '=', 'categories_blogs.BlogCategorID')
        ->whereYear('blog.date_added', '=', $year)
        ->whereMonth('blog.date_added', '=', $month)
        ->get();
        
  
        for ($i = 0; $i < count($query); $i++) {
            $categories = DB::table('categories_blogs')
                  
                    ->join('blog_categories', 'blog_categories.id', '=', 'categories_blogs.BlogCategorID')
                    ->where('categories_blogs.BlogID', $query[$i]->id)
                    ->get();
            $query[$i]->categories = $categories;
        }
        
        
        
        return response()->json(['data' => $query]);
    });

    $router->get('get-blog/recent', function () use ($router) {
        $query = DB::table('blog')
        ->orderBy('date_added', 'desc')
        ->limit(5)
        ->get();
        return response()->json(['data' => $query]);
    });
    $router->get('get-same-articles', function () use ($router) {
        $query = DB::table('blog')
        ->inRandomOrder()
        ->limit(5)
        ->get();
        return response()->json(['data' => $query]);
    });

    //product images

    $router->get('product-images/{slug}', function ($slug) use ($router) {
        $query = DB::table('products')
        ->select()
        ->where('slug', '=', $slug)
        ->get();

        for ($i = 0; $i < count($query); $i++) {
            $images = DB::table('product_images')
                ->select('image_reference', 'image_url')
                ->where('ProductID', $query[$i]->id)
                ->get();
            $query[$i]->images = $images;
        }
        
        return response()->json(['data' => $query]);
    });


    $router->post('delete-product-image', function (Request $request) use ($router) {
        $image = $request->json()->get('id');
        $query = DB::table('product_images')
        ->select()
        ->where('id', '=', $image);
        $query->delete();
        
        return response()->json(['success' => true, 'message' => 'Imaginea a fost stearsa cu succes.']);
    });
    
    
});
