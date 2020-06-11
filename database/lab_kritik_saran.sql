-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 05:29 AM
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
-- Table structure for table `lab_kritik_saran`
--

CREATE TABLE `lab_kritik_saran` (
  `id` int(11) NOT NULL,
  `pengirim` char(255) NOT NULL,
  `tgl_pengiriman` date NOT NULL,
  `lab_tujuan` varchar(255) NOT NULL,
  `kritik` text NOT NULL,
  `saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_kritik_saran`
--

INSERT INTO `lab_kritik_saran` (`id`, `pengirim`, `tgl_pengiriman`, `lab_tujuan`, `kritik`, `saran`) VALUES
(1, 'Mustafa', '2020-06-05', 'lab 1', 'banyak alat dan bahan yang dipinjam dari lab tidak dikembalikan tepat waktu', 'sebaiknya diterapkan sanksi bagi mahasiswa yang terlambat mengembalikan pinjaman alat atau bahan'),
(2, 'Nur', '2020-06-09', 'lab 3', 'kurang bersih', 'harus rajin dibersihkan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_kritik_saran`
--
ALTER TABLE `lab_kritik_saran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_kritik_saran`
--
ALTER TABLE `lab_kritik_saran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
