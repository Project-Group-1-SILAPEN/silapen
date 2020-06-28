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
-- Struktur dari tabel `peminjaman_alat`
--

CREATE TABLE `peminjaman_alat` (
  `id` int(11) NOT NULL,
  `nama_alat` varchar(225) NOT NULL,
  `nama_peminjam` varchar(225) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `satuan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman_alat`
--

INSERT INTO `peminjaman_alat` (`id`, `nama_alat`, `nama_peminjam`, `tanggal_pinjam`, `satuan`) VALUES
(1, 'Mouse', 'Ladaishea Keana', '2020-06-29', 3),
(2, 'Keyboard', 'Avandy Abasha', '2020-07-01', 1),
(3, 'Speaker', 'Devian Julian', '2020-07-03', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `peminjaman_alat`
--
ALTER TABLE `peminjaman_alat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `peminjaman_alat`
--
ALTER TABLE `peminjaman_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
