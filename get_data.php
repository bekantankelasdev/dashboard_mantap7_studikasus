<?php
require "config/koneksi.php";

if (isset($_GET['data_kc'])) {
    $dataKC = $_GET['data_kc'];
    $sql = "SELECT lending_bulan_berjalan FROM lending WHERE lending_nama_unit = '$dataKC'";
} else {
    $sql = "SELECT lending_bulan_berjalan FROM lending";
}

// berdasarkan nama KC, rentang tanggal
$result = $koneksi->query($sql);

$data = array();
while ($row = $result->fetch_object()) {
    array_push($data, $row->lending_bulan_berjalan);
}

echo json_encode($data);
exit();
