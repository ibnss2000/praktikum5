/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.8-MariaDB : Database - shopping-cart
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shopping-cart` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `shopping-cart`;

/*Table structure for table `tb_detail_order` */

DROP TABLE IF EXISTS `tb_detail_order`;

CREATE TABLE `tb_detail_order` (
  `id_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `pembelian` int(11) NOT NULL,
  PRIMARY KEY (`id_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `tb_detail_order` */

insert  into `tb_detail_order`(`id_detail`,`id_order`,`id_produk`,`pembelian`) values 
(1,44,1,2),
(2,44,2,2),
(3,45,1,1),
(4,45,2,3),
(5,46,1,2),
(6,46,2,3),
(7,46,3,1),
(8,47,1,1),
(9,48,2,2),
(10,49,1,1),
(11,50,1,1),
(12,51,1,1),
(13,52,4,1),
(14,53,1,1);

/*Table structure for table `tb_order` */

DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tb_order` (
  `id_order` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `total_item` int(11) NOT NULL,
  `total_bayar` float NOT NULL,
  `tgl_transaksi` date NOT NULL,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

/*Data for the table `tb_order` */

insert  into `tb_order`(`id_order`,`total_item`,`total_bayar`,`tgl_transaksi`) values 
(52,1,14000,'2021-04-22'),
(53,1,11000,'2021-04-22');

/*Table structure for table `tb_produk` */

DROP TABLE IF EXISTS `tb_produk`;

CREATE TABLE `tb_produk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(50) NOT NULL,
  `harga` float NOT NULL,
  `stok` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tb_produk` */

insert  into `tb_produk`(`id`,`nama_produk`,`harga`,`stok`) values 
(1,'jaket kulit',11000,2),
(2,'kaos distro',12000,3),
(3,'celana lepis',13000,4),
(4,'Sepatu Jordan',14000,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
