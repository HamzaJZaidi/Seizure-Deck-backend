<?php
// Include your database connection file
require 'db_connection.php';

// Set headers to allow cross-origin requests
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// Extracting values from the query parameters
$uid = $_GET['uid'];

// Example SQL query to fetch data from a hypothetical table named 'medication'
$sql = "SELECT * FROM medication WHERE uid = $uid";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $medication = array();

    // Fetching data from the result set
    while ($row = $result->fetch_assoc()) {
        $medication[] = $row;
    }

    // Outputting the data as JSON
    echo json_encode($medication);
} else {
    echo json_encode(array("message" => "No medication data found!"));
}

// Close the database connection
$conn->close();
?>
