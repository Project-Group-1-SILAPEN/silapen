-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2020 at 06:42 PM
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
-- Database: `silapen`
--

-- --------------------------------------------------------

--
-- Table structure for table `cek_status_peminjaman`
--

CREATE TABLE `cek_status_peminjaman` (
  `id` int(11) NOT NULL,
  `id_peminjaman` varchar(255) NOT NULL,
  `jenis_peminjaman` varchar(255) NOT NULL,
  `status` enum('menunggu persetujuan','disetujui','sudah disetujui','ditolak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cek_status_peminjaman`
--

INSERT INTO `cek_status_peminjaman` (`id`, `id_peminjaman`, `jenis_peminjaman`, `status`) VALUES
(1, '122', 'Peminjaman Bahan', 'ditolak'),
(2, '123', 'Peminjaman Alat', 'disetujui'),
(3, '3', '122', 'menunggu persetujuan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cek_status_peminjaman`
--
ALTER TABLE `cek_status_peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_peminjaman` (`id_peminjaman`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cek_status_peminjaman`
--
ALTER TABLE `cek_status_peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
