-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2020 pada 19.23
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
-- Struktur dari tabel `periode_pengajuan`
--

CREATE TABLE `periode_pengajuan` (
  `id` int(11) NOT NULL,
  `id_pengajuan` varchar(225) NOT NULL,
  `semester` varchar(225) NOT NULL,
  `bulan` varchar(225) NOT NULL,
  `tahun_pengajuan` year(4) NOT NULL,
  `sumber_pendanaan` varchar(225) NOT NULL,
  `tanggal_pendanaan_turun` date NOT NULL,
  `pajak` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `periode_pengajuan`
--

INSERT INTO `periode_pengajuan` (`id`, `id_pengajuan`, `semester`, `bulan`, `tahun_pengajuan`, `sumber_pendanaan`, `tanggal_pendanaan_turun`, `pajak`) VALUES
(1, '001Pngj', '4', 'Juni', 2020, 'PT Djarum', '2020-09-19', '10%'),
(2, '002Pngj', '2', 'Juni', 2020, 'PT Djarum', '2020-10-08', '10%');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `periode_pengajuan`
--
ALTER TABLE `periode_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `periode_pengajuan`
--
ALTER TABLE `periode_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
