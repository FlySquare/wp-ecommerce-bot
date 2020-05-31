<?php
try {
     $db = new PDO("mysql:host=89.107.228.51;dbname=bolfpsco_urun", "bolfpsco", "0#M4Qr!J3Y5qua",array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8") );
  
} catch ( PDOException $e ){
     print $e->getMessage();
}
?>
