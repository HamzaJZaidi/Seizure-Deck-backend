<?php
require 'db_connection.php'; // Include the database connection file

// Get the POST data from the Flutter app
$email = $_REQUEST['email'];
$password = $_REQUEST['password'];

$emailCheck = $conn->prepare("SELECT uid, password FROM users WHERE email = ?");
$emailCheck->bind_param("s", $email);
$emailCheck->execute();
$emailCheck->store_result();

if ($emailCheck->num_rows > 0) {
    // Email exists, now check the password
    $emailCheck->bind_result($uid, $retrievedPassword); // Retrieve the uid and the raw (unhashed) password
    $emailCheck->fetch();

    if ($password === $retrievedPassword) {
        // Password is correct, user is authenticated
        header("HTTP/1.1 200 OK"); // Set a 200 status code
        echo json_encode(["message" => "Login successful", "uid" => $uid]);
    } else {
        // Wrong password
        header("HTTP/1.1 200 OK"); // Set a 200 status code
        echo json_encode(["message" => "Wrong password"]);
    }
} else {
    // Email not found
    header("HTTP/1.1 200 OK"); // Set a 200 status code
    echo json_encode(["message" => "Email not found"]);
}

// Close the prepared statement
$emailCheck->close();
?>
