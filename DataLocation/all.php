<?php


function filter($data){
    $data = htmlspecialchars($data);
    $data =trim($data);
    $data= stripslashes($data);
    return $data ;
}
function filter_phone($phone) {
    $phone = preg_replace('/\D/', '', $phone);
    return $phone;
}
$host = "localhost";
$user = "SAMIR";
$pass="samir123";
$dbname="booking";
$tbnameTour="tour";
$tbnamedashbord = "view";
$sql = "mysql:host=$host;dbname=$dbname";
//

                 
