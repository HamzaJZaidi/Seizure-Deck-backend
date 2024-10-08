<?php

// Include database connection
require_once 'db_connection.php';

// Function to get all comments from the database
function getAllComments()
{
    global $conn;

    // Select all comments from the community_support table
    $sql = "SELECT * FROM community_support";
    $result = $conn->query($sql);

    $comments = array();

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $comments[] = array(
                'uid' => $row['uid'],
                'name' => $row['name'],
                'comment' => $row['Comment'],
                'datetime' => $row['date_time']
            );
        }
    }

    return $comments;
}

// Get all comments and return as JSON
$allComments = getAllComments();
echo json_encode($allComments);

// Close the database connection
$conn->close();

?>
