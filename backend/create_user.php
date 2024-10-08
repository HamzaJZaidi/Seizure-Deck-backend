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

// Get POST data
$uid = $_POST['uid'] ?? null;
$name = $_POST['name'] ?? null;
$email = $_POST['email'] ?? null;
$password = $_POST['password'] ?? null;
$dob = $_POST['dob'] ?? null;
$location = $_POST['location'] ?? null;

// Validate input
if (empty($name) || empty($email) || empty($password) || empty($dob) || empty($location)) {
    echo json_encode(["status" => "error", "message" => "All fields are required."]);
    exit();
}

// Sanitize input
$name = $conn->real_escape_string($name);
$email = $conn->real_escape_string($email);
$password = $conn->real_escape_string($password);
$dob = $conn->real_escape_string($dob);
$location = $conn->real_escape_string($location);

// Check if user already exists
$checkUserSql = "SELECT * FROM users WHERE email = '$email'";
$result = $conn->query($checkUserSql);

if ($result->num_rows > 0) {
    echo json_encode(["status" => "error", "message" => "User already exists with this email."]);
} else {
    // Insert data
    $sql = "INSERT INTO users (name, email, password, dob, location) VALUES ('$name', '$email', '$password', '$dob', '$location')";
    
    if ($conn->query($sql) === TRUE) {
        echo json_encode(["status" => "success", "message" => "Record added successfully"]);
    } else {
        echo json_encode(["status" => "error", "message" => "Error: " . $sql . "<br>" . $conn->error]);
    }
}

// Close connection
$conn->close();
?>
