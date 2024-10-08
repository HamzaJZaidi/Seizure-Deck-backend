<?php
header("Content-Type: application/json");

// Database connection parameters
$servername = "localhost";  // Update with your database server
$username = "root";         // Update with your database username
$password = "";             // Update with your database password
$dbname = "seizure_deck";   // Update with your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die(json_encode(["status" => "error", "message" => "Connection failed: " . $conn->connect_error]));
}

// Get email and password from query parameters
$email = $_GET['email'] ?? null;
$password = $_GET['password'] ?? null;

// Validate input
if (empty($email) || empty($password)) {
    echo json_encode(["status" => "error", "message" => "Email and password are required."]);
    exit();
}

// Sanitize input
$email = $conn->real_escape_string($email);
$password = $conn->real_escape_string($password);

// Query to fetch user details
$sql = "SELECT uid, name, email FROM users WHERE email = '$email' AND password = '$password'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $user = $result->fetch_assoc();
    echo json_encode(["status" => "success", "user" => $user]);
} else {
    echo json_encode(["status" => "error", "message" => "Invalid email or password"]);
}

// Close connection
$conn->close();
?>
