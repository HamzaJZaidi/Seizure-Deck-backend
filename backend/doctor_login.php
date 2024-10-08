<?php
// Database configuration
$servername = "127.0.0.1:3306";
$username = "seizure_deck";
$password = "Iqra@1234";
$dbname = "seizure_deck";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get email and password from the URL parameters
$email = isset($_GET['email']) ? $_GET['email'] : '';
$password = isset($_GET['password']) ? $_GET['password'] : '';

// Prepare the SQL statement
$sql = "SELECT doctor_id, name, email FROM doctors WHERE email = ? AND password = ?";

if ($stmt = $conn->prepare($sql)) {
    // Bind parameters
    $stmt->bind_param("ss", $email, $password);

    // Execute the statement
    $stmt->execute();

    // Bind result variables
    $stmt->bind_result($id, $name, $db_email);

    // Fetch the result
    if ($stmt->fetch()) {
        // Return success response
        $response = array(
            "status" => "success",
            "user" => array(
                "id" => $id,
                "name" => $name,
                "email" => $db_email
            )
        );
    } else {
        // Return error response
        $response = array(
            "status" => "error",
            "message" => "Invalid email or password."
        );
    }

    // Close the statement
    $stmt->close();
} else {
    // Return error response if the SQL statement couldn't be prepared
    $response = array(
        "status" => "error",
        "message" => "Failed to prepare the SQL statement."
    );
}

// Close the connection
$conn->close();

// Return the JSON response
header('Content-Type: application/json');
echo json_encode($response);
?>
