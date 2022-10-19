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
	function execut_cron($url,array $fields, $verboseOutput=false){
		$fields_string=json_encode($fields);
		//openconnection
		$ch=curl_init();

		curl_setopt($ch,CURLOPT_URL,$url);
		curl_setopt($ch,CURLOPT_CUSTOMREQUEST,'POST');
		curl_setopt($ch,CURLOPT_POSTFIELDS,$fields_string);///SETRIMITPRINPOST
		curl_setopt($ch,CURLOPT_SSL_VERIFYPEER,false);

		curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
		curl_setopt($ch,CURLOPT_HTTPHEADER,array(
		'Content-Type:application/json',
		'Content-Length:'.strlen($fields_string))
		);

		curl_setopt($ch,CURLOPT_VERBOSE,true);

		$verbose=fopen('php://temp','w+');
		curl_setopt($ch,CURLOPT_STDERR,$verbose);

		//executepost
		$result=curl_exec($ch);

		if($verboseOutput){
			rewind($verbose);
			$verboseLog=stream_get_contents($verbose);
			//echo"Verboseinformation:\n<pre>",htmlspecialchars($verboseLog),"</pre>\n";
		}

		if(curl_exec($ch)){
			$info = curl_getinfo($ch);
			//echo 'Took ' . $info['total_time'] . ' seconds to transfer a request to ' . $info['url']; 
		}

		//closeconnection
		curl_close($ch);

		return$result;
	}

	$url='https://api.dpd.ro/v1/calculate?';
	$arr=array(

		'userName' => '200917727',
		'password' => '6935115733',
		'service' =>
		array(
			'autoAdjustPickupDate' => true,
			'serviceIds' => array(
				'0' => 2505
		),
	
		'additionalServices' =>
		array(
			// plata Ramburs
			'cod' =>
			array(
			'amount' => '1',
			'currencyCode' => 'RON',
			'processingType' => 'CASH',
			),
		)
		),
	
		'content' => array(
		'contents' => 'Produse Pro Staff',
		'documents' => false,
		'pendingParcels' => false,
		'package' => 'BOX',
		'palletized' => false,
		//colete
		'parcels' => array(
			'0' => array(
			'seqNo' => '1',
			'weight' => $decoded['weight']
			)  
		)
	
		),
		//PLATITOR
		'payment' => array(
		'courierServicePayer' => 'SENDER',  
		),
		// adresa destinatar								
		'recipient' => array(
	
		'privatePerson' => true,
		'addressLocation' => array(
			'countryId' => 642,
			'siteId' => $decoded['site'],
		)
		),
		'shipmentNote' => 'TEST ALEX MARTIN DPD 1',
		'ref1' => 'MOA06351',
		'ref2' => 'Shipment ref22',
		'consolidationRef' => 'testare referinta'
	);
	$result=execut_cron($url,$arr,isset($_GET['verbose']));
	echo json_encode($result);	
	// var_dump($result);
}