<?php
// Database connection details
$servername = "localhost";
$username = "id21504660_iqra123";
$password = "Iqra@123";
$database = "id21504660_seizure_deck";

// Check if the request is a POST request
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get user data from the POST request
    $Name = $_POST['Name'];
    $Password = $_POST['Password'];
    $DOB = $_POST['DOB'];
    $Email = $_POST['Email'];
    $Location = $_POST['Location'];

    // Create a connection to the database
    $conn = new mysqli($servername, $username, $password, $database);

    // Check the connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // SQL query to insert a new user
    $sql = "INSERT INTO `user`(`Name`, `Password`, `DOB`, `Email`, `Location`)
            VALUES ('$Name', '$Password', '$DOB', '$Email', '$Location')";

    if ($conn->query($sql) === TRUE) {
        echo "User added successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    // Close the database connection
    $conn->close();
} else {
    // Handle non-POST requests (e.g., GET requests)
    echo "Invalid request method. Please use POST to submit data.";
}
?>
