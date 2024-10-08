<?php
header("Content-Type: application/json");

// Database connection parameters
$servername = "localhost";  // Update with your database server
$username = "root";         // Update with your database username
$password = "";             // Update with your database password
$dbname = "seizure_deck";  // Update with your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die(json_encode(["status" => "error", "message" => "Connection failed: " . $conn->connect_error]));
}

// Get POST data
$name = $_POST['name'] ?? null;
$cnic = $_POST['cnic'] ?? null;
$pmdc_no = $_POST['pmdc_no'] ?? null;
$contact_no = $_POST['contact_no'] ?? null;
$email = $_POST['email'] ?? null;
$password = $_POST['password'] ?? null;
$availability_days = $_POST['availability_days'] ?? null;
$availability_time = $_POST['availability_time'] ?? null;
$working_address = $_POST['working_address'] ?? null;
$optional_working_address = $_POST['optional_working_address'] ?? null;
$specialization = $_POST['specialization'] ?? null;

// Validate CNIC
if (!preg_match('/^\d{11}$/', $cnic)) {
    echo json_encode(["status" => "error", "message" => "CNIC must be a numeric value with exactly 11 digits."]);
    exit();
}

// Validate input
if (empty($name) || empty($cnic) || empty($pmdc_no) || empty($contact_no) || empty($email) || empty($password) || empty($availability_days) || empty($availability_time) || empty($working_address) || empty($specialization)) {
    echo json_encode(["status" => "error", "message" => "All fields are required."]);
    exit();
}

// Sanitize input
$name = $conn->real_escape_string($name);
$cnic = $conn->real_escape_string($cnic);
$pmdc_no = $conn->real_escape_string($pmdc_no);
$contact_no = $conn->real_escape_string($contact_no);
$email = $conn->real_escape_string($email);
$password = $conn->real_escape_string($password);
$availability_days = $conn->real_escape_string($availability_days);
$availability_time = $conn->real_escape_string($availability_time);
$working_address = $conn->real_escape_string($working_address);
$optional_working_address = $conn->real_escape_string($optional_working_address);
$specialization = $conn->real_escape_string($specialization);

// Insert data
$sql = "INSERT INTO doctors (name, cnic, pmdc_no, contact_no, email, password, availability_days, availability_time, working_address, optional_working_address, specialization) VALUES ('$name', '$cnic', '$pmdc_no', '$contact_no', '$email', '$password', '$availability_days', '$availability_time', '$working_address', '$optional_working_address', '$specialization')";

if ($conn->query($sql) === TRUE) {
    echo json_encode(["status" => "success", "message" => "Doctor created successfully"]);
} else {
    echo json_encode(["status" => "error", "message" => "Error: " . $conn->error]);
}

// Close connection
$conn->close();
?>
