-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2021 at 04:01 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_order_servis`
--

CREATE TABLE `detail_order_servis` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `harga_jasa` int(11) NOT NULL,
  `biaya_admin` int(11) NOT NULL,
  `id_mitra` int(11) NOT NULL,
  `bukti_tf` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_order_servis`
--

INSERT INTO `detail_order_servis` (`id`, `id_order`, `harga_jasa`, `biaya_admin`, `id_mitra`, `bukti_tf`) VALUES
(5, 4, 20000, 2000, 6, 'pexels-snapwire-730896.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `keahlian`
--

CREATE TABLE `keahlian` (
  `id_keahlian` int(11) NOT NULL,
  `daftar_keahlian` varchar(50) NOT NULL,
  `gambar_keahlian` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `jenis` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keahlian`
--

INSERT INTO `keahlian` (`id_keahlian`, `daftar_keahlian`, `gambar_keahlian`, `deskripsi`, `jenis`) VALUES
(1, 'Tukang Ledeng', 'pipa.jpg', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus, iure recusandae! Repellat non numquam, totam officiis vero soluta harum beatae sed, corrupti commodi ut. Ad commodi doloremque deserunt inventore amet?', 'Pembangunan'),
(2, 'Kelistrikan', 'listrik.jpg', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus, iure recusandae! Repellat non numquam, totam officiis vero soluta harum beatae sed, corrupti commodi ut. Ad commodi doloremque deserunt inventore amet?', 'Elektronik'),
(3, 'Tukang Bangunan', 'bangunan.jpg', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus, iure recusandae! Repellat non numquam, totam officiis vero soluta harum beatae sed, corrupti commodi ut. Ad commodi doloremque deserunt inventore amet?', 'Pembangunan'),
(4, 'Check Up Motor', 'check.jpg', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus, iure recusandae! Repellat non numquam, totam officiis vero soluta harum beatae sed, corrupti commodi ut. Ad commodi doloremque deserunt inventore amet?', 'Otomotif'),
(5, 'Overhaul Mesin Motor', 'tune.jpg', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus, iure recusandae! Repellat non numquam, totam officiis vero soluta harum beatae sed, corrupti commodi ut. Ad commodi doloremque deserunt inventore amet?', 'Otomotif'),
(6, 'Tune Up Motor', 'servis.jpg', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus, iure recusandae! Repellat non numquam, totam officiis vero soluta harum beatae sed, corrupti commodi ut. Ad commodi doloremque deserunt inventore amet?', 'Otomotif'),
(7, 'Cleanning Servis', 'cleanning.jpg', 'Ini contoh', 'Pembangunan'),
(8, 'Oli Motor', 'gantioli.jpg', 'Ganti oli motor', 'Otomotif'),
(9, 'Rantai Motor', 'gantirantai.jpg', 'Ganti rantai motor', 'Otomotif'),
(10, 'Kampas Rem Motor', 'kampasrem.jpg', 'Ganti kampas rem motor', 'Otomotif'),
(11, 'Kelistrikan Motor', 'kelistrikanmotor.jpg', 'Kelistrikan motor', 'Otomotif'),
(12, 'Tukang Kebun', 'tukang_kebun.jpg', 'Tukang kebun', 'Asisten Rumah'),
(13, 'Servis AC', 'servisac.jpg', 'Servis AC', 'Elektronik'),
(14, 'Pembantu', 'pembantu.jpg', 'Pembantu', 'Asisten Rumah');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kec` int(11) NOT NULL,
  `nama_kec` varchar(100) NOT NULL,
  `id_kota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kec`, `nama_kec`, `id_kota`) VALUES
(1, 'Banyumanik', 1),
(2, 'Candisari', 1),
(3, 'Gayamsari', 1),
(4, 'Genuk', 1),
(5, 'Gunung Pati', 1),
(6, 'Mijen', 1),
(7, 'Ngaliyan', 1),
(8, 'Pedurungan', 1),
(9, 'Semarang Barat', 1),
(10, 'Semarang Selatan', 1),
(11, 'Semarang Tengah', 1),
(12, 'Semarang Timur', 1),
(13, 'Semarang Utara', 1),
(14, 'Tembalang', 1),
(15, 'Tugu', 1),
(16, 'Gajah Mungkur', 1),
(17, 'Ambarawa', 2),
(18, 'Bancak', 2),
(19, 'Bandungan', 2),
(20, 'Banyubiru', 2),
(21, 'Bawen', 2),
(22, 'Bergas', 2),
(23, 'Bringin', 2),
(24, 'Getasan', 2),
(25, 'Jambu', 2),
(26, 'Kaliwungu', 2),
(27, 'Pabelan', 2),
(28, 'Pringapus', 2),
(29, 'Sumowono', 2),
(30, 'Suruh', 2),
(31, 'Susukan', 2),
(32, 'Tengaran', 2),
(33, 'Tuntang', 2),
(34, 'Ungaran Barat', 2),
(35, 'Ungaran Timur', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`) VALUES
(1, 'Kota Semarang'),
(2, 'Kabupaten Semarang');

-- --------------------------------------------------------

--
-- Table structure for table `mitra`
--

CREATE TABLE `mitra` (
  `id_mitra` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_keahlian` int(11) NOT NULL,
  `nama_mitra` varchar(100) NOT NULL,
  `foto_mitra` varchar(100) NOT NULL,
  `alamat_mitra` varchar(255) NOT NULL,
  `harga_jasa` int(11) NOT NULL,
  `no_ktp` int(16) NOT NULL,
  `status` enum('tersedia','tidak tersedia') NOT NULL,
  `rating` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mitra`
--

INSERT INTO `mitra` (`id_mitra`, `id_pelanggan`, `id_keahlian`, `nama_mitra`, `foto_mitra`, `alamat_mitra`, `harga_jasa`, `no_ktp`, `status`, `rating`) VALUES
(6, 3, 1, 'Tama', 'background_2.png', 'adasfas', 20000, 2147483647, 'tersedia', 4);

-- --------------------------------------------------------

--
-- Table structure for table `order_servis`
--

CREATE TABLE `order_servis` (
  `id_order` int(11) NOT NULL,
  `tanggal` varchar(8) NOT NULL,
  `waktu` time NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `lokasi_pelanggan` varchar(255) NOT NULL,
  `id_keahlian` int(11) NOT NULL,
  `status_order` enum('belum','sedang diproses','selesai','') NOT NULL,
  `status_bayar` enum('Belum Terbayar','Sudah Terbayar','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_servis`
--

INSERT INTO `order_servis` (`id_order`, `tanggal`, `waktu`, `id_pelanggan`, `id_kota`, `id_kecamatan`, `lokasi_pelanggan`, `id_keahlian`, `status_order`, `status_bayar`) VALUES
(4, '07/10/20', '12:00:00', 2, 1, 1, 'afasd', 1, 'selesai', 'Sudah Terbayar'),
(5, '07/11/20', '12:00:00', 4, 1, 6, 'adasd', 1, 'belum', 'Belum Terbayar');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `username_pelanggan` varchar(16) NOT NULL,
  `password_pelanggan` varchar(100) NOT NULL,
  `alamat_pelanggan` varchar(255) NOT NULL,
  `no_hp` varchar(16) NOT NULL,
  `jenis` enum('admin','member','mitra') NOT NULL,
  `id_kota` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email_pelanggan`, `username_pelanggan`, `password_pelanggan`, `alamat_pelanggan`, `no_hp`, `jenis`, `id_kota`, `id_kecamatan`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '081111111111', 'admin', 0, 0),
(2, 'Rian', 'rian@gmail.com', 'rian', 'cb2b28afc2cc836b33eb7ed86f99e65a', 'Jl.Dr.Cipto Mangunkusumo', '088233520366', 'member', 2, 17),
(3, 'Tama', 'tama@gmail.com', 'tama', '407b056f5e6197a948b7f836567fb63d', 'asdasdasd', '0456536', 'mitra', 1, 1),
(4, 'Rizki', 'rizki@gmail.com', 'rizki', '3e089c076bf1ec3a8332280ee35c28d4', 'Jln. Ngaliyan Nomor 52', '088233520117', 'member', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_servis`
--

CREATE TABLE `pembayaran_servis` (
  `id_pembayaran` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran_servis`
--

INSERT INTO `pembayaran_servis` (`id_pembayaran`, `id_order`, `total_harga`) VALUES
(1, 4, 22000);

-- --------------------------------------------------------

--
-- Table structure for table `review_servis`
--

CREATE TABLE `review_servis` (
  `id_review` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_mitra` int(11) NOT NULL,
  `review` varchar(255) NOT NULL,
  `rating` enum('1','2','3','4','5') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_order_servis`
--
ALTER TABLE `detail_order_servis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keahlian`
--
ALTER TABLE `keahlian`
  ADD PRIMARY KEY (`id_keahlian`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kec`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indexes for table `order_servis`
--
ALTER TABLE `order_servis`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembayaran_servis`
--
ALTER TABLE `pembayaran_servis`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `review_servis`
--
ALTER TABLE `review_servis`
  ADD PRIMARY KEY (`id_review`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_order_servis`
--
ALTER TABLE `detail_order_servis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `keahlian`
--
ALTER TABLE `keahlian`
  MODIFY `id_keahlian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mitra`
--
ALTER TABLE `mitra`
  MODIFY `id_mitra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_servis`
--
ALTER TABLE `order_servis`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pembayaran_servis`
--
ALTER TABLE `pembayaran_servis`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review_servis`
--
ALTER TABLE `review_servis`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
