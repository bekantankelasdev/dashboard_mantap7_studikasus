-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 03, 2023 at 06:36 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

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
  `lending_hplus7_hminus7` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `lending_tmt_pensiun` date DEFAULT NULL,
  `lending_tgl_lahir` date DEFAULT NULL,
  `lending_usia` varchar(250) DEFAULT NULL,
  `lending_kode_dapem` varchar(250) DEFAULT NULL,
  `lending_gaji` double DEFAULT NULL,
  `lending_dsr` double DEFAULT NULL,
  `lending_kode_asuransi` varchar(250) DEFAULT NULL,
  `lending_nama_asuransi` varchar(250) DEFAULT NULL,
  `lending_premi_admin` double DEFAULT NULL,
  `lending_admin_bank` double DEFAULT NULL,
  `lending_history_fpd` varchar(250) DEFAULT NULL,
  `lending_instansi` varchar(250) DEFAULT NULL,
  `lending_jenis_kredit` varchar(250) DEFAULT NULL,
  `lending_instansi_flaging` varchar(250) DEFAULT NULL,
  `lending_target` int DEFAULT NULL,
  `lending_day` varchar(250) DEFAULT NULL,
  `lending_mounth` varchar(250) DEFAULT NULL,
  `lending_year` varchar(250) DEFAULT NULL,
  `landing_create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lending`
--

INSERT INTO `lending` (`lending_id`, `lending_posisi`, `lending_cif`, `lending_rek_pinjaman`, `landing_rek_agf`, `lending_nopen`, `lending_nama_debitur`, `lending_kode_sales`, `lending_nama_sales`, `lending_kode_sales_or`, `lending_nama_sales_ori`, `lending_kode_unit`, `lending_nama_unit`, `lending_nama_cabang_induk`, `lending_kode_cabang`, `lending_nama_cabang`, `lending_distribution`, `lending_wilayah`, `lending_kode_produk`, `lending_group_produk`, `lending_kd_group_nsb`, `lending_flag_booking`, `lending_limit`, `lending_kelolaan`, `lending_bade_real`, `lending_arus_kas`, `lending_bade_net`, `lending_rate`, `lending_tgl_mulai_kredit`, `lending_tgl_jt_angs`, `lending_tgl_selesai_kredit`, `lending_bulan_berjalan`, `lending_tenor`, `lending_kol_nsb`, `lending_ket_kol_nsb`, `lending_kol_sekarang`, `lending_kol_bln_lalu`, `lending_hr_tgg`, `lending_angsuran_pokok`, `lending_angsuran_bunga`, `lending_total_angsuran`, `lending_tunggakan_pokok`, `lending_tunggakan_bunga`, `lending_denda_pokok`, `lending_denda_bunga`, `lending_total_tgg`, `lending_saldo_ix_angs`, `lending_devisi`, `lending_jenis`, `lending_segmen`, `lending_kode_bup`, `lending_fpd_2a`, `lending_hplus7_hminus7`, `lending_tmt_pensiun`, `lending_tgl_lahir`, `lending_usia`, `lending_kode_dapem`, `lending_gaji`, `lending_dsr`, `lending_kode_asuransi`, `lending_nama_asuransi`, `lending_premi_admin`, `lending_admin_bank`, `lending_history_fpd`, `lending_instansi`, `lending_jenis_kredit`, `lending_instansi_flaging`, `lending_target`, `lending_day`, `lending_mounth`, `lending_year`, `landing_create_at`) VALUES
(1, '0000-00-00', '', '', '', '', '', '', 'SATRIO PRIBADI', '', 'SATRIO PRIBADI', '', 'KC PONTIANAK', 'KC PONTIANAK', '', 'KC PONTIANAK', 'DISTRIBUTION 7', 'NON BALI', '', 'KSM', '', 'NONE', 45113197.46, 'ORI', 7591772.81, 7591772.81, 7591772.81, 0, '0000-00-00', '01', '0000-00-00', '21', '25', '01', '', '01', '01', '0', 1874302.74, 63481.75, 1937784.49, 0, 0, 0, 0, 0, 'CUKUP', 'MIKRO', 'KONSUMSI', 'KSM', '-', '-', 'BUKAN', '0000-00-00', '0000-00-00', '59', 'DAPEM', 0, 0, '', '', 0, 0, 'PERNAH MASUK FPD', 'TASPEN', '', 'FLAGGING TASPEN', 0, '01', 'February', '2021', '0000-00-00 00:00:00'),
(2, '0000-00-00', '', '', '', '', '', '', 'SATRIO PRIBADI', '', 'SATRIO PRIBADI', '', 'KC PONTIANAK', 'KC PONTIANAK', '', 'KC PONTIANAK', 'DISTRIBUTION 7', 'NON BALI', '', 'KSM', '', 'NONE', 64999992.99, 'ORI', 24999997.23, 29658895.13, 29658895.13, 0, '0000-00-00', '30', '0000-00-00', '24', '38', '01', '', '01', '01', '0', 1666666.49, 570000.54, 2236667.03, 0, 0, 0, 0, 0, 'CUKUP', 'MIKRO', 'KONSUMSI', 'KSM', '-', '-', 'BUKAN', '0000-00-00', '0000-00-00', '60', 'DAPEM', 0, 0, '', '', 0, 0, 'PERNAH MASUK FPD', 'TASPEN', '', 'FLAGGING TASPEN', 0, '30', 'November', '2020', '0000-00-00 00:00:00'),
(3, '0000-00-00', '', '', '', '', '', '', 'SIGIT MUSTIKA ALAM', '', 'SIGIT MUSTIKA ALAM', '', 'KC BANJARMASIN', 'KC BANJARMASIN', '', 'KC BANJARMASIN', 'DISTRIBUTION 7', 'NON BALI', '', 'KSM', '', 'NONE', 89494087.29, 'ORI', 43025418.21, 43025418.21, 43025418.21, 0, '0000-00-00', '02', '0000-00-00', '29', '51', '01', '', '01', '01', '0', 1776025.19, 389940.51, 2165965.7, 0, 0, 0, 0, 0, 'CUKUP', 'MIKRO', 'KONSUMSI', 'KSM', '-', '-', 'BUKAN', '0000-00-00', '0000-00-00', '62', 'DAPEM', 0, 0, '', '', 0, 0, 'PERNAH MASUK FPD', 'TASPEN', '', 'FLAGGING TASPEN', 0, '02', 'June', '2020', '0000-00-00 00:00:00'),
(4, '0000-00-00', '', '', '', '', '', '', 'MUHAMMAD NUR IMAN ANSHORI', '', 'MUHAMMAD NUR IMAN ANSHORI', '', 'KC SAMARINDA', 'KC SAMARINDA', '', 'KC SAMARINDA', 'DISTRIBUTION 7', 'NON BALI', '', 'KSM', '', 'NONE', 90000000, 'ORI', 48258730.07, 48028788.94, 48028788.94, 0, '0000-00-00', '26', '0000-00-00', '20', '36', '01', '', '01', '01', '0', 2526240.04, 693759.46, 3219999.5, 0, 0, 0, 0, 0, 'CUKUP', 'MIKRO', 'KONSUMSI', 'KSM', '-', '-', 'BUKAN', '0000-00-00', '0000-00-00', '52', 'BELUM DAPEM', 0, 0, '100128', 'PT ASURANSI KREDIT INDONESIA', 3839000, 500000, '-', 'TASPEN', 'TOP UP', '', 0, '26', 'March', '2021', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int NOT NULL,
  `nama` varchar(255) DEFAULT NULL COMMENT 'ini untuk nama ',
  `email` varchar(255) DEFAULT NULL COMMENT 'ini untuk email'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `email`) VALUES
(24, 'syarif', 'syarif@gmail.com'),
(25, 'nama', 'nama@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lending`
--
ALTER TABLE `lending`
  ADD PRIMARY KEY (`lending_id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lending`
--
ALTER TABLE `lending`
  MODIFY `lending_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
