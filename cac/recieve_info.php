<?php
header('Content-Type: text/plain');

// Retrieve the computer name from the client
$computerName = $_POST['computerName'];

// Do something with the computer name (e.g., log it)
file_put_contents('log.txt', "Received from $computerName\n", FILE_APPEND);

// You can respond with any message if needed
echo "Info received successfully";
?>
