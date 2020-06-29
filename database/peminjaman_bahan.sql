-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2020 pada 19.29
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
-- Struktur dari tabel `peminjaman_bahan`
--

CREATE TABLE `peminjaman_bahan` (
  `id` int(11) NOT NULL,
  `nama_bahan` varchar(255) NOT NULL,
  `nama_peminjam` varchar(255) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `satuan` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman_bahan`
--

INSERT INTO `peminjaman_bahan` (`id`, `nama_bahan`, `nama_peminjam`, `tanggal_pinjam`, `satuan`) VALUES
(3, 'Skripsi Ilmu Komputer', 'Cholilah Lateefa', '2020-06-03', 1),
(123, 'Skripsi Sistem Informasi', 'Ervin Brilian', '2020-06-03', 3),
(1234, 'Skripsi Teknologi Informasi', 'Jovian Allaver', '2020-06-03', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `peminjaman_bahan`
--
ALTER TABLE `peminjaman_bahan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `peminjaman_bahan`
--
ALTER TABLE `peminjaman_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1235;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
