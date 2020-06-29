-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2020 pada 19.30
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
-- Struktur dari tabel `master_mata_kuliah`
--

CREATE TABLE `master_mata_kuliah` (
  `id` int(11) NOT NULL,
  `nama_mk` char(225) NOT NULL,
  `jml_sks` int(10) NOT NULL,
  `keterangan` char(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_mata_kuliah`
--

INSERT INTO `master_mata_kuliah` (`id`, `nama_mk`, `jml_sks`, `keterangan`) VALUES
(113, 'RPL', 3, ''),
(114, 'Manajemen Sains', 2, '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `master_mata_kuliah`
--
ALTER TABLE `master_mata_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `master_mata_kuliah`
--
ALTER TABLE `master_mata_kuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
