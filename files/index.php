<?php
$servername = "mariadb_server";
$username = "lampuser";
$password = "lamppass";
$dbname = "lampdb";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

echo "Connected successfully to MariaDB!";
?>
