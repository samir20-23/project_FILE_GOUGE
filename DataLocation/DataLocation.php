<?php

include "all.php";
try {
    $con = new PDO($sql, $user, $pass);
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $select = $con->prepare("SELECT tour_id, tour_name, tour_price, tour_description, tour_adddescription, tour_img, tour_img2, tour_img3, tour_img4 FROM $tbnameTour");
    $select->execute();
    
    $tours = [];
    
    while ($fetch = $select->fetch(PDO::FETCH_ASSOC)) {
        $tours[] = [
            "tour_id" => $fetch["tour_id"],
            "tour_name" => $fetch["tour_name"],
            "tour_price" => $fetch["tour_price"],
            "tour_description" => $fetch["tour_description"],
            "tour_adddescription" => $fetch["tour_adddescription"],
            "tour_img" => $fetch["tour_img"],
            "tour_img2" => $fetch["tour_img2"],
            "tour_img3" => $fetch["tour_img3"],
            "tour_img4" => $fetch["tour_img4"]
        ];
    }
    
    echo json_encode($tours);
    
} catch(PDOException $e) {
    echo $e->getMessage();
}
?>
