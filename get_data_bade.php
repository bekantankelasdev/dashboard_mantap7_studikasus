<?php
require "config/koneksi.php";

$sql_get_bulan = "SELECT * FROM bjm_bulan";
$result_bulan = $koneksi->query($sql_get_bulan);
$bulan = array();
while ($row_bulan = $result_bulan->fetch_object()) {
    array_push($bulan, $row_bulan->bjm_bulan_nama);
}

$sql_get_unit = "SELECT DISTINCT lending_nama_unit FROM lending";
$result_unit = $koneksi->query($sql_get_unit);
$data_unit = array();
while ($row_unit = $result_unit->fetch_object()) {
    array_push($data_unit, $row_unit->lending_nama_unit);
}

$format_chart_per_bulan = array();
for ($index_bulan = 0; $index_bulan < count($bulan); $index_bulan++) {
    $arr_per_unit = array();
    for ($index_unit = 0; $index_unit < count($data_unit); $index_unit++) {
        $obj_perbulan_unit = (object) array('data' =>  array(), 'label' => $data_unit[$index_unit]);
        array_push($arr_per_unit, $obj_perbulan_unit);
    }
    array_push($format_chart_per_bulan, $arr_per_unit);
}

$sql_get_data = "SELECT SUM(lending_bade_net) as lending_bade_net, lending_mounth, MONTH(landing_create_at) as landing_create_at, lending_nama_unit FROM lending group by lending_nama_unit, landing_create_at";
$result_data = $koneksi->query($sql_get_data);

$data = array();
while ($row_data = $result_data->fetch_object()) {
    $obj_data = (object) array('data' =>  $row_data->lending_bade_net, 'label' => $row_data->lending_nama_unit, 'bulan' => $row_data->landing_create_at);
    array_push($data, $obj_data);
}

for ($i = 0; $i < count($format_chart_per_bulan); $i++) {
    $data_value = array();
    for ($index_per_unit = 0; $index_per_unit < count($format_chart_per_bulan[$i]); $index_per_unit++) {
        $data_value_per_unit = 0;
        for ($index_data = 0; $index_data < count($data); $index_data++) {

            if ($format_chart_per_bulan[$i][$index_per_unit]->label == $data[$index_data]->label && $i == ($data[$index_data]->bulan - 1)) {
                $data_value_per_unit = (int)$data[$index_data]->data;
            }
        }
        $format_chart_per_bulan[$i][$index_per_unit]->data = $data_value_per_unit;
    }
}

$response = (object) array('data' =>  $format_chart_per_bulan, 'label' => $bulan, 'unit' => $data_unit);

echo json_encode($response);
exit();
