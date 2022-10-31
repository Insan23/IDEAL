<?php
// require_once("../config/+koneksi.php");
include "../config/+koneksi.php";
include '../models/database.php';
include '../views/sppk.php'; //file view
include '../models/m_ideal.php'; //file model
$connection = new Database($host, $user, $pass, $database);
$indeks = new Ideal($connection);

if(!isset($_POST['hitung'])){
    $tinggi = $_POST['tinggi'];
    $berat= $_POST['berat'];
    $tinggi = $tinggi/100;
    $BMI;
    $persen;
    $BMI = $berat/($tinggi* $tinggi);
    $bmia =((18.5-$BMI)*($tinggi * $tinggi));
    $bmib =(($BMI-24.9)*($tinggi * $tinggi));

    if ($BMI <18.5) {
        $persen = $bmia / $berat * 100;

        echo("Anda Kurus, silahkan menambah " . $bmia . " Kg dari berat badan anda");

    } else if (($BMI >=18.5) && ($BMI<=24.9)){
        $persen = 1 + (0 / $berat * 100);
        echo 'Anda Ideal '.$persen;
    } else if (($BMI >25) && ($BMI<=29.9)){
        $persen = $bmib / $berat * 100;
        echo ("Anda Gemuk, silahkan mengurangi " . $bmib . " Kg dari berat badan anda");
    } else {
        $persen = $bmib / $berat * 100;
        echo ("Anda obesitas, silahkan menggurangi " .$bmib." Kg dari berat badan anda");
    }
    echo ("   |   BMI anda = ".$BMI);
    echo " | Anda Disarankan Menggunakan Produk <br>";
    $data = $indeks->ambilIndeksProduk($persen);
    echo " ".$data['nama']."<br>";


}

?>
