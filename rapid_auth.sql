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
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_groups`
--

LOCK TABLES `dashboard_groups` WRITE;
/*!40000 ALTER TABLE `dashboard_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_groups` ENABLE KEYS */;
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
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_users`
--

LOCK TABLES `dashboard_users` WRITE;
/*!40000 ALTER TABLE `dashboard_users` DISABLE KEYS */;
INSERT INTO `dashboard_users` VALUES (1,'GM4InpOK','PNIKnMfM+8kASQ==','G98Fn9uYoZNPKJYOvz3L00CBhMk=','::1'),(2,'GM4InpOKqQ==','PNIKnMfM+8kA','G98Fn9uYoZNPKJYOvz3L00CBhMkb',NULL),(3,'GM4InpOKqZxA','PNIKnMfM+8kA','G98Fn9uYoZNPKJYOvz3L00CBhMkbhQ==',NULL);
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
  `loader_user_uid` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `days_left` int(11) DEFAULT 0,
  `freezed` int(11) DEFAULT 0,
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loader_keys`
--

LOCK TABLES `loader_keys` WRITE;
/*!40000 ALTER TABLE `loader_keys` DISABLE KEYS */;
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
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loader_users`
--

LOCK TABLES `loader_users` WRITE;
/*!40000 ALTER TABLE `loader_users` DISABLE KEYS */;
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
  `current_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `statistics` WRITE;
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
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

-- Dump completed on 2022-05-12 16:45:33
