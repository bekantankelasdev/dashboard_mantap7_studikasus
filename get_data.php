<?php
require "config/koneksi.php";

if (isset($_GET['data_kc'])) {
    $dataKC = $_GET['data_kc'];
    $sql = "SELECT SUM(lending_bulan_berjalan) as lending_bulan_berjalan, lending_nama_unit FROM lending WHERE lending_nama_unit = '$dataKC' and (lending_kol_sekarang = '01' or lending_kol_sekarang = '02') group by lending_nama_unit";
} else if (isset($_GET['value_tanggal_awal']) && isset($_GET['value_tanggal_akhir'])) {
    $value_tanggal_awal = $_GET['value_tanggal_awal'];
    $value_tanggal_akhir = $_GET['value_tanggal_akhir'];
    $sql = "SELECT SUM(lending_bulan_berjalan) as lending_bulan_berjalan, lending_nama_unit FROM lending WHERE landing_create_at >= '$value_tanggal_awal' && landing_create_at <= '$value_tanggal_akhir' group by lending_nama_unit order by lending_nama_unit";
} else {
    $sql = "SELECT SUM(lending_bulan_berjalan) as lending_bulan_berjalan, lending_nama_unit FROM lending group by lending_nama_unit order by lending_nama_unit";
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
