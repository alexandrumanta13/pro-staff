<?php
require_once "../../config/ep_function.php";

$data =  array (
	'amount'     => addslashes(trim(@$_POST['amount'])),
	'curr'       => addslashes(trim(@$_POST['curr'])), 
	'invoice_id' => addslashes(trim(@$_POST['invoice_id'])),
	'ep_id'      => addslashes(trim(@$_POST['ep_id'])), 
	'merch_id'   => addslashes(trim(@$_POST['merch_id'])), 
	'action'     => addslashes(trim(@$_POST['action'])), 
	'message'    => addslashes(trim(@$_POST['message'])),
	'approval'   => addslashes(trim(@$_POST['approval'])),
	'timestamp'  => addslashes(trim(@$_POST['timestamp'])),
	'nonce'      => addslashes(trim(@$_POST['nonce'])),
);

    $data['fp_hash'] = strtoupper(euplatesc_mac($data, $key));
    $fp_hash=addslashes(trim(@$_POST['fp_hash']));


    // ob_start();
	// echo "\n";
	// $msg=ob_get_contents();
    // ob_end_clean();
    
   

if($data['fp_hash']===$fp_hash){
	if($data['action']=="0") {
		//Complete
	}else {
        $myfile = fopen("payment.log", "a") or die("Unable to open file!");
        $msg = $data['invoice_id'];
        fwrite($myfile, $msg);
        fclose($myfile);
	}
}else{
	//Invalid
}



echo "OK";//IMPORTANT to print OK 
?>
