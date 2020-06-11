-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 12:40 PM
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
-- Table structure for table `cms_menu`
--

CREATE TABLE `cms_menu` (
  `id` int(11) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `allowed_level` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT '1',
  `urutan` int(11) NOT NULL,
  `grup` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_menu`
--

INSERT INTO `cms_menu` (`id`, `alias`, `nama`, `deskripsi`, `allowed_level`, `url`, `aktif`, `urutan`, `grup`) VALUES
(3, 'menu', 'Menu', 'Untuk memanajemen menu administrasi (back-end)', '+1+', 'cms/manage/menu', 1, 7, 1),
(89, 'reset_pass', 'Reset Password User', 'Reset Password User', '+1+', 'apl/reset', 1, 1, 3),
(35, 'semua', 'semua', 'untuk login semua', '+1+2+3+4+5+6+8+7+', 'cms/login/admin_page', 1, 1, 3),
(88, 'crud_user', 'Tambah,edit,delete user', 'tambah_edit_delete', '+1+2+3+4+', 'apl/crud', 1, 1, 3),
(102, 'log', 'Log System', 'Log System', '+1+2+', 'cms/catatan/catat', 1, 2, 1),
(136, 'satuan', 'Satuan', '-', '+1+2+5+', 'master/satuan', 1, 9, 2),
(104, 'status_pak', 'Home', 'Status Pengajuan PAK', '+1+2+3+4+5+6+', 'pak/dashboard/status_pak', 1, 1, 101),
(135, 'nama_bahan', 'Nama Bahan', '-', '+1+2+5+', 'master/master_bahan', 1, 8, 2),
(134, 'nama_alat', 'Nama Alat', '-', '+1+2+5+', 'master/nama_alat', 1, 7, 2),
(133, 'mata_kuliah', 'Mata Kuliah', '-', '+1+2+', 'master/mata_kuliah', 1, 6, 2),
(132, 'tipe_lab', 'Tipe Lab', '-', '+1+2+', 'master/tipe_lab', 1, 5, 2),
(131, 'kategori_alat_bahan', 'Kategori Alat dan Bahan', '-', '+1+2+', 'master/kategori_alat_bahan', 1, 4, 2),
(130, 'kategori_no_induk', 'Kategori No Induk', '-', '+1+2+', 'master/kategori_no_induk', 1, 3, 2),
(129, 'gambar_depan', 'Gambar Depan', '-', '+1+2+', 'master/gambar_depan', 1, 2, 2),
(128, 'instansi', 'Instansi', '-', '+1+2+', 'master/instansi', 1, 1, 2),
(140, 'pendanaan', 'Pendanaan', 'daftar sumber pendanaan', '+1+3+', 'lab/pendanaan', 1, 135, 2),
(141, 'kritik_saran', 'Kritik dan Saran', 'kritik dan saran dari para pengguna lab', '+1+4+6+7+8+', 'lab/kritik_saran', 1, 140, 7),
(148, 'pengumuman', 'Pengumuman', 'mengelola pengumuman', '+1+3+', 'lab/pengumuman', 1, 3, 7),
(142, 'kelola user', 'Kelola User', 'untuk mengelola pengguna SILAPEN', '+1+2+', 'kelola/kelola_user', 1, 1, 7),
(143, 'kelola alat&bahan', 'kelola alat dan bahan', 'untuk mengelola alat dan bahan di lab', '+1+5+', 'kelola/kelola_alat_bahan', 1, 2, 7),
(144, 'peminjaman_alat', 'Peminjaman Alat', 'untuk mengelola peminjaman alat', '+1+4+5+6+7+8+', 'peminjaman/peminjaman_alat', 1, 1, 5),
(145, 'peminjaman_bahan', 'Peminjaman Bahan', 'untuk mengelola peminjaman bahan', '+1+4+5+6+7+8+', 'peminjaman/peminjaman_bahan', 1, 2, 5),
(146, 'pengajuan_bahan', 'Pengajuan Bahan', 'untuk menampilakan daftar pengajuan bahan', '+1+3+4+5+7+', 'pengajuan/pengajuan_bahan', 1, 1, 6),
(147, 'pengajuan_alat', 'Pengajuan Alat', 'untuk menampilakan daftar pengajuan alat', '+1+3+4+5+7+', 'pengajuan/pengajuan_alat', 1, 2, 6),
(149, 'laboratorium', 'Laboratorium', 'untuk mengelola lab', '+1+3+', 'kelola/laboratorium', 1, 3, 7),
(150, 'administrasi_lab', 'Administrasi lab', 'untuk mengelola administrasi lab', '+1+5+', 'kelola/administrasi_lab', 1, 4, 7),
(151, 'jadwal', 'Jadwal', 'untuk mengelola jadwal lab', '+1+5+', 'kelola/jadwal', 1, 5, 7),
(152, 'modul', 'Modul', 'untuk mengelola modul praktikum', '+1+5+6+', 'kelola/modul', 1, 6, 7),
(153, 'skripsi', 'TA/Skripsi', 'untuk mengelola skripsi mahasiswa', '+1+5+6+8+', 'kelola/skripsi', 1, 7, 7),
(154, 'periode_pengajuan', 'Periode Pengajuan', 'untuk mengelola periode pengajuan warga lab', '+1+3+', 'pengajuan/periode_pengajuan', 1, 3, 6),
(155, 'cek_status_peminjaman', 'Cek Status Peminjaman', 'untuk mengelola status peminjaman warga lab', '+1+4+5+6+7+8+', 'peminjaman/cek_status_peminjaman', 1, 3, 5),
(156, 'anggota_lab', 'Anggota Lab', 'untuk mengelola anggota lab', '+1+4+', 'kelola/anggota_lab', 1, 5, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_menu`
--
ALTER TABLE `cms_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_menu`
--
ALTER TABLE `cms_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
