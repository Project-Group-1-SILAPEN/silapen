-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2020 at 08:51 AM
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
-- Table structure for table `anggota_lab`
--

CREATE TABLE `anggota_lab` (
  `id` int(11) NOT NULL,
  `id_anggota` varchar(225) NOT NULL,
  `nama_anggota` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota_lab`
--

INSERT INTO `anggota_lab` (`id`, `id_anggota`, `nama_anggota`, `status`) VALUES
(1, '4612418018', 'ulfatun niswah D', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `cek_status_peminjaman`
--

CREATE TABLE `cek_status_peminjaman` (
  `id` int(11) NOT NULL,
  `id_peminjaman` varchar(255) NOT NULL,
  `jenis_peminjaman` varchar(255) NOT NULL,
  `status` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cek_status_peminjaman`
--

INSERT INTO `cek_status_peminjaman` (`id`, `id_peminjaman`, `jenis_peminjaman`, `status`) VALUES
(1, '122', 'Peminjaman Bahan', 'disetujui'),
(2, '123', 'Peminjaman Alat', 'belum disetujui');

-- --------------------------------------------------------

--
-- Table structure for table `cms_captcha`
--

CREATE TABLE `cms_captcha` (
  `captcha_id` bigint(13) NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_captcha`
--

INSERT INTO `cms_captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(3467, 1591943390, '::1', '115326'),
(3466, 1591943375, '::1', '927777');

-- --------------------------------------------------------

--
-- Table structure for table `cms_log`
--

CREATE TABLE `cms_log` (
  `id_log` int(30) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `kegiatan` text,
  `user` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_log`
--

INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(1, '::1', '', '2019-01-30 20:39:29', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(2, '::1', '', '2019-11-05 17:45:51', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(3, '::1', '', '2019-11-05 17:47:27', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>001/kalingga/11/2019</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2019-11-05</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-02-01</b></li><li><b>fsc_cert</b> dengan value <b>34124</b></li><li><b>fsc_lisence</b> dengan value <b>524554</b></li><li><b>buyer_po_nr</b> dengan value <b>778</b></li><li><b>pembayaran</b> dengan value <b>2</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'superadmin'),
(4, '::1', '', '2020-03-10 17:15:13', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(5, '::1', '', '2020-03-12 09:55:56', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Instansi</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>instansi</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/instansi</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'superadmin'),
(6, '::1', '', '2020-03-12 13:25:13', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(7, '::1', '', '2020-03-12 13:39:55', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>1</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(8, '::1', '', '2020-03-12 13:40:20', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>logo</b> dengan value <b>files/2020/03/ebcff3bcfaf285d80bf3e5144993191d.png</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(9, '::1', '', '2020-03-12 13:40:52', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(10, '::1', '', '2020-05-08 07:34:20', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(11, '::1', '', '2020-05-08 07:47:34', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'superadmin'),
(12, '::1', '', '2020-05-08 07:47:56', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>lihat</b></li></ul>', 'superadmin'),
(13, '::1', '', '2020-05-08 09:37:33', 'Login  by Kholiq', 'kholiq'),
(14, '::1', '', '2020-05-08 09:39:40', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop Besar</b></li></ul>', 'kholiq'),
(15, '::1', '', '2020-05-14 19:28:09', 'Login  by Kholiq', 'kholiq'),
(16, '::1', '', '2020-05-15 06:44:19', 'Login  by Kholiq', 'kholiq'),
(17, '::1', '', '2020-05-15 06:48:41', 'Logout SIONLAB by Kholiq', 'kholiq'),
(18, '::1', '', '2020-05-15 06:51:13', 'Login  by Kholiq', 'kholiq'),
(19, '::1', '', '2020-05-15 08:38:03', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Pendanaan</b></li><li><b>deskripsi</b> dengan value <b>daftar sumber pendanaan yang diterima</b></li><li><b>alias</b> dengan value <b>pendanaan</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>application/controllers/lab/pendanaan.php</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>11</b></li><li><b>grup</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(20, '::1', '', '2020-05-15 08:38:57', 'Menghapus menu dengan id 137', 'kholiq'),
(21, '::1', '', '2020-05-15 08:39:27', 'Menambah grup menu dengan data sbb:<br />\r\n                    <ul><li><b>nama_grup</b> dengan value <b>Lab</b></li></ul>', 'kholiq'),
(22, '::1', '', '2020-05-15 08:41:24', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Pendanaan</b></li><li><b>deskripsi</b> dengan value <b>daftar pendanaan yang diterima</b></li><li><b>alias</b> dengan value <b>pendanaan</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>application/controllers/lab/pendanaan.php</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>11</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(23, '::1', '', '2020-05-15 08:42:55', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Pendanaan</b></li><li><b>deskripsi</b> dengan value <b>daftar pendanaan yang diterima</b></li><li><b>alias</b> dengan value <b>daftar_pendanaan</b></li><li><b>allowed_level</b> dengan value <b>1</b></li><li><b>url</b> dengan value <b>application/controllers/lab/pendanaan.php</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>11</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(24, '::1', '', '2020-05-15 10:09:47', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>139</b></li><li><b>nama</b> dengan value <b>Pendanaan</b></li><li><b>deskripsi</b> dengan value <b>daftar pendanaan yang diterima</b></li><li><b>allowed_level</b> dengan value <b>1</b></li><li><b>url</b> dengan value <b>application/controllers/lab/pendanaan.php</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(25, '::1', '', '2020-05-15 10:21:17', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>139</b></li><li><b>nama</b> dengan value <b>Pendanaan</b></li><li><b>deskripsi</b> dengan value <b>daftar pendanaan yang diterima</b></li><li><b>allowed_level</b> dengan value <b>1</b></li><li><b>url</b> dengan value <b>application/controllers/lab/pendanaan.php</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(26, '::1', '', '2020-05-17 14:14:03', 'Login  by Kholiq', 'kholiq'),
(27, '::1', '', '2020-05-17 16:58:07', 'Login  by Kholiq', 'kholiq'),
(28, '::1', '', '2020-05-17 19:40:03', 'Login  by Kholiq', 'kholiq'),
(29, '::1', '', '2020-05-17 20:13:27', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>133</b></li><li><b>nama</b> dengan value <b>Mata Kuliah</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/mata_kuliah</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>6</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(30, '::1', '', '2020-05-17 20:51:53', 'Logout SIONLAB by Kholiq', 'kholiq'),
(31, '::1', '', '2020-05-17 20:52:14', 'Login  by Kholiq', 'kholiq'),
(32, '::1', '', '2020-05-17 21:26:05', 'Logout SIONLAB by Kholiq', 'kholiq'),
(33, '::1', '', '2020-05-17 21:26:28', 'Login  by Kholiq', 'kholiq'),
(34, '::1', '', '2020-05-21 21:22:33', 'Login  by Kholiq', 'kholiq'),
(35, '::1', '', '2020-05-22 10:08:14', 'Login  by Kholiq', 'kholiq'),
(36, '::1', '', '2020-05-28 15:17:26', 'Login  by Kholiq', 'kholiq'),
(37, '::1', '', '2020-05-28 19:34:48', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>nama_satuan</b> dengan value <b>aha</b></li><li><b>keterangan</b> dengan value <b>ahahahah</b></li></ul>', 'kholiq'),
(38, '::1', '', '2020-05-28 19:34:57', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nama_satuan</b> dengan value <b>aha</b></li><li><b>keterangan</b> dengan value <b>ahahahah</b></li></ul>', 'kholiq'),
(39, '::1', '', '2020-05-28 19:35:04', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nama_satuan</b> dengan value <b>aha</b></li><li><b>keterangan</b> dengan value <b>ahahahah</b></li></ul>', 'kholiq'),
(40, '::1', '', '2020-05-28 20:00:32', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nama_satuan</b> dengan value <b>ahaa</b></li><li><b>keterangan</b> dengan value <b>ahahahah</b></li></ul>', 'kholiq'),
(41, '::1', '', '2020-05-28 20:53:08', 'Logout SIONLAB by Kholiq', 'kholiq'),
(42, '::1', '', '2020-05-28 20:53:24', 'Login  by Kholiq', 'kholiq'),
(43, '::1', '', '2020-05-28 21:53:09', 'Logout SIONLAB by Kholiq', 'kholiq'),
(44, '::1', '', '2020-05-28 21:53:27', 'Login  by Kholiq', 'kholiq'),
(45, '::1', '', '2020-05-29 09:38:36', 'Login  by Kholiq', 'kholiq'),
(46, '::1', '', '2020-05-29 09:49:50', 'Logout SIONLAB by Kholiq', 'kholiq'),
(47, '::1', '', '2020-05-29 10:00:26', 'Login  by Kholiq', 'kholiq'),
(48, '::1', '', '2020-05-29 11:38:59', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Pendanaan</b></li><li><b>deskripsi</b> dengan value <b>daftar sumber pendanaan</b></li><li><b>alias</b> dengan value <b>pendanaan</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>lab/pendanaan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>135</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(49, '::1', '', '2020-05-29 11:39:24', 'Menambah grup menu dengan data sbb:<br />\r\n                    <ul><li><b>nama_grup</b> dengan value <b>Peminjaman</b></li></ul>', 'kholiq'),
(50, '::1', '', '2020-05-29 11:39:32', 'Menambah grup menu dengan data sbb:<br />\r\n                    <ul><li><b>nama_grup</b> dengan value <b>Pengajuan</b></li></ul>', 'kholiq'),
(51, '::1', '', '2020-05-29 11:39:52', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(52, '::1', '', '2020-05-29 11:40:00', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(53, '::1', '', '2020-05-29 11:45:02', 'Menambah Lab Pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>maestro cahaya</b></li><li><b>jumlah</b> dengan value <b>80000000</b></li><li><b>keterangan</b> dengan value <b>beasiswa pendidikan</b></li></ul>', 'kholiq'),
(54, '::1', '', '2020-05-29 13:34:00', 'Logout SIONLAB by Kholiq', 'kholiq'),
(55, '::1', '', '2020-05-29 13:34:22', 'Login  by Kholiq', 'kholiq'),
(56, '::1', '', '2020-05-29 13:40:40', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(57, '::1', '', '2020-05-29 13:50:00', 'Logout SIONLAB by Kholiq', 'kholiq'),
(58, '::1', '', '2020-05-29 13:52:34', 'Login  by Kholiq', 'kholiq'),
(59, '::1', '', '2020-05-29 13:53:31', 'Menghapus menu dengan id 139', 'kholiq'),
(60, '::1', '', '2020-05-29 13:53:56', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(61, '::1', '', '2020-05-29 14:23:15', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Kritik dan Saran</b></li><li><b>deskripsi</b> dengan value <b>kritik dan saran dari para pengguna lab</b></li><li><b>alias</b> dengan value <b>kritik dan saran</b></li><li><b>allowed_level</b> dengan value <b>1,2,3,4,5,6</b></li><li><b>url</b> dengan value <b>lab/kritik_saran</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>140</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(62, '::1', '', '2020-05-29 14:23:24', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(63, '::1', '', '2020-05-29 20:40:28', 'Login  by Kholiq', 'kholiq'),
(64, '::1', '', '2020-06-01 14:16:26', 'Login  by Kholiq', 'kholiq'),
(65, '::1', '', '2020-06-01 14:26:45', 'Logout SILAPEN by Kholiq', 'kholiq'),
(66, '::1', '', '2020-06-01 14:28:35', 'Login  by Kholiq', 'kholiq'),
(67, '::1', '', '2020-06-01 14:30:24', 'Menambah grup menu dengan data sbb:<br />\r\n                    <ul><li><b>nama_grup</b> dengan value <b>kelola</b></li></ul>', 'kholiq'),
(68, '::1', '', '2020-06-01 14:31:37', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kelola user</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola pengguna silapen</b></li><li><b>alias</b> dengan value <b>kelola user</b></li><li><b>allowed_level</b> dengan value <b>0,1</b></li><li><b>url</b> dengan value <b>kelola/kelola_user</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(69, '::1', '', '2020-06-01 14:31:40', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(70, '::1', '', '2020-06-01 14:33:34', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kelola alat dan bahan</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola alat dan bahan di lab</b></li><li><b>alias</b> dengan value <b>kelola alat&bahan</b></li><li><b>allowed_level</b> dengan value <b>0,1</b></li><li><b>url</b> dengan value <b>kelola/kelola_alat_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(71, '::1', '', '2020-06-01 14:33:39', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(72, '::1', '', '2020-06-01 20:37:43', 'Logout SILAPEN by ', 'Tamu'),
(73, '::1', '', '2020-06-01 20:38:05', 'Login  by Kholiq', 'kholiq'),
(74, '::1', '', '2020-06-01 21:36:16', 'Logout SILAPEN by Kholiq', 'kholiq'),
(75, '::1', '', '2020-06-01 21:38:40', 'Login  by Kholiq', 'kholiq'),
(76, '::1', '', '2020-06-01 21:40:53', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Peminjaman Alat</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola peminjaman alat</b></li><li><b>alias</b> dengan value <b>peminjaman_alat</b></li><li><b>allowed_level</b> dengan value <b>0,1,2,3,4,5,6,7</b></li><li><b>url</b> dengan value <b>peminjaman/peminjaman_alat</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(77, '::1', '', '2020-06-01 21:40:59', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(78, '::1', '', '2020-06-03 10:11:14', 'Login  by Kholiq', 'kholiq'),
(79, '::1', '', '2020-06-03 10:11:21', 'Logout SILAPEN by Kholiq', 'kholiq'),
(80, '::1', '', '2020-06-03 10:14:53', 'Login  by Kholiq', 'kholiq'),
(81, '::1', '', '2020-06-03 10:14:59', 'Logout SILAPEN by Kholiq', 'kholiq'),
(82, '::1', '', '2020-06-03 10:16:42', 'Login  by Admin', 'Admin'),
(83, '::1', '', '2020-06-03 10:28:38', 'Logout SILAPEN by Admin', 'Admin'),
(84, '::1', '', '2020-06-03 10:28:55', 'Login  by Kholiq', 'kholiq'),
(85, '::1', '', '2020-06-03 10:28:59', 'Logout SILAPEN by Kholiq', 'kholiq'),
(86, '::1', '', '2020-06-03 10:31:11', 'Login  by Kholiq', 'kholiq'),
(87, '::1', '', '2020-06-03 12:55:34', 'Logout SILAPEN by ', 'Tamu'),
(88, '::1', '', '2020-06-03 12:56:32', 'Login  by Kepala Lab', 'Kepalalab'),
(89, '::1', '', '2020-06-03 12:56:46', 'Logout SILAPEN by Kepala Lab', 'Kepalalab'),
(90, '::1', '', '2020-06-03 12:59:42', 'Login  by Koordinator Lab', 'koordinatorlab'),
(91, '::1', '', '2020-06-03 12:59:48', 'Logout SILAPEN by Koordinator Lab', 'koordinatorlab'),
(92, '::1', '', '2020-06-03 13:10:09', 'Login  by ryanis', 'ryanis'),
(93, '::1', '', '2020-06-03 15:55:23', 'Login  by Kholiq', 'kholiq'),
(94, '::1', '', '2020-06-03 15:56:14', 'Logout SILAPEN by Kholiq', 'kholiq'),
(95, '::1', '', '2020-06-03 15:56:44', 'Login  by Kholiq', 'kholiq'),
(96, '::1', '', '2020-06-03 16:30:12', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>88</b></li><li><b>nama</b> dengan value <b>Tambah,edit,delete user</b></li><li><b>deskripsi</b> dengan value <b>tambah_edit_delete</b></li><li><b>allowed_level</b> dengan value <b>1,2,3,4</b></li><li><b>url</b> dengan value <b>apl/crud</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(97, '::1', '', '2020-06-03 16:30:25', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(98, '::1', '', '2020-06-03 16:31:44', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>88</b></li><li><b>nama</b> dengan value <b>Tambah,edit,delete user</b></li><li><b>deskripsi</b> dengan value <b>tambah_edit_delete</b></li><li><b>allowed_level</b> dengan value <b>1,2,3,4</b></li><li><b>url</b> dengan value <b>apl/crud</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(99, '::1', '', '2020-06-03 16:31:48', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(100, '::1', '', '2020-06-03 16:40:20', 'Logout SILAPEN by Kholiq', 'kholiq'),
(101, '::1', '', '2020-06-03 16:40:34', 'Login  by Kholiq', 'kholiq'),
(102, '::1', '', '2020-06-03 20:52:35', 'Login  by Kholiq', 'kholiq'),
(103, '::1', '', '2020-06-03 21:43:17', 'Logout SILAPEN by Kholiq', 'kholiq'),
(104, '::1', '', '2020-06-03 21:43:42', 'Login  by Kepala Lab', 'Kepalalab'),
(105, '::1', '', '2020-06-03 21:45:40', 'Logout SILAPEN by Kepala Lab', 'Kepalalab'),
(106, '::1', '', '2020-06-03 21:46:02', 'Login  by Kepala Lab', 'Kepalalab'),
(107, '::1', '', '2020-06-03 21:47:03', 'Logout SILAPEN by Kepala Lab', 'Kepalalab'),
(108, '::1', '', '2020-06-03 21:47:32', 'Login  by Kepala Lab', 'Kepalalab'),
(109, '::1', '', '2020-06-03 21:51:44', 'Logout SILAPEN by Kepala Lab', 'Kepalalab'),
(110, '::1', '', '2020-06-03 21:52:02', 'Login  by Kholiq', 'kholiq'),
(111, '::1', '', '2020-06-03 22:02:18', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Peminjaman Bahan</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola peminjaman bahan</b></li><li><b>alias</b> dengan value <b>peminjaman_bahan</b></li><li><b>allowed_level</b> dengan value <b>1,2,3,4,5,6,7,8</b></li><li><b>url</b> dengan value <b>peminjaman/peminjaman_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(112, '::1', '', '2020-06-03 22:02:23', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(113, '::1', '', '2020-06-03 22:57:29', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Pengajuan Bahan</b></li><li><b>deskripsi</b> dengan value <b>untuk menampilakan daftar pengajuan bahan</b></li><li><b>alias</b> dengan value <b>pengajuan_bahan</b></li><li><b>allowed_level</b> dengan value <b>1,2,3,4,5,6,7,8</b></li><li><b>url</b> dengan value <b>pengajuan/pengajuan_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(114, '::1', '', '2020-06-03 22:57:35', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(115, '::1', '', '2020-06-03 22:59:21', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Pengajuan Alat</b></li><li><b>deskripsi</b> dengan value <b>untuk menampilakan daftar pengajuan alat</b></li><li><b>alias</b> dengan value <b>pengajuan_alat</b></li><li><b>allowed_level</b> dengan value <b>1,2,3,4,5,6,7,8</b></li><li><b>url</b> dengan value <b>pengajuan/pengajuan_alat</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(116, '::1', '', '2020-06-03 22:59:26', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(117, '::1', '', '2020-06-03 23:10:27', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>142</b></li><li><b>nama</b> dengan value <b>Kelola User</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola pengguna SILAPEN</b></li><li><b>allowed_level</b> dengan value <b>1</b></li><li><b>url</b> dengan value <b>kelola/kelola_user</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(118, '::1', '', '2020-06-03 23:10:33', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(119, '::1', '', '2020-06-03 23:16:01', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>144</b></li><li><b>nama</b> dengan value <b>Peminjaman Alat</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola peminjaman alat</b></li><li><b>allowed_level</b> dengan value <b>1,7,8</b></li><li><b>url</b> dengan value <b>peminjaman/peminjaman_alat</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(120, '::1', '', '2020-06-03 23:16:05', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(121, '::1', '', '2020-06-03 23:16:57', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>145</b></li><li><b>nama</b> dengan value <b>Peminjaman Bahan</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola peminjaman bahan</b></li><li><b>allowed_level</b> dengan value <b>1,7,8</b></li><li><b>url</b> dengan value <b>peminjaman/peminjaman_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(122, '::1', '', '2020-06-03 23:17:01', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(123, '::1', '', '2020-06-03 23:46:51', 'Logout SILAPEN by Kholiq', 'kholiq'),
(124, '::1', '', '2020-06-03 23:50:31', 'Login  by Laboran', 'laboran'),
(125, '::1', '', '2020-06-03 23:56:22', 'Logout SILAPEN by Laboran', 'laboran'),
(126, '::1', '', '2020-06-03 23:56:47', 'Login  by Koordinator Lab', 'koordinatorlab'),
(127, '::1', '', '2020-06-04 00:01:06', 'Logout SILAPEN by Koordinator Lab', 'koordinatorlab'),
(128, '::1', '', '2020-06-04 00:01:34', 'Login  by Koordinator Lab', 'koordinatorlab'),
(129, '::1', '', '2020-06-04 14:30:24', 'Login  by Kholiq', 'kholiq'),
(130, '::1', '', '2020-06-05 08:39:29', 'Login  by Kholiq', 'kholiq'),
(131, '::1', '', '2020-06-05 08:43:41', 'Menambah Lab Pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>astra</b></li><li><b>jumlah</b> dengan value <b>20000000</b></li><li><b>keterangan</b> dengan value <b>beasiswa pendidikan</b></li></ul>', 'kholiq'),
(132, '::1', '', '2020-06-05 08:44:10', 'Mengedit Lab Satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>sumber_pendanaan</b> dengan value <b>astra</b></li><li><b>jumlah</b> dengan value <b>20000000</b></li><li><b>keterangan</b> dengan value <b>infrastruktur</b></li></ul>', 'kholiq'),
(133, '::1', '', '2020-06-05 08:44:16', 'Mengedit Lab Satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>sumber_pendanaan</b> dengan value <b>astra</b></li><li><b>jumlah</b> dengan value <b>20000000</b></li><li><b>keterangan</b> dengan value <b>infrastruktur</b></li></ul>', 'kholiq'),
(134, '::1', '', '2020-06-05 09:40:32', 'Logout SILAPEN by Kholiq', 'kholiq'),
(135, '::1', '', '2020-06-05 09:40:51', 'Login  by Kholiq', 'kholiq'),
(136, '::1', '', '2020-06-05 10:01:08', 'Logout SILAPEN by Kholiq', 'kholiq'),
(137, '::1', '', '2020-06-05 10:08:09', 'Login  by Hueningkai', 'mahasiswa'),
(138, '::1', '', '2020-06-05 10:08:35', 'Logout SILAPEN by Hueningkai', 'mahasiswa'),
(139, '::1', '', '2020-06-05 10:09:07', 'Login  by Taehyun V', 'Admin'),
(140, '::1', '', '2020-06-05 10:18:50', 'Logout SILAPEN by Taehyun V', 'Admin'),
(141, '::1', '', '2020-06-05 10:19:08', 'Login  by Kholiq', 'kholiq'),
(142, '::1', '', '2020-06-05 10:49:13', 'Logout SILAPEN by Kholiq', 'kholiq'),
(143, '::1', '', '2020-06-05 10:49:31', 'Login  by Kholiq', 'kholiq'),
(144, '::1', '', '2020-06-05 10:54:11', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>141</b></li><li><b>nama</b> dengan value <b>Kritik dan Saran</b></li><li><b>deskripsi</b> dengan value <b>kritik dan saran dari para pengguna lab</b></li><li><b>allowed_level</b> dengan value <b>1,4,6,7,8</b></li><li><b>url</b> dengan value <b>lab/kritik_saran</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>140</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(145, '::1', '', '2020-06-05 10:55:20', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>140</b></li><li><b>nama</b> dengan value <b>Pendanaan</b></li><li><b>deskripsi</b> dengan value <b>daftar sumber pendanaan</b></li><li><b>allowed_level</b> dengan value <b>1,3</b></li><li><b>url</b> dengan value <b>lab/pendanaan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>135</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(146, '::1', '', '2020-06-05 10:55:46', 'Logout SILAPEN by Kholiq', 'kholiq'),
(147, '::1', '', '2020-06-05 10:56:04', 'Login  by Hueningkai', 'mahasiswa'),
(148, '::1', '', '2020-06-05 11:15:30', 'Logout SILAPEN by Hueningkai', 'mahasiswa'),
(149, '::1', '', '2020-06-05 11:15:45', 'Login  by Kholiq', 'kholiq'),
(150, '::1', '', '2020-06-05 11:38:30', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Pengumuman</b></li><li><b>deskripsi</b> dengan value <b>mengelola pengumuman</b></li><li><b>alias</b> dengan value <b>pengumuman</b></li><li><b>allowed_level</b> dengan value <b>1,3</b></li><li><b>url</b> dengan value <b>lab/pengumuman</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>4</b></li></ul>', 'kholiq'),
(151, '::1', '', '2020-06-05 11:38:37', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(152, '::1', '', '2020-06-05 15:36:54', 'Login  by Hueningkai', 'mahasiswa'),
(153, '::1', '', '2020-06-05 15:37:21', 'Logout SILAPEN by Hueningkai', 'mahasiswa'),
(154, '::1', '', '2020-06-05 15:46:42', 'Login  by Kholiq', 'kholiq'),
(155, '::1', '', '2020-06-05 17:20:57', 'Logout SILAPEN by Kholiq', 'kholiq'),
(156, '::1', '', '2020-06-05 17:21:15', 'Login  by Kholiq', 'kholiq'),
(157, '::1', '', '2020-06-05 17:42:18', 'Menghapus menu dengan id 3', 'kholiq'),
(158, '::1', '', '2020-06-05 17:43:57', 'Mengedit Lab Satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>sumber_pendanaan</b> dengan value <b>astra</b></li><li><b>jumlah</b> dengan value <b>20000000</b></li><li><b>keterangan</b> dengan value <b>infrastruktur</b></li></ul>', 'kholiq'),
(159, '::1', '', '2020-06-05 21:52:23', 'Logout SILAPEN by ', 'Tamu'),
(160, '::1', '', '2020-06-05 21:55:52', 'Login  by Enwoo', 'dosen'),
(161, '::1', '', '2020-06-05 21:56:15', 'Logout SILAPEN by Enwoo', 'dosen'),
(162, '::1', '', '2020-06-05 21:56:31', 'Login  by Gupi Ul Haq', 'laboran'),
(163, '::1', '', '2020-06-05 21:57:48', 'Logout SILAPEN by Gupi Ul Haq', 'laboran'),
(164, '::1', '', '2020-06-05 21:58:05', 'Login  by Kholiq', 'kholiq'),
(165, '::1', '', '2020-06-05 22:05:37', 'Logout SILAPEN by Kholiq', 'kholiq'),
(166, '::1', '', '2020-06-05 22:06:12', 'Login  by Kholiq', 'kholiq'),
(167, '::1', '', '2020-06-05 22:07:18', 'Logout SILAPEN by Kholiq', 'kholiq'),
(168, '::1', '', '2020-06-05 22:07:38', 'Login  by Taehyun V', 'Admin'),
(169, '::1', '', '2020-06-05 22:13:09', 'Logout SILAPEN by Taehyun V', 'Admin'),
(170, '::1', '', '2020-06-05 22:13:24', 'Login  by Kholiq', 'kholiq'),
(171, '::1', '', '2020-06-05 22:15:30', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>134</b></li><li><b>nama</b> dengan value <b>Nama Alat</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,5</b></li><li><b>url</b> dengan value <b>master/nama_alat</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>7</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(172, '::1', '', '2020-06-05 22:15:42', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>135</b></li><li><b>nama</b> dengan value <b>Nama Bahan</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,5</b></li><li><b>url</b> dengan value <b>master/master_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>8</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(173, '::1', '', '2020-06-05 22:17:08', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>144</b></li><li><b>nama</b> dengan value <b>Peminjaman Alat</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola peminjaman alat</b></li><li><b>allowed_level</b> dengan value <b>1,5,7,8</b></li><li><b>url</b> dengan value <b>peminjaman/peminjaman_alat</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(174, '::1', '', '2020-06-05 22:17:25', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>145</b></li><li><b>nama</b> dengan value <b>Peminjaman Bahan</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola peminjaman bahan</b></li><li><b>allowed_level</b> dengan value <b>1,5,7,8</b></li><li><b>url</b> dengan value <b>peminjaman/peminjaman_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(175, '::1', '', '2020-06-05 22:18:22', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(176, '::1', '', '2020-06-05 22:18:25', 'Logout SILAPEN by Kholiq', 'kholiq'),
(177, '::1', '', '2020-06-05 22:18:50', 'Login  by Gupi Ul Haq', 'laboran'),
(178, '::1', '', '2020-06-07 11:01:06', 'Login  by Kholiq', 'kholiq'),
(179, '::1', '', '2020-06-07 12:03:53', 'Menambah Lab Pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>ganesha</b></li><li><b>jumlah</b> dengan value <b>57000000</b></li><li><b>keterangan</b> dengan value <b>infrastruktur</b></li></ul>', 'kholiq'),
(180, '::1', '', '2020-06-07 12:04:15', 'Mengedit Lab Satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>sumber_pendanaan</b> dengan value <b>ganesha</b></li><li><b>jumlah</b> dengan value <b>57000000</b></li><li><b>keterangan</b> dengan value <b>pembangunan masjid</b></li></ul>', 'kholiq'),
(181, '::1', '', '2020-06-07 12:04:24', 'Mengedit Lab Satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>sumber_pendanaan</b> dengan value <b>ganesha</b></li><li><b>jumlah</b> dengan value <b>57000000</b></li><li><b>keterangan</b> dengan value <b>pembangunan masjid</b></li></ul>', 'kholiq'),
(182, '::1', '', '2020-06-07 14:31:48', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>142</b></li><li><b>nama</b> dengan value <b>Kelola User</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola pengguna SILAPEN</b></li><li><b>allowed_level</b> dengan value <b>1</b></li><li><b>url</b> dengan value <b>kelola/kelola_user</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(183, '::1', '', '2020-06-07 14:31:53', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(184, '::1', '', '2020-06-07 14:32:17', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>142</b></li><li><b>nama</b> dengan value <b>Kelola User</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola pengguna SILAPEN</b></li><li><b>allowed_level</b> dengan value <b>1</b></li><li><b>url</b> dengan value <b>kelola/user</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(185, '::1', '', '2020-06-07 14:32:18', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(186, '::1', '', '2020-06-07 14:32:42', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>142</b></li><li><b>nama</b> dengan value <b>Kelola User</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola pengguna SILAPEN</b></li><li><b>allowed_level</b> dengan value <b>1</b></li><li><b>url</b> dengan value <b>kelola/kelola_user</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(187, '::1', '', '2020-06-07 14:32:44', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(188, '::1', '', '2020-06-08 21:14:05', 'Login  by Taehyun V', 'Admin'),
(189, '::1', '', '2020-06-08 21:19:21', 'Logout SILAPEN by Taehyun V', 'Admin'),
(190, '::1', '', '2020-06-08 21:19:34', 'Login  by Kholiq', 'kholiq'),
(191, '::1', '', '2020-06-08 21:20:03', 'Menambah Master Mata Kuliah dengan data sbb:<br />\r\n                    <ul><li><b>nama_mk</b> dengan value <b>Basis Data</b></li><li><b>jml_sks</b> dengan value <b>4</b></li><li><b>keterangan</b> dengan value <b>basis data</b></li></ul>', 'kholiq'),
(192, '::1', '', '2020-06-08 21:31:59', 'Menambah Master Mata Kuliah dengan data sbb:<br />\r\n                    <ul><li><b>nama_mk</b> dengan value <b>Sistem Operasi</b></li><li><b>jml_sks</b> dengan value <b>3</b></li><li><b>keterangan</b> dengan value <b>sistem operasi</b></li></ul>', 'kholiq'),
(193, '::1', '', '2020-06-08 21:32:06', 'Mengedit mata kuliah dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_mk</b> dengan value <b>Sistem Operasi</b></li><li><b>jml_sks</b> dengan value <b>3</b></li><li><b>keterangan</b> dengan value <b>sistem operasi</b></li></ul>', 'kholiq'),
(194, '::1', '', '2020-06-08 22:51:49', 'Logout SILAPEN by Kholiq', 'kholiq'),
(195, '::1', '', '2020-06-09 20:41:31', 'Login  by Kholiq', 'kholiq'),
(196, '::1', '', '2020-06-09 22:05:54', 'Menambah kritik dan saran dengan data sbb:<br />\r\n                    <ul><li><b>pengirim</b> dengan value <b>muklis</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-06-09</b></li><li><b>lab_tujuan</b> dengan value <b>lab 2</b></li><li><b>kritik</b> dengan value <b>kurang bersih</b></li><li><b>saran</b> dengan value <b>harus rajin dibersihkan</b></li></ul>', 'kholiq'),
(197, '::1', '', '2020-06-09 22:13:39', 'Mengedit kritik dan saran dengan data sbb:<br />\r\n                    <ul><li><b>pengirim</b> dengan value <b>Muklis</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-06-09</b></li><li><b>lab_tujuan</b> dengan value <b>lab 2</b></li><li><b>kritik</b> dengan value <b>kurang bersih</b></li><li><b>saran</b> dengan value <b>harus rajin dibersihkan</b></li></ul>', 'kholiq'),
(198, '::1', '', '2020-06-09 22:13:52', 'Mengedit kritik dan saran dengan data sbb:<br />\r\n                    <ul><li><b>pengirim</b> dengan value <b>Nur</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-06-09</b></li><li><b>lab_tujuan</b> dengan value <b>lab 2</b></li><li><b>kritik</b> dengan value <b>kurang bersih</b></li><li><b>saran</b> dengan value <b>harus rajin dibersihkan</b></li></ul>', 'kholiq'),
(199, '::1', '', '2020-06-09 22:14:06', 'Mengedit kritik dan saran dengan data sbb:<br />\r\n                    <ul><li><b>pengirim</b> dengan value <b>Nur</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-06-09</b></li><li><b>lab_tujuan</b> dengan value <b>lab 2</b></li><li><b>kritik</b> dengan value <b>kurang bersih</b></li><li><b>saran</b> dengan value <b>harus rajin dibersihkan</b></li></ul>', 'kholiq'),
(200, '::1', '', '2020-06-09 22:17:08', 'Mengedit kritik dan saran dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>pengirim</b> dengan value <b>Nur</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-06-09</b></li><li><b>lab_tujuan</b> dengan value <b>lab 2</b></li><li><b>kritik</b> dengan value <b>kurang bersih</b></li><li><b>saran</b> dengan value <b>harus rajin dibersihkan</b></li></ul>', 'kholiq'),
(201, '::1', '', '2020-06-09 22:17:20', 'Mengedit kritik dan saran dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>pengirim</b> dengan value <b>Nur</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-06-09</b></li><li><b>lab_tujuan</b> dengan value <b>lab 3</b></li><li><b>kritik</b> dengan value <b>kurang bersih</b></li><li><b>saran</b> dengan value <b>harus rajin dibersihkan</b></li></ul>', 'kholiq'),
(202, '::1', '', '2020-06-10 10:09:45', 'Login  by Kholiq', 'kholiq'),
(203, '::1', '', '2020-06-10 10:32:58', 'Menambah peminjaman_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>122</b></li><li><b>nama_bahan</b> dengan value <b>router</b></li><li><b>nama_peminjam</b> dengan value <b>dalil</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-06-03</b></li><li><b>satuan</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(204, '::1', '', '2020-06-10 10:33:10', 'Mengedit Peminjaman_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>122</b></li><li><b>nama_bahan</b> dengan value <b>router</b></li><li><b>nama_peminjam</b> dengan value <b>Dalil</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-06-03</b></li><li><b>satuan</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(205, '::1', '', '2020-06-10 15:21:30', 'Login  by Kholiq', 'kholiq'),
(206, '::1', '', '2020-06-10 15:23:56', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>88</b></li><li><b>nama</b> dengan value <b>Tambah,edit,delete user</b></li><li><b>deskripsi</b> dengan value <b>tambah_edit_delete</b></li><li><b>allowed_level</b> dengan value <b>1,2,3,4</b></li><li><b>url</b> dengan value <b>apl/crud</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(207, '::1', '', '2020-06-10 15:24:11', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(208, '::1', '', '2020-06-10 15:24:52', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>88</b></li><li><b>nama</b> dengan value <b>Tambah,edit,delete user</b></li><li><b>deskripsi</b> dengan value <b>tambah_edit_delete</b></li><li><b>allowed_level</b> dengan value <b>1,2,3,4</b></li><li><b>url</b> dengan value <b>apl/crud</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(209, '::1', '', '2020-06-10 15:24:59', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(210, '::1', '', '2020-06-10 15:25:25', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>140</b></li><li><b>nama</b> dengan value <b>Pendanaan</b></li><li><b>deskripsi</b> dengan value <b>daftar sumber pendanaan</b></li><li><b>allowed_level</b> dengan value <b>1,3</b></li><li><b>url</b> dengan value <b>lab/pendanaan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>135</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(211, '::1', '', '2020-06-10 15:25:36', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(212, '::1', '', '2020-06-10 15:26:20', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>141</b></li><li><b>nama</b> dengan value <b>Kritik dan Saran</b></li><li><b>deskripsi</b> dengan value <b>kritik dan saran dari para pengguna lab</b></li><li><b>allowed_level</b> dengan value <b>1,4,6,7,8</b></li><li><b>url</b> dengan value <b>lab/kritik_saran</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>140</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(213, '::1', '', '2020-06-10 15:27:14', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>148</b></li><li><b>nama</b> dengan value <b>Pengumuman</b></li><li><b>deskripsi</b> dengan value <b>mengelola pengumuman</b></li><li><b>allowed_level</b> dengan value <b>1,3</b></li><li><b>url</b> dengan value <b>lab/pengumuman</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(214, '::1', '', '2020-06-10 15:27:32', 'Menghapus grup menu dengan id 4', 'kholiq'),
(215, '::1', '', '2020-06-10 15:27:38', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(216, '::1', '', '2020-06-10 15:30:01', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Laboratorium</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola lab</b></li><li><b>alias</b> dengan value <b>laboratorium</b></li><li><b>allowed_level</b> dengan value <b>1,3,4,5</b></li><li><b>url</b> dengan value <b>kelola/laboratorium</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(217, '::1', '', '2020-06-10 15:30:47', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>149</b></li><li><b>nama</b> dengan value <b>Laboratorium</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola lab</b></li><li><b>allowed_level</b> dengan value <b>1,3</b></li><li><b>url</b> dengan value <b>kelola/laboratorium</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(218, '::1', '', '2020-06-10 15:30:52', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(219, '::1', '', '2020-06-10 15:32:53', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Administrasi lab</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola administrasi lab</b></li><li><b>alias</b> dengan value <b>administrasi_lab</b></li><li><b>allowed_level</b> dengan value <b>1,5</b></li><li><b>url</b> dengan value <b>kelola/administrasi_lab</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>4</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(220, '::1', '', '2020-06-10 15:35:41', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Jadwal</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola jadwal lab</b></li><li><b>alias</b> dengan value <b>jadwal</b></li><li><b>allowed_level</b> dengan value <b>1,5</b></li><li><b>url</b> dengan value <b>kelola/jadwal</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>5</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(221, '::1', '', '2020-06-10 15:35:50', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(222, '::1', '', '2020-06-10 15:37:07', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Modul</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola modul praktikum</b></li><li><b>alias</b> dengan value <b>modul</b></li><li><b>allowed_level</b> dengan value <b>1,5,6</b></li><li><b>url</b> dengan value <b>kelola/modul</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>6</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(223, '::1', '', '2020-06-10 15:38:52', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>TA/Skripsi</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola skripsi mahasiswa</b></li><li><b>alias</b> dengan value <b>skripsi</b></li><li><b>allowed_level</b> dengan value <b>1,5,6,8</b></li><li><b>url</b> dengan value <b>kelola/skripsi</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>7</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(224, '::1', '', '2020-06-10 15:38:56', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(225, '::1', '', '2020-06-10 15:40:30', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Periode Pengajuan</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola periode pengajuan warga lab</b></li><li><b>alias</b> dengan value <b>periode_pengajuan</b></li><li><b>allowed_level</b> dengan value <b>1,3</b></li><li><b>url</b> dengan value <b>pengajuan/periode_pengajuan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(226, '::1', '', '2020-06-10 15:40:39', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(227, '::1', '', '2020-06-10 15:43:06', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Cek Status Peminjaman</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola status peminjaman warga lab</b></li><li><b>alias</b> dengan value <b>cek_status_peminjaman</b></li><li><b>allowed_level</b> dengan value <b>1,4,5,6,7,8</b></li><li><b>url</b> dengan value <b>peminjaman/cek_status_peminjaman</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(228, '::1', '', '2020-06-10 15:43:10', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(229, '::1', '', '2020-06-10 15:44:59', 'Logout SILAPEN by Kholiq', 'kholiq'),
(230, '::1', '', '2020-06-10 15:45:15', 'Login  by Taehyun V', 'Admin'),
(231, '::1', '', '2020-06-10 15:45:58', 'Logout SILAPEN by Taehyun V', 'Admin'),
(232, '::1', '', '2020-06-10 15:46:16', 'Login  by Kholiq', 'kholiq'),
(233, '::1', '', '2020-06-10 15:46:56', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>142</b></li><li><b>nama</b> dengan value <b>Kelola User</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola pengguna SILAPEN</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>kelola/kelola_user</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(234, '::1', '', '2020-06-10 15:46:59', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(235, '::1', '', '2020-06-10 15:47:01', 'Logout SILAPEN by Kholiq', 'kholiq'),
(236, '::1', '', '2020-06-10 15:47:17', 'Login  by Taehyun V', 'Admin'),
(237, '::1', '', '2020-06-10 15:47:41', 'Logout SILAPEN by Taehyun V', 'Admin'),
(238, '::1', '', '2020-06-10 15:48:01', 'Login  by Kholiq', 'kholiq'),
(239, '::1', '', '2020-06-10 15:49:02', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>146</b></li><li><b>nama</b> dengan value <b>Pengajuan Bahan</b></li><li><b>deskripsi</b> dengan value <b>untuk menampilakan daftar pengajuan bahan</b></li><li><b>allowed_level</b> dengan value <b>1,3,4,5,7</b></li><li><b>url</b> dengan value <b>pengajuan/pengajuan_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(240, '::1', '', '2020-06-10 15:49:35', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>147</b></li><li><b>nama</b> dengan value <b>Pengajuan Alat</b></li><li><b>deskripsi</b> dengan value <b>untuk menampilakan daftar pengajuan alat</b></li><li><b>allowed_level</b> dengan value <b>1,3,4,5,7</b></li><li><b>url</b> dengan value <b>pengajuan/pengajuan_alat</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(241, '::1', '', '2020-06-10 15:49:39', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(242, '::1', '', '2020-06-10 15:49:43', 'Logout SILAPEN by Kholiq', 'kholiq'),
(243, '::1', '', '2020-06-10 15:49:59', 'Login  by Taehyun V', 'Admin'),
(244, '::1', '', '2020-06-10 15:50:28', 'Logout SILAPEN by Taehyun V', 'Admin'),
(245, '::1', '', '2020-06-10 15:50:57', 'Login  by P''Sarawat', 'Kepalalab'),
(246, '::1', '', '2020-06-10 15:51:30', 'Logout SILAPEN by P''Sarawat', 'Kepalalab'),
(247, '::1', '', '2020-06-10 15:51:49', 'Login  by Gupi Ul Haq', 'laboran'),
(248, '::1', '', '2020-06-10 15:52:42', 'Logout SILAPEN by Gupi Ul Haq', 'laboran'),
(249, '::1', '', '2020-06-10 15:52:57', 'Login  by Kholiq', 'kholiq'),
(250, '::1', '', '2020-06-10 15:53:30', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>136</b></li><li><b>nama</b> dengan value <b>Satuan</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2,5</b></li><li><b>url</b> dengan value <b>master/satuan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>9</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(251, '::1', '', '2020-06-10 15:53:59', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>143</b></li><li><b>nama</b> dengan value <b>kelola alat dan bahan</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola alat dan bahan di lab</b></li><li><b>allowed_level</b> dengan value <b>1,5</b></li><li><b>url</b> dengan value <b>kelola/kelola_alat_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(252, '::1', '', '2020-06-10 15:54:05', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(253, '::1', '', '2020-06-10 15:54:08', 'Logout SILAPEN by Kholiq', 'kholiq'),
(254, '::1', '', '2020-06-10 15:54:22', 'Login  by Gupi Ul Haq', 'laboran'),
(255, '::1', '', '2020-06-10 15:54:55', 'Logout SILAPEN by Gupi Ul Haq', 'laboran'),
(256, '::1', '', '2020-06-10 15:55:13', 'Login  by Aris Wibisono', 'koordinatorlab'),
(257, '::1', '', '2020-06-10 15:56:05', 'Logout SILAPEN by Aris Wibisono', 'koordinatorlab'),
(258, '::1', '', '2020-06-10 15:56:21', 'Login  by Kholiq', 'kholiq'),
(259, '::1', '', '2020-06-10 16:08:02', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>144</b></li><li><b>nama</b> dengan value <b>Peminjaman Alat</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola peminjaman alat</b></li><li><b>allowed_level</b> dengan value <b>1,4,5,7,8</b></li><li><b>url</b> dengan value <b>peminjaman/peminjaman_alat</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(260, '::1', '', '2020-06-10 16:08:16', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>145</b></li><li><b>nama</b> dengan value <b>Peminjaman Bahan</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola peminjaman bahan</b></li><li><b>allowed_level</b> dengan value <b>1,4,5,7,8</b></li><li><b>url</b> dengan value <b>peminjaman/peminjaman_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(261, '::1', '', '2020-06-10 16:09:59', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Anggota Lab</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola anggota lab</b></li><li><b>alias</b> dengan value <b>anggota_lab</b></li><li><b>allowed_level</b> dengan value <b>1,4</b></li><li><b>url</b> dengan value <b>kelola/anggota_lab</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>5</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(262, '::1', '', '2020-06-10 16:10:02', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(263, '::1', '', '2020-06-10 16:10:04', 'Logout SILAPEN by Kholiq', 'kholiq'),
(264, '::1', '', '2020-06-10 16:10:26', 'Login  by Aris Wibisono', 'koordinatorlab'),
(265, '::1', '', '2020-06-10 16:10:49', 'Logout SILAPEN by Aris Wibisono', 'koordinatorlab'),
(266, '::1', '', '2020-06-10 16:11:26', 'Login  by Soobin', 'asistenlab'),
(267, '::1', '', '2020-06-10 16:11:54', 'Logout SILAPEN by Soobin', 'asistenlab'),
(268, '::1', '', '2020-06-10 16:12:10', 'Login  by Kholiq', 'kholiq'),
(269, '::1', '', '2020-06-10 16:12:32', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>144</b></li><li><b>nama</b> dengan value <b>Peminjaman Alat</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola peminjaman alat</b></li><li><b>allowed_level</b> dengan value <b>1,4,5,6,7,8</b></li><li><b>url</b> dengan value <b>peminjaman/peminjaman_alat</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(270, '::1', '', '2020-06-10 16:12:44', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>145</b></li><li><b>nama</b> dengan value <b>Peminjaman Bahan</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola peminjaman bahan</b></li><li><b>allowed_level</b> dengan value <b>1,4,5,6,7,8</b></li><li><b>url</b> dengan value <b>peminjaman/peminjaman_bahan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>5</b></li></ul>', 'kholiq'),
(271, '::1', '', '2020-06-10 16:12:50', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(272, '::1', '', '2020-06-10 16:12:51', 'Logout SILAPEN by Kholiq', 'kholiq'),
(273, '::1', '', '2020-06-10 16:13:09', 'Login  by Soobin', 'asistenlab'),
(274, '::1', '', '2020-06-10 16:13:23', 'Logout SILAPEN by Soobin', 'asistenlab'),
(275, '::1', '', '2020-06-10 16:13:40', 'Login  by Enwoo', 'dosen'),
(276, '::1', '', '2020-06-10 16:14:04', 'Logout SILAPEN by Enwoo', 'dosen'),
(277, '::1', '', '2020-06-10 16:14:28', 'Login  by Hueningkai', 'mahasiswa'),
(278, '::1', '', '2020-06-10 16:14:42', 'Logout SILAPEN by Hueningkai', 'mahasiswa'),
(279, '::1', '', '2020-06-10 16:43:59', 'Login  by Kholiq', 'kholiq'),
(280, '::1', '', '2020-06-10 17:05:39', 'Logout SILAPEN by Kholiq', 'kholiq'),
(281, '::1', '', '2020-06-10 17:06:08', 'Login  by Hueningkai', 'mahasiswa'),
(282, '::1', '', '2020-06-10 17:23:58', 'Logout SILAPEN by Hueningkai', 'mahasiswa'),
(283, '::1', '', '2020-06-10 17:24:17', 'Login  by Kholiq', 'kholiq'),
(284, '::1', '', '2020-06-10 20:59:57', 'Logout SILAPEN by ', 'Tamu'),
(285, '::1', '', '2020-06-10 21:00:13', 'Login  by Kholiq', 'kholiq'),
(286, '::1', '', '2020-06-10 21:04:30', 'Logout SILAPEN by Kholiq', 'kholiq'),
(287, '::1', '', '2020-06-10 21:04:50', 'Login  by Hueningkai', 'mahasiswa'),
(288, '::1', '', '2020-06-10 21:05:12', 'Logout SILAPEN by Hueningkai', 'mahasiswa'),
(289, '::1', '', '2020-06-10 21:05:28', 'Login  by Kholiq', 'kholiq'),
(290, '::1', '', '2020-06-10 21:48:30', 'Logout SILAPEN by Kholiq', 'kholiq'),
(291, '::1', '', '2020-06-10 21:53:07', 'Login  by Kholiq', 'kholiq'),
(292, '::1', '', '2020-06-10 21:59:38', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>140</b></li><li><b>nama</b> dengan value <b>Pendanaan</b></li><li><b>deskripsi</b> dengan value <b>daftar sumber pendanaan</b></li><li><b>allowed_level</b> dengan value <b>1,3</b></li><li><b>url</b> dengan value <b>master/pendanaan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>135</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(293, '::1', '', '2020-06-10 22:00:01', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>141</b></li><li><b>nama</b> dengan value <b>Kritik dan Saran</b></li><li><b>deskripsi</b> dengan value <b>kritik dan saran dari para pengguna lab</b></li><li><b>allowed_level</b> dengan value <b>1,4,6,7,8</b></li><li><b>url</b> dengan value <b>kelola/kritik_saran</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>140</b></li><li><b>grup</b> dengan value <b>7</b></li></ul>', 'kholiq'),
(294, '::1', '', '2020-06-10 22:00:05', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(295, '::1', '', '2020-06-10 22:16:38', 'Menambah kritik dan saran dengan data sbb:<br />\r\n                    <ul><li><b>pengirim</b> dengan value <b>Claud</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-06-09</b></li><li><b>lab_tujuan</b> dengan value <b>Lab 2</b></li><li><b>kritik</b> dengan value <b>alat ada yang tidak lengkap</b></li><li><b>saran</b> dengan value <b>sebaiknya melakukan pengecekan ulang</b></li></ul>', 'kholiq'),
(296, '::1', '', '2020-06-10 22:16:52', 'Mengedit kritik dan saran dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>pengirim</b> dengan value <b>Krauser</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-06-09</b></li><li><b>lab_tujuan</b> dengan value <b>Lab 2</b></li><li><b>kritik</b> dengan value <b>alat ada yang tidak lengkap</b></li><li><b>saran</b> dengan value <b>sebaiknya melakukan pengecekan ulang</b></li></ul>', 'kholiq'),
(297, '::1', '', '2020-06-10 22:17:43', 'Menambah master Pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Laziz</b></li><li><b>jumlah</b> dengan value <b>10000000</b></li><li><b>keterangan</b> dengan value <b>sumbangan</b></li></ul>', 'kholiq'),
(298, '::1', '', '2020-06-10 22:18:03', 'Mengedit master pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>sumber_pendanaan</b> dengan value <b>Laziz</b></li><li><b>jumlah</b> dengan value <b>15000000</b></li><li><b>keterangan</b> dengan value <b>sumbangan</b></li></ul>', 'kholiq'),
(299, '::1', '', '2020-06-10 22:18:52', 'Logout SILAPEN by Kholiq', 'kholiq'),
(300, '::1', '', '2020-06-10 22:23:40', 'Login  by Hueningkai', 'mahasiswa'),
(301, '::1', '', '2020-06-10 22:24:17', 'Logout SILAPEN by Hueningkai', 'mahasiswa'),
(302, '::1', '', '2020-06-10 22:24:38', 'Login  by Enwoo', 'dosen'),
(303, '::1', '', '2020-06-10 22:25:03', 'Logout SILAPEN by Enwoo', 'dosen'),
(304, '::1', '', '2020-06-10 22:25:23', 'Login  by Soobin', 'asistenlab'),
(305, '::1', '', '2020-06-10 22:25:46', 'Logout SILAPEN by Soobin', 'asistenlab'),
(306, '::1', '', '2020-06-10 22:26:13', 'Login  by Aris Wibisono', 'koordinatorlab'),
(307, '::1', '', '2020-06-10 22:35:31', 'Logout SILAPEN by Aris Wibisono', 'koordinatorlab'),
(308, '::1', '', '2020-06-10 22:35:49', 'Login  by Gupi Ul Haq', 'laboran'),
(309, '::1', '', '2020-06-10 22:45:52', 'Logout SILAPEN by Gupi Ul Haq', 'laboran'),
(310, '::1', '', '2020-06-10 22:46:21', 'Login  by Gupi Ul Haq', 'laboran'),
(311, '::1', '', '2020-06-10 22:47:09', 'Logout SILAPEN by Gupi Ul Haq', 'laboran'),
(312, '::1', '', '2020-06-10 22:47:29', 'Login  by P''Sarawat', 'Kepalalab'),
(313, '::1', '', '2020-06-10 22:48:34', 'Logout SILAPEN by P''Sarawat', 'Kepalalab'),
(314, '::1', '', '2020-06-10 22:48:54', 'Login  by Taehyun V', 'Admin'),
(315, '::1', '', '2020-06-10 23:00:07', 'Logout SILAPEN by Taehyun V', 'Admin'),
(316, '::1', '', '2020-06-10 23:01:00', 'Login  by P''Sarawat', 'Kepalalab'),
(317, '::1', '', '2020-06-10 23:04:30', 'Logout SILAPEN by P''Sarawat', 'Kepalalab'),
(318, '::1', '', '2020-06-10 23:05:04', 'Login  by Aris Wibisono', 'koordinatorlab'),
(319, '::1', '', '2020-06-10 23:09:02', 'Logout SILAPEN by Aris Wibisono', 'koordinatorlab'),
(320, '::1', '', '2020-06-10 23:09:19', 'Login  by Gupi Ul Haq', 'laboran'),
(321, '::1', '', '2020-06-10 23:11:13', 'Logout SILAPEN by Gupi Ul Haq', 'laboran'),
(322, '::1', '', '2020-06-10 23:11:36', 'Login  by Soobin', 'asistenlab'),
(323, '::1', '', '2020-06-10 23:14:20', 'Logout SILAPEN by Soobin', 'asistenlab'),
(324, '::1', '', '2020-06-10 23:14:39', 'Login  by Enwoo', 'dosen'),
(325, '::1', '', '2020-06-10 23:16:37', 'Logout SILAPEN by Enwoo', 'dosen'),
(326, '::1', '', '2020-06-10 23:17:01', 'Login  by Hueningkai', 'mahasiswa'),
(327, '::1', '', '2020-06-10 23:29:59', 'Logout SILAPEN by Hueningkai', 'mahasiswa'),
(328, '::1', '', '2020-06-11 09:13:30', 'Login  by Kholiq', 'kholiq'),
(329, '::1', '', '2020-06-11 09:16:22', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>154</b></li><li><b>nama</b> dengan value <b>Periode Pengajuan</b></li><li><b>deskripsi</b> dengan value <b>untuk mengelola periode pengajuan warga lab</b></li><li><b>allowed_level</b> dengan value <b>1,3</b></li><li><b>url</b> dengan value <b>pengajuan/periode_pengajuan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>6</b></li></ul>', 'kholiq'),
(330, '::1', '', '2020-06-11 09:16:26', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(331, '::1', '', '2020-06-11 10:29:05', 'Logout SILAPEN by Kholiq', 'kholiq'),
(332, '::1', '', '2020-06-11 10:29:24', 'Login  by Soobin', 'asistenlab'),
(333, '::1', '', '2020-06-11 11:51:40', 'Logout SILAPEN by Soobin', 'asistenlab'),
(334, '::1', '', '2020-06-11 11:51:56', 'Login  by Kholiq', 'kholiq'),
(335, '::1', '', '2020-06-11 12:41:03', 'Menambah jadwal dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>J001</b></li><li><b>nama_jadwal</b> dengan value <b>UAS</b></li><li><b>file_jadwal</b> dengan value <b>uas.pdf</b></li><li><b>status</b> dengan value <b>selesai</b></li></ul>', 'kholiq'),
(336, '::1', '', '2020-06-11 12:41:27', 'Mengedit jadwal dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama_jadwal</b> dengan value <b>UAS</b></li><li><b>file_jadwal</b> dengan value <b>uas.pdf</b></li><li><b>status</b> dengan value <b>sudah upload</b></li></ul>', 'kholiq'),
(337, '::1', '', '2020-06-11 21:33:18', 'Login  by Kholiq', 'kholiq'),
(338, '::1', '', '2020-06-11 23:33:19', 'Logout SILAPEN by Kholiq', 'kholiq'),
(339, '::1', '', '2020-06-11 23:33:36', 'Login  by Kholiq', 'kholiq'),
(340, '::1', '', '2020-06-11 23:35:47', 'Logout SILAPEN by Kholiq', 'kholiq'),
(341, '::1', '', '2020-06-11 23:36:17', 'Login  by Kholiq', 'kholiq'),
(342, '::1', '', '2020-06-11 23:49:28', 'Logout SILAPEN by Kholiq', 'kholiq'),
(343, '::1', '', '2020-06-11 23:49:47', 'Login  by Hueningkai', 'mahasiswa'),
(344, '::1', '', '2020-06-11 23:50:00', 'Logout SILAPEN by Hueningkai', 'mahasiswa'),
(345, '::1', '', '2020-06-11 23:50:19', 'Login  by Kholiq', 'kholiq'),
(346, '::1', '', '2020-06-12 09:04:04', 'Login  by Kholiq', 'kholiq'),
(347, '::1', '', '2020-06-12 09:32:19', 'Logout SILAPEN by Kholiq', 'kholiq'),
(348, '::1', '', '2020-06-12 09:32:37', 'Login  by Kholiq', 'kholiq'),
(349, '::1', '', '2020-06-12 09:42:08', 'Menambah status peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>123</b></li><li><b>jenis_peminjaman</b> dengan value <b>peminjaman alat</b></li><li><b>status</b> dengan value <b>belum disetujui</b></li></ul>', 'kholiq'),
(350, '::1', '', '2020-06-12 09:42:26', 'Mengedit status peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>id_peminjaman</b> dengan value <b>123</b></li><li><b>jenis_peminjaman</b> dengan value <b>Peminjaman Alat</b></li><li><b>status</b> dengan value <b>belum disetujui</b></li></ul>', 'kholiq'),
(351, '::1', '', '2020-06-12 09:42:41', 'Mengedit status peminjaman dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>id_peminjaman</b> dengan value <b>122</b></li><li><b>jenis_peminjaman</b> dengan value <b>Peminjaman Bahan</b></li><li><b>status</b> dengan value <b>disetujui</b></li></ul>', 'kholiq'),
(352, '::1', '', '2020-06-12 13:29:50', 'Login  by Kholiq', 'kholiq'),
(353, '::1', '', '2020-06-12 13:38:15', 'Menambah master Pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Laziz</b></li><li><b>jumlah</b> dengan value <b>15000000</b></li><li><b>keterangan</b> dengan value <b>masjid</b></li></ul>', 'kholiq'),
(354, '::1', '', '2020-06-12 13:39:20', 'Menambah master Pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Laziz</b></li><li><b>jumlah</b> dengan value <b>15000000</b></li><li><b>keterangan</b> dengan value <b>baik</b></li></ul>', 'kholiq'),
(355, '::1', '', '2020-06-12 13:43:21', 'Menambah master Pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>ganesha</b></li><li><b>jumlah</b> dengan value <b>57000000</b></li><li><b>keterangan</b> dengan value <b>beasiswa pendidikan</b></li></ul>', 'kholiq'),
(356, '::1', '', '2020-06-12 13:43:37', 'Menambah master Pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>astra</b></li><li><b>jumlah</b> dengan value <b>20000000</b></li><li><b>keterangan</b> dengan value <b>infrastruktur</b></li></ul>', 'kholiq');

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
(140, 'pendanaan', 'Pendanaan', 'daftar sumber pendanaan', '+1+3+', 'master/pendanaan', 1, 135, 2),
(141, 'kritik_saran', 'Kritik dan Saran', 'kritik dan saran dari para pengguna lab', '+1+4+6+7+8+', 'kelola/kritik_saran', 1, 140, 7),
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

-- --------------------------------------------------------

--
-- Table structure for table `cms_menu_grup`
--

CREATE TABLE `cms_menu_grup` (
  `id_grup_menu` int(11) NOT NULL,
  `nama_grup` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_menu_grup`
--

INSERT INTO `cms_menu_grup` (`id_grup_menu`, `nama_grup`, `icon`) VALUES
(3, 'Hidden Menu', NULL),
(1, 'Manajemen', 'fa fa-fw fa-book'),
(2, 'Master', 'fa fa-fw fa-archive'),
(101, 'Dashboard', 'fa fa-dashboard'),
(5, 'Peminjaman', 'fa fa-calendar'),
(6, 'Pengajuan', 'fa fa-pencil-square'),
(7, 'Kelola', 'fa fa-hand-pointer-o');

-- --------------------------------------------------------

--
-- Table structure for table `cms_online`
--

CREATE TABLE `cms_online` (
  `user_id` int(5) NOT NULL,
  `last_activity` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_online`
--

INSERT INTO `cms_online` (`user_id`, `last_activity`) VALUES
(2, ''),
(3, '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `bagian` int(11) DEFAULT '1',
  `no_hp` varchar(100) DEFAULT NULL,
  `alamat` text,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cms_user`
--

INSERT INTO `cms_user` (`id`, `nama`, `gambar`, `username`, `password`, `level`, `bagian`, `no_hp`, `alamat`, `last_login`) VALUES
(1, 'Kholiq', NULL, 'kholiq', '*F1378C253EEBE31F135CC41EF4A98D077EB98F5D', 1, 1, NULL, NULL, '2020-06-12 13:29:50'),
(2, 'Taehyun V', 'file/Admin.jpg', 'Admin', '*D89A99106002D77C1D327FC41E005919505638B0', 2, 1, '-', '-', '2020-06-10 22:48:54'),
(3, 'P''Sarawat', 'file/Kepala Lab.jpeg', 'Kepalalab', '*AAAA223F3F5B26DD135F136F56D3DE48979C622E', 3, 1, '089 884 189 22', 'Jl. Shima No.6 Pengkol, Jepara', '2020-06-10 23:01:00'),
(4, 'Aris Wibisono', 'file/koordinator lab.jpeg', 'koordinatorlab', '*DC12E5F6E58C1DF756A27B061BD124A3FE900B74', 4, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2020-06-10 23:05:04'),
(5, 'Gupi Ul Haq', 'file/laboran.jpeg', 'laboran', '*5F9D604D1358B35776BD7ECEFE96829E6F3A2F3B', 5, 1, '0291595628', 'Jl. Citrosoma RT.017/006, Senenan, Jepara', '2020-06-10 23:09:19'),
(6, 'Soobin', 'file/asisten lab.jpg', 'asistenlab', '*97B0E8E691B7849A4A1FE5CC0B2C510A5CEF3A9E', 6, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2020-06-11 10:29:23'),
(7, 'Enwoo', 'file/dosen.jpg', 'dosen', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 7, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2020-06-10 23:14:39'),
(8, 'Hueningkai', 'file/mahasiswa.png', 'mahasiswa', '*3D98533F5EC0664D86B1F8E1CCC2F7C91B5C856D', 8, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2020-06-11 23:49:47'),
(12, 'Bittaqwa', 'files/2017/01/850a0830a9fb703e55f1ef318d2195df.jpg', 'bittaqwa', '*2900EA52D759AACA10038BA767FDDA68A9F7853A', 6, 1, '', '', '2017-03-01 10:11:37'),
(13, 'coba', 'files/2017/04/f6b70ba5e4de413f8832472bef538c0d.JPG', 'coba', '*FD64E348EC9DCCE6525B358693A9CFDC733F5184', 3, 1, 'qq', 'qq', '2017-04-25 09:27:29'),
(14, 'ryanis', NULL, 'ryanis', '*8A8CAC56B56B070F576EADA83B9551B74171B9AE', 1, 1, NULL, NULL, '2020-06-03 13:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `nama_jadwal` varchar(255) NOT NULL,
  `file_jadwal` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `nama_jadwal`, `file_jadwal`, `status`) VALUES
(1, 'UAS', 'uas.pdf', 'sudah upload');

-- --------------------------------------------------------

--
-- Table structure for table `kelola_user`
--

CREATE TABLE `kelola_user` (
  `id` int(10) NOT NULL,
  `NoInduk` int(30) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `JenisKelamin` varchar(10) NOT NULL,
  `Foto` varchar(40) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `NoTelp` varchar(30) NOT NULL,
  `Level` varchar(30) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelola_user`
--

INSERT INTO `kelola_user` (`id`, `NoInduk`, `Username`, `Nama`, `JenisKelamin`, `Foto`, `Email`, `NoTelp`, `Level`, `Status`, `Alamat`) VALUES
(1, 304911, 'Admin', 'Taehyun V', 'laki-laki', 'admin.jpg', 'vtaehyun@gmail.com', '087892230709', 'Admin', 'Aktif', 'Korea'),
(2, 304912, 'Kepalalab', 'P''Sarawat', 'Laki-Laki', 'kepala lab.jpeg', 'sarawat@gmail.com', '089765432111', 'Kepala lab', 'Aktif', 'Thailand'),
(3, 304913, 'koordinatorlab', 'Aris Wibisono', 'laki-laki', 'Koordinator Lab.jpeg', 'a.wibisono@gmail.com', '089762145600', 'Koordinator Lab', 'Aktif', 'Korea'),
(4, 304914, 'laboran', 'Gupi Ul Haq', 'laki-laki', 'Laboran.jpeg', 'gupi@gmail.com', '087655234190', 'Laboran', 'Aktif', 'Thailand'),
(5, 304915, 'asistenlab', 'Soobin', 'laki-laki', 'asisten lab.jpg', 'soobin@gmail.com', '086755128734', 'Asisten Lab', 'Aktif', 'Korea'),
(6, 304916, 'dosen', 'Enwoo', 'laki-laki', 'dosen.jpg', 'selaluuwu@gmail.com', '081577248890', 'Dosen', 'Aktif', 'Korea'),
(7, 304917, 'dosen', 'Enwoo', 'laki-laki', 'dosen.jpg', 'selaluuwu@gmail.com', '081577248890', 'Dosen', 'Aktif', 'Korea'),
(8, 304918, 'mahasiswa', 'Hueningkai', 'laki-laki', 'mahasiswa.png', 'hueningkai@gmail.com', '082397654101', 'Mahasiswa', 'Aktif', 'Hawai');

-- --------------------------------------------------------

--
-- Table structure for table `lab_kritik_saran`
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
-- Dumping data for table `lab_kritik_saran`
--

INSERT INTO `lab_kritik_saran` (`id`, `pengirim`, `tgl_pengiriman`, `lab_tujuan`, `kritik`, `saran`) VALUES
(1, 'Mustafa', '2020-06-05', 'lab 1', 'banyak alat dan bahan yang dipinjam dari lab tidak dikembalikan tepat waktu', 'sebaiknya diterapkan sanksi bagi mahasiswa yang terlambat mengembalikan pinjaman alat atau bahan'),
(2, 'Nur', '2020-06-09', 'lab 3', 'kurang bersih', 'harus rajin dibersihkan'),
(3, 'Krauser', '2020-06-09', 'Lab 2', 'alat ada yang tidak lengkap', 'sebaiknya melakukan pengecekan ulang');

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
(2, 'maestro cahaya', 80000000, 'beasiswa pendidikan'),
(8, 'ganesha', 57000000, 'beasiswa pendidikan'),
(9, 'astra', 20000000, 'infrastruktur');

-- --------------------------------------------------------

--
-- Table structure for table `master_bahan`
--

CREATE TABLE `master_bahan` (
  `id` int(11) NOT NULL,
  `kode` varchar(4) DEFAULT NULL,
  `jenis_bahan` varchar(10) DEFAULT NULL,
  `nama_bahan` varchar(100) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_bahan`
--

INSERT INTO `master_bahan` (`id`, `kode`, `jenis_bahan`, `nama_bahan`, `tahun`, `pengarang`) VALUES
(1, 'BK01', 'Buku', 'Lean UX', 2010, 'Josh gothel'),
(2, 'MK02', 'Mikroskop ', 'Mikroskop Besar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_instansi`
--

CREATE TABLE `master_instansi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `kementerian` varchar(255) DEFAULT NULL,
  `tahun_ajaran` varchar(255) DEFAULT NULL,
  `nama_fakultas` varchar(255) DEFAULT NULL,
  `nama_dekan` varchar(255) DEFAULT NULL,
  `alamat_fakultas` varchar(255) DEFAULT NULL,
  `telepon_fakultas` varchar(255) DEFAULT NULL,
  `nama_jurusan` varchar(255) DEFAULT NULL,
  `nama_kajur` varchar(255) DEFAULT NULL,
  `nama_kalab` varchar(255) DEFAULT NULL,
  `telepon_jurusan` varchar(255) DEFAULT NULL,
  `alamat_jurusan` varchar(255) DEFAULT NULL,
  `deskripsi_jurusan` varchar(255) DEFAULT NULL,
  `peta_jurusan` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `zona_waktu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_instansi`
--

INSERT INTO `master_instansi` (`id`, `nama`, `alamat`, `kode`, `provinsi`, `email`, `website`, `logo`, `telepon`, `kementerian`, `tahun_ajaran`, `nama_fakultas`, `nama_dekan`, `alamat_fakultas`, `telepon_fakultas`, `nama_jurusan`, `nama_kajur`, `nama_kalab`, `telepon_jurusan`, `alamat_jurusan`, `deskripsi_jurusan`, `peta_jurusan`, `favicon`, `zona_waktu`) VALUES
(1, 'Universitas Negeri Semarang', 'Kampus Sekaran, Gunungpati, Semarang', '', '', '', '', 'files/2020/03/ebcff3bcfaf285d80bf3e5144993191d.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `master_level`
--

CREATE TABLE `master_level` (
  `id` int(11) NOT NULL,
  `level` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_level`
--

INSERT INTO `master_level` (`id`, `level`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'Kepala Lab'),
(4, 'Koordinator Lab'),
(5, 'Laboran'),
(6, 'Asisten Lab'),
(7, 'Dosen'),
(8, 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `master_mata_kuliah`
--

CREATE TABLE `master_mata_kuliah` (
  `id` int(11) NOT NULL,
  `nama_mk` char(225) NOT NULL,
  `jml_sks` int(10) NOT NULL,
  `keterangan` char(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_mata_kuliah`
--

INSERT INTO `master_mata_kuliah` (`id`, `nama_mk`, `jml_sks`, `keterangan`) VALUES
(1, 'RPL', 3, 'Rekayasa Perangkat Lunak'),
(2, 'Basis Data', 4, 'basis data'),
(3, 'Sistem Operasi', 3, 'sistem operasi');

-- --------------------------------------------------------

--
-- Table structure for table `master_nama_alat`
--

CREATE TABLE `master_nama_alat` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `nama_alat` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_nama_alat`
--

INSERT INTO `master_nama_alat` (`id`, `kode`, `nama_alat`, `keterangan`) VALUES
(1, 'MK01', 'Mikroskop', 'lihat'),
(2, 'MK02', 'Mikroskop Besar', 'Mikroskop Besar'),
(3, 'MK09', 'kaca pembesar', 'warna hitam, kecil');

-- --------------------------------------------------------

--
-- Table structure for table `master_satuan`
--

CREATE TABLE `master_satuan` (
  `id` int(11) NOT NULL,
  `nama_satuan` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_satuan`
--

INSERT INTO `master_satuan` (`id`, `nama_satuan`, `keterangan`) VALUES
(1, 'pieces', 'hahaa'),
(2, 'Ya', 'Kann'),
(3, 'lala', 'lili'),
(4, 'ahaa', 'ahahahah');

-- --------------------------------------------------------

--
-- Table structure for table `master_user`
--

CREATE TABLE `master_user` (
  `id` int(11) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_user`
--

INSERT INTO `master_user` (`id`, `nip`, `level`) VALUES
(2, 'jihan', '1');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id` int(11) NOT NULL,
  `mata_kuliah` varchar(225) NOT NULL,
  `nama_modul` varchar(225) NOT NULL,
  `file_modul` varchar(225) NOT NULL,
  `deskripsi_modul` text NOT NULL,
  `dosen_pengarang` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id`, `mata_kuliah`, `nama_modul`, `file_modul`, `deskripsi_modul`, `dosen_pengarang`, `status`) VALUES
(1, 'rpl', 'rpl1', 'kepo bet', 'baik', 'pak kholiq', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_alat`
--

CREATE TABLE `peminjaman_alat` (
  `id` int(11) NOT NULL,
  `nama_alat` varchar(225) NOT NULL,
  `nama_peminjam` varchar(225) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `satuan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman_alat`
--

INSERT INTO `peminjaman_alat` (`id`, `nama_alat`, `nama_peminjam`, `tanggal_pinjam`, `satuan`) VALUES
(1, 'Keyboard', 'Ryanis', '2020-06-01', 2),
(123, 'Mouse', 'Ulfa', '2020-06-01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_bahan`
--

CREATE TABLE `peminjaman_bahan` (
  `id` int(11) NOT NULL,
  `nama_bahan` varchar(255) NOT NULL,
  `nama_peminjam` varchar(255) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `satuan` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman_bahan`
--

INSERT INTO `peminjaman_bahan` (`id`, `nama_bahan`, `nama_peminjam`, `tanggal_pinjam`, `satuan`) VALUES
(122, 'router', 'Dalil', '2020-06-03', 6),
(123, 'Skripsi Sistem Informasi', 'Lilaa', '2020-06-03', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_alat`
--

CREATE TABLE `pengajuan_alat` (
  `id` int(11) NOT NULL,
  `nama_alat` varchar(225) NOT NULL,
  `seri_alat` varchar(225) NOT NULL,
  `merk_alat` varchar(225) NOT NULL,
  `jumlah_grosir` varchar(225) NOT NULL,
  `satuan_grosir` varchar(225) NOT NULL,
  `harga_grosir` varchar(225) NOT NULL,
  `estimasi_jumlah_alat` varchar(225) NOT NULL,
  `harga_dasar_alat` varchar(225) NOT NULL,
  `jenis_alat` varchar(225) NOT NULL,
  `tahun_alat` year(4) NOT NULL,
  `nama_lab` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan_alat`
--

INSERT INTO `pengajuan_alat` (`id`, `nama_alat`, `seri_alat`, `merk_alat`, `jumlah_grosir`, `satuan_grosir`, `harga_grosir`, `estimasi_jumlah_alat`, `harga_dasar_alat`, `jenis_alat`, `tahun_alat`, `nama_lab`, `keterangan`) VALUES
(1, 'AR', '', '', '', '', '', '', '', 'yaitu', 2020, '', 'baik kayaknya'),
(2, 'e', '', '', '', '', '', '', '', '', 0000, '', ''),
(12, 'qww', 'ee', '', 'ccc', '', 'cccccvgf', 'gryh', 'btyh', 'gttg', 0000, 'gtb', 'btt');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_bahan`
--

CREATE TABLE `pengajuan_bahan` (
  `id` int(11) NOT NULL,
  `nama_bahan` varchar(225) NOT NULL,
  `seri_bahan` varchar(225) NOT NULL,
  `merk_bahan` varchar(225) NOT NULL,
  `jumlah_grosir` varchar(225) NOT NULL,
  `satuan_grosir` varchar(225) NOT NULL,
  `harga_grosir` varchar(225) NOT NULL,
  `estimasi_jumlah_bahan` varchar(225) NOT NULL,
  `harga_dasar_bahan` varchar(225) NOT NULL,
  `jenis_bahan` varchar(225) NOT NULL,
  `tahun_bahan` varchar(4) NOT NULL,
  `nama_lab` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan_bahan`
--

INSERT INTO `pengajuan_bahan` (`id`, `nama_bahan`, `seri_bahan`, `merk_bahan`, `jumlah_grosir`, `satuan_grosir`, `harga_grosir`, `estimasi_jumlah_bahan`, `harga_dasar_bahan`, `jenis_bahan`, `tahun_bahan`, `nama_lab`, `keterangan`) VALUES
(1, 'kabel', '', '', '', '', '', '', '', 'kabel aja dulu', '2020', '', 'baik'),
(112, 'www', 'ddd', 'fff', 'c12', 'ddf', 'ee', 'errr', 'sss', 'rrr', '4444', 'ttt', 'hhh'),
(113, 'wtttt', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `periode_pengajuan`
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
-- Dumping data for table `periode_pengajuan`
--

INSERT INTO `periode_pengajuan` (`id`, `id_pengajuan`, `semester`, `bulan`, `tahun_pengajuan`, `sumber_pendanaan`, `tanggal_pendanaan_turun`, `pajak`) VALUES
(1, '12w', '2', '12', 0000, 'aku', '2020-06-09', '12'),
(2, '12w', '2', '12', 0000, 'qwer', '2020-06-02', '12'),
(3, 'eeee', 'ddd', 'juni', 0000, 'eee', '0000-00-00', 'ee');

-- --------------------------------------------------------

--
-- Table structure for table `skripsi`
--

CREATE TABLE `skripsi` (
  `id` int(11) NOT NULL,
  `judul_skripsi` varchar(255) NOT NULL,
  `nama_penulis` varchar(255) NOT NULL,
  `dosen_pembimbing1` varchar(255) NOT NULL,
  `dosen_pembimbing2` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `file_abstrak` varchar(255) NOT NULL,
  `lembar_pengesahan` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `kartu_dp1` varchar(255) NOT NULL,
  `kartu_dp2` varchar(255) NOT NULL,
  `tahun_skripsi` varchar(255) NOT NULL,
  `status_skripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skripsi`
--

INSERT INTO `skripsi` (`id`, `judul_skripsi`, `nama_penulis`, `dosen_pembimbing1`, `dosen_pembimbing2`, `gambar`, `file_abstrak`, `lembar_pengesahan`, `cover`, `kartu_dp1`, `kartu_dp2`, `tahun_skripsi`, `status_skripsi`) VALUES
(1, 'Pengembangan Sistem Informasi', 'Lila', 'Pak Kholiq', '-', '-', '-', '-', '-', '-', '-', '2012', 'Mantap');

-- --------------------------------------------------------

--
-- Table structure for table `tipe_lab`
--

CREATE TABLE `tipe_lab` (
  `id` int(11) NOT NULL,
  `kode` varchar(225) NOT NULL,
  `nama_tipe_lab` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipe_lab`
--

INSERT INTO `tipe_lab` (`id`, `kode`, `nama_tipe_lab`, `keterangan`) VALUES
(1, 'ipa1', 'ipa', 'baik'),
(2, 'ilkom1', 'ilkom', 'baik');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_mata_kuliah`
--
CREATE TABLE `v_mata_kuliah` (
`id` int(11)
,`nama_mk` char(225)
,`jml_sks` int(10)
,`keterangan` char(225)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pendanaan`
--
CREATE TABLE `v_pendanaan` (
);

-- --------------------------------------------------------

--
-- Structure for view `v_mata_kuliah`
--
DROP TABLE IF EXISTS `v_mata_kuliah`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mata_kuliah`  AS  select `master_mata_kuliah`.`id` AS `id`,`master_mata_kuliah`.`nama_mk` AS `nama_mk`,`master_mata_kuliah`.`jml_sks` AS `jml_sks`,`master_mata_kuliah`.`keterangan` AS `keterangan` from `master_mata_kuliah` ;

-- --------------------------------------------------------

--
-- Structure for view `v_pendanaan`
--
DROP TABLE IF EXISTS `v_pendanaan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pendanaan`  AS  select `master_pendanaan`.`id` AS `id`,`master_pendanaan`.`sumber_pendanaan` AS `sumber_pendanaan`,`master_pendanaan`.`jumlah` AS `jumlah`,`master_pendanaan`.`keterangan` AS `keterangan` from `master_pendanaan` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_lab`
--
ALTER TABLE `anggota_lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cek_status_peminjaman`
--
ALTER TABLE `cek_status_peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_peminjaman` (`id_peminjaman`);

--
-- Indexes for table `cms_captcha`
--
ALTER TABLE `cms_captcha`
  ADD PRIMARY KEY (`captcha_id`) USING BTREE,
  ADD KEY `word` (`word`) USING BTREE;

--
-- Indexes for table `cms_log`
--
ALTER TABLE `cms_log`
  ADD PRIMARY KEY (`id_log`) USING BTREE;

--
-- Indexes for table `cms_menu`
--
ALTER TABLE `cms_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  ADD PRIMARY KEY (`id_grup_menu`) USING BTREE;

--
-- Indexes for table `cms_online`
--
ALTER TABLE `cms_online`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- Indexes for table `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelola_user`
--
ALTER TABLE `kelola_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_kritik_saran`
--
ALTER TABLE `lab_kritik_saran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_pendanaan`
--
ALTER TABLE `lab_pendanaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_bahan`
--
ALTER TABLE `master_bahan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_instansi`
--
ALTER TABLE `master_instansi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_level`
--
ALTER TABLE `master_level`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_mata_kuliah`
--
ALTER TABLE `master_mata_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_satuan`
--
ALTER TABLE `master_satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman_alat`
--
ALTER TABLE `peminjaman_alat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman_bahan`
--
ALTER TABLE `peminjaman_bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajuan_alat`
--
ALTER TABLE `pengajuan_alat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajuan_bahan`
--
ALTER TABLE `pengajuan_bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periode_pengajuan`
--
ALTER TABLE `periode_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipe_lab`
--
ALTER TABLE `tipe_lab`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota_lab`
--
ALTER TABLE `anggota_lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cek_status_peminjaman`
--
ALTER TABLE `cek_status_peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_captcha`
--
ALTER TABLE `cms_captcha`
  MODIFY `captcha_id` bigint(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3468;
--
-- AUTO_INCREMENT for table `cms_log`
--
ALTER TABLE `cms_log`
  MODIFY `id_log` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;
--
-- AUTO_INCREMENT for table `cms_menu`
--
ALTER TABLE `cms_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  MODIFY `id_grup_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kelola_user`
--
ALTER TABLE `kelola_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lab_kritik_saran`
--
ALTER TABLE `lab_kritik_saran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lab_pendanaan`
--
ALTER TABLE `lab_pendanaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `master_bahan`
--
ALTER TABLE `master_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `master_instansi`
--
ALTER TABLE `master_instansi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `master_level`
--
ALTER TABLE `master_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `master_mata_kuliah`
--
ALTER TABLE `master_mata_kuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `master_satuan`
--
ALTER TABLE `master_satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `master_user`
--
ALTER TABLE `master_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `peminjaman_alat`
--
ALTER TABLE `peminjaman_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `peminjaman_bahan`
--
ALTER TABLE `peminjaman_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `pengajuan_alat`
--
ALTER TABLE `pengajuan_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pengajuan_bahan`
--
ALTER TABLE `pengajuan_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `periode_pengajuan`
--
ALTER TABLE `periode_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `skripsi`
--
ALTER TABLE `skripsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tipe_lab`
--
ALTER TABLE `tipe_lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
