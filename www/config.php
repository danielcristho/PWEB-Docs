<?php

$server = "172.24.0.2";
$user = "root";
$password = "secret";
$nama_database = "pweb";

$db = mysqli_connect($server, $user, $password, $nama_database);

if( !$db ){
    die("Gagal terhubung dengan database: " . mysqli_connect_error());
}

?>