-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2020 pada 19.20
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
-- Struktur dari tabel `skripsi`
--

CREATE TABLE `skripsi` (
  `id` int(11) NOT NULL,
  `judul_skripsi` varchar(255) NOT NULL,
  `nama_penulis` varchar(255) NOT NULL,
  `dosen_pembimbing1` varchar(255) NOT NULL,
  `dosen_pembimbing2` varchar(255) NOT NULL,
  `link_file` varchar(255) NOT NULL,
  `tahun_skripsi` varchar(255) NOT NULL,
  `status_skripsi` enum('Menunggu Konfirmasi','Sudah Dikonfirmasi') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `skripsi`
--

INSERT INTO `skripsi` (`id`, `judul_skripsi`, `nama_penulis`, `dosen_pembimbing1`, `dosen_pembimbing2`, `link_file`, `tahun_skripsi`, `status_skripsi`) VALUES
(1, 'Pengembangan Teknologi Informasi', 'Keesha Alice', 'Pak Kholiq', 'Bu Endang', 'https://docs.google.com/spreadsheets/d/1f5yI5pRnt_WBj4-3RVaraLrYvkl9lOQDRb5QqXwwELo/edit#gid=0', '2018', 'Menunggu Konfirmasi'),
(2, 'Pengembangan AI', 'Avilia Claudia', 'Bu Devi', 'Pak Subhan', 'https://docs.google.com/spreadsheets/d/1f5yI5pRnt_WBj4-3RVaraLrYvkl9lOQDRb5QqXwwELo/edit#gid=0', '2021', 'Sudah Dikonfirmasi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `skripsi`
--
ALTER TABLE `skripsi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `skripsi`
--
ALTER TABLE `skripsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
