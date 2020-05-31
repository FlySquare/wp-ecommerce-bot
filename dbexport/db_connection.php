<?php
/*
* iTech Empires:  Export Data from MySQL to CSV Script
* Version: 1.0.0
* Page: DB Connection
*/

// Connection variables
$host = "89.107.228.51"; // MySQL host name eg. localhost
$user = "bolfpsco"; // MySQL user. eg. root ( if your on localserver)
$password = "0#M4Qr!J3Y5qua"; // MySQL user password  (if password is not set for your root user then keep it empty )
$database = "bolfpsco_urun"; // MySQL Database name
// Connect to MySQL Database
$con = new mysqli($host, $user, $password, $database);
$con->set_charset("utf8");

// Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}


?>
