<?php

require_once('db_connection.php');

function getExercisesForUser($uid) {
    global $conn;

    // Replace 'user_id' with the correct column name for user identifier
    $selectQuery = "SELECT e.eid, e.e_name, e.Type, e.difficulty, e.link, ep.duration
                    FROM exercise_plan ep
                    INNER JOIN exercise e ON ep.e_id = e.eid
                    WHERE ep.user_id = $uid";

    $result = $conn->query($selectQuery);

    if ($result->num_rows > 0) {
        $exercises = array();

        while ($row = $result->fetch_assoc()) {
            $exercise = array(
                'eid' => $row['eid'],
                'eName' => $row['e_name'],
                'type' => $row['Type'],
                'difficulty' => $row['difficulty'],
                'time' => $row['duration'], // Use the 'duration' from exercise_list
                'link' => $row['link'],
            );

            $exercises[] = $exercise;
        }

        return $exercises;
    } else {
        return array();
    }
}

// Get parameters from the request
$uid = $_GET['uid'];

if (isset($uid)) {
    // Call the function to get exercises for the user
    $exercises = getExercisesForUser($uid);

    // Check if exercises were found
    if (!empty($exercises)) {
        // Return the exercises in JSON format
        echo json_encode($exercises);
    } else {
        // No exercises found
        echo json_encode(array('message' => 'No exercises found for the user'));
    }
} else {
    // Invalid request, missing uid parameter
    echo json_encode(array('message' => 'Invalid request. Missing uid parameter'));
}

// Close the database connection
$conn->close();

?>
