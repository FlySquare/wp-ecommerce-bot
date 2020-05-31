<?php


// Connection variables
$host = ""; // MySQL host name eg. localhost
$user = ""; // MySQL user. eg. root ( if your on localserver)
$password = ""; // MySQL user password  (if password is not set for your root user then keep it empty )
$database = ""; // MySQL Database name
// Connect to MySQL Database
$con = new mysqli($host, $user, $password, $database);
$con->set_charset("utf8");

// Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}


?>
