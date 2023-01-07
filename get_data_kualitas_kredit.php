<?php 
require "config/koneksi.php";

// berdasarkan nama KC, rentang tanggal
$sql = "SELECT lending_bulan_berjalan FROM lending WHERE lending_nama_unit = 'KC PONTIANAK'";
$result = $koneksi->query($sql);

$data = array();
while ($row = $result->fetch_object()) {
    array_push($data, $row->lending_bulan_berjalan);
}

echo json_encode($data);
exit();