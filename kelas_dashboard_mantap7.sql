-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 03, 2022 at 03:22 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelas_dashboard_mantap7`
--

-- --------------------------------------------------------

--
-- Table structure for table `lending`
--

CREATE TABLE `lending` (
  `lending_id` int NOT NULL,
  `lending_posisi` date DEFAULT NULL,
  `lending_cif` varchar(250) DEFAULT NULL,
  `lending_rek_pinjaman` varchar(250) DEFAULT NULL,
  `landing_rek_agf` varchar(250) DEFAULT NULL,
  `lending_nopen` varchar(250) DEFAULT NULL,
  `lending_nama_debitur` varchar(250) DEFAULT NULL,
  `lending_kode_sales` varchar(250) DEFAULT NULL,
  `lending_nama_sales` varchar(250) DEFAULT NULL,
  `lending_kode_sales_or` varchar(250) DEFAULT NULL,
  `lending_nama_sales_ori` varchar(250) DEFAULT NULL,
  `lending_kode_unit` varchar(250) DEFAULT NULL,
  `lending_nama_unit` varchar(250) DEFAULT NULL,
  `lending_nama_cabang_induk` varchar(250) DEFAULT NULL,
  `lending_kode_cabang` varchar(250) DEFAULT NULL,
  `lending_nama_cabang` varchar(250) DEFAULT NULL,
  `lending_distribution` varchar(250) DEFAULT NULL,
  `lending_wilayah` varchar(250) DEFAULT NULL,
  `lending_kode_produk` varchar(250) DEFAULT NULL,
  `lending_group_produk` varchar(250) DEFAULT NULL,
  `lending_kd_group_nsb` varchar(250) DEFAULT NULL,
  `lending_flag_booking` varchar(250) DEFAULT NULL,
  `lending_limit` double DEFAULT NULL,
  `lending_kelolaan` varchar(250) DEFAULT NULL,
  `lending_bade_real` double DEFAULT NULL,
  `lending_arus_kas` double DEFAULT NULL,
  `lending_bade_net` double DEFAULT NULL,
  `lending_rate` double DEFAULT NULL,
  `lending_tgl_mulai_kredit` date DEFAULT NULL,
  `lending_tgl_jt_angs` varchar(250) DEFAULT NULL,
  `lending_tgl_selesai_kredit` date DEFAULT NULL,
  `lending_bulan_berjalan` varchar(250) DEFAULT NULL,
  `lending_tenor` varchar(250) DEFAULT NULL,
  `lending_kol_nsb` varchar(250) DEFAULT NULL,
  `lending_ket_kol_nsb` varchar(250) DEFAULT NULL,
  `lending_kol_sekarang` varchar(250) DEFAULT NULL,
  `lending_kol_bln_lalu` varchar(250) DEFAULT NULL,
  `lending_hr_tgg` varchar(250) DEFAULT NULL,
  `lending_angsuran_pokok` double DEFAULT NULL,
  `lending_angsuran_bunga` double DEFAULT NULL,
  `lending_total_angsuran` double DEFAULT NULL,
  `lending_tunggakan_pokok` double DEFAULT NULL,
  `lending_tunggakan_bunga` double DEFAULT NULL,
  `lending_denda_pokok` double DEFAULT NULL,
  `lending_denda_bunga` double DEFAULT NULL,
  `lending_total_tgg` double DEFAULT NULL,
  `lending_saldo_ix_angs` varchar(250) DEFAULT NULL,
  `lending_devisi` varchar(250) DEFAULT NULL,
  `lending_jenis` varchar(250) DEFAULT NULL,
  `lending_segmen` varchar(250) DEFAULT NULL,
  `lending_kode_bup` varchar(250) DEFAULT NULL,
  `lending_fpd_2a` varchar(250) DEFAULT NULL,
  `lending_h+7_h-7` varchar(250) DEFAULT NULL,
  `lending_tmt_pensiun` date DEFAULT NULL,
  `lending_tgl_lahir` date DEFAULT NULL,
  `lending_usia` varchar(250) DEFAULT NULL,
  `lending_kode_dapem` varchar(250) DEFAULT NULL,
  `lending_gaji` double DEFAULT NULL,
  `lending_dsr` double DEFAULT NULL,
  `lending_kode_asuransi` varchar(250) DEFAULT NULL,
  `lending_nama_asuransi` varchar(250) DEFAULT NULL,
  `lending_premi+admin` double DEFAULT NULL,
  `lending_admin_bank` double DEFAULT NULL,
  `lending_history_fpd` varchar(250) DEFAULT NULL,
  `lending_instansi` varchar(250) DEFAULT NULL,
  `lending_jenis_kredit` varchar(250) DEFAULT NULL,
  `lending_instansi_flaging` varchar(250) DEFAULT NULL,
  `lending_target` int DEFAULT NULL,
  `lending_day` varchar(250) DEFAULT NULL,
  `lending_mounth` varchar(250) DEFAULT NULL,
  `lending_year` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lending`
--
ALTER TABLE `lending`
  ADD PRIMARY KEY (`lending_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lending`
--
ALTER TABLE `lending`
  MODIFY `lending_id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
