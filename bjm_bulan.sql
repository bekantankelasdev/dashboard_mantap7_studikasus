-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 14, 2023 at 07:18 AM
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
-- Table structure for table `bjm_bulan`
--

CREATE TABLE `bjm_bulan` (
  `bjm_bulan_id` int NOT NULL,
  `bjm_bulan_nama` varchar(50) DEFAULT NULL,
  `bjm_bulan_key` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bjm_bulan`
--

INSERT INTO `bjm_bulan` (`bjm_bulan_id`, `bjm_bulan_nama`, `bjm_bulan_key`) VALUES
(1, 'Januari', 1),
(2, 'Februari', 2),
(3, 'Maret', 3),
(4, 'April', 4),
(5, 'Mei', 5),
(6, 'Juni', 6),
(7, 'Juli', 7),
(8, 'Agustus', 8),
(9, 'September', 9),
(10, 'Oktober', 10),
(11, 'November', 11),
(12, 'Desember', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bjm_bulan`
--
ALTER TABLE `bjm_bulan`
  ADD PRIMARY KEY (`bjm_bulan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bjm_bulan`
--
ALTER TABLE `bjm_bulan`
  MODIFY `bjm_bulan_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
