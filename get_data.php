<?php 
require "config/koneksi.php";

$sql = "SELECT lending_bulan_berjalan FROM lending";
$result = $koneksi->query($sql);

$data = array();
while ($row = $result->fetch_object()) {
    array_push($data, $row->lending_bulan_berjalan);
}

echo json_encode($data);
exit();