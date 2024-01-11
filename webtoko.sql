-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2020 at 10:35 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtoko`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `keywords` text,
  `status_berita` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `judul_gambar` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id_gambar`, `id_produk`, `judul_gambar`, `gambar`, `tanggal_update`) VALUES
(1, 13, 'gambar depan', 'Open_Web.jpeg', '2019-08-22 12:05:23'),
(2, 13, 'gambar belakang', 'IMG_20160216_161750.jpg', '2019-08-22 12:06:21'),
(3, 17, 'apael', 'apel1.jpg', '2020-02-01 06:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `header_transaksi`
--

CREATE TABLE `header_transaksi` (
  `id_header_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `jumlah_transaksi` int(11) NOT NULL,
  `status_bayar` varchar(20) NOT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  `rekening_pembayaran` varchar(255) DEFAULT NULL,
  `rekening_pelanggan` varchar(255) DEFAULT NULL,
  `bukti_bayar` varchar(255) DEFAULT NULL,
  `id_rekening` int(11) DEFAULT NULL,
  `tanggal_bayar` varchar(255) DEFAULT NULL,
  `nama_bank` varchar(255) DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `header_transaksi`
--

INSERT INTO `header_transaksi` (`id_header_transaksi`, `id_user`, `id_pelanggan`, `nama_pelanggan`, `email`, `telepon`, `alamat`, `kode_transaksi`, `tanggal_transaksi`, `jumlah_transaksi`, `status_bayar`, `jumlah_bayar`, `rekening_pembayaran`, `rekening_pelanggan`, `bukti_bayar`, `id_rekening`, `tanggal_bayar`, `nama_bank`, `tanggal_post`, `tanggal_update`) VALUES
(4, 0, 5, 'Fahri12312', 'fahrin12312@gmail.com', '081212722538', 'kp.serab', '05092019SIGQ8H4L', '2019-09-05 00:00:00', 14000, 'Belum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-05 13:13:16', '2019-09-05 11:13:16'),
(5, 0, 5, 'Fahri12312', 'fahrin12312@gmail.com', '081212722538', 'kp.serab', '05092019K3EXDMBJ', '2019-09-05 00:00:00', 14000, 'Belum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-05 13:14:27', '2019-09-05 11:14:27'),
(6, 0, 5, 'Fahri12312', 'fahrin12312@gmail.com', '081212722538', 'kp.serab', '05092019AA80TS61', '2019-09-05 00:00:00', 14000, 'Konfirmasi', 14000, '821382137417', 'Fahri', NULL, 2, '15-09-2019', 'BANK BCA', '2019-09-05 13:17:58', '2019-09-15 05:59:29'),
(7, 0, 5, 'Fahri12312', 'fahrin12312@gmail.com', '081212722538', 'kp.serab', '14092019DM3AW6KN', '2019-09-14 00:00:00', 13500, 'Konfirmasi', 13500, '089838374122', 'Fahri', 'Open_Web1.jpeg', 1, '15-09-2019', 'BANK BCA', '2019-09-14 01:00:09', '2019-09-15 05:12:32'),
(8, 0, 5, 'Fahri', 'fahrin12312@gmail.com', '081398333342', 'kp.serab', '15092019RCXO1VDK', '2019-09-15 00:00:00', 28000, 'Konfirmasi', 28000, '821382137417', 'fachri', 'apel.jpg', 2, '15-09-2019', 'BANK BCA', '2019-09-15 07:17:59', '2019-10-14 04:05:06'),
(9, 0, 5, 'Fahri', 'fahrin12312@gmail.com', '081398333342', 'kp.serab', '170920197CMCG4KT', '2019-09-17 00:00:00', 14000, 'Belum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-17 07:14:30', '2019-09-17 05:14:30'),
(10, 0, 5, 'Fahri Nurrahman', 'fahrin12312@gmail.com', '081398333342', 'kp.serab', '020120206VNR02VL', '2020-01-02 00:00:00', 700000, 'Menunggu Konfirmasi', 700000, '1093913901930', 'nurrahman', 'apel4.jpg', 1, '17-03-2020', 'BANK BCA', '2020-01-02 07:40:07', '2020-03-17 01:15:40'),
(11, 0, 5, 'Fahri Nurrahman', 'fahrin12312@gmail.com', '081398333342', 'kp.serab', '05012020NO6IQDOP', '2020-01-05 00:00:00', 1400000, 'Menunggu Konfirmasi ', 1400000, '1093913901930', 'UJANG', 'apel3.jpg', 1, '17-03-2020', 'BANK BCA', '2020-01-05 04:13:21', '2020-03-17 01:14:27'),
(12, 0, 8, 'nurrahman', 'nurrahman@gmail.com', '081212722538', 'jl kp serab rt 05 rw 05 n0 6', '05012020HLQPIBPW', '2020-01-05 00:00:00', 800000, 'Konfirmasi', 800000, '1093913901930', 'nurrahman', 'Contoh_Tabel_Kriptografi_dengan_Algoritma_Vigenere_Cipher.JPG', 1, '05-01-2020', 'BANK BCA', '2020-01-05 04:17:46', '2020-01-05 03:20:12'),
(13, 0, 5, 'Fahri Nurrahman', 'fahrin12312@gmail.com', '081398333342', 'kp.serab', '14012020ZEVWFCNJ', '2020-01-14 00:00:00', 800000, 'Menunggu Konfirmasi ', 800000, '1093913901930', 'UJANG', 'apel2.jpg', 1, '17-03-2020', 'BANK BTN', '2020-01-14 04:47:40', '2020-03-17 01:13:30'),
(14, 0, 5, 'Fahri Nurrahman', 'fahrin12312@gmail.com', '081398333342', 'kp.serab', '19022020KYHXKA9F', '2020-02-19 00:00:00', 800000, 'Konfirmasi', 800000, '09310829891289 ', 'nurrahman', 'images.png', 2, '21-02-2020', 'BANK BCA', '2020-02-19 03:05:20', '2020-02-21 03:53:51'),
(15, 0, 5, 'Fahri Nurrahman', 'fahrin12312@gmail.com', '081398333342', 'kp.serab', '17032020GI5RT6QM', '2020-03-17 00:00:00', 800000, 'Belum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-17 02:31:19', '2020-03-17 01:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `slug_kategori`, `nama_kategori`, `urutan`, `tanggal_update`) VALUES
(7, 'aki-gs', 'AKI GS', 4, '2020-01-05 03:06:47'),
(8, 'delkor', 'DELKOR', 2, '2020-01-02 04:16:56'),
(9, 'incoe', 'INCOE', 5, '2020-01-02 04:28:41'),
(10, 'motobat', 'MOTOBAT', 6, '2020-03-17 02:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `namaweb` varchar(255) NOT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `keywords` text,
  `metatext` text,
  `telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `rekening_pembayaran` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `namaweb`, `tagline`, `email`, `website`, `keywords`, `metatext`, `telepon`, `alamat`, `facebook`, `instagram`, `deskripsi`, `logo`, `icon`, `rekening_pembayaran`, `tanggal_update`) VALUES
(1, 'Toko Aki Sejahtera ', 'Spesialis aki', 'fahrin12312@gmail.com', 'https://webtoko.com', 'WEBTOKO', '12345', '081212722538', 'Perumahan qoryatussalamsani - Kota Depok, Jawa Barat', 'https://facebook.com', 'https://instagram.com', 'MAJU AKI ONLINE', 'animaso4.png', 'AKIN2.jpg', 'OK', '2020-03-05 16:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_pelanggan` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `tanggal_daftar` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `id_user`, `status_pelanggan`, `nama_pelanggan`, `email`, `password`, `telepon`, `alamat`, `tanggal_daftar`, `tanggal_update`) VALUES
(5, 0, 'Pending', 'Fahri Nurrahman', 'fahrin12312@gmail.com', '6577eaf48f43f19595899d8c0a016dbda8147298', '081398333342', 'kp.serab', '2019-09-05 13:05:55', '2019-11-12 07:19:05'),
(6, 0, 'Pending', 'hendra', 'hendra@getnada.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '019041901', 'jakart', '2019-09-22 09:53:29', '2019-09-22 07:53:29'),
(7, 0, 'Pending', 'ucup', 'ucup123@gmail.com', '6577eaf48f43f19595899d8c0a016dbda8147298', '081212722538', '', '2019-11-12 08:21:59', '2019-11-12 07:21:59'),
(8, 0, 'Pending', 'nurrahman', 'nurrahman@gmail.com', '6577eaf48f43f19595899d8c0a016dbda8147298', '081212722538', 'jl kp serab rt 05 rw 05 n0 6', '2020-01-05 04:16:47', '2020-01-05 03:16:47'),
(9, 0, 'Pending', 'adsjdhakj', 'fagsahas@gmail.com', '831ac9f096134d8f841b63bb5e80bdaac975979f', 'adasd', '', '2020-02-01 12:28:52', '2020-02-01 11:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `slug_produk` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `keywords` text,
  `harga` int(11) NOT NULL,
  `stok` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `berat` float DEFAULT NULL,
  `ukuran` varchar(255) DEFAULT NULL,
  `status_produk` varchar(20) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_user`, `id_kategori`, `kode_produk`, `nama_produk`, `slug_produk`, `keterangan`, `keywords`, `harga`, `stok`, `gambar`, `berat`, `ukuran`, `status_produk`, `tanggal_post`, `tanggal_update`) VALUES
(15, 11, 7, 'AKIMFNS40', 'GS ns40 MF', 'gs-ns40-mf-akimfns40', '<p>untuk mobil&nbsp;CARRY SERIES 1976-2000, FUTURA 1990, KATANA, REAL VAN, L-300 SERIES 1981-2004, MAVEN, OUTLANDER, T-120SS OLD 1972-1980, AVANZA (E/G/S) 2003 - 2009, ETIOS VALCO, RUSH (G/S) 2006-2010, STARLET SERIES 1996-1999, TERIOS (TS/TX) 2006-2009, XENIA (MI/LI/XI) 2003 - 2009, ESPASS</p>\r\n', 'NS40 MF', 900000, 10, 'NS40_Maintenance.png', 1000, '30x60x60', 'Publish', '2020-01-02 05:10:43', '2020-01-02 04:12:12'),
(16, 11, 8, 'AKIDELKORNS40ZLMF', 'Delkor NS40 ZL MF', 'delkor-ns40-zl-mf-akidelkorns40zlmf', '<p>UNTUK MOBIL&nbsp;CARRY SERIES 1976-2000, FUTURA 1990, KATANA, REAL VAN, L-300 SERIES 1981-2004, MAVEN, OUTLANDER, T-120SS OLD 1972-1980, AVANZA (E/G/S) 2003 - 2009, ETIOS VALCO, RUSH (G/S) 2006-2010, STARLET SERIES 1996-1999, TERIOS (TS/TX) 2006-2009, XENIA (MI/LI/XI) 2003 - 2009, ESPASS</p>\r\n', 'DELKORNS40ZLMF', 800000, 10, 'delkor_delkor-ns40zl-maintenance-aki-mobil--12-v--35-ah-_full03.jpg', 1000, '30x60x60', 'Publish', '2020-01-02 05:21:59', '2020-01-02 04:21:59'),
(17, 11, 9, 'AKIINCOENS40', 'INCOE NS40 ', 'incoe-ns40-akiincoens40', '<p>UNTUK MOBIL&nbsp;CARRY SERIES 1976-2000, FUTURA 1990, KATANA, REAL VAN, L-300 SERIES 1981-2004, MAVEN, OUTLANDER, T-120SS OLD 1972-1980, AVANZA (E/G/S) 2003 - 2009, ETIOS VALCO, RUSH (G/S) 2006-2010, STARLET SERIES 1996-1999, TERIOS (TS/TX) 2006-2009, XENIA (MI/LI/XI) 2003 - 2009, ESPASS</p>\r\n', 'INCOENS40', 700000, 10, 'incoe_incoe-ns40--aki-mobil--ingo-ns40-_full02.jpg', 1000, '30x60x60', 'Publish', '2020-01-02 05:30:47', '2020-01-02 04:30:47'),
(18, 11, 10, 'MOTOBATTMBYZ16', 'MOTOBATT MBYZ16', 'motobatt-mbyz16-motobattmbyz16', '<p>AKI motor untuk kendaran sepeda motor honda beat, vario, yamaha Mio dll</p>\r\n', 'MOTOBATTMBYZ16', 150000, NULL, 'motobatt.jpg', 500, '10X10X10', 'Publish', '2020-03-05 16:20:19', '2020-03-05 15:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(255) NOT NULL,
  `nomor_rekening` varchar(20) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `nama_bank`, `nomor_rekening`, `nama_pemilik`, `gambar`, `tanggal_post`) VALUES
(1, 'BANK BCA', '421212232', 'Fahri', NULL, '2019-09-14 11:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `id_pelanggan`, `kode_transaksi`, `id_produk`, `harga`, `jumlah`, `total_harga`, `tanggal_transaksi`, `tanggal_update`) VALUES
(1, 0, 2, '05092019LNQBUKFG', 11, 6500, 1, 6500, '2019-09-05 00:00:00', '2019-09-05 03:11:57'),
(2, 0, 2, '05092019LNQBUKFG', 10, 7500, 1, 7500, '2019-09-05 00:00:00', '2019-09-05 03:11:57'),
(3, 0, 2, '05092019EYOCVUGW', 10, 7500, 1, 7500, '2019-09-05 00:00:00', '2019-09-05 03:22:55'),
(4, 0, 2, '05092019EYOCVUGW', 11, 6500, 1, 6500, '2019-09-05 00:00:00', '2019-09-05 03:22:55'),
(5, 0, 4, '050920191X8LFCNA', 13, 7000, 1, 7000, '2019-09-05 00:00:00', '2019-09-05 10:45:59'),
(6, 0, 4, '050920191X8LFCNA', 12, 7000, 2, 14000, '2019-09-05 00:00:00', '2019-09-05 10:45:59'),
(7, 0, 5, '05092019SIGQ8H4L', 10, 7500, 1, 7500, '2019-09-05 00:00:00', '2019-09-05 11:13:16'),
(8, 0, 5, '05092019SIGQ8H4L', 11, 6500, 1, 6500, '2019-09-05 00:00:00', '2019-09-05 11:13:16'),
(9, 0, 5, '05092019K3EXDMBJ', 11, 6500, 1, 6500, '2019-09-05 00:00:00', '2019-09-05 11:14:27'),
(10, 0, 5, '05092019K3EXDMBJ', 10, 7500, 1, 7500, '2019-09-05 00:00:00', '2019-09-05 11:14:27'),
(11, 0, 5, '05092019AA80TS61', 10, 7500, 1, 7500, '2019-09-05 00:00:00', '2019-09-05 11:17:58'),
(12, 0, 5, '05092019AA80TS61', 11, 6500, 1, 6500, '2019-09-05 00:00:00', '2019-09-05 11:17:58'),
(13, 0, 5, '14092019DM3AW6KN', 13, 7000, 1, 7000, '2019-09-14 00:00:00', '2019-09-13 23:00:09'),
(14, 0, 5, '14092019DM3AW6KN', 11, 6500, 1, 6500, '2019-09-14 00:00:00', '2019-09-13 23:00:10'),
(15, 0, 5, '15092019RCXO1VDK', 11, 6500, 1, 6500, '2019-09-15 00:00:00', '2019-09-15 05:17:59'),
(16, 0, 5, '15092019RCXO1VDK', 10, 7500, 1, 7500, '2019-09-15 00:00:00', '2019-09-15 05:17:59'),
(17, 0, 5, '15092019RCXO1VDK', 12, 7000, 1, 7000, '2019-09-15 00:00:00', '2019-09-15 05:17:59'),
(18, 0, 5, '15092019RCXO1VDK', 13, 7000, 1, 7000, '2019-09-15 00:00:00', '2019-09-15 05:17:59'),
(19, 0, 5, '170920197CMCG4KT', 11, 6500, 1, 6500, '2019-09-17 00:00:00', '2019-09-17 05:14:30'),
(20, 0, 5, '170920197CMCG4KT', 10, 7500, 1, 7500, '2019-09-17 00:00:00', '2019-09-17 05:14:30'),
(21, 0, 6, '220920190BVZPW4Y', 12, 7000, 2, 14000, '2019-09-22 00:00:00', '2019-09-22 07:55:19'),
(22, 0, 6, '220920190BVZPW4Y', 11, 6500, 2, 13000, '2019-09-22 00:00:00', '2019-09-22 07:55:19'),
(23, 0, 6, '220920190BVZPW4Y', 13, 7000, 1, 7000, '2019-09-22 00:00:00', '2019-09-22 07:55:19'),
(24, 0, 5, '020120206VNR02VL', 17, 700000, 1, 700000, '2020-01-02 00:00:00', '2020-01-02 06:40:07'),
(25, 0, 5, '05012020NO6IQDOP', 17, 700000, 2, 1400000, '2020-01-05 00:00:00', '2020-01-05 03:13:21'),
(26, 0, 8, '05012020HLQPIBPW', 16, 800000, 1, 800000, '2020-01-05 00:00:00', '2020-01-05 03:17:46'),
(27, 0, 5, '14012020ZEVWFCNJ', 16, 800000, 1, 800000, '2020-01-14 00:00:00', '2020-01-14 03:47:40'),
(28, 0, 5, '19022020KYHXKA9F', 16, 800000, 1, 800000, '2020-02-19 00:00:00', '2020-02-19 02:05:20'),
(29, 0, 5, '17032020GI5RT6QM', 16, 800000, 1, 800000, '2020-03-17 00:00:00', '2020-03-17 01:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `tanggal_update`) VALUES
(8, 'fahri321', 'fahrin12312@gmail.com', 'fahri123', '6577eaf48f43f19595899d8c0a016dbda8147298', 'Admin', '2019-07-22 14:40:24'),
(10, 'daviz', 'daviz12312@gmail.com', 'davizh', '6577eaf48f43f19595899d8c0a016dbda8147298', 'Admin', '2019-08-05 06:38:56'),
(11, 'Fahri Nurrahman', 'fahrin12312@gmail.com', 'fahri12312', '6577eaf48f43f19595899d8c0a016dbda8147298', 'Admin', '2019-08-09 01:14:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  ADD PRIMARY KEY (`id_header_transaksi`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `kode_produk` (`kode_produk`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`),
  ADD UNIQUE KEY `nomer_rekening` (`nomor_rekening`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  MODIFY `id_header_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
