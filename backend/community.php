<?php

// Include database connection
require_once 'db_connection.php';

// Function to add comment to the database
function addComment($uid, $comment, $datetime)
{
    global $conn;

    // Fetch user name from the user table
    $userName = getUserName($uid);

    // Insert comment into the comments table
    $sql = "INSERT INTO community_support (uid, name, Comment, date_time) VALUES ('$uid', '$userName', '$comment', '$datetime')";

    if ($conn->query($sql) === TRUE) {
        echo "Comment added successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Function to get user name from the user table
function getUserName($uid)
{
    global $conn;

    $sql = "SELECT name FROM users WHERE uid = '$uid'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        return $row['name'];
    } else {
        return "Unknown User";
    }
}

// Check if the required parameters are set
if (isset($_POST['uid']) && isset($_POST['comment']) && isset($_POST['datetime'])) {
    $uid = $_POST['uid'];
    $comment = $_POST['comment'];
    $datetime = $_POST['datetime'];

    // Add the comment to the database
    addComment($uid, $comment, $datetime);
} else {
    echo "Error: Missing parameters";
}

// Close the database connection
$conn->close();

?>
