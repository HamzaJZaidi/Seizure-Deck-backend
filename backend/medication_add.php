<?php
// Include your database connection file
require 'db_connection.php';

// Set headers to allow cross-origin requests
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$uid = $_POST['uid'];
$mName = $_POST['mName'];
$dosage = $_POST['dosage'];
$frequency = $_POST['frequency'];
$mType = $_POST['mType'];
$datePicked = $_POST['datePicked'];
$time = $_POST['time'];

// Get JSON content sent via POST request
//$data = json_decode(file_get_contents("php://input"));

// Extracting values from JSON data


// Example SQL query to insert data into a hypothetical table named 'medications'
$sql = "INSERT INTO medication (mName, dosage, frequency, mType, date, time, uid) 
        VALUES ('$mName', '$dosage', '$frequency', '$mType', '$datePicked', '$time', '$uid')";

if ($conn->query($sql) === TRUE) {
    echo json_encode(array("message" => "Data inserted successfully"));
} else {
    echo json_encode(array("error" => "Error: " . $sql . "<br>" . $conn->error));
}

// Close the database connection
$conn->close();
?>
