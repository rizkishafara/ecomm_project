/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.8-MariaDB : Database - ecomm_service
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ecomm_service` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ecomm_service`;

/*Table structure for table `detail_order_servis` */

DROP TABLE IF EXISTS `detail_order_servis`;

CREATE TABLE `detail_order_servis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `harga_jasa` int(11) NOT NULL,
  `biaya_admin` int(11) NOT NULL,
  `id_mitra` int(11) NOT NULL,
  `bukti_tf` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `detail_order_servis` */

insert  into `detail_order_servis`(`id`,`id_order`,`harga_jasa`,`biaya_admin`,`id_mitra`,`bukti_tf`) values 
(8,7,20000,2000,6,'background_2.png'),
(9,8,20000,2000,6,'Didan_Hafiz_Putra_Pratama.png'),
(10,9,20000,2000,6,'index.jpg'),
(11,11,20000,2000,6,'pexels-snapwire-730896.jpg');

/*Table structure for table `keahlian` */

DROP TABLE IF EXISTS `keahlian`;

CREATE TABLE `keahlian` (
  `id_keahlian` int(11) NOT NULL AUTO_INCREMENT,
  `daftar_keahlian` varchar(50) NOT NULL,
  `gambar_keahlian` varchar(100) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  PRIMARY KEY (`id_keahlian`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

/*Data for the table `keahlian` */

insert  into `keahlian`(`id_keahlian`,`daftar_keahlian`,`gambar_keahlian`,`deskripsi`,`jenis`) values 
(1,'Tukang Ledeng','pipa.jpg','<p>Jasa tukang ledeng digunakan untuk memasang serta memperbaiki hal yang berkaitan dengan pipa, saluran, atau peralatan lain yang terkait dengan saluran air.</p>\r\n','Pembangunan'),
(2,'Kelistrikan','listrik.jpg','Jasa tukang kelistrikan digunakan untuk memasang dan memperbaiki hal yang berkaitan dengan aliran listrik seperti pasang kabel, stopkontak atau saklar pada rumah, gedung, sekolah, atau tempat bangunan yang lain.','Elektronik'),
(3,'Tukang Bangunan','bangunan.jpg','Jasa tukang bangunan digunakan untuk membangun dan memperbaiki hal umum yang berkaitan dengan infrastruktur seperti rumah, sekolah, gedung, kantor, hotel, dan lain sebagainya.','Pembangunan'),
(4,'Check Up Motor','check.jpg','Jasa check up motor digunakan untuk mengecek kendaraan motor dan melakukan servis ringan jika ada kerusakan. Terdiri dari pembersihan karburator, penyetelan karburator, pembersihan saringan udara, pemeriksaan dan penggantian oli, pembersihan busi, penyetelan dan pelumasan rantai roda, penyetelan rem depan dan belakang, pemeriksaan dan penambahan air aki, pemeriksaan lampu dan klakson.','Otomotif'),
(5,'Overhaul Mesin Motor','tune.jpg','Jasa overhaul mesin motor digunakan untuk mengecek kendaraan motor dan melakukan servis berat jika ada kerusakan. Mencakup penggantian spare part di dalam ruang bakar (piston set) dan komponen-komponen di dalam ruang transmisi. Pada overhaul proses pengerjaan dilakukan proses turun mesin.','Otomotif'),
(6,'Tune Up Motor','servis.jpg','Jasa tune up motor digunakan untuk mengecek kendaraan motor dan melakukan servis lengkap jika ada kerusakan. Terdiri dari pembersihan karburator, penyetelan karburator, pembersihan saringan udara, pemeriksaan dan penggantian oli, pembersihan busi, penyetelan dan pelumasan rantai roda, penyetelan rem depan dan belakang, pemeriksaan dan penambahan air aki, pemeriksaan lampu dan klakson, penyetelan dan pelumasan kabel gas, pemeriksaan dan penyetelan stang kemudi, pengencangan mur dan baut, pemeriksaan roda dan ban, penyetelan klep, penyetelan kopling.','Otomotif'),
(7,'Cleanning Servis','cleanning.jpg','Jasa cleanning servis digunakan untuk membersihkan ruangan – ruangan tertentu, dimana mereka di tempatkan seperti kawasan kantor, hotel, gedung, apartemen, rumah sakit, tempat umum dan bahkan rumah pribadi. ','Asisten'),
(8,'Oli Motor','gantioli.jpg','Jasa ganti oli motor digunakan untuk mengecek keadaan oli kendaraan motor dan melakukan penggantian oli apabila diperlukan.','Otomotif'),
(9,'Rantai Motor','gantirantai.jpg','Jasa ganti rantai oli motor digunakan untuk mengecek keadaan rantai kendaraan motor dan melakukan penggantian rantai apabila diperlukan.','Otomotif'),
(10,'Kampas Rem Motor','kampasrem.jpg','Jasa ganti kampas rem motor digunakan untuk mengecek keadaan kampas rem kendaraan motor dan melakukan penggantian kampas rem apabila diperlukan.','Otomotif'),
(11,'Kelistrikan Motor','kelistrikanmotor.jpg','Jasa kelistrikan motor digunakan untuk mengecek keadaan yang berhubungan dengan listrik dan melakukan penggantian komponen kelistrikan seperti lampu atau aki motor apabila diperlukan.','Otomotif'),
(12,'Tukang Kebun','tukang_kebun.jpg','Jasa tukang kebun digunakan untuk memasang dan memperbaiki hal yang berkaitan dengan perkebunan seperti melakukan pembersihan area taman atau kebun, menata dan merawat secara rutin pada tempat umum, kawasan kantor, hotel, apartemen atau bahkan rumah pribadi.','Asisten'),
(13,'Tukang AC','servisac.jpg','Jasa servis dan pemasangan AC digunakan untuk memasang dan memperbaiki hal yang berkaitan dengan Air Conditioner.','Elektronik'),
(14,'Pembantu','pembantu.jpg','Jasa pembantu digunakan untuk mengurus pekerjaan rumah tangga seperti memasak serta menghidangkan makanan, mencuci, membersihkan rumah, dan mengasuh anak-anak hingga dapat pula merawat orang lanjut usia yang mengalami keterbatasan fisik.','Asisten'),
(15,'Tukang TV','servistv.jpg','Jasa servis dan pemasangan TV digunakan untuk memasang dan memperbaiki hal yang berkaitan dengan perangkat televisi.','Elektronik'),
(16,'Tukang Water Heater','waterheater.jpg','Jasa servis dan pemasangan Water Heater digunakan untuk memasang dan memperbaiki hal yang berkaitan dengan Water Heater.','Elektronik'),
(17,'Tukang Atap Bangunan','atapbocor.jpg','Jasa tukang atap bangunan digunakan untuk memasang genteng (atap) dan memperbaiki hal yang berkaitan dengan genteng (atap) seperti bocor, merembes, rusak atau pengecatan.','Pembangunan'),
(18,'Tukang Cat','tukangcat.jpg','Jasa tukang cat digunakan untuk mengecat interior atau eksterior bangunan seperti rumah, gedung atau kantor, dan lain sebagainya.','Pembangunan'),
(19,'Satpam','satpam.jpg','Jasa satpam digunakan untuk menyelenggarakan keamanan dan ketertiban di lingkungan atau tempat kerja seperti rumah pribadi, kantor atau gedung, hotel, atau tempat umum layaknya rumah sakit yang meliputi aspek pengamanan fisik, personel, informasi dan pengamanan teknis lainnya.','Asisten'),
(20,'Tukang Cuci Motor','cucimotor.jpg','Jasa cuci motor digunakan untuk mencuci kendaraan bermotor tanpa harus pergi ke tempat pencucian motor.','Otomotif'),
(62,'Tukang A','Tukang_A.jpg','<p>Ini <strong>bold</strong> ini <em>miring</em> ini <s>coret</s> dah itu aja apa yaaaaaa</p>\r\n','Memasak');

/*Table structure for table `kecamatan` */

DROP TABLE IF EXISTS `kecamatan`;

CREATE TABLE `kecamatan` (
  `id_kec` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kec` varchar(100) NOT NULL,
  `id_kota` int(11) NOT NULL,
  PRIMARY KEY (`id_kec`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

/*Data for the table `kecamatan` */

insert  into `kecamatan`(`id_kec`,`nama_kec`,`id_kota`) values 
(1,'Banyumanik',1),
(2,'Candisari',1),
(3,'Gajah Mungkur',1),
(4,'Gayamsari',1),
(5,'Genuk',1),
(6,'Gunung Pati',1),
(7,'Mijen',1),
(8,'Ngaliyan',1),
(9,'Pedurungan',1),
(10,'Semarang Barat',1),
(11,'Semarang Selatan',1),
(12,'Semarang Tengah',1),
(13,'Semarang Timur',1),
(14,'Semarang Utara',1),
(15,'Tembalang',1),
(16,'Tugu',1),
(17,'Ambarawa',2),
(18,'Bancak',2),
(19,'Bandungan',2),
(20,'Banyubiru',2),
(21,'Bawen',2),
(22,'Bergas',2),
(23,'Bringin',2),
(24,'Getasan',2),
(25,'Jambu',2),
(26,'Kaliwungu',2),
(27,'Pabelan',2),
(28,'Pringapus',2),
(29,'Sumowono',2),
(30,'Suruh',2),
(31,'Susukan',2),
(32,'Tengaran',2),
(33,'Tuntang',2),
(34,'Ungaran Barat',2),
(35,'Ungaran Timur',2);

/*Table structure for table `kota` */

DROP TABLE IF EXISTS `kota`;

CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(100) NOT NULL,
  PRIMARY KEY (`id_kota`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `kota` */

insert  into `kota`(`id_kota`,`nama_kota`) values 
(1,'Kota Semarang'),
(2,'Kabupaten Semarang');

/*Table structure for table `mitra` */

DROP TABLE IF EXISTS `mitra`;

CREATE TABLE `mitra` (
  `id_mitra` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) NOT NULL,
  `id_keahlian` int(11) NOT NULL,
  `nama_mitra` varchar(100) NOT NULL,
  `foto_mitra` varchar(100) NOT NULL,
  `alamat_mitra` varchar(255) NOT NULL,
  `harga_jasa` int(11) NOT NULL,
  `no_ktp` int(16) NOT NULL,
  `status` enum('tersedia','tidak tersedia') NOT NULL,
  `rating` double NOT NULL,
  PRIMARY KEY (`id_mitra`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `mitra` */

insert  into `mitra`(`id_mitra`,`id_pelanggan`,`id_keahlian`,`nama_mitra`,`foto_mitra`,`alamat_mitra`,`harga_jasa`,`no_ktp`,`status`,`rating`) values 
(6,3,1,'Tamago','background_2.png','adasfas',20000,2147483647,'tidak tersedia',4);

/*Table structure for table `non_mitra` */

DROP TABLE IF EXISTS `non_mitra`;

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
  `user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_mitra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `non_mitra` */

insert  into `non_mitra`(`id_mitra`,`id_pelanggan`,`id_keahlian`,`nama_mitra`,`foto_mitra`,`alamat_mitra`,`harga_jasa`,`no_ktp`,`status`,`rating`,`tgl_hapus`,`user`) values 
(7,2,1,'fde','2','22',2332,23322,'tidak tersedia',1,'2021-07-16','root@localhost'),
(8,2,1,'wc','dwed','wedw',12131,312,'tidak tersedia',2,'2021-07-16','root@localhost'),
(9,2,1,'dc','dsd','asas',23233,232,'tersedia',1,'2021-07-16','root@localhost');

/*Table structure for table `order_servis` */

DROP TABLE IF EXISTS `order_servis`;

CREATE TABLE `order_servis` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(8) NOT NULL,
  `waktu` time NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `lokasi_pelanggan` varchar(255) NOT NULL,
  `id_keahlian` int(11) NOT NULL,
  `status_order` enum('belum','sedang diproses','selesai','') NOT NULL,
  `status_bayar` enum('Belum Terbayar','Sudah Terbayar','','') NOT NULL,
  `rating_review` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `order_servis` */

insert  into `order_servis`(`id_order`,`tanggal`,`waktu`,`id_pelanggan`,`id_kota`,`id_kecamatan`,`lokasi_pelanggan`,`id_keahlian`,`status_order`,`status_bayar`,`rating_review`) values 
(7,'07/15/20','12:00:00',2,1,1,'ailsdjlas',1,'selesai','Sudah Terbayar',1),
(8,'07/16/20','12:00:00',2,2,17,'asfasf',1,'selesai','Sudah Terbayar',0),
(9,'07/15/20','12:00:00',2,1,1,'sdasd',1,'selesai','Sudah Terbayar',4),
(10,'07/15/20','15:00:00',4,1,16,'dasd',1,'belum','Belum Terbayar',0),
(11,'07/15/20','12:00:00',2,1,16,'aonfas',1,'sedang diproses','Belum Terbayar',0);

/*Table structure for table `pelanggan` */

DROP TABLE IF EXISTS `pelanggan`;

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pelanggan` varchar(100) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `username_pelanggan` varchar(16) NOT NULL,
  `password_pelanggan` varchar(100) NOT NULL,
  `alamat_pelanggan` varchar(255) NOT NULL,
  `no_hp` varchar(16) NOT NULL,
  `jenis` enum('admin','member','mitra') NOT NULL,
  `id_kota` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pelanggan` */

insert  into `pelanggan`(`id_pelanggan`,`nama_pelanggan`,`email_pelanggan`,`username_pelanggan`,`password_pelanggan`,`alamat_pelanggan`,`no_hp`,`jenis`,`id_kota`,`id_kecamatan`) values 
(1,'admin','admin@gmail.com','admin','21232f297a57a5a743894a0e4a801fc3','admin','081111111111','admin',0,0),
(2,'Rian Eko','rian@gmail.com','rian','950a25b0774acaf3cbb6a4bf3e4dd76f','Jl.Dr.Cipto Mangunkusumo','088233520366','member',2,17),
(3,'Tama','tama@gmail.com','tama','407b056f5e6197a948b7f836567fb63d','asdasdasd','0456536','mitra',1,1),
(4,'Rizki Shafara','rizki@gmail.com','rizki','d27760903cceed436111922912553b96','Jln. Ngaliyan Nomor 52','088233520117','member',1,7),
(6,'Muhammad Iqbal','iqbal@gmail.com','iqbal','0c0db1b3bffc603096ca7f053cbb72f4','Jalan Apa Adanya','0918230912','member',2,17);

/*Table structure for table `pembayaran_servis` */

DROP TABLE IF EXISTS `pembayaran_servis`;

CREATE TABLE `pembayaran_servis` (
  `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  PRIMARY KEY (`id_pembayaran`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pembayaran_servis` */

insert  into `pembayaran_servis`(`id_pembayaran`,`id_order`,`total_harga`) values 
(2,7,22000),
(3,8,22000),
(4,9,22000),
(5,8,22000);

/*Table structure for table `review_servis` */

DROP TABLE IF EXISTS `review_servis`;

CREATE TABLE `review_servis` (
  `id_review` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `id_mitra` int(11) NOT NULL,
  `review` varchar(255) NOT NULL,
  `rating` enum('1','2','3','4','5') NOT NULL,
  PRIMARY KEY (`id_review`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `review_servis` */

insert  into `review_servis`(`id_review`,`id_order`,`id_mitra`,`review`,`rating`) values 
(4,7,6,'Bagus','4'),
(5,9,6,'Bagus','4'),
(6,9,6,'Bagus Sekali','4'),
(7,9,6,'Bagus Sekali','4'),
(8,8,6,'Bagus','4');

/* Trigger structure for table `mitra` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `hapus_mitra` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `hapus_mitra` AFTER DELETE ON `mitra` FOR EACH ROW BEGIN
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
END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;