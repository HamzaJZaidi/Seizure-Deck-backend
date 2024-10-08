<?php

require_once('db_connection.php');

// Get parameters from the request
$uid = $_POST['uid'];
$date = $_POST['date'];
// longitude and latitude
$longitude = $_POST['longitude'];
$latitude = $_POST['latitude']; // Add a semicolon here

// Insert seizure data into the seizure table
$insertQuery = "INSERT INTO seizure_diary (uid, date, longitude, latitude) VALUES ('$uid', '$date', '$longitude', '$latitude')";

if ($conn->query($insertQuery) === TRUE) {
    echo json_encode(array('message' => 'Seizure data stored successfully'));
} else {
    echo json_encode(array('message' => 'Error storing seizure data'));
}

// Close the database connection
$conn->close();

?>
