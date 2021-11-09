<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "klienci";

$imie = $_POST["imie"];
$adres = $_POST["adres"];
$telefon = $_POST["telefon"];

$marka = $_POST["marka"];
$pojemnosc = $_POST["pojemnosc"];
$rejestracja = $_POST["rejestracja"];
$przebieg = $_POST["przebieg"];

$data = $_POST["data"];
$drive = $_POST["drive"];
$wgniecenie = $_POST["wgniecenie"];

if(isset($_POST["us1"])) $us1 = $_POST["us1"];
else $us1 = 0;

if(isset($_POST["us2"])) $us2 = $_POST["us2"];
else $us2 = 0;

if(isset($_POST["us3"])) $us3 = $_POST["us3"];
else $us3 = 0;

if(isset($_POST["us4"])) $us4 = $_POST["us4"];
else $us4 = 0;

if(isset($_POST["us5"])) $us5 = $_POST["us5"];
else $us5 = 0;

if(isset($_POST["us6"])) $us6 = $_POST["us6"];
else $us6 = 0;

if(isset($_POST["us7"])) $us7 = $_POST["us7"];
else $us7 = 0;


$link = @mysqli_connect($servername, $username, $password, $database);

if (!$link) {
    echo "Blad: ". mysqli_connect_error();
}

// (id,imie i nazwisko,adres zamieszkania,nr telefonu,marka pojazdu,pojemnosc silnika,numer rejestracyjny,przebieg (km),termin odbioru,Zgoda na jazde probna,Czy samochod jest wgniecony,Wymiana klocków hamulcowych,Przegląd samochodu,Wymiana oleju,Malowanie samochodu,Wymiana opon,usuwanie wgniecen w karoserii,ustawianie zbierznosci)

$query = "INSERT INTO dane VALUES('','" . $imie . "','" . $adres . "'," . $telefon . ",'" . $marka . "'," . $pojemnosc. ",'" . $rejestracja . "'," . $przebieg . ",'" . $data . "','" . $drive . "','" . $wgniecenie . "'," . $us1 . "," . $us2 ."," . $us3 . "," . $us4 . "," . $us5 . "," . $us6 . "," . $us7 . ")";

print_r($query);

$result = mysqli_query($link, $query);

if($result) {
    echo "Dodano do bazy";
} else {
    echo mysqli_error($link);
}



// echo $wynik = mysqli_num_rows($result);
// echo "<br>";
// $wynik = mysqli_fetch_assoc($result);
// print_r($wynik);
// while ($wynik=mysqli_fetch_assoc($result)) {
//     print_r($wynik);
//     echo "<br>";
// }

?>