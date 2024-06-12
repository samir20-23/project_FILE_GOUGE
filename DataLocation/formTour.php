<?php
$servername = "localhost";
$dbname = "booking";
$username = "SAMIR";
$password = "samir123";
$tbname = "book";

function filter($data) {
    return htmlspecialchars(stripslashes(trim($data)));
}

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

   
    $stmt = $conn->prepare("INSERT INTO $tbname (book_name, book_email,  book_adults, book_child5_14, book_child2, book_depart, book_return, book_message) VALUES (:name, :email , :adults, :child5_14, :child2, :depart, :return, :message)");

    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':email', $email); 
    $stmt->bindParam(':adults', $adults);
    $stmt->bindParam(':child5_14', $child5_14);
    $stmt->bindParam(':child2', $child2);
    $stmt->bindParam(':depart', $depart); 
    $stmt->bindParam(':message', $message);
    $stmt->bindParam(':return', $Return);

    $Return = filter($_POST['Return']);
    $name = filter($_POST['name']);
    $email = filter($_POST['email']); 
    $adults = filter($_POST['Adults']);
    $child5_14 = filter($_POST['Child5_14']);
    $child2 = filter($_POST['Child2']);
    $depart = filter($_POST['Depart']); 
    $message = filter($_POST['message']);

    $stmt->execute();

    header('Content-Type: application/json');
    echo json_encode(["msg" => "success"]);
} catch(PDOException $e) {
    echo 'error'.$e->getMessage();
}

$conn = null;
?>
