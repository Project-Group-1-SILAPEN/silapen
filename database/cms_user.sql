-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2020 at 05:25 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

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
(1, 'Kholiq', NULL, 'kholiq', '*F1378C253EEBE31F135CC41EF4A98D077EB98F5D', 1, 1, NULL, NULL, '2020-06-25 19:50:39'),
(2, 'Admin', 'files/2016/10/197f1fe92d49367824b4ec55d06af614.jpg', 'Admin', '*D89A99106002D77C1D327FC41E005919505638B0', 2, 1, '-', '-', '2020-06-03 10:16:42'),
(3, 'P\'Sarawat', 'file/kepala lab.jpeg', 'Kepalalab', '*AAAA223F3F5B26DD135F136F56D3DE48979C622E', 3, 1, '089 884 189 22', 'Jl. Shima No.6 Pengkol, Jepara', '2020-06-10 21:07:26'),
(4, 'Aris Wibisono', 'file/koorlab.jpg', 'koordinatorlab', '*DC12E5F6E58C1DF756A27B061BD124A3FE900B74', 4, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2020-06-14 17:46:50'),
(5, 'Gupi Ul Haq', 'file/level 5.jpg', 'laboran', '*5F9D604D1358B35776BD7ECEFE96829E6F3A2F3B', 5, 1, '0291595628', 'Jl. Citrosoma RT.017/006, Senenan, Jepara', '2020-06-12 13:27:58'),
(6, 'Asisten Lab', 'files/2016/10/5d1a93bc69ca0cbc6777f940955285ba.png', 'asistenlab', '*97B0E8E691B7849A4A1FE5CC0B2C510A5CEF3A9E', 6, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2020-06-03 10:16:42'),
(7, 'Dosen', 'files/2016/10/6f8c1070cf71eaca2fa5c544f6fb2bfa.png', 'dosen', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 7, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-03-02 11:12:52'),
(8, 'Mahasiswa', 'files/2016/10/e511c2db7c393226effc9f303cf2a674.png', 'mahasiswa', '*3D98533F5EC0664D86B1F8E1CCC2F7C91B5C856D', 8, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-02-24 11:47:36'),
(12, 'Bittaqwa', 'files/2017/01/850a0830a9fb703e55f1ef318d2195df.jpg', 'bittaqwa', '*2900EA52D759AACA10038BA767FDDA68A9F7853A', 6, 1, '', '', '2017-03-01 10:11:37'),
(13, 'coba', 'files/2017/04/f6b70ba5e4de413f8832472bef538c0d.JPG', 'coba', '*FD64E348EC9DCCE6525B358693A9CFDC733F5184', 3, 1, 'qq', 'qq', '2017-04-25 09:27:29'),
(14, 'ryanis', NULL, 'ryanis', '*8A8CAC56B56B070F576EADA83B9551B74171B9AE', 1, 1, NULL, NULL, '2020-06-03 13:10:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
