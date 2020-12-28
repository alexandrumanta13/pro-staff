<?php
header('Access-Control-Allow-Origin: *');
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




   
    $emailMessage = '<html><body>';
    $emailMessage .= '<p>E timpul pentru ceva dulce si bun!</p>';
    $emailMessage .= '<p>Acesta este codul tau de reducere: <strong style="color: red;">SARBATORI10</strong></p>';
    $emailMessage .= '<p>Aplica acest cod in campul dedicat, inainte de finalizarea procesului de achizitie si o reducere de 10% se va aplica pentru intreaga comanda. Codul este valabil doar pentru prima ta comanda.</p>';
    $emailMessage .= '<p><a style="
    background: #ecbbb6;
    box-shadow: 0 10px 20px rgba(236, 187, 182, 0.3);
    osition: relative;
    display: inline-block;
    font-size: 16px;
    line-height: 26px;
    font-weight: 500;
    color: #fff !important;
    text-align: center;
    padding: 17px 47px;
    text-align: center;
    z-index: 1;
    text-decoration: none";
    " href="https://la-petite.ro/">Cumpara</a></p>';
    

    
    
    $emailMessage .= "</body></html>";

    $recipient = $decoded['email'];
    //$recipient = 'comenzi@la-petite.ro';
    $email = 'info@pro-staff.ro';
    
    $subject = 'Voucherul tau pentru cumparaturi dulci La Petite';
    // $headers = "From: $name <$email>";
    $headers = "From: " . strip_tags($email) . "\r\n";
    $headers .= "Reply-To: ". strip_tags($email) . "\r\n";
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
    echo json_encode(array("status" => "success", "message" => "Comanda a fost procesata. Multumim!"));


    mail($recipient, $subject, $emailMessage, $headers);
       
    
}

 ?>