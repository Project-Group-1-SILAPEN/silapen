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
-- Struktur dari tabel `lab_kritik_saran`
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
-- Dumping data untuk tabel `lab_kritik_saran`
--

INSERT INTO `lab_kritik_saran` (`id`, `pengirim`, `tgl_pengiriman`, `lab_tujuan`, `kritik`, `saran`) VALUES
(1, 'Rosaline Eva', '2020-06-05', 'Laboratorium Biologi', 'banyak alat dan bahan yang dipinjam dari lab tidak dikembalikan tepat waktu', 'sebaiknya diterapkan sanksi bagi mahasiswa yang terlambat mengembalikan pinjaman alat atau bahan'),
(2, 'Gladien Arvie', '2020-06-09', 'Laboratorium Kimia', 'Kurang bersih', 'Harus rajin dibersihkan'),
(3, 'Jevon Miller', '2020-07-15', 'Laboratorium Rekayasa Perangkat Lunak', 'Kurang jumlah komputer dan WIFI lemah', 'Jumlah komputer sebaiknya diperanyak untuk menduknung kegiatan praktikum RPL dan Wifi pada ruangan tersebut di up agar tidak lemot saat praktikum berlangsung');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `lab_kritik_saran`
--
ALTER TABLE `lab_kritik_saran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `lab_kritik_saran`
--
ALTER TABLE `lab_kritik_saran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
