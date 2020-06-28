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
-- Struktur dari tabel `anggota_lab`
--

CREATE TABLE `anggota_lab` (
  `id` int(11) NOT NULL,
  `id_anggota` varchar(225) NOT NULL,
  `nama_anggota` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota_lab`
--

INSERT INTO `anggota_lab` (`id`, `id_anggota`, `nama_anggota`, `status`) VALUES
(1, '001Agt', 'Ulfatun Nniswah', 'aktif'),
(2, '002Agt', 'Ryanis Naufalia', 'aktif'),
(3, '003Agt', 'Cholilah Lateefa', 'aktif'),
(4, '004Agt', 'Jovian Allaver', 'aktif'),
(5, '005Agt', 'Ervin Brilian', 'aktif'),
(6, '006Agt', 'Jevon Miller', 'aktif'),
(7, '007Agt', 'Gladien Arvie', 'aktif'),
(8, '008Agt', 'Rosaline Eva', 'aktif'),
(9, '009Agt', 'Avilia Claudia', 'aktif'),
(10, '010Agt', 'Keesha Alice', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota_lab`
--
ALTER TABLE `anggota_lab`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota_lab`
--
ALTER TABLE `anggota_lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
