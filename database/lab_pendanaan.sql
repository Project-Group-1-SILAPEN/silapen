-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2020 at 06:07 PM
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
-- Table structure for table `lab_pendanaan`
--

CREATE TABLE `lab_pendanaan` (
  `id` int(11) NOT NULL,
  `sumber_pendanaan` varchar(225) NOT NULL,
  `jumlah` int(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_pendanaan`
--

INSERT INTO `lab_pendanaan` (`id`, `sumber_pendanaan`, `jumlah`, `keterangan`) VALUES
(1, 'PT Djarum', 1000000000, 'sumbangan untuk beasiswa pendidikan'),
(2, 'maestro cahaya', 80000000, 'beasiswa pendidikan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_pendanaan`
--
ALTER TABLE `lab_pendanaan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_pendanaan`
--
ALTER TABLE `lab_pendanaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
