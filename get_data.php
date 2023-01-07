<?php
require "config/koneksi.php";

if (isset($_GET['data_kc'])) {
    $dataKC = $_GET['data_kc'];
    $sql = "SELECT lending_bulan_berjalan, lending_nama_unit FROM lending WHERE lending_nama_unit = '$dataKC'";
} else {
    $sql = "SELECT lending_bulan_berjalan, lending_nama_unit FROM lending";
}

// berdasarkan nama KC, rentang tanggal
$result = $koneksi->query($sql);

$data = array();
$label = array();
while ($row = $result->fetch_object()) {
    array_push($data, $row->lending_bulan_berjalan);
    array_push($label, $row->lending_nama_unit);
}

$response = (object) array('data' =>  $data, 'labels' => $label);

echo json_encode($response);
exit();
