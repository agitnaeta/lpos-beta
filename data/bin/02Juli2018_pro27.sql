-- MySQL dump 10.13  Distrib 5.5.13, for Win32 (x86)
--
-- Host: localhost    Database: pos
-- ------------------------------------------------------
-- Server version	5.5.13-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id_admin` char(5) DEFAULT NULL,
  `username` char(50) DEFAULT NULL,
  `password` char(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('001','admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biaya`
--

DROP TABLE IF EXISTS `biaya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biaya` (
  `id_biaya` char(13) DEFAULT NULL,
  `tgl_biaya` date DEFAULT NULL,
  `jmlh_biaya` float DEFAULT NULL,
  `keterangan` char(90) DEFAULT NULL,
  `id_user` char(5) DEFAULT NULL,
  `nama_kasir` char(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biaya`
--

LOCK TABLES `biaya` WRITE;
/*!40000 ALTER TABLE `biaya` DISABLE KEYS */;
INSERT INTO `biaya` VALUES ('O190117085405','2017-01-19',100000,'Nasi Padang','001','MUL'),('R180217154155','2017-02-18',50000,'Shampo Metal Kadaluarsa','adm','administrator'),('R180217154826','2017-02-18',29000,'Sarimi Kadaluarsa','adm','administrator');
/*!40000 ALTER TABLE `biaya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brg_distributor`
--

DROP TABLE IF EXISTS `brg_distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brg_distributor` (
  `id_distributor` char(13) DEFAULT NULL,
  `kode_brg` char(13) DEFAULT NULL,
  `barcode` char(35) DEFAULT NULL,
  `nama_brg` char(50) DEFAULT NULL,
  `satuan` char(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brg_distributor`
--

LOCK TABLES `brg_distributor` WRITE;
/*!40000 ALTER TABLE `brg_distributor` DISABLE KEYS */;
INSERT INTO `brg_distributor` VALUES ('D180324142217','040816174537','1','Nuvo','Pcs'),('D180324142217','210318155541','555','555','555'),('D180324142217','050917184825','8991906101644','Djarum Coklat','Pcs'),('D161224085342','250217203054','','Gg Mild','Pcs'),('D161224085342','210217204809','','Kromachin','Unit');
/*!40000 ALTER TABLE `brg_distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_brg`
--

DROP TABLE IF EXISTS `data_brg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_brg` (
  `kode_brg` char(13) NOT NULL,
  `barcode` char(20) DEFAULT NULL,
  `nama_brg` char(50) DEFAULT NULL,
  `kategori` char(20) DEFAULT NULL,
  `satuan` char(10) DEFAULT NULL,
  `isi` float DEFAULT '0',
  `satuan_up` char(10) DEFAULT NULL,
  `harga_beli` float DEFAULT '0',
  `limit1` float DEFAULT '0',
  `limit2` float DEFAULT '0',
  `limit3` float DEFAULT '0',
  `limit4` float DEFAULT '0',
  `harga_jual1` float DEFAULT '0',
  `harga_jual2` float DEFAULT '0',
  `harga_jual3` float DEFAULT '0',
  `harga_jual4` float DEFAULT '0',
  `kode_up` char(13) DEFAULT NULL,
  `rak` char(5) DEFAULT NULL,
  `id_distributor` char(13) DEFAULT NULL,
  PRIMARY KEY (`kode_brg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_brg`
--

LOCK TABLES `data_brg` WRITE;
/*!40000 ALTER TABLE `data_brg` DISABLE KEYS */;
INSERT INTO `data_brg` VALUES ('20417113610','','Maximus','Peliharaan','Pcs',12,'',10000,0,0,0,0,10500,11000,11500,12000,'','',''),('30816150116','','Sampo Metal','Sampho','Dus',12,'',46500,0,0,0,0,47000,48000,49000,50000,'','',''),('40816174537','1','Nuvo','Sabun','Pcs',12,'',2000,0,0,0,0,3000,4000,5000,6000,'','',''),('40816200542','2','Sarimi Soto Kuya','Mie Instan','Dus',12,'',25000,0,0,0,0,26000,27500,28000,29000,'','',''),('50917184825','8991906101644','Djarum Coklat','Rokok','Pcs',12,'Batang',10000,0,0,0,0,10500,11000,11500,14000,'210318154743','1',''),('50917184944','8990751000010','Sin Paltinum','Rokok','Pcs',12,'',9000,0,0,0,0,9450,9900,10350,10800,'','',''),('50917185020','8998989300391','Surya Pro Mild','Rokok','Pcs',12,'',14000,0,0,0,0,14700,15400,16100,16800,'','',''),('90816165255','','LG Magenta','Kulkas','Unit',12,'',11111,0,0,0,0,11111,22222,33333,44444,'','',''),('90816165347','21','Polytron Graucilla','Kulkas','Dus',12,'',112121,0,0,0,0,212121,300000,400000,500000,'','',''),('180217163742','','Sanex Ultra High Speed Motor','Mainan','Unit',12,'',100000,0,0,0,0,105000,110000,115000,120000,'','',''),('210217204809','','Kromachin','Mesin Cuci','Unit',12,'',2000000,0,0,0,0,2100000,2200000,2300000,2400000,'','',''),('250217100709','','Sampoerna Mild','Rokok','Pcs',12,'',18000,1,15,25,35,21600,20700,19800,18900,'','',''),('250217203054','','Gg Mild','Rokok','Pcs',12,'',29,1,9,19,29,20400,19550,18700,17850,'','',''),('280217142218','','Monkey King Diecast','Mainan','Unit',12,'',240000,1,10,20,30,280000,270000,260000,250000,'','',''),('251117194036','8998181941132','Dunhill','Rokok','Pcs',12,'',9000,1,10,20,30,9450,9900,10350,10800,'','',''),('251117194328','8998989300155','Gudang Garam Signature','Rokok','Pcs',12,'',15555,1,10,20,30,1633280,171105,1788820,18666,'','',''),('10318113400','00BLPJ0417','Kolor Sakti','Pakaian Dalam','Pcs',12,'',60000,1,10,20,30,63000,66000,69000,70000,'','',''),('210318154743','321','Djarum Coklat','Rokok','Slope',24,'Pcs',10000,1,10,20,30,10500,11000,11500,12000,'','1',''),('210318155128','123','123','123','123',123,'123',123,1,10,20,30,12915,1353,14145,10000,'210318154743',NULL,'D161224085342'),('210318155541','555','555','555','555',555,'555',555,1,10,20,30,58275,6105,63825,666,'180217163742','',''),('11','11','Sayur Bubuk','Makanan','dus',33,'BKS',50000,22,22,22,22,52000,52000,52000,52000,'AAA','',''),('9','2','Sayur Bubuk','Makanan','dus',11,'BKS',50000,22,22,22,22,52000,52000,52000,52000,'ABB','',''),('110','11','Sayur Bubuk','Makanan','dus',22,'BKS',50000,22,22,22,22,52000,52000,52000,52000,'ACC','',''),('2239','2','Sayur Bubuk','Makanan','dus',66,'BKS',50000,22,22,22,22,52000,52000,52000,52000,'ADD','',''),('Z070418221706','Qwerty','Qwerty','Qw','qw',0,'',50000,0,0,0,0,52500,55000,57500,60000,'','',''),('Z080418072525','555','212','212','212',0,'',5000,0,0,0,0,5250,5500,5750,6000,'','','');
/*!40000 ALTER TABLE `data_brg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diskon_brg`
--

DROP TABLE IF EXISTS `diskon_brg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diskon_brg` (
  `kode_brg` char(13) NOT NULL,
  `barcode` char(35) DEFAULT NULL,
  `nama_brg` char(50) DEFAULT NULL,
  `satuan` char(10) DEFAULT NULL,
  `harga_beli` float DEFAULT NULL,
  `harga_jual` float DEFAULT NULL,
  `diskon` float DEFAULT NULL,
  `tgl_berlaku` date DEFAULT NULL,
  PRIMARY KEY (`kode_brg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diskon_brg`
--

LOCK TABLES `diskon_brg` WRITE;
/*!40000 ALTER TABLE `diskon_brg` DISABLE KEYS */;
/*!40000 ALTER TABLE `diskon_brg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diskon_member`
--

DROP TABLE IF EXISTS `diskon_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diskon_member` (
  `id_member` char(13) NOT NULL,
  `nama_member` char(30) DEFAULT NULL,
  `alamat_member` char(90) DEFAULT NULL,
  `kontak_member` char(13) DEFAULT NULL,
  `status` char(13) DEFAULT NULL,
  `diskon` float DEFAULT NULL,
  PRIMARY KEY (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diskon_member`
--

LOCK TABLES `diskon_member` WRITE;
/*!40000 ALTER TABLE `diskon_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `diskon_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diskon_member1`
--

DROP TABLE IF EXISTS `diskon_member1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diskon_member1` (
  `id_member` char(13) DEFAULT NULL,
  `nama_member` char(30) DEFAULT NULL,
  `kode_brg` char(13) DEFAULT NULL,
  `nama_brg` char(50) DEFAULT NULL,
  `satuan` char(10) DEFAULT NULL,
  `potongan` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diskon_member1`
--

LOCK TABLES `diskon_member1` WRITE;
/*!40000 ALTER TABLE `diskon_member1` DISABLE KEYS */;
INSERT INTO `diskon_member1` VALUES ('MPE3012143638','HARGA TAS','3012081732','BAHAN SPANDUK','M2',12000),('<Masukan id m','M150316125054','Nana Kobayash','140316142638','Dus',10000),('<Masukan id m','M150316125054','Nana Kobayash','140316142638','Dus',10000),('M150316125054','Nana Kobayashi','140316142638','Sarimi Soto Kuya','Dus',10000),('M150316125054','Nana Kobayashi','150316113742','Kopi Sianida','Pcs',5000),('MPE3012195135','DADANG SUTISNA','050917184825','Djarum Coklat','Pcs',1000),('M171216184143','Atep','250217203054','Gg Mild','Pcs',1000),('MPE3012195135','DADANG SUTISNA','010318113400','Kolor Sakti','Pcs',10000),('MPE3012195135','DADANG SUTISNA','090816165255','LG Magenta','Unit',15000);
/*!40000 ALTER TABLE `diskon_member1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor`
--

DROP TABLE IF EXISTS `distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distributor` (
  `id_distributor` char(13) NOT NULL,
  `nama_perusahaan` char(30) DEFAULT NULL,
  `nama_petugas` char(30) DEFAULT NULL,
  `kontak` char(13) DEFAULT NULL,
  PRIMARY KEY (`id_distributor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor`
--

LOCK TABLES `distributor` WRITE;
/*!40000 ALTER TABLE `distributor` DISABLE KEYS */;
INSERT INTO `distributor` VALUES ('D161224085342','Mul Corp','Blackburn','085222222666'),('D180324142217','Latex','Jajng Nurkanda','124578');
/*!40000 ALTER TABLE `distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hutang`
--

DROP TABLE IF EXISTS `hutang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hutang` (
  `id_hutang` char(13) DEFAULT NULL,
  `tgl_hutang` date DEFAULT NULL,
  `jmlh_hutang` float DEFAULT NULL,
  `keterangan` char(90) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hutang`
--

LOCK TABLES `hutang` WRITE;
/*!40000 ALTER TABLE `hutang` DISABLE KEYS */;
INSERT INTO `hutang` VALUES ('H180324135530','2018-03-24',20000000,'DP Mobil');
/*!40000 ALTER TABLE `hutang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kasir`
--

DROP TABLE IF EXISTS `kasir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kasir` (
  `id` char(13) NOT NULL,
  `nama_kasir` char(30) DEFAULT NULL,
  `alamat_kasir` char(90) DEFAULT NULL,
  `kontak_kasir` char(13) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kasir`
--

LOCK TABLES `kasir` WRITE;
/*!40000 ALTER TABLE `kasir` DISABLE KEYS */;
/*!40000 ALTER TABLE `kasir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id_member` char(13) NOT NULL,
  `nama_member` char(30) DEFAULT NULL,
  `alamat_member` char(90) DEFAULT NULL,
  `kontak_member` char(13) DEFAULT NULL,
  `status` char(13) DEFAULT NULL,
  PRIMARY KEY (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('M150316125054','Nana Kobayashi','Jl. Legok Lebe, Desa Cigintung, Cisitu-sumedang','081322461542','Aktif'),('M170316105204','Jabrig','Jln Ketib Sumedang','','Aktif'),('M171216184143','Atep','Cidenpet','0987654','Aktif'),('MPE3012143638','HARGA TAS','???','','AKTIF'),('MPE3012160302','Dela Marlina','Dsn. Citimun, Sumedang','087654178656','Nonaktif'),('MPE3012195135','DADANG SUTISNA','Dsn. Cijelag RT05/07, Sumedang','089756423331','AKTIF'),('MPE3012195357','IRNA OKTAVIANA S','TANJUNGSARI RT01/01, SUMEDANG UTARA','087413276354','AKTIF');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pemasukan`
--

DROP TABLE IF EXISTS `pemasukan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pemasukan` (
  `tgl_trnsksi` date DEFAULT NULL,
  `id_trnsksi` char(13) NOT NULL,
  `total_beli` float DEFAULT NULL,
  `total_jual` float DEFAULT NULL,
  `total_piutang` float DEFAULT NULL,
  `total_biaya` float DEFAULT NULL,
  `total_hutang` float DEFAULT NULL,
  PRIMARY KEY (`id_trnsksi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemasukan`
--

LOCK TABLES `pemasukan` WRITE;
/*!40000 ALTER TABLE `pemasukan` DISABLE KEYS */;
INSERT INTO `pemasukan` VALUES ('2017-04-01','J010417115451',0,18000,0,0,0),('2017-04-01','J010417115506',0,18000,0,0,0),('2017-04-01','J010417115650',0,18000,0,0,0),('2017-04-01','J010417115710',0,68900,0,0,0),('2017-04-01','J010417124559',0,100000,0,0,0),('2017-04-01','J010417124612',0,29000,0,0,0),('2017-09-05','J050917202500',0,103300,0,0,0),('2017-09-05','J050917204513',0,103300,0,0,0),('2017-09-05','J050917204649',0,103300,0,0,0),('2017-09-05','J050917205421',0,103300,0,0,0),('2017-09-05','J050917205445',0,103300,0,0,0),('2017-09-05','J050917205505',0,103300,0,0,0),('2017-09-05','J050917213435',0,103300,0,0,0),('2017-09-05','J050917213908',0,103300,0,0,0),('2017-09-05','J050917214329',0,145072,0,0,0),('2017-09-05','J050917214729',0,145072,0,0,0),('2017-02-11','J110217214610',0,262500,0,0,0),('2017-02-11','J110217214908',0,620000,0,0,0),('2017-02-11','J110217222538',0,237000,0,0,0),('2017-03-11','J110317111825',0,64800,0,0,0),('2017-03-11','J110317112343',0,237600,0,0,0),('2017-03-11','J110317112533',0,21600,0,0,0),('2017-09-13','J130917131307',0,2254770,0,0,0),('2017-09-15','J150917110041',0,2232550,0,0,0),('2017-09-15','J150917110254',0,2232550,0,0,0),('2017-09-15','J150917110429',0,2232550,0,0,0),('2017-09-15','J150917110939',0,2232550,0,0,0),('2017-09-15','J150917111548',0,2232550,0,0,0),('2017-09-15','J150917111656',0,2232550,0,0,0),('2017-09-15','J150917111950',0,2232550,0,0,0),('2017-09-15','J150917112602',0,2232550,0,0,0),('2017-09-15','J150917112612',0,3346850,0,0,0),('2017-09-15','J150917113513',0,3242270,0,0,0),('2017-02-16','J160217200108',0,94444,0,0,0),('2017-02-16','J160217200204',0,29000,0,0,0),('2017-02-16','J160217200610',0,41000,0,0,0),('2017-02-16','J160217200931',0,35000,0,0,0),('2017-03-19','J190317091319',0,21600,0,0,0),('2017-01-23','J230117102734',0,50000,0,0,0),('2017-02-25','J250217200822',0,435600,0,0,0),('2017-02-25','J250217201235',0,396000,0,0,0),('2017-04-25','J250417110940',0,2566770,0,0,0),('2017-04-25','J250417111018',0,2566770,0,0,0),('2017-02-28','J280217102735',0,21600,0,0,0),('2017-02-28','J280217103150',0,21600,0,0,0),('2017-02-28','J280217103201',0,21600,0,0,0),('2017-02-28','J280217103246',0,43200,0,0,0),('2017-02-28','J280217142236',0,12320000,0,0,0),('2017-02-28','J280217142355',0,2860000,0,0,0),('2017-02-28','J280217142642',0,250000,0,0,0),('2017-02-28','J280217143155',0,500000,0,0,0),('2017-02-28','J280217143528',0,250000,0,0,0),('2017-02-18','R180217154826',0,0,0,29000,0),('2018-02-15','J150218163556',0,65000,0,0,0),('2018-02-15','J150218163853',0,39000,0,0,0),('2018-03-01','J010318114802',0,504000,0,0,0),('2018-03-01','J010318120336',0,360000,0,0,0),('2018-03-01','J010318121539',0,72000,0,0,0),('2018-03-01','J010318121953',0,72000,0,0,0),('2018-03-01','J010318122230',0,72000,0,0,0),('2018-03-01','J010318122502',0,144000,0,0,0),('2018-03-01','J010318125217',0,216000,0,0,0),('2018-03-01','J010318125404',0,70000,0,0,0),('2018-03-01','J010318125851',0,72000,0,0,0),('2018-03-01','J010318125918',0,70000,0,0,0),('2018-03-01','J010318132111',0,62000,0,0,0),('2018-03-01','B010318133335',180000,0,0,0,0),('2018-03-01','J010318133410',0,216000,0,0,0),('2018-03-02','B020318090556',60000,0,0,0,0),('2018-03-23','H180321085200',0,0,0,0,1000000),('2018-03-21','P180321090252',0,0,1000000,0,0),('2018-03-21','B210318141254',11000,0,0,0,0),('2018-03-21','J210318142212',0,25000,0,0,0),('2018-03-21','J210318163829',0,52000,0,0,0),('2018-03-21','J210318170442',0,143000,0,0,0),('2018-03-21','J210318172728',0,52000,0,0,0),('2018-03-21','J210318173655',0,52000,0,0,0),('2018-03-21','J210318175659',0,52000,0,0,0),('2018-03-23','J230318075409',0,672000,0,0,0),('2018-03-23','J230318075807',0,1476,0,0,0),('2018-03-23','J230318081051',0,420000,0,0,0),('2018-03-23','J230318120509',0,84000,0,0,0),('2018-03-23','J230318120516',0,84000,0,0,0),('2018-03-23','J230318125612',0,48000,0,0,0),('2018-03-23','J230318125626',0,48000,0,0,0),('2018-03-23','J230318125700',0,24000,0,0,0),('2018-03-23','J230318132917',0,2280000,0,0,0),('2018-03-23','J230318132929',0,48000,0,0,0),('2018-03-23','J230318133006',0,2280000,0,0,0),('2018-03-23','B230318133047',2100000,0,0,0,0),('2018-03-23','J230318134818',0,48000,0,0,0),('2018-03-23','J230318134826',0,2280000,0,0,0),('2018-03-23','B230318134904',2100000,0,0,0,0),('2018-03-24','H180324135530',0,0,0,0,19800000),('2018-03-24','H180324140310',0,0,0,0,25000000),('2018-03-24','H180324141916',0,0,0,0,28000000),('2018-03-24','H180324142551',0,0,0,0,27000000),('2018-03-30','J300318232856',0,56000,0,0,0),('2018-03-30','J300318233022',0,56000,0,0,0),('2018-04-15','J150418220655',0,56000,0,0,0),('2018-04-15','J150418220945',0,56000,0,0,0),('2018-04-15','J150418221231',0,56000,0,0,0),('2018-04-15','J150418222408',0,56000,0,0,0),('2018-04-15','J150418222934',0,56000,0,0,0),('2018-04-15','J150418223724',0,80000,0,0,0),('2018-04-15','J150418224056',0,80000,0,0,0),('2018-04-15','J150418224414',0,80000,0,0,0),('2018-04-15','J150418224922',0,24000,0,0,0),('2018-04-15','J150418224956',0,24000,0,0,0),('2018-04-15','J150418225015',0,80000,0,0,0),('2018-04-15','J150418225544',0,80000,0,0,0),('2018-04-18','J180418220119',0,80000,0,0,0),('2018-04-18','J180418220713',0,80000,0,0,0),('2018-04-18','J180418221155',0,80000,0,0,0),('2018-04-18','J180418221835',0,80000,0,0,0),('2018-04-18','J180418222918',0,80000,0,0,0),('2018-04-18','J180418223530',0,80000,0,0,0),('2018-04-18','J180418223713',0,80000,0,0,0),('2018-04-18','J180418223734',0,80000,0,0,0),('2018-04-20','B200418211206',801,0,0,0,0),('2018-04-20','B200418230747',20123,0,0,0,0);
/*!40000 ALTER TABLE `pemasukan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembelian`
--

DROP TABLE IF EXISTS `pembelian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembelian` (
  `id_beli` char(13) DEFAULT NULL,
  `tgl_beli` date DEFAULT NULL,
  `kode_brg` char(13) DEFAULT NULL,
  `barcode` char(20) DEFAULT NULL,
  `nama_brg` char(50) DEFAULT NULL,
  `kategori` char(20) DEFAULT NULL,
  `harga_beli` float DEFAULT NULL,
  `harga_jual` float DEFAULT NULL,
  `jumlah` float DEFAULT NULL,
  `satuan` char(10) DEFAULT NULL,
  `total_hrg_beli` float DEFAULT NULL,
  `id_user` char(5) DEFAULT NULL,
  `nama_kasir` char(30) DEFAULT NULL,
  `nego` float DEFAULT NULL,
  `keterangan` char(90) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembelian`
--

LOCK TABLES `pembelian` WRITE;
/*!40000 ALTER TABLE `pembelian` DISABLE KEYS */;
INSERT INTO `pembelian` VALUES ('B060816093226','2016-08-06','040816200542','','Sarimi Soto Kuya',NULL,25000,26000,1,'Dus',25000,'001','MUL',71000,''),('B060816093226','2016-08-06','030816150116','','Sampo Metal',NULL,46500,47000,1,'Dus',46500,'001','MUL',71000,''),('B010318133335','2018-03-01','010318113400','00BLPJ0417','Kolor Sakti','Edit27',60000,63000,3,'Pcs',180000,'adm','administrator',0,''),('B020318090556','2018-03-02','010318113400','','Kolor Sakti','Pakaian Dalam',60000,63000,1,'Pcs',60000,'adm','administrator',0,''),('B210318141254','2018-03-21','050917184825','','Djarum Coklat','Rokok',11000,13000,1,'Pcs',11000,'adm','administrator',0,''),('B230318133047','2018-03-23','210318154743','321','Djarum Coklat','Edit27',70000,73000,30,'Slope',2100000,'adm','administrator',0,''),('B230318134904','2018-03-23','210318154743','','Djarum Coklat','Rokok',70000,73000,30,'Slope',2100000,'adm','administrator',0,''),('B200418211206','2018-04-20','210318155128','','123','123',123,12915,1,'123',123,'adm','administrator',0,''),('B200418211206','2018-04-20','Z080418072525','','212','212',5000,5250,1,'212',5000,'adm','administrator',0,''),('B200418211206','2018-04-20','210318155128','','123','123',123,12915,2,'123',246,'adm','administrator',0,''),('B200418211206','2018-04-20','210318155541','','555','555',555,58275,1,'555',555,'adm','administrator',0,''),('B200418230747','2018-04-20','210318155128','','123','123',123,12915,1,'123',123,'adm','administrator',0,''),('B200418230747','2018-04-20','Z080418072525','','212','212',5000,5250,2,'212',10000,'adm','administrator',0,''),('B200418230747','2018-04-20','210318154743','','Djarum Coklat','Rokok',10000,10500,1,'Slope',10000,'adm','administrator',0,'');
/*!40000 ALTER TABLE `pembelian` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER beli AFTER INSERT ON pembelian
FOR EACH ROW BEGIN
insert into stok set
kode_brg=new.kode_brg,
barcode=new.barcode,
nama_brg=new.nama_brg,
jumlah=new.jumlah,
satuan=new.satuan
on duplicate key update jumlah=jumlah+new.jumlah;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `penjualan`
--

DROP TABLE IF EXISTS `penjualan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penjualan` (
  `id_jual` char(13) DEFAULT NULL,
  `tgl_jual` date DEFAULT NULL,
  `kode_brg` char(13) DEFAULT NULL,
  `barcode` char(35) DEFAULT NULL,
  `nama_brg` char(50) DEFAULT NULL,
  `kategori` char(20) DEFAULT NULL,
  `harga_beli` float DEFAULT NULL,
  `harga_jual` float DEFAULT NULL,
  `jumlah` float DEFAULT NULL,
  `satuan` char(10) DEFAULT NULL,
  `potongan` float DEFAULT NULL,
  `total_hrg_beli` float DEFAULT NULL,
  `total_hrg_jual` float DEFAULT NULL,
  `id_user` char(5) DEFAULT NULL,
  `nama_kasir` char(30) DEFAULT NULL,
  `nego` float DEFAULT NULL,
  `keterangan` char(90) DEFAULT NULL,
  `id_member` char(13) DEFAULT NULL,
  `nama_member` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penjualan`
--

LOCK TABLES `penjualan` WRITE;
/*!40000 ALTER TABLE `penjualan` DISABLE KEYS */;
INSERT INTO `penjualan` VALUES ('J150418220655','2018-04-15','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J150418220945','2018-04-15','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J150418221231','2018-04-15','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J150418222408','2018-04-15','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J150418222934','2018-04-15','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J150418223724','2018-04-15','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J150418223724','2018-04-15','Z150418223622','','Ss','Ss',5000,6000,4,'Pack',NULL,20000,24000,'adm','administrator',0,'','',''),('J150418224056','2018-04-15','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,10000,56000,'adm','administrator',0,'','',''),('J150418224056','2018-04-15','Z150418223622','','Ss','Ss',5000,6000,4,'Pack',NULL,20000,24000,'adm','administrator',0,'','',''),('J150418224414','2018-04-15','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J150418224414','2018-04-15','Z150418223622','','Ss','Ss',5000,6000,4,'Pack',NULL,20000,24000,'adm','administrator',0,'','',''),('J150418224922','2018-04-15','Z150418223622','','Ss','Ss',5000,6000,4,'Pack',NULL,20000,24000,'adm','administrator',0,'','',''),('J150418224956','2018-04-15','Z150418223622','','Ss','Ss',5000,6000,4,'Pack',NULL,20000,24000,'adm','administrator',0,'','',''),('J150418225015','2018-04-15','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J150418225015','2018-04-15','Z150418223622','','Ss','Ss',5000,6000,4,'Pack',NULL,20000,24000,'adm','administrator',0,'','',''),('J150418225544','2018-04-15','Z150418223622','','Ss','Ss',5000,6000,4,'Pack',NULL,20000,24000,'adm','administrator',0,'','',''),('J150418225544','2018-04-15','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J180418220119','2018-04-18','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J180418220119','2018-04-18','Z150418223622','','Ss','Ss',5000,6000,4,'Pack',NULL,20000,24000,'adm','administrator',0,'','',''),('J180418220713','2018-04-18','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J180418220713','2018-04-18','Z150418223622','','Ss','Ss',5000,6000,4,'Pack',NULL,20000,24000,'adm','administrator',0,'','',''),('J180418221155','2018-04-18','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J180418221155','2018-04-18','Z150418223622','','Ss','Ss',5000,6000,4,'Pack',NULL,20000,24000,'adm','administrator',0,'','',''),('J180418221835','2018-04-18','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J180418221835','2018-04-18','Z150418223622','','Ss','Ss',5000,6000,4,'Pack',NULL,20000,24000,'adm','administrator',0,'','',''),('J180418222918','2018-04-18','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J180418222918','2018-04-18','Z150418223622','','Ss','Ss',5000,6000,4,'Pack',NULL,20000,24000,'adm','administrator',0,'','',''),('J180418223530','2018-04-18','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J180418223530','2018-04-18','Z150418223622','','Ss','Ss',5000,6000,4,'Pack',NULL,20000,24000,'adm','administrator',0,'','',''),('J180418223713','2018-04-18','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J180418223713','2018-04-18','Z150418223622','','Ss','Ss',5000,6000,4,'Pack',NULL,20000,24000,'adm','administrator',0,'','',''),('J180418223734','2018-04-18','50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',NULL,40000,56000,'adm','administrator',0,'','',''),('J180418223734','2018-04-18','Z150418223622','','Ss','Ss',5000,6000,4,'Pack',NULL,20000,24000,'adm','administrator',0,'','','');
/*!40000 ALTER TABLE `penjualan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `jual` AFTER INSERT ON `penjualan` 
    FOR EACH ROW BEGIN
update stok set
barcode=new.barcode,
nama_brg=new.nama_brg,
jumlah=jumlah-new.jumlah,
`jumlah@rak`=`jumlah@rak`-new.jumlah,
satuan=new.satuan where kode_brg=new.kode_brg;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `penjualan1`
--

DROP TABLE IF EXISTS `penjualan1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penjualan1` (
  `id_jual` char(13) DEFAULT NULL,
  `tgl_jual` date DEFAULT NULL,
  `id_member` char(13) DEFAULT NULL,
  `nama_member` char(30) DEFAULT NULL,
  `kode_brg` char(30) DEFAULT NULL,
  `barcode` char(20) DEFAULT NULL,
  `nama_brg` char(50) DEFAULT NULL,
  `harga_beli` float DEFAULT '0',
  `harga_jual` float DEFAULT '0',
  `jumlah` float DEFAULT '0',
  `satuan` char(10) DEFAULT NULL,
  `potongan` float DEFAULT '0',
  `total_hrg_jual` float DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penjualan1`
--

LOCK TABLES `penjualan1` WRITE;
/*!40000 ALTER TABLE `penjualan1` DISABLE KEYS */;
INSERT INTO `penjualan1` VALUES ('J050917202500','2017-09-05','MPE3012160302','Dela Marlina','050917184944','8990751000010','Sin Paltinum',9000,9900,1,'Pcs',NULL,9900),('J050917202500','2017-09-05','MPE3012160302','Dela Marlina','050917185020','8998989300391','Surya Pro Mild',14000,15400,1,'Pcs',NULL,15400),('J050917202500','2017-09-05','MPE3012160302','Dela Marlina','050917184825','','Djarum Coklat',10000,13000,6,'Pcs',NULL,78000),('J050917204513','2017-09-05','M170316105204','Jabrig','050917184944','8990751000010','Sin Paltinum',9000,9900,1,'Pcs',NULL,9900),('J050917204513','2017-09-05','M170316105204','Jabrig','050917185020','8998989300391','Surya Pro Mild',14000,15400,1,'Pcs',NULL,15400),('J050917204513','2017-09-05','M170316105204','Jabrig','050917184825','','Djarum Coklat',10000,13000,6,'Pcs',NULL,78000),('J050917204649','2017-09-05','M150316125054','Nana Kobayashi','050917184944','8990751000010','Sin Paltinum',9000,9900,1,'Pcs',NULL,9900),('J050917204649','2017-09-05','M150316125054','Nana Kobayashi','050917185020','8998989300391','Surya Pro Mild',14000,15400,1,'Pcs',NULL,15400),('J050917204649','2017-09-05','M150316125054','Nana Kobayashi','050917184825','','Djarum Coklat',10000,13000,6,'Pcs',NULL,78000),('J050917205421','2017-09-05','MPE3012195135','DADANG SUTISNA','050917184944','8990751000010','Sin Paltinum',9000,9900,1,'Pcs',NULL,9900),('J050917205421','2017-09-05','MPE3012195135','DADANG SUTISNA','050917185020','8998989300391','Surya Pro Mild',14000,15400,1,'Pcs',NULL,15400),('J050917205421','2017-09-05','MPE3012195135','DADANG SUTISNA','050917184825','','Djarum Coklat',10000,13000,6,'Pcs',NULL,78000),('J050917205445','2017-09-05','M150316125054','Nana Kobayashi','050917184944','8990751000010','Sin Paltinum',9000,9900,1,'Pcs',NULL,9900),('J050917205445','2017-09-05','M150316125054','Nana Kobayashi','050917185020','8998989300391','Surya Pro Mild',14000,15400,1,'Pcs',NULL,15400),('J050917205445','2017-09-05','M150316125054','Nana Kobayashi','050917184825','','Djarum Coklat',10000,13000,6,'Pcs',NULL,78000),('J050917205505','2017-09-05','MPE3012143638','HARGA TAS','050917184944','8990751000010','Sin Paltinum',9000,9900,1,'Pcs',NULL,9900),('J050917205505','2017-09-05','MPE3012143638','HARGA TAS','050917185020','8998989300391','Surya Pro Mild',14000,15400,1,'Pcs',NULL,15400),('J050917205505','2017-09-05','MPE3012143638','HARGA TAS','050917184825','','Djarum Coklat',10000,13000,6,'Pcs',NULL,78000),('J050917213435','2017-09-05','MPE3012195357','IRNA OKTAVIANA S','050917184944','8990751000010','Sin Paltinum',9000,9900,1,'Pcs',NULL,9900),('J050917213435','2017-09-05','MPE3012195357','IRNA OKTAVIANA S','050917185020','8998989300391','Surya Pro Mild',14000,15400,1,'Pcs',NULL,15400),('J050917213435','2017-09-05','MPE3012195357','IRNA OKTAVIANA S','050917184825','','Djarum Coklat',10000,13000,6,'Pcs',NULL,78000),('J050917213908','2017-09-05','MPE3012160302','Dela Marlina','050917184944','8990751000010','Sin Paltinum',9000,9900,1,'Pcs',NULL,9900),('J050917213908','2017-09-05','MPE3012160302','Dela Marlina','050917185020','8998989300391','Surya Pro Mild',14000,15400,1,'Pcs',NULL,15400),('J050917213908','2017-09-05','MPE3012160302','Dela Marlina','050917184825','','Djarum Coklat',10000,13000,6,'Pcs',NULL,78000),('J050917214329','2017-09-05','MPE3012195135','DADANG SUTISNA','050917184944','8990751000010','Sin Paltinum',9000,9900,1,'Pcs',NULL,9900),('J050917214329','2017-09-05','MPE3012195135','DADANG SUTISNA','050917185020','8998989300391','Surya Pro Mild',14000,15400,1,'Pcs',NULL,15400),('J050917214329','2017-09-05','MPE3012195135','DADANG SUTISNA','050917184825','','Djarum Coklat',10000,13000,6,'Pcs',NULL,78000),('J050917214329','2017-09-05','MPE3012195135','DADANG SUTISNA','250217203054','','Gg Mild',29,19550,1,'Pcs',NULL,19550),('J050917214329','2017-09-05','MPE3012195135','DADANG SUTISNA','090816165255','','LG Magenta',11111,22222,1,'Unit',NULL,22222),('J050917214729','2017-09-05','M170316105204','Jabrig','050917184944','8990751000010','Sin Paltinum',9000,9900,1,'Pcs',NULL,9900),('J050917214729','2017-09-05','M170316105204','Jabrig','050917185020','8998989300391','Surya Pro Mild',14000,15400,1,'Pcs',NULL,15400),('J050917214729','2017-09-05','M170316105204','Jabrig','050917184825','','Djarum Coklat',10000,13000,6,'Pcs',NULL,78000),('J050917214729','2017-09-05','M170316105204','Jabrig','250217203054','','Gg Mild',29,19550,1,'Pcs',NULL,19550),('J050917214729','2017-09-05','M170316105204','Jabrig','090816165255','','LG Magenta',11111,22222,1,'Unit',NULL,22222),('J130917131307','2017-09-13','M171216184143','Atep','050917184825','','Djarum Coklat',10000,13000,1,'Pcs',NULL,13000),('J130917131307','2017-09-13','M171216184143','Atep','250217203054','','Gg Mild',29,19550,1,'Pcs',NULL,19550),('J130917131307','2017-09-13','M171216184143','Atep','210217204809','','Kromachin',2000000,2200000,1,'Unit',NULL,2200000),('J130917131307','2017-09-13','M171216184143','Atep','090816165255','','LG Magenta',11111,22222,1,'Unit',NULL,22222),('J150917110041','2017-09-15','M170316105204','Jabrig','050917184825','','Djarum Coklat',10000,13000,1,'Pcs',NULL,13000),('J150917110041','2017-09-15','M170316105204','Jabrig','250217203054','','Gg Mild',29,19550,1,'Pcs',NULL,19550),('J150917110041','2017-09-15','M170316105204','Jabrig','210217204809','','Kromachin',2000000,2200000,1,'Unit',NULL,2200000),('J150917110254','2017-09-15','M170316105204','Jabrig','050917184825','','Djarum Coklat',10000,13000,1,'Pcs',NULL,13000),('J150917110254','2017-09-15','M170316105204','Jabrig','250217203054','','Gg Mild',29,19550,1,'Pcs',NULL,19550),('J150917110254','2017-09-15','M170316105204','Jabrig','210217204809','','Kromachin',2000000,2200000,1,'Unit',NULL,2200000),('J150917110429','2017-09-15','MPE3012160302','Dela Marlina','050917184825','','Djarum Coklat',10000,13000,1,'Pcs',NULL,13000),('J150917110429','2017-09-15','MPE3012160302','Dela Marlina','250217203054','','Gg Mild',29,19550,1,'Pcs',NULL,19550),('J150917110429','2017-09-15','MPE3012160302','Dela Marlina','210217204809','','Kromachin',2000000,2200000,1,'Unit',NULL,2200000),('J150917110939','2017-09-15','M150316125054','Nana Kobayashi','050917184825','','Djarum Coklat',10000,13000,1,'Pcs',NULL,13000),('J150917110939','2017-09-15','M150316125054','Nana Kobayashi','250217203054','','Gg Mild',29,19550,1,'Pcs',NULL,19550),('J150917110939','2017-09-15','M150316125054','Nana Kobayashi','210217204809','','Kromachin',2000000,2200000,1,'Unit',NULL,2200000),('J150917111548','2017-09-15','M150316125054','Nana Kobayashi','050917184825','','Djarum Coklat',10000,13000,1,'Pcs',NULL,13000),('J150917111548','2017-09-15','M150316125054','Nana Kobayashi','250217203054','','Gg Mild',29,19550,1,'Pcs',NULL,19550),('J150917111548','2017-09-15','M150316125054','Nana Kobayashi','210217204809','','Kromachin',2000000,2200000,1,'Unit',NULL,2200000),('J150917111548','2017-09-15','M150316125054','Nana Kobayashi','050917184825','','Djarum Coklat',10000,13000,1,'Pcs',NULL,13000),('J150917111548','2017-09-15','M150316125054','Nana Kobayashi','250217203054','','Gg Mild',29,19550,1,'Pcs',NULL,19550),('J150917111548','2017-09-15','M150316125054','Nana Kobayashi','210217204809','','Kromachin',2000000,2200000,1,'Unit',NULL,2200000),('J150917111656','2017-09-15','M170316105204','Jabrig','050917184825','','Djarum Coklat',10000,13000,1,'Pcs',NULL,13000),('J150917111656','2017-09-15','M170316105204','Jabrig','250217203054','','Gg Mild',29,19550,1,'Pcs',NULL,19550),('J150917111656','2017-09-15','M170316105204','Jabrig','210217204809','','Kromachin',2000000,2200000,1,'Unit',NULL,2200000),('J150917111950','2017-09-15','MPE3012195357','IRNA OKTAVIANA S','050917184825','','Djarum Coklat',10000,13000,1,'Pcs',NULL,13000),('J150917111950','2017-09-15','MPE3012195357','IRNA OKTAVIANA S','250217203054','','Gg Mild',29,19550,1,'Pcs',NULL,19550),('J150917111950','2017-09-15','MPE3012195357','IRNA OKTAVIANA S','210217204809','','Kromachin',2000000,2200000,1,'Unit',NULL,2200000),('J150917112602','2017-09-15','M171216184143','Atep','050917184825','','Djarum Coklat',10000,13000,1,'Pcs',NULL,13000),('J150917112602','2017-09-15','M171216184143','Atep','250217203054','','Gg Mild',29,19550,1,'Pcs',NULL,19550),('J150917112602','2017-09-15','M171216184143','Atep','210217204809','','Kromachin',2000000,2200000,1,'Unit',NULL,2200000),('J150917112612','2017-09-15','M171216184143','Atep','050917184825','','Djarum Coklat',10000,13000,1,'Pcs',NULL,13000),('J150917112612','2017-09-15','M171216184143','Atep','250217203054','','Gg Mild',29,19550,1,'Pcs',NULL,19550),('J150917112612','2017-09-15','M171216184143','Atep','210217204809','','Kromachin',2000000,2200000,1,'Unit',NULL,2200000),('J150917112612','2017-09-15','M171216184143','Atep','090816165255','','LG Magenta',11111,11111,1,'Unit',NULL,11111),('J150917112612','2017-09-15','M171216184143','Atep','020417113610','','Maximus',50000,52500,1,'Pcs',NULL,52500),('J150917112612','2017-09-15','M171216184143','Atep','280217142218','','Monkey King Diecast',240000,280000,1,'Unit',NULL,280000),('J150917112612','2017-09-15','M171216184143','Atep','040816174537','','Nuvo',2000,3000,1,'Pcs',NULL,3000),('J150917112612','2017-09-15','M171216184143','Atep','090816165347','','Polytron Graucilla',112121,212121,2,'Dus',NULL,424242),('J150917112612','2017-09-15','M171216184143','Atep','030816150116','','Sampo Metal',46500,47000,1,'Dus',NULL,47000),('J150917112612','2017-09-15','M171216184143','Atep','250217100709','','Sampoerna Mild',18000,21600,1,'Pcs',NULL,21600),('J150917112612','2017-09-15','M171216184143','Atep','180217163742','','Sanex Ultra High Speed Motor',100000,105000,2,'Unit',NULL,210000),('J150917112612','2017-09-15','M171216184143','Atep','040816200542','','Sarimi Soto Kuya',25000,26000,1,'Dus',NULL,26000),('J150917112612','2017-09-15','M171216184143','Atep','050917184944','','Sin Paltinum',9000,9450,1,'Pcs',NULL,9450),('J150917112612','2017-09-15','M171216184143','Atep','050917185020','','Surya Pro Mild',14000,14700,2,'Pcs',NULL,29400),('J150917113513','2017-09-15','MPE3012160302','Dela Marlina','050917184825','','Djarum Coklat',10000,13000,2,'Pcs',NULL,26000),('J150917113513','2017-09-15','MPE3012160302','Dela Marlina','250217203054','','Gg Mild',29,19550,1,'Pcs',NULL,19550),('J150917113513','2017-09-15','MPE3012160302','Dela Marlina','210217204809','','Kromachin',2000000,2200000,1,'Unit',NULL,2200000),('J150917113513','2017-09-15','MPE3012160302','Dela Marlina','090816165255','','LG Magenta',11111,22222,1,'Unit',NULL,22222),('J150917113513','2017-09-15','MPE3012160302','Dela Marlina','020417113610','','Maximus',50000,55000,1,'Pcs',NULL,55000),('J150917113513','2017-09-15','MPE3012160302','Dela Marlina','280217142218','','Monkey King Diecast',240000,270000,1,'Unit',NULL,270000),('J150917113513','2017-09-15','MPE3012160302','Dela Marlina','040816174537','','Nuvo',2000,4000,2,'Pcs',NULL,8000),('J150917113513','2017-09-15','MPE3012160302','Dela Marlina','090816165347','','Polytron Graucilla',112121,300000,1,'Dus',NULL,300000),('J150917113513','2017-09-15','MPE3012160302','Dela Marlina','030816150116','','Sampo Metal',46500,48000,1,'Dus',NULL,48000),('J150917113513','2017-09-15','MPE3012160302','Dela Marlina','250217100709','','Sampoerna Mild',18000,20700,1,'Pcs',NULL,20700),('J150917113513','2017-09-15','MPE3012160302','Dela Marlina','180217163742','','Sanex Ultra High Speed Motor',100000,110000,2,'Unit',NULL,220000),('J150917113513','2017-09-15','MPE3012160302','Dela Marlina','040816200542','','Sarimi Soto Kuya',25000,27500,1,'Dus',NULL,27500),('J150917113513','2017-09-15','MPE3012160302','Dela Marlina','050917184944','','Sin Paltinum',9000,9900,1,'Pcs',NULL,9900),('J150917113513','2017-09-15','MPE3012160302','Dela Marlina','050917185020','','Surya Pro Mild',14000,15400,1,'Pcs',NULL,15400);
/*!40000 ALTER TABLE `penjualan1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piutang`
--

DROP TABLE IF EXISTS `piutang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piutang` (
  `id_piutang` char(13) NOT NULL,
  `tgl_piutang` date DEFAULT NULL,
  `id_member` char(13) DEFAULT NULL,
  `nama_debtur` char(30) DEFAULT NULL,
  `alamat_debtur` char(90) DEFAULT NULL,
  `kontak_debtur` char(13) DEFAULT NULL,
  `plafond` float DEFAULT NULL,
  `keterangan` char(90) DEFAULT NULL,
  PRIMARY KEY (`id_piutang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piutang`
--

LOCK TABLES `piutang` WRITE;
/*!40000 ALTER TABLE `piutang` DISABLE KEYS */;
INSERT INTO `piutang` VALUES ('P160325200248','2016-03-25','','Riana Sulistini','Rancaekek','0192837465',900000,'Sarimi 32 Kardus'),('PG2130212847','2016-02-13','','YANA MULYANA','SUMEDANG UTARA','089111782364',300000,'Spanduk STMIK Sumedang');
/*!40000 ALTER TABLE `piutang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_member`
--

DROP TABLE IF EXISTS `point_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `point_member` (
  `tgl_belanja` date DEFAULT NULL,
  `id_belanja` char(13) DEFAULT NULL,
  `id_member` char(13) DEFAULT NULL,
  `nama_member` char(30) DEFAULT NULL,
  `alamat_member` char(90) DEFAULT NULL,
  `kontak_member` char(13) DEFAULT NULL,
  `total_belanja` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_member`
--

LOCK TABLES `point_member` WRITE;
/*!40000 ALTER TABLE `point_member` DISABLE KEYS */;
INSERT INTO `point_member` VALUES ('2017-04-01','J010417115650','MPE3012195135','DADANG SUTISNA','Dsn. Cijelag RT05/07, Sumedang','089756423331',18000),('2017-04-01','J010417115710','MPE3012160302','Dela Marlina','Dsn. Citimun, Sumedang','087654178656',68900),('2017-04-01','J010417124559','MPE3012195135','DADANG SUTISNA','Dsn. Cijelag RT05/07, Sumedang','089756423331',100000),('2017-04-01','J010417124612','MPE3012160302','Dela Marlina','Dsn. Citimun, Sumedang','087654178656',29000);
/*!40000 ALTER TABLE `point_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwayat_hutang`
--

DROP TABLE IF EXISTS `riwayat_hutang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `riwayat_hutang` (
  `id_hutang` char(13) DEFAULT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `jmlh_hutang` float DEFAULT NULL,
  `angsuran` float DEFAULT NULL,
  `sisa_pembayaran` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwayat_hutang`
--

LOCK TABLES `riwayat_hutang` WRITE;
/*!40000 ALTER TABLE `riwayat_hutang` DISABLE KEYS */;
INSERT INTO `riwayat_hutang` VALUES ('H180324135530','2018-03-24',20000000,200000,19800000);
/*!40000 ALTER TABLE `riwayat_hutang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwayat_piutang`
--

DROP TABLE IF EXISTS `riwayat_piutang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `riwayat_piutang` (
  `id_piutang` char(13) DEFAULT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `id_member` char(13) DEFAULT NULL,
  `nama_debtur` char(30) DEFAULT NULL,
  `plafond` float DEFAULT NULL,
  `angsuran` float DEFAULT NULL,
  `sisa_pembayaran` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwayat_piutang`
--

LOCK TABLES `riwayat_piutang` WRITE;
/*!40000 ALTER TABLE `riwayat_piutang` DISABLE KEYS */;
INSERT INTO `riwayat_piutang` VALUES ('PG2130212847','2016-02-14','','YANA MULYANA',300000,100000,200000),('P160325200248','2016-03-26','','Riana Sulistini',900000,500000,400000);
/*!40000 ALTER TABLE `riwayat_piutang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stok`
--

DROP TABLE IF EXISTS `stok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stok` (
  `kode_brg` char(13) NOT NULL,
  `barcode` char(35) DEFAULT NULL,
  `nama_brg` char(50) DEFAULT NULL,
  `kategori` char(20) DEFAULT NULL,
  `jumlah` float DEFAULT '0',
  `satuan` char(10) DEFAULT NULL,
  `isi` float DEFAULT '0',
  `satuan_up` char(10) DEFAULT NULL,
  `kode_up` char(13) DEFAULT NULL,
  `rak` char(4) DEFAULT NULL,
  `jumlah@rak` double DEFAULT '0',
  `id_distributor` char(13) DEFAULT NULL,
  PRIMARY KEY (`kode_brg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stok`
--

LOCK TABLES `stok` WRITE;
/*!40000 ALTER TABLE `stok` DISABLE KEYS */;
INSERT INTO `stok` VALUES ('Z150418223622','','Ss','Ss',7,'Pack',0,'','Z150418223507','5',-3,''),('210318154743','321','Djarum Coklat','Rokok',30,'Slope',24,'Pcs','','1',0,''),('50917184825','','Djarum Coklat','Rokok',1,'Pcs',12,'Batang','210318154743','1',-1,''),('210318155541','','555',NULL,1,'555',0,NULL,NULL,NULL,0,NULL),('210318155128','','123',NULL,4,'123',0,NULL,NULL,NULL,0,'D161224085342'),('Z080418072525','555','212','212',3,'212',0,'','','',0,''),('Z150418223507','Ss','Ss','Ss',19,'Dus',10,'Pack','','5',0,'');
/*!40000 ALTER TABLE `stok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_beli`
--

DROP TABLE IF EXISTS `temp_beli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_beli` (
  `kode_brg` char(13) DEFAULT NULL,
  `barcode` char(20) DEFAULT NULL,
  `nama_brg` char(50) DEFAULT NULL,
  `kategori` char(20) DEFAULT NULL,
  `harga_beli` float DEFAULT NULL,
  `harga_jual` float DEFAULT NULL,
  `jumlah` float DEFAULT NULL,
  `satuan` char(10) DEFAULT NULL,
  `total_hrg_beli` float DEFAULT NULL,
  `keterangan` char(90) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_beli`
--

LOCK TABLES `temp_beli` WRITE;
/*!40000 ALTER TABLE `temp_beli` DISABLE KEYS */;
INSERT INTO `temp_beli` VALUES ('210318155128','','123','123',123,12915,1,'123',123,''),('210318154743','','Djarum Coklat','Rokok',10000,10500,1,'Slope',10000,'');
/*!40000 ALTER TABLE `temp_beli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_biaya`
--

DROP TABLE IF EXISTS `temp_biaya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_biaya` (
  `jmlh_biaya` float DEFAULT NULL,
  `keterangan` char(90) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_biaya`
--

LOCK TABLES `temp_biaya` WRITE;
/*!40000 ALTER TABLE `temp_biaya` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_biaya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_jual`
--

DROP TABLE IF EXISTS `temp_jual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_jual` (
  `kode_brg` char(13) DEFAULT NULL,
  `barcode` char(20) DEFAULT NULL,
  `nama_brg` char(50) DEFAULT NULL,
  `kategori` char(20) DEFAULT NULL,
  `harga_beli` float DEFAULT NULL,
  `harga_jual` float DEFAULT NULL,
  `jumlah` float DEFAULT NULL,
  `satuan` char(10) DEFAULT NULL,
  `total_hrg_beli` float DEFAULT NULL,
  `total_hrg_jual` float DEFAULT NULL,
  `keterangan` char(90) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_jual`
--

LOCK TABLES `temp_jual` WRITE;
/*!40000 ALTER TABLE `temp_jual` DISABLE KEYS */;
INSERT INTO `temp_jual` VALUES ('50917184825','','Djarum Coklat','Rokok',10000,14000,4,'Pcs',40000,56000,''),('Z150418223622','','Ss','Ss',5000,6000,4,'Pack',20000,24000,'');
/*!40000 ALTER TABLE `temp_jual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_jual1`
--

DROP TABLE IF EXISTS `temp_jual1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_jual1` (
  `kode_brg` char(13) DEFAULT NULL,
  `barcode` char(20) DEFAULT NULL,
  `nama_brg` char(50) DEFAULT NULL,
  `kategori` char(20) DEFAULT NULL,
  `harga_beli` float DEFAULT NULL,
  `harga_jual` float DEFAULT NULL,
  `jumlah` float DEFAULT NULL,
  `satuan` char(10) DEFAULT NULL,
  `total_hrg_beli` float DEFAULT NULL,
  `total_hrg_jual` float DEFAULT NULL,
  `keterangan` char(90) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_jual1`
--

LOCK TABLES `temp_jual1` WRITE;
/*!40000 ALTER TABLE `temp_jual1` DISABLE KEYS */;
INSERT INTO `temp_jual1` VALUES ('050917184825','','Djarum Coklat',NULL,10000,13000,2,'Pcs',NULL,26000,''),('250217203054','','Gg Mild',NULL,29,19550,1,'Pcs',NULL,19550,''),('210217204809','','Kromachin',NULL,2000000,2200000,1,'Unit',NULL,2200000,''),('090816165255','','LG Magenta',NULL,11111,22222,1,'Unit',NULL,22222,''),('020417113610','','Maximus',NULL,50000,55000,1,'Pcs',NULL,55000,''),('280217142218','','Monkey King Diecast',NULL,240000,270000,1,'Unit',NULL,270000,''),('040816174537','','Nuvo',NULL,2000,4000,2,'Pcs',NULL,8000,''),('090816165347','','Polytron Graucilla',NULL,112121,300000,1,'Dus',NULL,300000,''),('030816150116','','Sampo Metal',NULL,46500,48000,1,'Dus',NULL,48000,''),('250217100709','','Sampoerna Mild',NULL,18000,20700,1,'Pcs',NULL,20700,''),('180217163742','','Sanex Ultra High Speed Motor',NULL,100000,110000,2,'Unit',NULL,220000,''),('040816200542','','Sarimi Soto Kuya',NULL,25000,27500,1,'Dus',NULL,27500,''),('050917184944','','Sin Paltinum',NULL,9000,9900,1,'Pcs',NULL,9900,''),('050917185020','','Surya Pro Mild',NULL,14000,15400,1,'Pcs',NULL,15400,'');
/*!40000 ALTER TABLE `temp_jual1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_jual2`
--

DROP TABLE IF EXISTS `temp_jual2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_jual2` (
  `kode_brg` char(13) DEFAULT NULL,
  `barcode` char(20) DEFAULT NULL,
  `nama_brg` char(50) DEFAULT NULL,
  `kategori` char(20) DEFAULT NULL,
  `harga_beli` float DEFAULT NULL,
  `harga_jual` float DEFAULT NULL,
  `jumlah` float DEFAULT NULL,
  `satuan` char(10) DEFAULT NULL,
  `total_hrg_beli` float DEFAULT NULL,
  `total_hrg_jual` float DEFAULT NULL,
  `keterangan` char(90) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_jual2`
--

LOCK TABLES `temp_jual2` WRITE;
/*!40000 ALTER TABLE `temp_jual2` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_jual2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_jual3`
--

DROP TABLE IF EXISTS `temp_jual3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_jual3` (
  `kode_brg` char(13) DEFAULT NULL,
  `barcode` char(35) DEFAULT NULL,
  `nama_brg` char(50) DEFAULT NULL,
  `kategori` char(20) DEFAULT NULL,
  `harga_beli` float DEFAULT NULL,
  `harga_jual` float DEFAULT NULL,
  `jumlah` float DEFAULT NULL,
  `satuan` char(10) DEFAULT NULL,
  `total_hrg_beli` float DEFAULT NULL,
  `total_hrg_jual` float DEFAULT NULL,
  `keterangan` char(90) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_jual3`
--

LOCK TABLES `temp_jual3` WRITE;
/*!40000 ALTER TABLE `temp_jual3` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_jual3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_jual4`
--

DROP TABLE IF EXISTS `temp_jual4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_jual4` (
  `kode_brg` char(13) DEFAULT NULL,
  `barcode` char(35) DEFAULT NULL,
  `nama_brg` char(50) DEFAULT NULL,
  `kategori` char(20) DEFAULT NULL,
  `harga_beli` float DEFAULT NULL,
  `harga_jual` float DEFAULT NULL,
  `jumlah` float DEFAULT NULL,
  `satuan` char(10) DEFAULT NULL,
  `total_hrg_beli` float DEFAULT NULL,
  `total_hrg_jual` float DEFAULT NULL,
  `keterangan` char(90) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_jual4`
--

LOCK TABLES `temp_jual4` WRITE;
/*!40000 ALTER TABLE `temp_jual4` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_jual4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_stok`
--

DROP TABLE IF EXISTS `temp_stok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_stok` (
  `kode_brg` char(13) NOT NULL,
  `barcode` char(20) DEFAULT NULL,
  `nama_brg` char(50) DEFAULT NULL,
  `satuan` char(10) DEFAULT NULL,
  `jumlah` double DEFAULT '0',
  `jumlah@rak` double DEFAULT '0',
  `rak` char(5) DEFAULT NULL,
  PRIMARY KEY (`kode_brg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_stok`
--

LOCK TABLES `temp_stok` WRITE;
/*!40000 ALTER TABLE `temp_stok` DISABLE KEYS */;
INSERT INTO `temp_stok` VALUES ('210318155128','123','123','123',4,0,NULL);
/*!40000 ALTER TABLE `temp_stok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toko`
--

DROP TABLE IF EXISTS `toko`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toko` (
  `nama_toko` char(30) DEFAULT NULL,
  `alamat_toko` char(50) DEFAULT NULL,
  `kontak_toko` char(13) DEFAULT NULL,
  `website` char(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toko`
--

LOCK TABLES `toko` WRITE;
/*!40000 ALTER TABLE `toko` DISABLE KEYS */;
INSERT INTO `toko` VALUES ('ATLANTIS','Jl Babakan Hurip','082316373883','');
/*!40000 ALTER TABLE `toko` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` char(5) NOT NULL DEFAULT '',
  `username` char(50) DEFAULT NULL,
  `password` char(50) DEFAULT NULL,
  `nama_kasir` char(30) DEFAULT NULL,
  `alamat` char(50) DEFAULT NULL,
  `kontak_kasir` char(13) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('001','MUL','123','MUL','SITURAJA UTARA','1234567890'),('002','ASEP','123','ASEP ROHENDRA','DARMARAJA','134679'),('U1226','ULAY','123','ULAY KATON','SARONGGE','085222444666');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zdestruct`
--

DROP TABLE IF EXISTS `zdestruct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zdestruct` (
  `disk1` char(3) DEFAULT NULL,
  `disk2` char(3) DEFAULT NULL,
  `disk3` char(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zdestruct`
--

LOCK TABLES `zdestruct` WRITE;
/*!40000 ALTER TABLE `zdestruct` DISABLE KEYS */;
INSERT INTO `zdestruct` VALUES ('101','001','110');
/*!40000 ALTER TABLE `zdestruct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zdestruct1`
--

DROP TABLE IF EXISTS `zdestruct1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zdestruct1` (
  `disk1` char(3) DEFAULT NULL,
  `disk2` char(3) DEFAULT NULL,
  `disk3` char(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zdestruct1`
--

LOCK TABLES `zdestruct1` WRITE;
/*!40000 ALTER TABLE `zdestruct1` DISABLE KEYS */;
INSERT INTO `zdestruct1` VALUES ('100','101','010');
/*!40000 ALTER TABLE `zdestruct1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zdestruct2`
--

DROP TABLE IF EXISTS `zdestruct2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zdestruct2` (
  `disk1` char(3) DEFAULT NULL,
  `disk2` char(3) DEFAULT NULL,
  `disk3` char(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zdestruct2`
--

LOCK TABLES `zdestruct2` WRITE;
/*!40000 ALTER TABLE `zdestruct2` DISABLE KEYS */;
INSERT INTO `zdestruct2` VALUES ('111','101','000');
/*!40000 ALTER TABLE `zdestruct2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zkeyblock`
--

DROP TABLE IF EXISTS `zkeyblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zkeyblock` (
  `no_pc` char(10) DEFAULT NULL,
  `activated` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zkeyblock`
--

LOCK TABLES `zkeyblock` WRITE;
/*!40000 ALTER TABLE `zkeyblock` DISABLE KEYS */;
INSERT INTO `zkeyblock` VALUES ('000E10EA','2018-02-16');
/*!40000 ALTER TABLE `zkeyblock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-02  9:46:03
