<?php

// Include the database connection file
require_once('db_connection.php');

// Get parameters from the request
$uid = $_POST['uid'];
$shoulder = $_POST['shoulder'];
$chest = $_POST['chest'];
$back = $_POST['back'];
$arms = $_POST['arms'];
$abs = $_POST['abs'];
$legs = $_POST['legs'];
$numExercises = $_POST['numExercises'];
$difficulty = $_POST['difficulty'];
// $time = $_POST['time'];
$time = 5;
if ($difficulty == 'Easy') {
    $time = 3;
} else if ($difficulty == 'Moderate') {
    $time = 4;
} else if ($difficulty == 'Hard') {
    $time = 5;
}
// echo("TIME IS : $time");

$allMusclesSelected = $shoulder && $chest && $back && $arms && $abs && $legs;

// Build the WHERE clause dynamically
$whereConditions = [];

if (!$allMusclesSelected) {
    if ($shoulder) $whereConditions[] = "Shoulder = 1";
    if ($chest) $whereConditions[] = "Chest = 1";
    if ($back) $whereConditions[] = "Back = 1";
    if ($arms) $whereConditions[] = "Arms = 1";
    if ($abs) $whereConditions[] = "Abs = 1";
    if ($legs) $whereConditions[] = "Legs = 1";
}

$whereClause = $allMusclesSelected ? '' : ' AND (' . implode(' OR ', $whereConditions) . ')';

// Check if 'user_id' column exists in 'exercise_plan' table
$checkColumnQuery = "SHOW COLUMNS FROM exercise_plan LIKE 'user_id'";
$checkResult = $conn->query($checkColumnQuery);

if ($checkResult->num_rows > 0) {
    // Delete existing records for the user
    $deleteQuery = "DELETE FROM exercise_plan WHERE user_id = $uid";

    if ($conn->query($deleteQuery) === TRUE || $conn->affected_rows == -1) {
        // Proceed to insert new records

        // Retrieve exercises based on user input and limit by numExercises
        $selectQuery = "SELECT *
                FROM exercise
                WHERE 
 
                Type = 'Cardio'
                $whereClause
                ORDER BY RAND()";
                               // difficulty = '$difficulty'
                // AND 

        $result = $conn->query($selectQuery);

        // if ($result === FALSE) {
        //     die("Error executing select query: " . $conn->error);
        // }

        $selectedExercises = [];

        if ($result->num_rows > 0) {
            // Iterate through the selected exercises and insert into exercise_plan
            while ($row = $result->fetch_assoc()) {
                $eid = $row['eid'];
                $eName = $row['e_name'];
                // echo "Selected Exercise ID: $eid\n";  // Debug statement

                // Insert the new record into exercise_plan
                $insertQuery = "INSERT INTO exercise_plan (user_id, e_id, duration) VALUES ('$uid', '$eid', '$time')";
                $insertResult = $conn->query($insertQuery);
                if ($insertResult === FALSE) {
                    die("Error executing insert query: " . $conn->error);
                }
                // echo "Inserted Exercise ID: $eid\n";  // Debug statement

                $selectedExercises[] = $row;
            }

            if (count($selectedExercises) < $numExercises) {
                echo json_encode(array('message' => 'Not enough exercises found for the specified criteria'));
            } else {
                echo json_encode(array('message' => 'Exercise plan generated successfully'));
            }
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
