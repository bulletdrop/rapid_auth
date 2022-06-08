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
-- Table structure for table `banned_ips`
--

DROP TABLE IF EXISTS `banned_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banned_ips` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banned_ips`
--

LOCK TABLES `banned_ips` WRITE;
/*!40000 ALTER TABLE `banned_ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `banned_ips` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `dashboard_group_invites` VALUES (1,1,0,1,1),(2,1,0,0,-1),(3,1,1,0,3),(4,1,0,0,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_group_license_keys`
--

LOCK TABLES `dashboard_group_license_keys` WRITE;
/*!40000 ALTER TABLE `dashboard_group_license_keys` DISABLE KEYS */;
INSERT INTO `dashboard_group_license_keys` VALUES (1,'Dt4Xhp2bsQ==',1),(2,'T/YhpMTTg8l1PKxWgwCW/2WC1PVJp8AeS/WLEFbG6XRZC5w=',0),(3,'T/YhpMTTg8l1PKxWgwCW/2WC1PVJp8AeS/WLEFbG6XRZC5w=',0),(4,'Quo+yrXTkctrPb9WgwScjWeCqp1Jq7AeXIKeAEDGkHNLDJA=',0),(5,'OY49v6PTh61qX79WgGbii2yCqJUoproeW/GZD0DGkRBFF5E=',0),(6,'TfQ8xqDT/qUWWKtWjmTq/WqCsJ9Lq9AeSO2fdETGlXUuFeY=',0),(7,'Q44pp7TTgbASIKxW+wj8jGqCq+FKq9EeQ+SaFlXGlndaBJE=',0),(8,'Q44nuLjT+qVrWMFWiQSd+32CsuFCo8ceUOXte0DG4gtXGYw=',0),(9,'O4k2t6zTiq1xLr5WgAad+nqCpJVJrtseWfqBFlvG6gooBZs=',0),(10,'T4oyurPTh6psLqlWmRrq5niC1eRPotIeXo+XGVbG+AInbJA=',0),(11,'LO5cy6LTmLp0Iq5WnWbriRqCuu9J3cweTeDqCkvGkRBOaeA=',0),(12,'Soogo8HTgKkRLLdWhxySjWaC0+g/18AeXITrEjrGkHdZE44=',0),(13,'Qu4quqzTmcxoOrBWiAOQ/mWC1/07ttIeV46IGT7G+whaaZE=',0),(14,'MPE8paDT+8V2KaBWmmaU92KC1uFJrLoeVofrGUzG6X8qE4A=',0),(15,'OfRWsMfTmcUQWaBWiGLojWyCpP82tsAeTe/rBDjG6XZNEJA=',0),(16,'TopSt7/T/8kYJshWmxbjj2WCsuZOos4eT4aXCUTG9n9FH4M=',0),(17,'Q/wrpafTnqkYXMhWkh7r6x+C2fUpq9MeL/+QDzfG934pboI=',0),(18,'Pf4tw6fT/s0ZILdWgGDh+hmCr+BCps0eKPaRFT3G9ARRH4I=',0),(19,'LYwhqsPThM13OcpWmGeW8nuCo54jttIeLOKNe0vG6XQpZYU=',0),(20,'MIM0w8TTnLx4Is1WngbpjxKCt54p1LAeW+WIAjnG9BArF4U=',0),(21,'Ne4nobzT/c12McFWkgbw5G+Cuv9OoLseToWZdDjG9h5IbZM=',0),(22,'IvRcs6XTgbcXIL9Whgjh5GmCt+o20M0eU+Wecj3G8H9baZc=',0),(23,'KOohs8/TkcRkOLBWmWP87GqCs+YsosAeL/mTAEjGlRctCI0=',0),(24,'T/xXs77Ti6l2UKpWnBvljh6Cupgt3cUeTOfidFXG+A9VG5I=',0),(25,'POEyoLLT/7F2OLxW8wXm82aCtp8qpbIeLuCKG0XGlhdLF4I=',0),(26,'T4hQw7TT+6pvK6BWggv9/nGC0pVJosQeT4SOFVXGmBZeGpM=',0),(27,'L+M3qrTT+bhyLrFWiWaV836CuepKtNseLPORAEvG7HJZGYU=',0),(28,'SPdcps7TkawVO7pWjgjq/2eCr+Ag1LYeL/2JdkjG6wRODp4=',0),(29,'O/ZWuKTT+6oXOKhW+mD28hKCr/tKpdseVe2XFFjG8g9cGIw=',0),(30,'KoMqt8HTm7djPb5WhxnshGKCouk81M8eX/6JEEvG7wwoauA=',0),(31,'TewrxqDT+Kt1WLdWihuX8BiCs+RKp80eTf3jdV3GmARUEuU=',0),(32,'KYIptrHTnq8WP85WkWLri2iC0/42sLEeW4SXe0bGkhZFFoM=',0),(33,'IP81pqTTgMgRPs9WkxDrixOCof5KvcEeQ/mIBknG+Rddb+A=',0),(34,'O/c0s8bTjrNyIr9W+RD37miCr+cs3MseUPycFTbGmANOFY4=',0),(35,'O/c0s8bTjrNyIr9W+RD37miCr+cs3MseUPycFTbGmANOFY4=',0),(36,'O/c0s8bTjrNyIr9W+RD37miCr+cs3MseUPycFTbGmANOFY4=',0),(37,'PfQ0tKfTi6pvJbtWhRjoiHOCuvUsvcgeXPiPAljGkhUqFZo=',0),(38,'L/gxubTTmKoUObpW+RXmi26CpO0os9IeTuCXGT/GmARKaow=',0),(39,'NegivM/Tna9qW7VWmxrqhGyCt+o0oM8eVo/vGz7G6gotDI4=',0),(40,'PepUu6/Tka8XPrhWnhTi7nyCs5Q5rLYeQvWUcEjG8QJHZeA=',0),(41,'Oeo+ws/T+8sZJ6FWjwn8+R+CupUg17UeXO2Nd13G4h4vBYU=',0),(42,'QuJdo6LT8Kt2Uc5Wm2Pg73uC2P5JtNUeLILpBFjGlH5eBOE=',0),(43,'QuJdo6LT8Kt2Uc5Wm2Pg73uC2P5JtNUeLILpBFjGlH5eBOE=',0),(44,'S/9ToLfTi60QXKlWmmfhjn+C0OIrr7MeT4LuDEvGlQJQEJM=',0),(45,'S/9ToLfTi60QXKlWmmfhjn+C0OIrr7MeT4LuDEvGlQJQEJM=',0),(46,'S/9ToLfTi60QXKlWmmfhjn+C0OIrr7MeT4LuDEvGlQJQEJM=',0),(47,'LI4yt6zT8clsLc5Wnx/y7GWCrZ8+s9IeV+GPcj3GlQ9eHZE=',0);
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
  `api_key` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_groups`
--

LOCK TABLES `dashboard_groups` WRITE;
/*!40000 ALTER TABLE `dashboard_groups` DISABLE KEYS */;
INSERT INTO `dashboard_groups` VALUES (1,'[5,1]',1,1,'Lt4Xhta5upJUGA==','[\"test\",\"test1\",\"IDA License\",\"asd\",\"asdasd\",\"test2_produkt\"]','Wx8fwxHJocduHVuy1JeohT280XcYO9EZ727DkNDodHqElJhEa9q0d6IuPhjSNv9i'),(2,'[1]',1,5,'N8JEtYSRvY0=','[\"Test product\"]','IyorlpelJENxDk4kCPeFD2nKMHOkiCCATqqdxGBobHO9Qw7Moqd636a0HdnA5PsA');
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
  `status` int(11) DEFAULT 0 COMMENT '0 = Waiting for answer; 1 = answered',
  `department` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_support_ticket`
--

LOCK TABLES `dashboard_support_ticket` WRITE;
/*!40000 ALTER TABLE `dashboard_support_ticket` DISABLE KEYS */;
INSERT INTO `dashboard_support_ticket` VALUES (1,'New request','[{\"from\":\"bullet\",\"date\":\"23.05.2022 09:47\",\"message\":\"This is a new support request\"},{\"from\":\"support\",\"date\":\"05.05.2022 09:47\",\"message\":\"This is a new support answer\"},{\"from\":\"bullet\",\"date\":\"05.06.2022 02:52\",\"message\":\"Hello, I need help\"},{\"from\":\"bullet\",\"date\":\"05.06.2022 09:36\",\"message\":\"test\"}]',1,0,3),(2,'test','[{\"from\":\"bullet\",\"date\":\"08.06.2022 01:48\",\"message\":\"test\"}]',1,0,1),(3,'Test','[{\"from\":\"bullet\",\"date\":\"08.06.2022 01:58\",\"message\":\"test\"}]',1,0,1);
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
  `admin` int(11) DEFAULT 0,
  `note` longtext DEFAULT NULL,
  `banned` int(11) DEFAULT 0,
  `ban_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_users`
--

LOCK TABLES `dashboard_users` WRITE;
/*!40000 ALTER TABLE `dashboard_users` DISABLE KEYS */;
INSERT INTO `dashboard_users` VALUES (1,'GM4InpOK','PNIKnMfM+8kASQ==','G98Fn9uYoZNPKJYOvz3L00CBhMk=','127.0.0.1','Member','https://cdn.icon-icons.com/icons2/1378/PNG/128/avatardefault_92824.png',1,1,'test note',0,NULL),(2,'GM4InpOKqQ==','PNIKnMfM+8kA','G98Fn9uYoZNPKJYOvz3L00CBhMkb',NULL,'Memberr','https://cdn.icon-icons.com/icons2/1378/PNG/128/avatardefault_92824.png',-1,0,'',0,''),(3,'GM4InpOKqZxA','PNIKnMfM+8kA','G98Fn9uYoZNPKJYOvz3L00CBhMkbhQ==','::1','Member','https://cdn.icon-icons.com/icons2/1378/PNG/128/avatardefault_92824.png',-1,0,NULL,0,NULL),(4,'MNoHmbyfq5Y=','O+ggs6Wa+c8SXNg=','ENoHmbaJrZ8PDJw=',NULL,'Member','https://cdn.icon-icons.com/icons2/1378/PNG/128/avatardefault_92824.png',-1,0,NULL,0,NULL),(5,'ENoHmZ2fo5Y=','PNIKnMfM+8kASQ==','G98Fn9uYoZNPKJYOvzrL01jLioIegQ==',NULL,'Member','https://cdn.icon-icons.com/icons2/1378/PNG/128/avatardefault_92824.png',-1,0,NULL,0,NULL),(6,'G8gAk4WaqY5FCYofqiLA','PNIKnMfM+8kASQ==','G8gAk4WaqY5FCYofiybBkk/K',NULL,'Member','https://cdn.icon-icons.com/icons2/1378/PNG/128/avatardefault_92824.png',-1,0,NULL,0,NULL),(7,'G8gAk4WaqY5FCYof','PNIKnMfM+8kASQ==','G8gAk4WaqY5FCYofizvF30CBhMk=',NULL,'Member','https://cdn.icon-icons.com/icons2/1378/PNG/128/avatardefault_92824.png',-1,0,NULL,0,NULL);
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
  `product_freezed` int(11) DEFAULT 0,
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loader_keys`
--

LOCK TABLES `loader_keys` WRITE;
/*!40000 ALTER TABLE `loader_keys` DISABLE KEYS */;
INSERT INTO `loader_keys` VALUES (1,1,-1,1,15,0,1,'Dt4XhqmVrYR+A5wC',0),(2,1,5,2,0,0,0,'Dt4XhqmVrYR+A5wC',0),(3,1,3,2,39,0,0,'NPkzv6bThsR5O8xWnxj062mCpZsutrUeUOKIBUTG8BAqZZE=',0),(4,1,1,2,40,0,0,'Mew0pbHTg7R0LqxWnAGW6h2C2P8/q9AeXoWJEEjGlA0pDZg=',0),(5,1,-1,2,40,0,0,'SOIquM/T+cVuUKFW+RDw92iCo+Iq3dIeV/ufcE7G8hFMBJc=',0),(6,1,-1,2,40,0,0,'L+4+qMXTispsJKpW/RWT7h2C2Jw70NceXPCJc1/G8B1bEIY=',0),(7,1,-1,2,40,0,0,'O4Mno8TTj8l4MshWnwbm7mKCof9K1bQeTv6CFkfG+x1XZY4=',0),(8,1,-1,2,40,0,0,'O40wtqTT+7xkK8lWnxDyimiC0vo4p7QeVeDrGVXG9gNSE5A=',0),(9,1,-1,2,40,0,0,'NetRy7zTkspiXb9W/Gf1jx2Ct59Itc4eQI6DGl3G4w9LDZE=',0),(10,1,-1,2,40,0,0,'Q/EpwsTTmL5yK6pW+BCW8GqCr/YzrMYeU4WdGkfG9REtaYY=',0),(11,1,-1,2,40,0,0,'L/c8ts7Tgr8RJbBW/BaS8myC1uZI19UeU4XvFEPGkwhNaJ4=',0),(12,1,-1,2,40,0,0,'Lvxcw8TT+rplJcxW/gH1+W6C0v82tcUeS4OBe1jG8ghUae0=',0),(13,1,-1,2,46,0,0,'NfY2os/T/s9yWshW+gjo+2+CtupNrcEeU/2aFEnG5QgmFJ8=',0),(14,1,1,2,46,0,0,'Q/JRtrPTgrYXWstWkR2X8GSCpeo1t7MeL+XocTnGmQROBZY=',0),(15,1,1,2,46,0,0,'Q/IhqKLTmbFoO8lWghSchGSC2JxP0rMeI/ycdj7GlB9KCpk=',0),(16,1,1,2,46,0,0,'L/guts/T+r5kMa5W+hzn5HuCsOJKpbEeVv3rGkrG6RQqEJE=',0),(17,1,1,2,46,0,0,'QvwrvcPTgaxjX8lWg2mc5X2Co5Uvt8geU/yUGT3GlQ1ZbZg=',0),(18,1,-1,0,1,0,0,'PfEopMPTnLgSP8tWmWGUjHOCuOY5vs0eV4GCC0PGmRMrCZM=',0);
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
  `os_serial_number_attempt` varchar(500) DEFAULT '',
  `last_ip_attempt` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `failed_hwid_attempt` int(11) DEFAULT 0,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loader_users`
--

LOCK TABLES `loader_users` WRITE;
/*!40000 ALTER TABLE `loader_users` DISABLE KEYS */;
INSERT INTO `loader_users` VALUES (1,1,'Dt4XhqmKrY5V','Dt4XhqmOqY5SH5YJryXBz18=',1,'[1,3,4,17,16,15,14]','G98Jm5g=','NO0ttr+/6LpELpYJqDSE7n/3wJ9K07MTVtarN2CbgQBPCQ==','4293918720',1,'O/Yg0qSHsphPSMxb/meUjGOPl8UOjKNhe9O+LGHL5jV+LLyfgAgi9mGM7ApbndY=',6,'N9IHgJmNp5tVSK4SpTXLy1iP0Z1arOxefw==','SotXwMPT8coTXcBW+GGRiR+Coe01oc4=','::1',1,'G98Jm5g=','NO0ttr+/6LpELpYJqDSE7n/3wJ9K07MTVtarN2CbgQBPCQ==','4293918720',1,'O/Yg0qSHsphPSMxb/meUjGOPl8UOjKNhe9O+LGHL5jV+LLyfgAgi9mGM7ApbndY=',6,'N9IHgJmNp5tVSK4SpTXLy1iP0Z1arOxefw==','SotXwMPT8coTXcBW+GGRiR+Coe01oc4=','123','test',0),(3,1,'Dt4XhoKbu4k=','Dt4XhqmOqY5SH5YJryXBz18=',1,'[1,3,4,17,16,15,14]','ENoHmZ0=','KO880sXO/80=','6000000',2,'KMIel5je/Q==',8,'LdIKlpmJu90QWA==','Cd8DlpCZrJtGDJ8crzmWzhmb0g==','::1',1,'G98Jm5g=','NO0ttr+/6LpELpYJqDSE7n/3wJ9K07MTVtarN2CbgQBPCQ==','4293918720',1,'O/Yg0qSHsphPSMxb/meUjGOPl8UOjKNhe9O+LGHL5jV+LLyfgAgi9mGM7ApbndY=',6,'N9IHgJmNp5tVSK4SpTXLy1iP0Z1arOxefw==','SotXwMPT8coTXcBW+GGRiR+Coe01oc4=','192.168.1.1','New Cool note',1),(4,1,'GM4InpOK6dw=','PNIKnMfM+8kASdg=',1,'[1,3]','ENoHmZ0=','KO880sXO/80=','6000000',2,'KMIel5je/Q==',8,'LdIKlpmJu90QWA==','Cd8DlpCZrJtGDJ8crzmWzhmb0g==',NULL,1,'G98Jm5g=','NO0ttr+/6LpELpYJqDSE7n/3wJ9K07MTVtarN2CbgQBPCQ==','4293918720',1,'O/Yg0qSHsphPSMxb/meUjGOPl8UOjKNhe9O+LGHL5jV+LLyfgAgi9mGM7ApbndY=',6,'N9IHgJmNp5tVSK4SpTXLy1iP0Z1arOxefw==','SotXwMPT8coTXcBW+GGRiR+Coe01oc4=',NULL,NULL,1),(5,1,'GM4InpOK6dwA','PNIKnMfM+8kASdg=',1,'[1,3]','ENoHmZ0=','KO880sXO/80=','6000000',2,'KMIel5je/Q==',8,'LdIKlpmJu90QWA==','Cd8DlpCZrJtGDJ8crzmWzhmb0g==',NULL,1,'G98Jm5g=','NO0ttr+/6LpELpYJqDSE7n/3wJ9K07MTVtarN2CbgQBPCQ==','4293918720',1,'O/Yg0qSHsphPSMxb/meUjGOPl8UOjKNhe9O+LGHL5jV+LLyfgAgi9mGM7ApbndY=',6,'N9IHgJmNp5tVSK4SpTXLy1iP0Z1arOxefw==','SotXwMPT8coTXcBW+GGRiR+Coe01oc4=',NULL,NULL,1),(6,1,'GM4InpOK6dwASQ==','PNIKnMfM+8kASdg=',1,'[1,3]','ENoHmZ0=','KO880sXO/80=','6000000',2,'KMIel5je/Q==',8,'LdIKlpmJu90QWA==','Cd8DlpCZrJtGDJ8crzmWzhmb0g==',NULL,1,'G98Jm5g=','NO0ttr+/6LpELpYJqDSE7n/3wJ9K07MTVtarN2CbgQBPCQ==','4293918720',1,'O/Yg0qSHsphPSMxb/meUjGOPl8UOjKNhe9O+LGHL5jV+LLyfgAgi9mGM7ApbndY=',6,'N9IHgJmNp5tVSK4SpTXLy1iP0Z1arOxefw==','SotXwMPT8coTXcBW+GGRiR+Coe01oc4=',NULL,NULL,1),(7,1,'GM4InpOK','PNIKnMfM+8kA',1,'0','G98Jm5g=','NO0ttr+/6LpELpYJqDSE7n/3wJ9K07MTVtarN2CbgQBPCQ==','4293918720',1,'O/Yg0qSHsphPSMxb/meUjGOPl8UOjKNhe9O+LGHL5jV+LLyfgAgi9mGM7ApbndY=',6,'N9IHgJmNp5tVSK4SpTXLy1iP0Z1arOxefw==','SotXwMPT8coTXcBW+GGRiR+Coe01oc4=',NULL,1,'G98Jm5g=','NO0ttr+/6LpELpYJqDSE7n/3wJ9K07MTVtarN2CbgQBPCQ==','4293918720',1,'O/Yg0qSHsphPSMxb/meUjGOPl8UOjKNhe9O+LGHL5jV+LLyfgAgi9mGM7ApbndY=',6,'N9IHgJmNp5tVSK4SpTXLy1iP0Z1arOxefw==','SotXwMPT8coTXcBW+GGRiR+Coe01oc4=',NULL,NULL,1),(8,1,'Dt4XhqmLu5hTN40euCX7yE7clA==','OM4InpOM+c8SXNg=',1,'0','G98Jm5g=','NO0ttr+/6LpELpYJqDSE7n/3wJ9K07MTVtarN2CbgQBPCQ==','4293918720',1,'O/Yg0qSHsphPSMxb/meUjGOPl8UOjKNhe9O+LGHL5jV+LLyfgAgi9mGM7ApbndY=',6,'N9IHgJmNp5tVSK4SpTXLy1iP0Z1arOxefw==','SotXwMPT8coTXcBW+GGRiR+Coe01oc4=','::1',1,'G98Jm5g=','NO0ttr+/6LpELpYJqDSE7n/3wJ9K07MTVtarN2CbgQBPCQ==','4293918720',1,'O/Yg0qSHsphPSMxb/meUjGOPl8UOjKNhe9O+LGHL5jV+LLyfgAgi9mGM7ApbndY=',6,'N9IHgJmNp5tVSK4SpTXLy1iP0Z1arOxefw==','SotXwMPT8coTXcBW+GGRiR+Coe01oc4=',NULL,NULL,1);
/*!40000 ALTER TABLE `loader_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'Hello World','06.06.2022 11:52'),(2,'User bullet!! signed up\nFor GID: 1','06.06.2022 11:53'),(3,'User bullet!!! signed up\nFor GID: 1','06.06.2022 11:58'),(4,'User bullet!!!! signed up\nFor GID: 1','06.06.2022 11:59'),(5,'User bullet signed up\nFor GID: 1','06.06.2022 11:21'),(6,'User new_user_test signed up\nFor GID: 1','06.06.2022 11:41'),(7,'User test_user_test_test signed up\nFor GID: 1','06.06.2022 11:42'),(8,'Admin: bullet created key: 1D7RA-CP14P-Q6E2T-0NQK0-U55OD-4EOLG','08.06.2022 01:55'),(9,'Admin: bullet created key: V5VEZ-94ME7-TNVPN-M3DWQ-MVT12-4HAAE','08.06.2022 01:56'),(10,'Admin: bullet created key: ZQHLD-OOT8N-XX6MU-IEA9R-DDJBX-PV9IY','08.06.2022 01:56'),(11,'User: bullet created support ticket with title: Test and message: test','08.06.2022 01:58');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
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

-- Dump completed on 2022-06-08 15:42:51
