<?php
/*
* iTech Empires:  Export Data from MySQL to CSV Script
* Version: 1.0.0
* Page: Export
*/

// Database Connection
require("../dbexport/db_connection.php");

// get Users
$query = "SELECT * FROM veriler";
if (!$result = mysqli_query($con, $query)) {
    exit(mysqli_error($con));
}

$users = array();
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $users[] = $row;
    }
}

header('Content-Type: text/csv; charset=utf-8');
header('Content-Disposition: attachment; filename=Users.csv');
$output = fopen('php://output', 'w');
fputcsv($output,array('tur','stokkod','isim','yayinlanma','onecikan','kataloggor','kisaaciklama','aciklama','indirimbaslangictarih','indirimbitistarih','vergidurumu','vergisinif','stokta','stok','dusukstokmiktari','yoksatmayaizin','ayriayrimi','agirlik','uzunluk','genislik','yukseklik','musteriincelemeizin','satinalmanotu','indirimlifiyat','normalfiyat','kategoriler','etiketler','gonderimsinif','gorsel','indirmesinir','indirmesonaerme','ebevyn','grupurun','yukarisatis','caprazsatis','hariciurl','dugmemetni','konum	','an'));

if (count($users) > 0) {
    foreach ($users as $row) {
        fputcsv($output, $row);
    }
}
?>
