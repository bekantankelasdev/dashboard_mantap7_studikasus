<?php
session_start();
require "config/koneksi.php";
require 'vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\IOFactory;

if (isset($_POST['import_excel'])) {
    $filename = $_FILES['import_file']['name'];
    $file_ext = pathinfo($filename, PATHINFO_EXTENSION);

    $allowed_ext = ['xls', 'csv', 'xlsx'];

    if (in_array($file_ext, $allowed_ext)) {
        $inputFileNamePath =  $_FILES['import_file']['tmp_name'];

        /** Load $inputFileName to a Spreadsheet object **/
        // $reader = IOFactory::createReader("Xlsx");
        // $spreadsheet = $reader->load($inputFileNamePath);
        $spreadsheet = PhpOffice\PhpSpreadsheet\IOFactory::load($inputFileNamePath);
        $data = $spreadsheet->getActiveSheet()->toArray();
        // $data = $spreadsheet->getActiveSheet()->toArray(null, true, true, true);
        // var_dump($data);
        // die();

        $baris = 0;
        foreach ($data as $row) {
            if ($baris > 0) {
                $lending_posisi = $row['0'];
                $lending_cif = $row['1'];
                $lending_rek_pinjaman = $row['2'];
                $landing_rek_agf = $row['3'];
                $lending_nopen = $row['4'];
                $lending_nama_debitur = $row['5'];
                $lending_kode_sales = $row['6'];
                $lending_nama_sales = $row['7'];
                $lending_kode_sales_or = $row['8'];
                $lending_nama_sales_ori = $row['9'];
                $lending_kode_unit = $row['10'];
                $lending_nama_unit = $row['11'];
                $lending_nama_cabang_induk = $row['12'];
                $lending_kode_cabang = $row['13'];
                $lending_nama_cabang = $row['14'];
                $lending_distribution = $row['15'];
                $lending_wilayah = $row['16'];
                $lending_kode_produk = $row['17'];
                $lending_group_produk = $row['18'];
                $lending_kd_group_nsb = $row['19'];
                $lending_flag_booking = $row['20'];
                $lending_limit = $row['21'];
                $lending_kelolaan = $row['22'];
                $lending_bade_real = $row['23'];
                $lending_arus_kas = $row['24'];
                $lending_bade_net = $row['25'];
                $lending_rate = $row['26'];
                $lending_tgl_mulai_kredit = $row['27'];
                $lending_tgl_jt_angs = $row['28'];
                $lending_tgl_selesai_kredit = $row['29'];
                $lending_bulan_berjalan = $row['30'];
                $lending_tenor = $row['31'];
                $lending_kol_nsb = $row['32'];
                $lending_ket_kol_nsb = $row['33'];
                $lending_kol_sekarang = $row['34'];
                $lending_kol_bln_lalu = $row['35'];
                $lending_hr_tgg = $row['36'];
                $lending_angsuran_pokok = $row['37'];
                $lending_angsuran_bunga = $row['38'];
                $lending_total_angsuran = $row['39'];
                $lending_tunggakan_pokok = $row['40'];
                $lending_tunggakan_bunga = $row['41'];
                $lending_denda_pokok = $row['42'];
                $lending_denda_bunga = $row['43'];
                $lending_total_tgg = $row['44'];
                $lending_saldo_ix_angs = $row['45'];
                $lending_devisi = $row['46'];
                $lending_jenis = $row['47'];
                $lending_segmen = $row['48'];
                $lending_kode_bup = $row['49'];
                $lending_fpd_2a = $row['50'];
                $lending_hplus7_hminus7 = $row['51'];
                $lending_tmt_pensiun = $row['52'];
                $lending_tgl_lahir = $row['53'];
                $lending_usia = $row['54'];
                $lending_kode_dapem = $row['55'];
                $lending_gaji = $row['56'];
                $lending_dsr = $row['57'];
                $lending_kode_asuransi = $row['58'];
                $lending_nama_asuransi = $row['59'];
                $lending_premi_admin = $row['60'];
                $lending_admin_bank = $row['61'];
                $lending_history_fpd = $row['62'];
                $lending_instansi = $row['63'];
                $lending_jenis_kredit = $row['64'];
                $lending_instansi_flaging = $row['65'];
                $lending_target = $row['66'];
                $lending_day = $row['67'];
                $lending_mounth = $row['68'];
                $lending_year = $row['69'];
                $landing_create_at = $row['70'];


                $sqlQuery = "INSERT INTO lending (lending_posisi, lending_cif, lending_rek_pinjaman, landing_rek_agf, lending_nopen, lending_nama_debitur, lending_kode_sales, lending_nama_sales, lending_kode_sales_or, lending_nama_sales_ori, lending_kode_unit, lending_nama_unit, lending_nama_cabang_induk, lending_kode_cabang, lending_nama_cabang, lending_distribution, lending_wilayah, lending_kode_produk, lending_group_produk, lending_kd_group_nsb, lending_flag_booking, lending_limit, lending_kelolaan, lending_bade_real, lending_arus_kas, lending_bade_net, lending_rate, lending_tgl_mulai_kredit, lending_tgl_jt_angs, lending_tgl_selesai_kredit, lending_bulan_berjalan, lending_tenor, lending_kol_nsb, lending_ket_kol_nsb, lending_kol_sekarang, lending_kol_bln_lalu, lending_hr_tgg, lending_angsuran_pokok, lending_angsuran_bunga, lending_total_angsuran, lending_tunggakan_pokok, lending_tunggakan_bunga, lending_denda_pokok, lending_denda_bunga, lending_total_tgg, lending_saldo_ix_angs, lending_devisi, lending_jenis, lending_segmen, lending_kode_bup, lending_fpd_2a, lending_hplus7_hminus7, lending_tmt_pensiun, lending_tgl_lahir, lending_usia, lending_kode_dapem, lending_gaji, lending_dsr, lending_kode_asuransi, lending_nama_asuransi, lending_premi_admin, lending_admin_bank, lending_history_fpd, lending_instansi, lending_jenis_kredit, lending_instansi_flaging, lending_target, lending_day, lending_mounth, lending_year, landing_create_at) value ('$lending_posisi', '$lending_cif', '$lending_rek_pinjaman', '$landing_rek_agf', '$lending_nopen', '$lending_nama_debitur', '$lending_kode_sales', '$lending_nama_sales', '$lending_kode_sales_or', '$lending_nama_sales_ori', '$lending_kode_unit', '$lending_nama_unit', '$lending_nama_cabang_induk', '$lending_kode_cabang', '$lending_nama_cabang', '$lending_distribution', '$lending_wilayah', '$lending_kode_produk', '$lending_group_produk', '$lending_kd_group_nsb', '$lending_flag_booking', '$lending_limit', '$lending_kelolaan', '$lending_bade_real', '$lending_arus_kas', '$lending_bade_net', '$lending_rate', '$lending_tgl_mulai_kredit', '$lending_tgl_jt_angs', '$lending_tgl_selesai_kredit', '$lending_bulan_berjalan', '$lending_tenor', '$lending_kol_nsb', '$lending_ket_kol_nsb', '$lending_kol_sekarang', '$lending_kol_bln_lalu', '$lending_hr_tgg', '$lending_angsuran_pokok', '$lending_angsuran_bunga', '$lending_total_angsuran', '$lending_tunggakan_pokok', '$lending_tunggakan_bunga', '$lending_denda_pokok', '$lending_denda_bunga', '$lending_total_tgg', '$lending_saldo_ix_angs', '$lending_devisi', '$lending_jenis', '$lending_segmen', '$lending_kode_bup', '$lending_fpd_2a', '$lending_hplus7_hminus7', '$lending_tmt_pensiun', '$lending_tgl_lahir', '$lending_usia', '$lending_kode_dapem', '$lending_gaji', '$lending_dsr', '$lending_kode_asuransi', '$lending_nama_asuransi', '$lending_premi_admin', '$lending_admin_bank', '$lending_history_fpd', '$lending_instansi', '$lending_jenis_kredit', '$lending_instansi_flaging', '$lending_target', '$lending_day', '$lending_mounth', '$lending_year', '$landing_create_at')";
                $res = $koneksi->query($sqlQuery);
            } else {
                $baris = 1;
            }
        }

        if ($res) {
            $_SESSION['message'] = 'Sukses import data';
            header('location: index.php');
            exit(0);
        } else {
            $_SESSION['message'] = 'Gagal import data';
            header('location: index.php');
            exit(0);
        }
    } else {
        $_SESSION['message'] = 'ekstensi file yang anda gunakan salah';
        header('location: index.php');
        exit(0);
    }
}
