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
-- Table structure for table `pengajuan_alat`
--

CREATE TABLE `pengajuan_alat` (
  `id` int(11) NOT NULL,
  `nama_alat` varchar(225) NOT NULL,
  `seri_alat` varchar(225) NOT NULL,
  `merk_alat` varchar(225) NOT NULL,
  `jumlah_grosir` varchar(225) NOT NULL,
  `satuan_grosir` varchar(225) NOT NULL,
  `harga_grosir` varchar(225) NOT NULL,
  `estimasi_jumlah_alat` varchar(225) NOT NULL,
  `harga_dasar_alat` varchar(225) NOT NULL,
  `jenis_alat` varchar(225) NOT NULL,
  `tahun_alat` year(4) NOT NULL,
  `nama_lab` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan_alat`
--

INSERT INTO `pengajuan_alat` (`id`, `nama_alat`, `seri_alat`, `merk_alat`, `jumlah_grosir`, `satuan_grosir`, `harga_grosir`, `estimasi_jumlah_alat`, `harga_dasar_alat`, `jenis_alat`, `tahun_alat`, `nama_lab`, `keterangan`) VALUES
(1, 'AR', '', '', '', '', '', '', '', 'yaitu', 2020, '', 'baik kayaknya'),
(2, 'e', '', '', '', '', '', '', '', '', 0000, '', ''),
(12, 'qww', 'ee', '', 'ccc', '', 'cccccvgf', 'gryh', 'btyh', 'gttg', 0000, 'gtb', 'btt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengajuan_alat`
--
ALTER TABLE `pengajuan_alat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengajuan_alat`
--
ALTER TABLE `pengajuan_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
