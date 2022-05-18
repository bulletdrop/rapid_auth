-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: rapid_auth
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dashboard_group_invites`
--

DROP TABLE IF EXISTS `dashboard_group_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_group_invites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  `accepted` int(11) DEFAULT 0,
  `declined` int(11) DEFAULT 0,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_group_invites`
--

LOCK TABLES `dashboard_group_invites` WRITE;
/*!40000 ALTER TABLE `dashboard_group_invites` DISABLE KEYS */;
INSERT INTO `dashboard_group_invites` VALUES (1,1,1,0,1),(2,1,0,0,-1),(3,1,1,0,3),(4,1,1,0,3);
/*!40000 ALTER TABLE `dashboard_group_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_group_license_keys`
--

DROP TABLE IF EXISTS `dashboard_group_license_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_group_license_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_name` varchar(500) DEFAULT NULL,
  `used` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_group_license_keys`
--

LOCK TABLES `dashboard_group_license_keys` WRITE;
/*!40000 ALTER TABLE `dashboard_group_license_keys` DISABLE KEYS */;
INSERT INTO `dashboard_group_license_keys` VALUES (1,'Dt4Xhp2bsQ==',1);
/*!40000 ALTER TABLE `dashboard_group_license_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_groups`
--

DROP TABLE IF EXISTS `dashboard_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_groups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `member_array` varchar(1000) DEFAULT NULL,
  `active_license` int(11) DEFAULT 0,
  `owner_uid` int(11) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `products_array` varchar(1000) DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_groups`
--

LOCK TABLES `dashboard_groups` WRITE;
/*!40000 ALTER TABLE `dashboard_groups` DISABLE KEYS */;
INSERT INTO `dashboard_groups` VALUES (1,'[5,1,3]',1,1,'Lt4Xhta5upJUGA==','[\"test\",\"test1\",\"IDA License\",\"asd\",\"asdasd\"]'),(2,'[1]',1,5,'N8JEtYSRvY0=','[\"Test product\"]');
/*!40000 ALTER TABLE `dashboard_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_support_ticket`
--

DROP TABLE IF EXISTS `dashboard_support_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_support_ticket` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `message_history` longtext DEFAULT NULL COMMENT 'This should be a json array that includes the message and the uid of the owner who send the message, answers from supportes should also be in this array ',
  `owner_uid` int(11) DEFAULT 0,
  `stauts` int(11) DEFAULT 0 COMMENT '0 = Waiting for answer; 1 = answered',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_support_ticket`
--

LOCK TABLES `dashboard_support_ticket` WRITE;
/*!40000 ALTER TABLE `dashboard_support_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_support_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_users`
--

DROP TABLE IF EXISTS `dashboard_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(500) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `last_ip` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT 'Member',
  `profile_picture_url` varchar(1000) DEFAULT 'https://cdn.icon-icons.com/icons2/1378/PNG/128/avatardefault_92824.png',
  `gid` int(11) DEFAULT -1 COMMENT '0 = no group',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_users`
--

LOCK TABLES `dashboard_users` WRITE;
/*!40000 ALTER TABLE `dashboard_users` DISABLE KEYS */;
INSERT INTO `dashboard_users` VALUES (1,'GM4InpOK','PNIKnMfM+8kASQ==','G98Fn9uYoZNPKJYOvz3L00CBhMk=','::1','Member','https://cdn.icon-icons.com/icons2/1378/PNG/128/avatardefault_92824.png',1),(2,'GM4InpOKqQ==','PNIKnMfM+8kA','G98Fn9uYoZNPKJYOvz3L00CBhMkb',NULL,'Member','https://cdn.icon-icons.com/icons2/1378/PNG/128/avatardefault_92824.png',-1),(3,'GM4InpOKqZxA','PNIKnMfM+8kA','G98Fn9uYoZNPKJYOvz3L00CBhMkbhQ==','::1','Member','https://cdn.icon-icons.com/icons2/1378/PNG/128/avatardefault_92824.png',1),(4,'MNoHmbyfq5Y=','O+ggs6Wa+c8SXNg=','ENoHmbaJrZ8PDJw=',NULL,'Member','https://cdn.icon-icons.com/icons2/1378/PNG/128/avatardefault_92824.png',-1),(5,'ENoHmZ2fo5Y=','PNIKnMfM+8kASQ==','G98Fn9uYoZNPKJYOvzrL01jLioIegQ==',NULL,'Member','https://cdn.icon-icons.com/icons2/1378/PNG/128/avatardefault_92824.png',-1),(6,'G8gAk4WaqY5FCYofqiLA','PNIKnMfM+8kASQ==','G8gAk4WaqY5FCYofiybBkk/K',NULL,'Member','https://cdn.icon-icons.com/icons2/1378/PNG/128/avatardefault_92824.png',-1),(7,'G8gAk4WaqY5FCYof','PNIKnMfM+8kASQ==','G8gAk4WaqY5FCYofizvF30CBhMk=',NULL,'Member','https://cdn.icon-icons.com/icons2/1378/PNG/128/avatardefault_92824.png',-1);
/*!40000 ALTER TABLE `dashboard_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loader_keys`
--

DROP TABLE IF EXISTS `loader_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loader_keys` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `owner_gid` int(11) DEFAULT NULL,
  `loader_user_uid` int(11) DEFAULT -1,
  `product_id` int(11) DEFAULT NULL,
  `days_left` int(11) DEFAULT 0,
  `freezed` int(11) DEFAULT 0,
  `lifetime` int(11) DEFAULT 0,
  `key_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loader_keys`
--

LOCK TABLES `loader_keys` WRITE;
/*!40000 ALTER TABLE `loader_keys` DISABLE KEYS */;
INSERT INTO `loader_keys` VALUES (1,1,-1,1,15,1,1,'Dt4XhqmVrYR+A5wC'),(2,1,5,2,0,0,0,'Dt4XhqmVrYR+A5wC'),(3,1,-1,2,30,0,0,'NPkzv6bThsR5O8xWnxj062mCpZsutrUeUOKIBUTG8BAqZZE='),(4,1,-1,2,30,0,0,'Mew0pbHTg7R0LqxWnAGW6h2C2P8/q9AeXoWJEEjGlA0pDZg='),(5,1,-1,2,30,0,0,'SOIquM/T+cVuUKFW+RDw92iCo+Iq3dIeV/ufcE7G8hFMBJc='),(6,1,-1,2,30,0,0,'L+4+qMXTispsJKpW/RWT7h2C2Jw70NceXPCJc1/G8B1bEIY='),(7,1,-1,2,30,0,0,'O4Mno8TTj8l4MshWnwbm7mKCof9K1bQeTv6CFkfG+x1XZY4='),(8,1,-1,2,30,0,0,'O40wtqTT+7xkK8lWnxDyimiC0vo4p7QeVeDrGVXG9gNSE5A='),(9,1,-1,2,30,0,0,'NetRy7zTkspiXb9W/Gf1jx2Ct59Itc4eQI6DGl3G4w9LDZE='),(10,1,-1,2,30,0,0,'Q/EpwsTTmL5yK6pW+BCW8GqCr/YzrMYeU4WdGkfG9REtaYY='),(11,1,-1,2,30,0,0,'L/c8ts7Tgr8RJbBW/BaS8myC1uZI19UeU4XvFEPGkwhNaJ4='),(12,1,-1,2,30,0,0,'Lvxcw8TT+rplJcxW/gH1+W6C0v82tcUeS4OBe1jG8ghUae0=');
/*!40000 ALTER TABLE `loader_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loader_users`
--

DROP TABLE IF EXISTS `loader_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loader_users` (
  `uuid` int(11) NOT NULL AUTO_INCREMENT,
  `group_gid` int(11) DEFAULT NULL,
  `username` varchar(500) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `key_array` varchar(500) DEFAULT '0',
  `windows_username` varchar(500) DEFAULT NULL,
  `gpu_name` varchar(500) DEFAULT NULL,
  `gpu_ram` varchar(255) DEFAULT NULL,
  `drive_count` int(11) DEFAULT NULL,
  `cpu_name` varchar(500) DEFAULT NULL,
  `cpu_cores` int(11) DEFAULT NULL,
  `os_caption` varchar(500) DEFAULT NULL,
  `os_serial_number` varchar(500) DEFAULT NULL,
  `last_ip` varchar(255) DEFAULT NULL,
  `active_hwid` int(11) DEFAULT 0 COMMENT '0 = if the user never logged in, 1 = if the user has logged in and hwid is set',
  `windows_username_attempt` varchar(500) DEFAULT NULL,
  `gpu_name_attempt` varchar(500) DEFAULT NULL,
  `gpu_ram_attempt` varchar(500) DEFAULT NULL,
  `drive_count_attempt` int(11) DEFAULT NULL,
  `cpu_name_attempt` varchar(500) DEFAULT NULL,
  `cpu_cores_attempt` int(11) DEFAULT NULL,
  `os_caption_attempt` varchar(500) DEFAULT NULL,
  `os_serials_number_attempt` varchar(500) DEFAULT NULL,
  `last_ip_attempt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loader_users`
--

LOCK TABLES `loader_users` WRITE;
/*!40000 ALTER TABLE `loader_users` DISABLE KEYS */;
INSERT INTO `loader_users` VALUES (1,1,'PNIWgYKhvY5EGg==','Dt4XhqmOqY5SH5YJrw==',1,'0','LdIKlpmJu6JUG5wJpTDJ2Q==','HcsRrZifpZh+CQ==','S45UwsbO',5,'CMIel5je/Q==',8,'LdIKlpmJu90QWNlN/xPNyA==','NvAluKW0g7wZKYof8zD3hA==','127.0.0.1',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `loader_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total_users` int(11) DEFAULT NULL,
  `total_groups` int(11) DEFAULT NULL,
  `total_keys` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1555 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `statistics` WRITE;
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
INSERT INTO `statistics` VALUES (1529,93,60,60,'2022-05-12'),(1530,94,7,46,'2022-05-12'),(1531,98,95,9,'2022-05-12'),(1532,35,30,76,'2022-05-12'),(1533,41,56,10,'2022-05-12'),(1534,73,43,48,'2022-05-12'),(1535,73,58,33,'2022-05-12'),(1536,82,54,26,'2022-05-12'),(1537,39,85,66,'2022-05-12'),(1538,73,11,21,'2022-05-12'),(1539,23,55,20,'2022-05-12'),(1540,31,57,5,'2022-05-12'),(1541,28,52,70,'2022-05-12'),(1542,87,58,62,'2022-05-13'),(1543,33,6,54,'2022-05-13'),(1544,72,84,90,'2022-05-13'),(1545,11,86,98,'2022-05-13'),(1546,67,49,22,'2022-05-13'),(1547,56,88,44,'2022-05-13'),(1548,51,83,14,'2022-05-13'),(1549,9,38,8,'2022-05-13'),(1550,92,81,40,'2022-05-13'),(1551,59,49,23,'2022-05-13'),(1552,86,17,99,'2022-05-13'),(1553,99,37,44,'2022-05-13'),(1554,8,77,12,'2022-05-13');
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-18  9:17:56
