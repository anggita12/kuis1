-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2020 at 06:26 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `nis` varchar(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jk` varchar(2) DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`nis`, `nama`, `jk`, `ttl`, `kelas`, `image`) VALUES
('20201811', 'Yahya Kurnia', 'L', '2004-06-24', 'X A', ''),
('20201812', 'Laela Rumi', 'P', '2004-01-21', 'X B', '2-123120180902.jpg'),
('20201911', 'Deni S', 'L', '2004-05-04', 'X A', ''),
('20201921', 'Iriana Dewi', 'P', '2002-02-28', 'XI A', '10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `kode_buku` varchar(5) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `klasifikasi` varchar(25) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul`, `pengarang`, `klasifikasi`, `image`) VALUES
('20L01', 'Lahirnya Putra', 'Abraham', '<p>Fiksi</p>', ''),
('KMJ11', 'Kerja Sama Tanpa Tapi', 'Hairul Akbar', '<p>Kerja Sama</p>', 'ID_EMK2017MTH07KPIN_B.jpg'),
('RTR1A', 'Mimpi Siang', 'Yanu F', '<p>Novel</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE IF NOT EXISTS `pengembalian` (
  `id_transaksi` varchar(12) DEFAULT NULL,
  `tgl_pengembalian` date DEFAULT NULL,
  `denda` varchar(2) DEFAULT NULL,
  `nominal` double DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_transaksi`, `tgl_pengembalian`, `denda`, `nominal`, `id_petugas`) VALUES
('20201012001', '2020-10-12', 'Y', 5000, NULL),
('20201012001', '2020-10-12', 'Y', 5000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE IF NOT EXISTS `petugas` (
`id_petugas` int(11) NOT NULL,
  `user` varchar(45) DEFAULT NULL,
  `password` text
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `user`, `password`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(5, 'sukma', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tmp`
--

CREATE TABLE IF NOT EXISTS `tmp` (
  `kode_buku` varchar(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` varchar(12) DEFAULT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `kode_buku` varchar(5) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nis`, `kode_buku`, `tanggal_pinjam`, `tanggal_kembali`, `status`, `id_petugas`) VALUES
('20201012001', '20201811', 'KMJ11', '2020-10-01', '2020-10-08', 'Y', NULL),
('20201012002', '20201812', '20L01', '2020-10-04', '2020-10-11', 'N', NULL),
('20201012003', '20201911', 'RTR1A', '2020-10-12', '2020-10-19', 'N', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
 ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
 ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
 ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
