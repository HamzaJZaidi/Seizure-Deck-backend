<?php
require_once 'db_connection.php';


// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch data from the instructions table
$sql = "SELECT * FROM instructions";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Create an associative array to store the data
    $data = array();

    while($row = $result->fetch_assoc()) {
        // Add each row to the data array
        $data[] = $row;
    }

    // Encode the data array into JSON format
    $json = json_encode($data);

    // Output the JSON data
    header('Content-Type: application/json');
    echo $json;
} else {
    echo "No instructions found";
}

// Close the database connection
$conn->close();
?>