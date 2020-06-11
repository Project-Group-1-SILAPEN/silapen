-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2020 at 06:42 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sionlab`
--

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_bahan`
--

CREATE TABLE `pengajuan_bahan` (
  `id` int(11) NOT NULL,
  `nama_bahan` varchar(225) NOT NULL,
  `seri_bahan` varchar(225) NOT NULL,
  `merk_bahan` varchar(225) NOT NULL,
  `jumlah_grosir` varchar(225) NOT NULL,
  `satuan_grosir` varchar(225) NOT NULL,
  `harga_grosir` varchar(225) NOT NULL,
  `estimasi_jumlah_bahan` varchar(225) NOT NULL,
  `harga_dasar_bahan` varchar(225) NOT NULL,
  `jenis_bahan` varchar(225) NOT NULL,
  `tahun_bahan` varchar(4) NOT NULL,
  `nama_lab` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan_bahan`
--

INSERT INTO `pengajuan_bahan` (`id`, `nama_bahan`, `seri_bahan`, `merk_bahan`, `jumlah_grosir`, `satuan_grosir`, `harga_grosir`, `estimasi_jumlah_bahan`, `harga_dasar_bahan`, `jenis_bahan`, `tahun_bahan`, `nama_lab`, `keterangan`) VALUES
(1, 'kabel', '', '', '', '', '', '', '', 'kabel aja dulu', '2020', '', 'baik'),
(112, 'www', 'ddd', 'fff', 'c12', 'ddf', 'ee', 'errr', 'sss', 'rrr', '4444', 'ttt', 'hhh'),
(113, 'wtttt', '', '', '', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengajuan_bahan`
--
ALTER TABLE `pengajuan_bahan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengajuan_bahan`
--
ALTER TABLE `pengajuan_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
