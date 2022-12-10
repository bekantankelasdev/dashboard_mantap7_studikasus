<?php 

$servername = 'localhost';
$username = 'root';
$password = '4';
$database = 'kelas_dashboard_mantap7';

// koneksi database
$koneksi = new mysqli($servername, $username, $password, $database);

// cek koneksi
if ( $koneksi->connect_error ) {
    echo "koneksi database gagal";
}else{
    // echo "koneksi database sukses";
}

?>