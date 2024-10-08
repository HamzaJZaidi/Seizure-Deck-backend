<?php

// Include the database connection file
require_once('db_connection.php');

// Get parameters from the request
$uid = $_POST['uid'];
$experience = $_POST['experience'];
$timeAvailable = $_POST['timeAvailable'];
$numExercises = $_POST['numExercises'];

// Check if 'user_id' column exists in 'exercise_plan' table
$checkColumnQuery = "SHOW COLUMNS FROM exercise_plan LIKE 'user_id'";
$checkResult = $conn->query($checkColumnQuery);

if ($checkResult->num_rows > 0) {
    // Delete existing records for the user
    $deleteQuery = "DELETE FROM exercise_plan WHERE user_id = $uid";

    if ($conn->query($deleteQuery) === TRUE || $conn->affected_rows == -1) {
        // Proceed to insert new records

        // Retrieve exercises based on experience and limit by numExercises
        $selectQuery = "SELECT * FROM exercise WHERE difficulty = '$experience' AND Type='Yoga' ORDER BY RAND() LIMIT $numExercises";
        $result = $conn->query($selectQuery);

        if ($result->num_rows > 0) {
            // Iterate through the selected exercises and insert into exercise_plan
            while ($row = $result->fetch_assoc()) {
                $eid = $row['eid'];
                $eName = $row['e_name'];

                // Insert the new record into exercise_plan
                $insertQuery = "INSERT INTO exercise_plan (user_id, e_id, duration) VALUES ('$uid', '$eid', '$timeAvailable')";
                $conn->query($insertQuery);
            }

            echo json_encode(array('message' => 'Exercise plan generated successfully'));
        } else {
            echo json_encode(array('message' => 'No exercises found for the specified criteria'));
        }
    } else {
        echo json_encode(array('message' => 'Error deleting existing records'));
    }
} else {
    echo json_encode(array('message' => 'Column \'user_id\' does not exist in the table exercise_plan'));
}

// Close the database connection
$conn->close();

?>
