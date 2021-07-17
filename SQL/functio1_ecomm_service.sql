-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 17, 2021 at 04:42 PM
-- Server version: 10.2.39-MariaDB-log-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `functio1_ecomm_service`
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
  `bukti_tf` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_order_servis`
--

INSERT INTO `detail_order_servis` (`id`, `id_order`, `harga_jasa`, `biaya_admin`, `id_mitra`, `bukti_tf`) VALUES
(14, 14, 20000, 2000, 6, 'MB.png'),
(15, 15, 20000, 2000, 6, 'MB1.png'),
(16, 16, 20000, 2000, 6, 'avatar04.png');

-- --------------------------------------------------------

--
-- Table structure for table `keahlian`
--

CREATE TABLE `keahlian` (
  `id_keahlian` int(11) NOT NULL,
  `daftar_keahlian` varchar(50) NOT NULL,
  `gambar_keahlian` varchar(100) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `jenis` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keahlian`
--

INSERT INTO `keahlian` (`id_keahlian`, `daftar_keahlian`, `gambar_keahlian`, `deskripsi`, `jenis`) VALUES
(1, 'Tukang Ledeng', 'pipa.jpg', '<p>Jasa tukang ledeng digunakan untuk memasang serta memperbaiki hal yang berkaitan dengan pipa, saluran, atau peralatan lain yang terkait dengan saluran air.</p>\r\n', 'Pembangunan'),
(2, 'Kelistrikan', 'listrik.jpg', 'Jasa tukang kelistrikan digunakan untuk memasang dan memperbaiki hal yang berkaitan dengan aliran listrik seperti pasang kabel, stopkontak atau saklar pada rumah, gedung, sekolah, atau tempat bangunan yang lain.', 'Elektronik'),
(3, 'Tukang Bangunan', 'bangunan.jpg', 'Jasa tukang bangunan digunakan untuk membangun dan memperbaiki hal umum yang berkaitan dengan infrastruktur seperti rumah, sekolah, gedung, kantor, hotel, dan lain sebagainya.', 'Pembangunan'),
(4, 'Check Up Motor', 'check.jpg', 'Jasa check up motor digunakan untuk mengecek kendaraan motor dan melakukan servis ringan jika ada kerusakan. Terdiri dari pembersihan karburator, penyetelan karburator, pembersihan saringan udara, pemeriksaan dan penggantian oli, pembersihan busi, penyetelan dan pelumasan rantai roda, penyetelan rem depan dan belakang, pemeriksaan dan penambahan air aki, pemeriksaan lampu dan klakson.', 'Otomotif'),
(5, 'Overhaul Mesin Motor', 'tune.jpg', 'Jasa overhaul mesin motor digunakan untuk mengecek kendaraan motor dan melakukan servis berat jika ada kerusakan. Mencakup penggantian spare part di dalam ruang bakar (piston set) dan komponen-komponen di dalam ruang transmisi. Pada overhaul proses pengerjaan dilakukan proses turun mesin.', 'Otomotif'),
(6, 'Tune Up Motor', 'servis.jpg', 'Jasa tune up motor digunakan untuk mengecek kendaraan motor dan melakukan servis lengkap jika ada kerusakan. Terdiri dari pembersihan karburator, penyetelan karburator, pembersihan saringan udara, pemeriksaan dan penggantian oli, pembersihan busi, penyetelan dan pelumasan rantai roda, penyetelan rem depan dan belakang, pemeriksaan dan penambahan air aki, pemeriksaan lampu dan klakson, penyetelan dan pelumasan kabel gas, pemeriksaan dan penyetelan stang kemudi, pengencangan mur dan baut, pemeriksaan roda dan ban, penyetelan klep, penyetelan kopling.', 'Otomotif'),
(7, 'Cleanning Servis', 'cleanning.jpg', 'Jasa cleanning servis digunakan untuk membersihkan ruangan – ruangan tertentu, dimana mereka di tempatkan seperti kawasan kantor, hotel, gedung, apartemen, rumah sakit, tempat umum dan bahkan rumah pribadi. ', 'Asisten'),
(8, 'Oli Motor', 'gantioli.jpg', 'Jasa ganti oli motor digunakan untuk mengecek keadaan oli kendaraan motor dan melakukan penggantian oli apabila diperlukan.', 'Otomotif'),
(9, 'Rantai Motor', 'gantirantai.jpg', 'Jasa ganti rantai oli motor digunakan untuk mengecek keadaan rantai kendaraan motor dan melakukan penggantian rantai apabila diperlukan.', 'Otomotif'),
(10, 'Kampas Rem Motor', 'kampasrem.jpg', 'Jasa ganti kampas rem motor digunakan untuk mengecek keadaan kampas rem kendaraan motor dan melakukan penggantian kampas rem apabila diperlukan.', 'Otomotif'),
(11, 'Kelistrikan Motor', 'kelistrikanmotor.jpg', 'Jasa kelistrikan motor digunakan untuk mengecek keadaan yang berhubungan dengan listrik dan melakukan penggantian komponen kelistrikan seperti lampu atau aki motor apabila diperlukan.', 'Otomotif'),
(12, 'Tukang Kebun', 'tukang_kebun.jpg', 'Jasa tukang kebun digunakan untuk memasang dan memperbaiki hal yang berkaitan dengan perkebunan seperti melakukan pembersihan area taman atau kebun, menata dan merawat secara rutin pada tempat umum, kawasan kantor, hotel, apartemen atau bahkan rumah pribadi.', 'Asisten'),
(13, 'Tukang AC', 'servisac.jpg', 'Jasa servis dan pemasangan AC digunakan untuk memasang dan memperbaiki hal yang berkaitan dengan Air Conditioner.', 'Elektronik'),
(14, 'Pembantu', 'pembantu.jpg', 'Jasa pembantu digunakan untuk mengurus pekerjaan rumah tangga seperti memasak serta menghidangkan makanan, mencuci, membersihkan rumah, dan mengasuh anak-anak hingga dapat pula merawat orang lanjut usia yang mengalami keterbatasan fisik.', 'Asisten'),
(15, 'Tukang TV', 'servistv.jpg', 'Jasa servis dan pemasangan TV digunakan untuk memasang dan memperbaiki hal yang berkaitan dengan perangkat televisi.', 'Elektronik'),
(16, 'Tukang Water Heater', 'waterheater.jpg', 'Jasa servis dan pemasangan Water Heater digunakan untuk memasang dan memperbaiki hal yang berkaitan dengan Water Heater.', 'Elektronik'),
(17, 'Tukang Atap Bangunan', 'atapbocor.jpg', 'Jasa tukang atap bangunan digunakan untuk memasang genteng (atap) dan memperbaiki hal yang berkaitan dengan genteng (atap) seperti bocor, merembes, rusak atau pengecatan.', 'Pembangunan'),
(18, 'Tukang Cat', 'tukangcat.jpg', 'Jasa tukang cat digunakan untuk mengecat interior atau eksterior bangunan seperti rumah, gedung atau kantor, dan lain sebagainya.', 'Pembangunan'),
(19, 'Satpam', 'satpam.jpg', 'Jasa satpam digunakan untuk menyelenggarakan keamanan dan ketertiban di lingkungan atau tempat kerja seperti rumah pribadi, kantor atau gedung, hotel, atau tempat umum layaknya rumah sakit yang meliputi aspek pengamanan fisik, personel, informasi dan pengamanan teknis lainnya.', 'Asisten'),
(20, 'Tukang Cuci Motor', 'cucimotor.jpg', 'Jasa cuci motor digunakan untuk mencuci kendaraan bermotor tanpa harus pergi ke tempat pencucian motor.', 'Otomotif'),
(62, 'Tukang A', 'Tukang_A.jpg', '<p>Ini <strong>bold</strong> ini <em>miring</em> ini <s>coret</s> dah itu aja apa yaaaaaa</p>\r\n', 'Memasak');

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
(3, 'Gajah Mungkur', 1),
(4, 'Gayamsari', 1),
(5, 'Genuk', 1),
(6, 'Gunung Pati', 1),
(7, 'Mijen', 1),
(8, 'Ngaliyan', 1),
(9, 'Pedurungan', 1),
(10, 'Semarang Barat', 1),
(11, 'Semarang Selatan', 1),
(12, 'Semarang Tengah', 1),
(13, 'Semarang Timur', 1),
(14, 'Semarang Utara', 1),
(15, 'Tembalang', 1),
(16, 'Tugu', 1),
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
  `no_ktp` varchar(16) NOT NULL,
  `status` enum('tersedia','tidak tersedia') NOT NULL,
  `rating` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mitra`
--

INSERT INTO `mitra` (`id_mitra`, `id_pelanggan`, `id_keahlian`, `nama_mitra`, `foto_mitra`, `alamat_mitra`, `harga_jasa`, `no_ktp`, `status`, `rating`) VALUES
(6, 3, 1, 'Tamagotchi', 'Tamagotchi.png', 'adasfas', 20000, '2147483647', 'tersedia', 4);

--
-- Triggers `mitra`
--
DELIMITER $$
CREATE TRIGGER `hapus_mitra` AFTER DELETE ON `mitra` FOR EACH ROW BEGIN
INSERT INTO non_mitra(
	id_mitra,
    id_pelanggan,
    id_keahlian,
    nama_mitra,
    foto_mitra,
    alamat_mitra,
    harga_jasa,
    no_ktp,
    status,
    rating,
    tgl_hapus,
    user
)
VALUES(
	OLD.id_mitra,
    OLD.id_pelanggan,
    OLD.id_keahlian,
    OLD.nama_mitra,
    OLD.foto_mitra,
    OLD.alamat_mitra,
    OLD.harga_jasa,
    OLD.no_ktp,
    OLD.status,
    OLD.rating,
    SYSDATE(),
    CURRENT_USER
);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `non_mitra`
--

CREATE TABLE `non_mitra` (
  `id_mitra` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_keahlian` int(11) DEFAULT NULL,
  `nama_mitra` varchar(100) DEFAULT NULL,
  `foto_mitra` varchar(100) DEFAULT NULL,
  `alamat_mitra` varchar(255) DEFAULT NULL,
  `harga_jasa` int(11) DEFAULT NULL,
  `no_ktp` int(16) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `tgl_hapus` date DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `non_mitra`
--

INSERT INTO `non_mitra` (`id_mitra`, `id_pelanggan`, `id_keahlian`, `nama_mitra`, `foto_mitra`, `alamat_mitra`, `harga_jasa`, `no_ktp`, `status`, `rating`, `tgl_hapus`, `user`) VALUES
(7, 2, 1, 'fde', '2', '22', 2332, 23322, 'tidak tersedia', 1, '2021-07-16', 'root@localhost'),
(8, 2, 1, 'wc', 'dwed', 'wedw', 12131, 312, 'tidak tersedia', 2, '2021-07-16', 'root@localhost'),
(9, 2, 1, 'dc', 'dsd', 'asas', 23233, 232, 'tersedia', 1, '2021-07-16', 'root@localhost'),
(10, 10, 19, 'test', 'avatar5.png', 'test', 20000, 2147483647, 'tersedia', 0, '2021-07-16', 'root@localhost'),
(11, 12, 18, 'testmitra', 'builder-15.jpg', 'test', 20000, 2147483647, 'tersedia', 0, '2021-07-17', 'functio1@localhost'),
(12, 12, 19, 'coba', 'belum2.jpg', 'asdas', 20000, 2147483647, 'tersedia', 0, '2021-07-17', 'functio1@localhost'),
(13, 12, 18, 'mitratest', 'listrik1.jpg', 'test123', 20000, 2147483647, 'tersedia', 0, '2021-07-17', 'functio1@localhost'),
(14, 14, 2, 'cobadelete', 'MB.png', 'Undip', 35000, 31212131, 'tersedia', 0, '2021-07-17', 'functio1@localhost'),
(15, 14, 2, 'cobadelete', 'MB1.png', 'Undip', 35000, 31212131, 'tersedia', 0, '2021-07-17', 'functio1@localhost'),
(16, 14, 19, 'coba', 'coba.jpg', 'coba', 30000, 2147483647, 'tersedia', 0, '2021-07-17', 'functio1@localhost'),
(17, 14, 19, 'coba', 'paypal.png', 'coba', 30000, 2147483647, 'tersedia', 0, '2021-07-17', 'functio1@localhost'),
(18, 14, 18, 'coba', 'avatar04.png', 'coba', 20000, 2147483647, 'tersedia', 0, '2021-07-17', 'functio1@localhost');

-- --------------------------------------------------------

--
-- Table structure for table `order_servis`
--

CREATE TABLE `order_servis` (
  `id_order` int(11) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `waktu` time NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `id_kec` int(11) NOT NULL,
  `lokasi_pelanggan` varchar(255) NOT NULL,
  `id_keahlian` int(11) NOT NULL,
  `status_order` enum('belum','sedang diproses','selesai','') NOT NULL,
  `status_bayar` enum('Belum Terbayar','Sudah Terbayar','','') NOT NULL,
  `rating_review` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_servis`
--

INSERT INTO `order_servis` (`id_order`, `tanggal`, `waktu`, `id_pelanggan`, `id_kota`, `id_kec`, `lokasi_pelanggan`, `id_keahlian`, `status_order`, `status_bayar`, `rating_review`) VALUES
(14, '07/18/2021', '17:32:00', 4, 1, 1, 'jl.jalan', 1, 'selesai', 'Sudah Terbayar', 5),
(15, '07/31/2021', '01:00:00', 4, 1, 1, 'Jl. jalan yuk', 1, 'selesai', 'Sudah Terbayar', 5),
(16, '07/31/2021', '21:40:00', 13, 1, 1, 'udinus', 1, 'selesai', 'Sudah Terbayar', 2);

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
(2, 'Rian Eko', 'rian@gmail.com', 'rian', 'cb2b28afc2cc836b33eb7ed86f99e65a', 'Jl.Dr.Cipto Mangunkusumo', '088233520366', 'member', 2, 17),
(3, 'Tama', 'tama@gmail.com', 'tama', '407b056f5e6197a948b7f836567fb63d', 'asdasdasd', '0456536', 'mitra', 1, 1),
(4, 'Rizki Shafara', 'rizki@gmail.com', 'rizki', 'd27760903cceed436111922912553b96', 'Jln. Ngaliyan Nomor 52', '088233520117', 'member', 1, 7),
(6, 'Muhammad Iqbal', 'iqbal@gmail.com', 'iqbal', 'eedae20fc3c7a6e9c5b1102098771c70', 'Jalan Apa Adanya', '0918230912', 'member', 2, 17),
(11, 'Rizki Shafara Adiyatma', 'rizki99@gmail.com', 'rizki', '3e089c076bf1ec3a8332280ee35c28d4', 'Pondok Gedang Asri', '0895800898797', 'member', 2, 35),
(13, 'udinus', 'udinus@gmail.com', 'udinus', 'b9e588f017f9bc991baf9d230989608f', 'udinus', '0918230912', 'member', 1, 1),
(14, 'cobadelete', 'coba@gmail.com', 'coba', '202cb962ac59075b964b07152d234b70', 'Undip', '087987987', 'member', 1, 15);

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
(8, 14, 22000),
(9, 15, 22000),
(10, 16, 22000);

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
-- Dumping data for table `review_servis`
--

INSERT INTO `review_servis` (`id_review`, `id_order`, `id_mitra`, `review`, `rating`) VALUES
(10, 14, 6, 'mantap jiwa', '5'),
(12, 16, 6, 'Jelek sekali saya tidak puas', '2'),
(13, 15, 6, 'jos', '5');

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
-- Indexes for table `non_mitra`
--
ALTER TABLE `non_mitra`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `keahlian`
--
ALTER TABLE `keahlian`
  MODIFY `id_keahlian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

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
  MODIFY `id_mitra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_servis`
--
ALTER TABLE `order_servis`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pembayaran_servis`
--
ALTER TABLE `pembayaran_servis`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `review_servis`
--
ALTER TABLE `review_servis`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
