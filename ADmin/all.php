<?php 

function filter($data){
    $data = htmlspecialchars($data);
    $data =trim($data);
    $data= stripslashes($data);
    return $data ;
}
$host ="localhost";
$user="SAMIR";
$pass = "samir123";
$dbname="booking";
$tbnameTour="tour";
$tbnameClient="client";
$tbnameView="view";
$sql = "mysql:host=$host;dbname=$dbname";
