<?php
// Include the database connection file
require_once('db_connection.php');

// Get userid from POST request
$userid = $_POST['userid'];

// Query to fetch seizure data for the given user
$query = "SELECT sd.date, sd.latitude, sd.longitude, u.name 
          FROM seizure_diary sd
          JOIN users u ON sd.uid = u.uid
          WHERE sd.uid = '$userid'";

// Execute the query
$result = $conn->query($query);

if ($result->num_rows > 0) {
    $seizureData = array();
    while ($row = $result->fetch_assoc()) {
        $seizureData[] = $row;
    }
    echo json_encode($seizureData);
} else {
    echo json_encode(array('message' => 'No seizure data found for the specified user'));
}

// Close the database connection
$conn->close();
?>