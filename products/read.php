<?php
require("../../../../config/settings.php");

header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Credentials: true');
header("Access-Control-Allow-Methods: PUT, GET, POST, DELETE");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header("Content-Type: application/json; charset=UTF-8");

$products = new Product();
$products = $products->getProducts();
$result = array();
$result["body"] = array();

$products_arr = [];


if(!empty($products)) {
    $i = 0;
    foreach($products as $product) {
        $products_arr[$i]['id'] = $product->id;
		$products_arr[$i]['product_name'] = $product->product_name;
		$i++;
    }
    echo json_encode($products_arr);
} else {
    http_response_code(404);
}
echo "asdasdsa";
echo json_encode(
    array("error" => "Something went wrong.")
);
?>