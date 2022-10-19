<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$content = trim(file_get_contents("php://input"));
$decoded = json_decode($content, true);

if(! is_array($decoded)) {
    echo json_encode(
        array("error" => "Something went wrong.")
    );
} else {
    $town = $decoded['town'];
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_URL, 
        'https://api.dpd.ro/v1/location/site/?username=200917727&password=6935115733&country_id=642&name='.$town
    );
    $content = curl_exec($ch);
    
    echo json_encode($content);	
}

?>