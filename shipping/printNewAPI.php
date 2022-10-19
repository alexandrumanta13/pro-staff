
<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

error_reporting(0);

$service_url1='https://api.dpd.ro/v1/print?username=200916563&password=8296868757'; // TEST.
$service_url1.=str_replace('','%20','&format=Pdf');

$service_url1.=str_replace('','%20','&paper_size=A4');
$service_url1.=str_replace('','%20','&parcels=80205259573|80205459573|80305256573');

//code
$curl=curl_init($service_url1);
//curl_setopt($curl,CURLOPT_POST,true);
curl_setopt($curl,CURLOPT_HEADER,false);
curl_setopt($curl,CURLOPT_SSL_VERIFYPEER,false);
curl_setopt($curl,CURLOPT_RETURNTRANSFER,true);

$curl_response=curl_exec($curl);

$arr=JSON_decode($curl_response);
print_r($arr); die();
//$data=base64_decode($arr->pdf);
//$data=$arr->pdf;
curl_close($curl);

// $destination=dirname(__FILE__).'/file1.pdf';
// $file=fopen($destination,"w+");
// fputs($file,$curl_response);
// fclose($file);
// $filename='awb.pdf';

// header("Cache-Control:public");
// header("Content-Description:FileTransfer");
// header("Content-Disposition:attachment;filename=$filename");
// header("Content-Type:application/pdf");
// header("Content-Transfer-Encoding:binary");
// header("Content-Type:charset=UTF-8;application/x-www-form-urlencoded");
// readfile($destination);

?>
