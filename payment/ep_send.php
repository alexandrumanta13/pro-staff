<?php 

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require_once "../../config/ep_function.php";


    // http://pro-staff.ro/?wc-api=wc_euplatesc
    $content = trim(file_get_contents("php://input"));
	$decoded = json_decode($content, true);
   
	if(! is_array($decoded)) {
		echo json_encode(
			array("error" => "Something went wrong.")
		);
	} else {
        $dataAll['amount'] = $decoded['amount'];
		$dataAll['fp_hash'] = strtoupper(euplatesc_mac($dataAll,$key));
        echo json_encode($dataAll);	
	}



   

?>
