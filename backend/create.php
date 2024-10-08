<?php
// Create a connection to the database
$servername = "127.0.0.1"; // Your server name
$username = "root"; // Your database username
$password = ""; // Your database password
$dbname = "seizure_deck"; // Your database name

$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the request method is POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the input data
    $name = isset($_POST['name']) ? $_POST['name'] : '';
    $email = isset($_POST['email']) ? $_POST['email'] : '';
    $password = isset($_POST['password']) ? $_POST['password'] : '';
    $location = isset($_POST['location']) ? $_POST['location'] : '';

    // Debugging: Print received data
    error_log("Received data: name=$name, email=$email, password=$password, location=$location");

    // Check if all required fields are provided
    if (empty($name) || empty($email) || empty($password) || empty($location)) {
        http_response_code(400);
        echo json_encode(["message" => "All fields are required."]);
        exit();
    }

    // Prepare the SQL statement
    $stmt = $conn->prepare("INSERT INTO users (name, email, password, location) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $name, $email, $password, $location);

    // Execute the statement
    if ($stmt->execute()) {
        http_response_code(201);
        echo json_encode(["message" => "User created successfully."]);
    } else {
        http_response_code(500);
        echo json_encode(["message" => "Error: " . $stmt->error]);
    }

    // Close the statement
    $stmt->close();
} else {
    http_response_code(405);
    echo json_encode(["message" => "Method not allowed."]);
}

// Close the connection
$conn->close();
?>
