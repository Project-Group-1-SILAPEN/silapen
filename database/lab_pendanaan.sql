-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2020 pada 19.33
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

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
-- Struktur dari tabel `lab_pendanaan`
--

CREATE TABLE `lab_pendanaan` (
  `id` int(11) NOT NULL,
  `sumber_pendanaan` varchar(225) NOT NULL,
  `jumlah` int(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lab_pendanaan`
--

INSERT INTO `lab_pendanaan` (`id`, `sumber_pendanaan`, `jumlah`, `keterangan`) VALUES
(1, 'PT Djarum', 1000000000, 'Sumbangan untuk beasiswa pendidikan'),
(2, 'PT Dirgantara', 200000000, 'Biaya 5 Mahasiswa terbaik periode 2019/2020'),
(3, 'PT Datacom Sejahtera', 10000000, 'sumbangan beasiswa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `lab_pendanaan`
--
ALTER TABLE `lab_pendanaan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `lab_pendanaan`
--
ALTER TABLE `lab_pendanaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
