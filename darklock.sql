-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: darklock
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `tbl_banner`
--

DROP TABLE IF EXISTS `tbl_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `seo` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='banner';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_banner`
--

LOCK TABLES `tbl_banner` WRITE;
/*!40000 ALTER TABLE `tbl_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `shot_description` longtext COLLATE utf8mb4_bin,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `seo` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `tbl_class_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_brand_tbl_class1_idx` (`tbl_class_id`),
  CONSTRAINT `fk_tbl_brand_tbl_class1` FOREIGN KEY (`tbl_class_id`) REFERENCES `tbl_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_brand`
--

LOCK TABLES `tbl_brand` WRITE;
/*!40000 ALTER TABLE `tbl_brand` DISABLE KEYS */;
INSERT INTO `tbl_brand` VALUES (13,'VINTAGE','/brand/logo/brand1.png','Thương hiệu VINTAGE',NULL,NULL,'2021-04-04 16:01:49',NULL,1,'vintage-1617527187559',NULL),(14,'RETRO','/brand/logo/brand2.png','Thương hiệu RETRO',NULL,NULL,'2021-04-04 16:01:49',NULL,1,'retro-1617527350803',NULL),(15,'Vintage','/brand/logo/brand3.png','Thương hiệu Vintage',NULL,NULL,'2021-04-04 16:01:49',NULL,1,'vintage-1617527377801',NULL),(16,'VINTAGE','/brand/logo/brand4.png','Thương hiệu VINTAGE',NULL,NULL,'2021-04-04 16:01:49',NULL,1,'vintage-1617527427023',NULL),(17,'HIPSTER','/brand/logo/brand5.png','Thương hiệu HIPSTER',NULL,NULL,'2021-04-04 16:01:49',NULL,1,'hipster-1617527463589',NULL),(18,'VINTAGE','/brand/logo/brand6.png','Thương hiệu VINTAGE',NULL,NULL,'2021-04-04 16:01:49',NULL,1,'vintage-1617527491409',NULL),(19,'RETRO LOGO','/brand/logo/brand7.png','Thương hiệu RETRO LOGO',NULL,NULL,'2021-04-04 16:01:49',NULL,1,'retro-logo-1617527516471',NULL),(20,'CREATIVES DESIGN','/brand/logo/brand8.png','Thương hiệu CREATIVES  DESIGN',NULL,NULL,'2021-04-04 16:01:49',NULL,1,'creatives-design-1617527603287',NULL),(21,'CREATIVES','/brand/logo/brand9.png','Thương hiệu CREATIVES',NULL,NULL,'2021-04-04 16:01:49',NULL,1,'creatives-1617527578383',NULL);
/*!40000 ALTER TABLE `tbl_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_class`
--

DROP TABLE IF EXISTS `tbl_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_bin,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `seo` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='bảng phân loại';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_class`
--

LOCK TABLES `tbl_class` WRITE;
/*!40000 ALTER TABLE `tbl_class` DISABLE KEYS */;
INSERT INTO `tbl_class` VALUES (7,'Đồng hồ nam','Đồng hồ dành cho nam',NULL,NULL,'2021-04-04 15:45:28',NULL,1,'ong-ho-nam-1617526278974'),(8,'Đồng hồ nữ','Đồng hồ dành cho nữ',NULL,NULL,'2021-04-04 15:45:28',NULL,1,'ong-ho-nu-1617526300920'),(9,'Đồng hồ đôi','Đồng hồ dành cho cặp đôi',NULL,NULL,'2021-04-04 15:45:28',NULL,1,'ong-ho-oi-1617526318880');
/*!40000 ALTER TABLE `tbl_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_colors`
--

DROP TABLE IF EXISTS `tbl_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `seo` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `tbl_products_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_colors_tbl_products1_idx` (`tbl_products_id`),
  CONSTRAINT `fk_tbl_colors_tbl_products1` FOREIGN KEY (`tbl_products_id`) REFERENCES `tbl_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_colors`
--

LOCK TABLES `tbl_colors` WRITE;
/*!40000 ALTER TABLE `tbl_colors` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `phone_number` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='bảng kết nối khách hàng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contact`
--

LOCK TABLES `tbl_contact` WRITE;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
INSERT INTO `tbl_contact` VALUES (21,'Trần Minh Vương','tranminhvuong.visedu@gmail.com','01659990513','Darklock','Website abc',NULL,NULL,'2021-04-22 15:52:52',NULL,1),(22,'Trần Minh Vương','tranminhvuong.visedu@gmail.com','01659990513','Darklock','webiste',NULL,NULL,'2021-04-22 17:01:11',NULL,1),(23,'Trần Minh Vương','tranminhvuong.visedu@gmail.com','01659990513','Darklock','Website darklock',NULL,NULL,'2021-04-22 20:18:15',NULL,1),(24,'Trần Minh Vương','tranminhvuong.visedu@gmail.com','01659990513','Darklock','abc',NULL,NULL,'2021-04-23 07:53:59',NULL,1);
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_data_email`
--

DROP TABLE IF EXISTS `tbl_data_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_data_email` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='bang data email subcribe';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_data_email`
--

LOCK TABLES `tbl_data_email` WRITE;
/*!40000 ALTER TABLE `tbl_data_email` DISABLE KEYS */;
INSERT INTO `tbl_data_email` VALUES (17,'tranminhvuong.visedu@gmail.com',NULL,NULL,'2021-04-22 17:01:11',NULL,1),(18,'abc@gmail.com',NULL,NULL,'2021-04-22 20:18:15',NULL,1);
/*!40000 ALTER TABLE `tbl_data_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_images`
--

DROP TABLE IF EXISTS `tbl_product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `seo` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `tbl_products_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_product_images_tbl_products1_idx` (`tbl_products_id`),
  CONSTRAINT `fk_tbl_product_images_tbl_products1` FOREIGN KEY (`tbl_products_id`) REFERENCES `tbl_products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_images`
--

LOCK TABLES `tbl_product_images` WRITE;
/*!40000 ALTER TABLE `tbl_product_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `highlight` int DEFAULT '0',
  `new_product` int DEFAULT '0',
  `product_name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar_first` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `avatar_second` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `avatar_cart` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `sale_price` decimal(13,2) NOT NULL,
  `sale_percent` int NOT NULL,
  `short_description` longtext COLLATE utf8mb4_bin NOT NULL,
  `overview` longtext COLLATE utf8mb4_bin NOT NULL,
  `solution` longtext COLLATE utf8mb4_bin,
  `model` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `total` int NOT NULL DEFAULT '0',
  `order_quantity` int NOT NULL DEFAULT '0',
  `delivered_quantity` int NOT NULL DEFAULT '0',
  `inventory_quantity` int NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL,
  `seo` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `tbl_brand_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_products_tbl_brand1_idx` (`tbl_brand_id`),
  CONSTRAINT `fk_tbl_products_tbl_brand1` FOREIGN KEY (`tbl_brand_id`) REFERENCES `tbl_brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products`
--

LOCK TABLES `tbl_products` WRITE;
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` VALUES (1,1,1,'Đồng hồ JACQUES LEMANS JL-1-1654.2ZG','/product/avatar-first/product1.jpg','/product/avatar-second/product1-1.jpg','/product/avatar-cart/70x84.jpg',5800000.00,4300000.00,25,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','\r\nTOP PRODUCTS\r\n\r\nNew LCDScreen and HD Video Recording\r\n    \r\n$70.00\r\nBrand: Apple\r\nProduct Code: product 20\r\nAvailability: In Stock\r\nMore room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..\r\n\r\nSort by\r\nSmall\r\nColor\r\nBlue\r\nQty \r\n1\r\nOverview\r\nReviews (1)\r\nSolution\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','JL-1-1654.2ZG',NULL,'2021-04-04 16:29:18',NULL,NULL,40,20,0,0,1,'ong-ho-jacques-lemans-jl-1-1654-2zg-1617529434630',13),(2,1,1,'Đồng hồ PHILIPPE AUGUSTE PA-555.1','/product/avatar-first/product2.jpg','/product/avatar-second/product2-1.jpg','/product/avatar-cart/70x84.jpg',6300000.00,5400000.00,14,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','PA-555.1',NULL,'2021-04-04 16:29:18',NULL,NULL,30,10,0,0,1,'ong-ho-philippe-auguste-pa-555-1-1617529249319',14),(3,1,1,'ĐỒNG HỒ PHILIPPE AUGUSTE PA-555.2','/product/avatar-first/product3.jpg','/product/avatar-second/product3-1.jpg','/product/avatar-cart/70x84.jpg',11200000.00,10100000.00,9,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','PA-555.2','PA-555.2',NULL,'2021-04-04 16:29:18',NULL,NULL,30,10,0,0,1,'ong-ho-philippe-auguste-pa-555-2-1617529405355',17),(4,1,1,'Đồng hồ Aries Gold AG-G9005A G-BK','/product/avatar-first/product4.jpg','/product/avatar-second/product4-1.jpg','/product/avatar-cart/70x84.jpg',14300000.00,11900000.00,16,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','AG-G9005A G-BK',NULL,'2021-04-04 16:29:18',NULL,NULL,50,10,0,0,1,'ong-ho-aries-gold-ag-g9005a-g-bk-1617529570114',17),(5,1,1,'Đồng hồ Philippe Auguste PA5001E','/product/avatar-first/product5.jpg','/product/avatar-second/product5-1.jpg','/product/avatar-cart/70x84.jpg',11000000.00,9800000.00,10,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','PA5001E',NULL,'2021-04-04 16:29:18',NULL,NULL,70,20,0,0,1,'ong-ho-philippe-auguste-pa5001e-1617529698265',21),(6,NULL,NULL,'Đồng hồ Jacques Lemans JL-42-6G','/product/avatar-first/product6.jpg','/product/avatar-second/product6-1.jpg','/product/avatar-cart/70x84.jpg',8400000.00,6200000.00,26,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','JL-42-6G',NULL,'2021-04-04 17:08:04',NULL,NULL,40,20,0,0,1,'ong-ho-jacques-lemans-jl-42-6g-1617530911816',13),(7,1,1,'Đồng hồ Philippe Auguste PA5002C','/product/avatar-first/product7.jpg','/product/avatar-second/product7-1.jpg','/product/avatar-cart/70x84.jpg',12000000.00,11500000.00,4,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content\r\n\r\n','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','PA5002C',NULL,'2021-04-22 13:53:40',NULL,NULL,40,20,0,20,1,'ong-ho-philippe-auguste-pa5002c-1619074765550',15),(8,1,1,'Đồng hồ Philippe Auguste PA5003B','/product/avatar-first/product8.jpg','/product/avatar-second/product8-1.jpg','/product/avatar-cart/70x84.jpg',14500000.00,12500000.00,13,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','PA5003B',NULL,'2021-04-22 13:53:40',NULL,NULL,50,10,0,10,1,'ong-ho-philippe-auguste-pa5003b-1619074879051',16),(9,NULL,1,'Đồng hồ Philippe Auguste PA5003G','/product/avatar-first/product9.jpg','/product/avatar-second/product9-1.jpg','/product/avatar-cart/70x84.jpg',10500000.00,9500000.00,9,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','PA5003G',NULL,'2021-04-22 13:53:40',NULL,NULL,80,15,0,15,1,'ong-ho-philippe-auguste-pa5003g-1619075240881',20),(10,NULL,1,'Đồng hồ Philippe Auguste PA5004C','/product/avatar-first/product10.jpg','/product/avatar-second/product10-1.jpg','/product/avatar-cart/70x84.jpg',9600000.00,8400000.00,12,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','PA5004C',NULL,'2021-04-22 14:08:29',NULL,NULL,15,15,0,15,1,'ong-ho-philippe-auguste-pa5004c-1619075468217',17),(11,NULL,1,'Đồng hồ Philippe Auguste PA5004C','/product/avatar-first/product10.jpg','/product/avatar-second/product10-1.jpg','/product/avatar-cart/70x84.jpg',9600000.00,8400000.00,12,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','PA5004C',NULL,'2021-04-22 14:08:29',NULL,NULL,30,15,0,15,1,'ong-ho-philippe-auguste-pa5004c-1619075568319',16),(12,NULL,1,'Đồng hồ Philippe Auguste PA5005C','/product/avatar-first/product1.jpg','/product/avatar-second/product2-1.jpg','/product/avatar-cart/70x84.jpg',7600000.00,5600000.00,26,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','PA5005C',NULL,'2021-04-22 14:08:29',NULL,NULL,50,20,0,20,1,'ong-ho-philippe-auguste-pa5005c-1619075993335',17),(13,NULL,1,'Đồng hồ Philippe Auguste PA5005F','/product/avatar-first/product3-1.jpg','/product/avatar-second/product1-1.jpg','/product/avatar-cart/70x84.jpg',5400000.00,3800000.00,29,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','PA5005F',NULL,'2021-04-22 14:08:29',NULL,NULL,60,10,0,10,1,'ong-ho-philippe-auguste-pa5005f-1619076223904',20),(14,NULL,1,'Đồng hồ Philippe Auguste PA5007C','/product/avatar-first/product6-1.jpg','/product/avatar-second/product6.jpg','/product/avatar-cart/70x84.jpg',14300000.00,12300000.00,13,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','PA5007C',NULL,'2021-04-22 14:08:29',NULL,NULL,75,15,0,15,1,'ong-ho-philippe-auguste-pa5007c-1619076339452',17),(15,NULL,1,'Đồng hồ Philippe Auguste PA5008A','/product/avatar-first/product8-1.jpg','/product/avatar-second/product2-1.jpg','/product/avatar-cart/70x84.jpg',8800000.00,7800000.00,11,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','PA5008A',NULL,'2021-04-22 14:08:29',NULL,NULL,100,25,0,25,1,'ong-ho-philippe-auguste-pa5008a-1619076437510',17),(16,NULL,1,'Đồng hồ Philippe Auguste PA5008B','/product/avatar-first/product10-1.jpg','/product/avatar-second/product3-1.jpg','/product/avatar-cart/70x84.jpg',11800000.00,9800000.00,16,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','PA5008B',NULL,'2021-04-22 14:08:29',NULL,NULL,125,25,0,25,1,'ong-ho-philippe-auguste-pa5008b-1619076537332',20),(17,NULL,1,'Đồng hồ Jacques Lemans JL-1-1654.2ZK','/product/avatar-first/product8-1.jpg','/product/avatar-second/product4-1.jpg','/product/avatar-cart/70x84.jpg',11900000.00,11700000.00,1,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content\r\n','JL-1-1654.2ZK',NULL,'2021-04-22 14:08:29',NULL,NULL,135,10,0,10,1,'ong-ho-jacques-lemans-jl-1-1654-2zk-1619076648957',19),(18,NULL,1,'Đồng hồ Philippe Auguste PA5001A','/product/avatar-first/product5-1.jpg','/product/avatar-second/product3-1.jpg','/product/avatar-cart/70x84.jpg',13200000.00,11200000.00,15,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','PA5001A',NULL,'2021-04-22 14:08:29',NULL,NULL,160,25,0,25,1,'ong-ho-philippe-auguste-pa5001a-1619076740721',21),(19,NULL,1,'Đồng hồ Philippe Auguste PA456G','/product/avatar-first/product9-1.jpg','/product/avatar-second/product3-1.jpg','/product/avatar-cart/70x84.jpg',13000000.00,12300000.00,5,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content\r\n\r\n','PA456G',NULL,'2021-04-23 07:53:59',NULL,NULL,15,15,0,15,1,'ong-ho-philippe-auguste-pa456g-1619140173671',14),(20,NULL,1,'Đồng hồ Philippe Auguste PA456G','/product/avatar-first/product9-1.jpg','/product/avatar-second/product3-1.jpg','/product/avatar-cart/70x84.jpg',13000000.00,12300000.00,5,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content\r\n\r\n','PA456G',NULL,'2021-04-23 07:53:59',NULL,NULL,30,15,0,15,1,'ong-ho-philippe-auguste-pa456g-1619140174894',14),(21,NULL,1,'Đồng hồ Philippe Auguste PA5002A','/product/avatar-first/product7-1.jpg','/product/avatar-second/product4.jpg','/product/avatar-cart/70x84.jpg',11500000.00,10500000.00,8,'More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..','CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content','A5002A',NULL,'2021-04-26 19:46:20',NULL,NULL,20,20,0,20,1,'ong-ho-philippe-auguste-pa5002a-1619441190565',14);
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa thông tin roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles`
--

LOCK TABLES `tbl_roles` WRITE;
/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES (9,'ADMIN','view, create, edit, delete',NULL,NULL,NULL,NULL,1),(10,'EDITOR','view, create, edit',NULL,NULL,NULL,NULL,1),(11,'USER','view',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder`
--

DROP TABLE IF EXISTS `tbl_saleorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `total` decimal(13,2) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `customer_name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customer_address` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customer_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customer_post_code` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `customer_country` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `customer_region_or_state` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `customer_comments_delivery` longtext COLLATE utf8mb4_bin,
  `customer_comments_payment` longtext COLLATE utf8mb4_bin,
  `order_status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa phiếu mua hàng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder`
--

LOCK TABLES `tbl_saleorder` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder` DISABLE KEYS */;
INSERT INTO `tbl_saleorder` VALUES (25,'ORDER-1619012137424',19,4300000.00,'2021-04-21 20:33:43',NULL,NULL,NULL,1,'Trần Minh Vương','Vũ Bản - Bình Lục','ORDER-1619012137424','0359990513','tranminhvuong.visedu@gmail.com','100000','230','3121','','',2),(26,'ORDER-1619067481620',19,8600000.00,'2021-04-22 11:56:14',NULL,NULL,NULL,1,'Trần Minh Vương','Vũ Bản - Bình Lục','ORDER-1619067481620','0359990513','tranminhvuong.visedu@gmail.com','100000','230','3121','','',2),(27,'ORDER-1619086033134',19,25200000.00,'2021-04-22 17:01:11',NULL,NULL,NULL,1,'Trần Minh Vương','Vũ Bản - Bình Lục','ORDER-1619086033134','0359990513','tranminhvuong.visedu@gmail.com','100000','230','3121','','',2),(30,'ORDER-1619097795157',19,23700000.00,'2021-04-22 20:18:15',NULL,NULL,NULL,1,'Trần Minh Vương','Vũ Bản - Bình Lục','ORDER-1619097795157','0359990513','tranminhvuong.visedu@gmail.com','100000','230','3121','Ok','OK',2);
/*!40000 ALTER TABLE `tbl_saleorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder_products`
--

DROP TABLE IF EXISTS `tbl_saleorder_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `saleorder_id` int NOT NULL,
  `quality` int NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `tbl_products_id` int NOT NULL,
  `sub_total_price` decimal(13,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_saleorder_product_idx` (`saleorder_id`),
  KEY `fk_tbl_saleorder_products_tbl_products1_idx` (`tbl_products_id`),
  CONSTRAINT `fk_saleorder_product` FOREIGN KEY (`saleorder_id`) REFERENCES `tbl_saleorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tbl_saleorder_products_tbl_products1` FOREIGN KEY (`tbl_products_id`) REFERENCES `tbl_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa phiếu mua hàng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder_products`
--

LOCK TABLES `tbl_saleorder_products` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder_products` DISABLE KEYS */;
INSERT INTO `tbl_saleorder_products` VALUES (46,25,1,NULL,NULL,NULL,NULL,1,1,4300000.00),(47,26,2,NULL,NULL,NULL,NULL,1,1,8600000.00),(48,27,1,NULL,NULL,NULL,NULL,1,1,4300000.00),(49,27,2,NULL,NULL,NULL,NULL,1,2,10800000.00),(50,27,1,NULL,NULL,NULL,NULL,1,3,10100000.00),(53,30,3,NULL,NULL,NULL,NULL,1,1,12900000.00),(54,30,2,NULL,NULL,NULL,NULL,1,2,10800000.00);
/*!40000 ALTER TABLE `tbl_saleorder_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_size`
--

DROP TABLE IF EXISTS `tbl_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_bin,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `seo` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `tbl_products_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_size_tbl_products1_idx` (`tbl_products_id`),
  CONSTRAINT `fk_tbl_size_tbl_products1` FOREIGN KEY (`tbl_products_id`) REFERENCES `tbl_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_size`
--

LOCK TABLES `tbl_size` WRITE;
/*!40000 ALTER TABLE `tbl_size` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `reset_password_token` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa thông tin người dùng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (17,'admin','$2a$04$4DUbaRGq/pB5Cw42ibRCZO82VwzLO/Au5MOLZCh5U6DgEql9XA7kG','admin@gmail.com','2021-04-09 18:30:01',NULL,NULL,NULL,1,NULL),(18,'editor','$2a$04$tzuSEjLGrnBEndIWay9HueNUmnD6Jf0RSbwOWHanrqXT..zMUziky','editor@gmail.com','2021-04-09 18:34:24',NULL,NULL,NULL,1,NULL),(19,'vuongtm','$2a$04$G6Q5rqvmeFTFS78qXgYgDejPwA4a22GtyNGpHzfAeS9E5BtaYtZm.','tranminhvuong.visedu@gmail.com','2021-04-09 18:36:21',NULL,NULL,NULL,1,NULL),(20,'minhvuong','$2a$04$lXYc9XybxOpfpR4mJPDYD.odDZtvSFXio0hwUnKqXJiLYe/CZkoE2','abc123@gmail.com','2021-04-22 15:21:13',NULL,NULL,NULL,1,NULL),(21,'abcde','$2a$04$gtWce7Ln9o.tEWOYOqo4m.GLGaUUTeRsRgo2mNG.AeJ3ekPxxK0sa','abcde@gmail.com','2021-04-22 17:01:11',NULL,NULL,NULL,1,NULL),(22,'abc123','$2a$04$mFshKy95nWWPtAcCBnCPIOnZlBRE8uXSdUbKHw4bK6j8/EAhC8Dlu','abc12345@gmail.com','2021-04-22 20:18:14',NULL,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users_roles`
--

DROP TABLE IF EXISTS `tbl_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_roles_idx` (`role_id`),
  CONSTRAINT `fk_roles` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`id`),
  CONSTRAINT `fk_users` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='bảng trung gian thể hiện quan hệ n-n của users và roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users_roles`
--

LOCK TABLES `tbl_users_roles` WRITE;
/*!40000 ALTER TABLE `tbl_users_roles` DISABLE KEYS */;
INSERT INTO `tbl_users_roles` VALUES (17,9),(18,10),(19,11);
/*!40000 ALTER TABLE `tbl_users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-26 21:45:27
