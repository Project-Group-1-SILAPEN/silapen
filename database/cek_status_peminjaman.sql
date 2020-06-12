-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2020 at 04:44 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `cek_status_peminjaman`
--

CREATE TABLE `cek_status_peminjaman` (
  `id` int(11) NOT NULL,
  `id_peminjaman` varchar(255) NOT NULL,
  `jenis_peminjaman` varchar(255) NOT NULL,
  `status` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cek_status_peminjaman`
--

INSERT INTO `cek_status_peminjaman` (`id`, `id_peminjaman`, `jenis_peminjaman`, `status`) VALUES
(1, '122', 'Peminjaman Bahan', 'disetujui'),
(2, '123', 'Peminjaman Alat', 'belum disetujui');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
