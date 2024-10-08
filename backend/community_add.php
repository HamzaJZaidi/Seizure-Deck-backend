<?php
// Include the database connection file
require_once 'db_connection.php';

// Function to sanitize input
function sanitize($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

// Check if the request method is POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Check if all required parameters are present
    if (isset($_POST['uid']) && isset($_POST['userName']) && isset($_POST['comment'])) {
        // Sanitize input data
        $uid = sanitize($_POST['uid']);
        $userName = sanitize($_POST['userName']);
        $comment = sanitize($_POST['comment']);
        
        // Get current date and time
        $datetime = date('Y-m-d H:i:s');

        // Prepare and bind SQL statement
        $sql = "INSERT INTO community_support (uid, name, Comment, date_time) VALUES (?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ssss", $uid, $userName, $comment, $datetime);

        // Execute the statement
        if ($stmt->execute()) {
            // If insertion successful
            echo json_encode(array("message" => "Data inserted successfully"));
        } else {
            // If insertion failed
            echo json_encode(array("message" => "Failed to insert data"));
        }

        // Close statement
        $stmt->close();
    } else {
        // If required parameters are missing
        echo json_encode(array("message" => "Missing parameters"));
    }
} else {
    // If request method is not POST
    echo json_encode(array("message" => "Invalid request method"));
}

// Close database connection
$conn->close();
?>
