CREATE DATABASE  IF NOT EXISTS `book` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `book`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: book
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book_info`
--

DROP TABLE IF EXISTS `book_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bname` varchar(50) NOT NULL,
  `chubanshe` varchar(100) NOT NULL,
  `book_class` varchar(100) NOT NULL,
  `jianjie` text NOT NULL,
  `bname1` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bname` (`bname`),
  UNIQUE KEY `bname1` (`bname1`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_info`
--

LOCK TABLES `book_info` WRITE;
/*!40000 ALTER TABLE `book_info` DISABLE KEYS */;
INSERT INTO `book_info` VALUES (16,'算法导论','机械工业出版社','专业书籍','影响全球千万程序员的“算法圣经”！','suanfadaolun'),(17,'红楼梦','人民文学出版社','国学经典','中国古代章回体长篇小说，中国古典四大名著之一','hongloumeng'),(24,'三国演义','人民文学出版社','国学经典','','sanguoyanyi'),(36,'三体','重庆出版社','网络文学','讲述了地球人类文明和三体文明的信息交流、生死搏杀及两个文明在宇宙中的兴衰历程','santi'),(37,'三体2：黑暗森林','重庆出版社','网络文学','三体系列第二部作品','santi2');
/*!40000 ALTER TABLE `book_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nianji` varchar(20) NOT NULL,
  `xuehao` varchar(20) NOT NULL,
  `username1` varchar(50) NOT NULL,
  `status` int DEFAULT NULL,
  `is_logged` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `xuehao` (`xuehao`),
  UNIQUE KEY `username1` (`username1`),
  UNIQUE KEY `xuehao_2` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'罗旺','123456','大二','22190224','luowang',1,1),(2,'张三','123456','大二','22191224','zhangsan',0,0),(3,'李四','123456','大二','22193224','lisi',0,0),(4,'王五','123131','大三','55200111','WangWu',0,0),(36,'张飞','123456','大二','55200123','zhangfei',0,0),(38,'刘备','123456','大二','55201999','libei',0,0),(40,'caocao1','123456','大一','22190227','caocao1',0,0);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuangtai`
--

DROP TABLE IF EXISTS `zhuangtai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zhuangtai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `zhuangtai` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuangtai`
--

LOCK TABLES `zhuangtai` WRITE;
/*!40000 ALTER TABLE `zhuangtai` DISABLE KEYS */;
INSERT INTO `zhuangtai` VALUES (1,'0');
/*!40000 ALTER TABLE `zhuangtai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-22 11:24:07
