-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: belajar_query
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_buku`
--

DROP TABLE IF EXISTS `tb_buku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_buku` (
  `ID_BUKU` varchar(255) NOT NULL,
  `ISBN` varchar(255) DEFAULT NULL,
  `JUDUL_BUKU` varchar(255) DEFAULT NULL,
  `ID_PENERBIT` varchar(255) DEFAULT NULL,
  `ID_PENGARANG` varchar(255) DEFAULT NULL,
  `HARGA_BUKU` varchar(225) DEFAULT NULL,
  `STOK` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID_BUKU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_buku`
--

LOCK TABLES `tb_buku` WRITE;
/*!40000 ALTER TABLE `tb_buku` DISABLE KEYS */;
INSERT INTO `tb_buku` VALUES ('BK001','978-979-29-1234-1','PENGANTAR BASIS DATA','PNB01','PNG03','75000','3'),('BK0010','978-979-29-1011-1','MAHIR MENGGUNAKAN DATABASE ORACLE','PNB01','PNG04','225000','9'),('BK002','978-979-29-4444-1','MAHIR MENGGAMBAR ANIME','PNB01','PNG01','45500','2'),('BK003','978-979-29-4567-1','DATA WAREHOUSE','PNB05','PNG02','60000','1'),('BK004','978-979-29-1212-1','SHORTCOURSE: EXCEL 2016','PNB02','PNG02','35000','5'),('BK005','978-979-29-3232-1','LASKAR PEMIMPI','PNB02','PNG03','80000','4'),('BK006','978-979-29-1010-1','PERANCANGAN BASIS DATA','PNB02','PNG04','99000','0'),('BK007','978-979-29-1111-1','ALGORITMA PEMROGRAMAN','PNB03','PNG04','125000','5'),('BK008','978-979-29-9898-1','CATATAN SI UJANG','PNB04','PNG03','85000','2'),('BK009','978-979-29-9899-1','INDONESIA KAYA','PNB04','PNG03','30000','7');
/*!40000 ALTER TABLE `tb_buku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_penerbit`
--

DROP TABLE IF EXISTS `tb_penerbit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_penerbit` (
  `ID_PENERBIT` varchar(255) NOT NULL,
  `NAMA_PENERBIT` varchar(255) DEFAULT NULL,
  `ALAMAT` varchar(255) DEFAULT NULL,
  `TELPON` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_PENERBIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_penerbit`
--

LOCK TABLES `tb_penerbit` WRITE;
/*!40000 ALTER TABLE `tb_penerbit` DISABLE KEYS */;
INSERT INTO `tb_penerbit` VALUES ('PNB01','LENTERA ILMU','JAKARTA','(021)212987'),('PNB02','PUSTAKA INDONESIA','BANDUNG','(022)127576'),('PNB03','ANDRA PUBLISHER','YOGYAKARTA','(0274)123123'),('PNB04','WAHANA','JAKARTA','(021)222333'),('PNB05','YUDHISTIRA','','(021)8080880');
/*!40000 ALTER TABLE `tb_penerbit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pengarang`
--

DROP TABLE IF EXISTS `tb_pengarang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pengarang` (
  `ID_PENGARANG` varchar(255) NOT NULL,
  `NAMA_PENGARANG` varchar(255) DEFAULT NULL,
  `JENIS_KELAMIN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_PENGARANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pengarang`
--

LOCK TABLES `tb_pengarang` WRITE;
/*!40000 ALTER TABLE `tb_pengarang` DISABLE KEYS */;
INSERT INTO `tb_pengarang` VALUES ('PNG01','ABDUL KADIR','LAKI-LAKI'),('PNG02','SRI WAHYUNI','PEREMPUAN'),('PNG03','FATHANSSYAH','LAKI-LAKI'),('PNG04','TRI RISMA SETIA','PEREMPUAN');
/*!40000 ALTER TABLE `tb_pengarang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'belajar_query'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-09 19:23:46
