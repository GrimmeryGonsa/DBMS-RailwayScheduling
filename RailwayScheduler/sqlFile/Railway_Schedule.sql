CREATE DATABASE  IF NOT EXISTS `Railway_Schedule` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Railway_Schedule`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: Railway_Schedule
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add staff member',7,'add_staffmember'),(26,'Can change staff member',7,'change_staffmember'),(27,'Can delete staff member',7,'delete_staffmember'),(28,'Can view staff member',7,'view_staffmember'),(29,'Can add category',8,'add_category'),(30,'Can change category',8,'change_category'),(31,'Can delete category',8,'delete_category'),(32,'Can view category',8,'view_category'),(33,'Can add route',9,'add_route'),(34,'Can change route',9,'change_route'),(35,'Can delete route',9,'delete_route'),(36,'Can view route',9,'view_route'),(37,'Can add station',10,'add_station'),(38,'Can change station',10,'change_station'),(39,'Can delete station',10,'delete_station'),(40,'Can view station',10,'view_station'),(41,'Can add train',11,'add_train'),(42,'Can change train',11,'change_train'),(43,'Can delete train',11,'delete_train'),(44,'Can view train',11,'view_train'),(45,'Can add seat chart',12,'add_seatchart'),(46,'Can change seat chart',12,'change_seatchart'),(47,'Can delete seat chart',12,'delete_seatchart'),(48,'Can view seat chart',12,'view_seatchart'),(49,'Can add schedule',13,'add_schedule'),(50,'Can change schedule',13,'change_schedule'),(51,'Can delete schedule',13,'delete_schedule'),(52,'Can view schedule',13,'view_schedule'),(53,'Can add train legacy',14,'add_trainlegacy'),(54,'Can change train legacy',14,'change_trainlegacy'),(55,'Can delete train legacy',14,'delete_trainlegacy'),(56,'Can view train legacy',14,'view_trainlegacy');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$6xiRDHCV8IFF$Vw2hwouvMOjd226v2BQ6tOKFn+fhJfIQwlJu3Nxgy+8=','2020-12-13 10:20:28.247234',1,'admin','Super Admin','','',1,1,'2020-11-23 17:22:18.000000'),(2,'pbkdf2_sha256$216000$ZY0AjJ79NVgR$hyVtof8j1mRlb/tJLAcIkK/5UtH8WLet5MO1aPlxYLc=','2020-12-11 09:43:41.430402',0,'aryanRailway','Aryan','Sharma','aryan@fake.com',0,1,'2020-11-23 18:43:27.000000'),(3,'pbkdf2_sha256$216000$K8H79clKtg0Y$KoEu2q2ceQfGdC+9V0zx0nnz3hIeHhHM9Hn901k4bvM=','2020-12-13 11:42:01.251674',0,'saumyaRailway','Saumya','Semwal','saumya@fake.com',0,1,'2020-11-25 18:12:32.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authenticate_staffmember`
--

DROP TABLE IF EXISTS `authenticate_staffmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authenticate_staffmember` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contact` varchar(12) NOT NULL,
  `member_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_id` (`member_id`),
  CONSTRAINT `authenticate_staffmember_member_id_3800fb64_fk_auth_user_id` FOREIGN KEY (`member_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authenticate_staffmember`
--

LOCK TABLES `authenticate_staffmember` WRITE;
/*!40000 ALTER TABLE `authenticate_staffmember` DISABLE KEYS */;
INSERT INTO `authenticate_staffmember` VALUES (1,'23456789',1),(2,'22399875',2),(3,'8209429795',3);
/*!40000 ALTER TABLE `authenticate_staffmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-11-23 18:42:12.152394','1','',1,'[{\"added\": {}}]',7,1),(2,'2020-11-23 18:43:27.756428','2','aryanRailway',1,'[{\"added\": {}}]',4,1),(3,'2020-11-23 18:43:46.606724','2','aryanRailway',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',4,1),(4,'2020-11-23 18:44:07.514876','2','Aryan',1,'[{\"added\": {}}]',7,1),(5,'2020-11-24 16:04:30.303109','1','Mysuru',1,'[{\"added\": {}}]',10,1),(6,'2020-11-24 16:04:55.770619','2','Shimoga',1,'[{\"added\": {}}]',10,1),(7,'2020-11-24 16:05:24.739442','3','Hyderabad',1,'[{\"added\": {}}]',10,1),(8,'2020-11-25 07:28:12.806042','8','Agara-2',3,'',10,1),(9,'2020-11-25 07:28:20.182136','6','Agartala',3,'',10,1),(10,'2020-11-25 07:28:25.134561','7','Agartala',3,'',10,1),(11,'2020-11-25 17:16:40.798595','1','Luxury',1,'[{\"added\": {}}]',8,1),(12,'2020-11-25 17:16:45.491985','2','Mail',1,'[{\"added\": {}}]',8,1),(13,'2020-11-25 17:17:00.252371','3','Passenger',1,'[{\"added\": {}}]',8,1),(14,'2020-11-25 17:17:09.597228','4','Mountain Railways',1,'[{\"added\": {}}]',8,1),(15,'2020-11-25 17:32:32.300688','2','Mysuru to Shimoga',1,'[{\"added\": {}}]',9,1),(16,'2020-11-25 17:33:53.168535','3','Jaipur to Mysuru',1,'[{\"added\": {}}]',9,1),(17,'2020-11-25 17:34:42.850481','1','JP-MY Express',1,'[{\"added\": {}}]',11,1),(18,'2020-11-25 17:35:29.307464','2','MY-SHIM Mail',1,'[{\"added\": {}}]',11,1),(19,'2020-11-25 18:12:32.898456','3','saumyaRailway',1,'[{\"added\": {}}]',4,1),(20,'2020-11-25 18:12:51.883707','3','saumyaRailway',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',4,1),(21,'2020-11-25 18:13:07.872459','3','Saumya',1,'[{\"added\": {}}]',7,1),(22,'2020-11-25 18:14:53.737571','4','Jaipur to Ajmer',1,'[{\"added\": {}}]',9,1),(23,'2020-11-26 09:16:38.570504','4','Mysuru 2020-11-26',1,'[{\"added\": {}}]',13,1),(24,'2020-11-26 12:53:31.278899','2','JP-MY Express of 2020-11-26',1,'[{\"added\": {}}]',12,1),(25,'2020-11-26 12:54:56.663817','3','JP-MY Express of 2020-11-28',1,'[{\"added\": {}}]',12,1),(26,'2020-11-26 12:55:32.401393','4','MY-SHIM Mail of 2020-11-26',1,'[{\"added\": {}}]',12,1),(27,'2020-11-26 12:57:45.193158','4','MY-SHIM Mail of 2020-11-26',2,'[]',12,1),(28,'2020-11-29 12:46:13.541537','5','Ajmer to Hyderabad',1,'[{\"added\": {}}]',9,1),(29,'2020-11-29 12:46:47.311967','6','Hyderabad to Srinagar',1,'[{\"added\": {}}]',9,1),(30,'2020-11-29 12:48:52.341215','7','Ajmer to Jammu',1,'[{\"added\": {}}]',9,1),(31,'2020-11-29 12:58:58.679511','1','Mysuru',2,'[]',10,1),(32,'2020-11-30 10:32:24.868269','8','Dehradun to Srinagar',1,'[{\"added\": {}}]',9,1),(33,'2020-12-01 12:31:26.207847','4','MY-SHIM Mail of 2020-11-26',2,'[{\"changed\": {\"fields\": [\"General\"]}}]',12,1),(34,'2020-12-01 12:32:31.892622','5','AJ-HYD Express of 2020-12-09',1,'[{\"added\": {}}]',12,1),(35,'2020-12-02 17:53:57.407260','9','Ajmer to Mysuru',1,'[{\"added\": {}}]',9,1),(36,'2020-12-05 12:19:01.078341','6','MY-SHIM Mail of 2020-12-05',1,'[{\"added\": {}}]',12,1),(37,'2020-12-05 12:23:32.693615','6','MY-SHIM Mail of 2020-12-05',2,'[{\"changed\": {\"fields\": [\"General\"]}}]',12,1),(38,'2020-12-05 13:56:08.853783','10','Mysuru to Hyderabad',1,'[{\"added\": {}}]',9,1),(39,'2020-12-05 16:23:25.479490','7','MY-HD Mail',1,'[{\"added\": {}}]',11,1),(40,'2020-12-06 06:11:58.456751','7','MY-HD Mail',3,'',11,1),(41,'2020-12-06 06:13:21.766255','7','MY-HD Mail',3,'',11,1),(42,'2020-12-06 09:34:50.238643','4','MY-SHIM Mail of 2020-11-26',2,'[{\"changed\": {\"fields\": [\"General\"]}}]',12,1),(43,'2020-12-06 09:35:01.683682','4','MY-SHIM Mail of 2020-11-26',2,'[{\"changed\": {\"fields\": [\"General\"]}}]',12,1),(44,'2020-12-06 09:35:11.185871','5','AJ-HYD Express of 2020-12-09',2,'[{\"changed\": {\"fields\": [\"General\"]}}]',12,1),(45,'2020-12-06 09:35:15.976947','6','MY-SHIM Mail of 2020-12-05',2,'[]',12,1),(46,'2020-12-06 09:37:03.830059','1','Mysuru',2,'[{\"changed\": {\"fields\": [\"Updated by\"]}}]',10,1),(47,'2020-12-06 09:37:13.616138','1','Mysuru',2,'[{\"changed\": {\"fields\": [\"Updated by\"]}}]',10,1),(48,'2020-12-06 13:46:28.714861','5','AJ-HYD Express of 2020-12-09',2,'[{\"changed\": {\"fields\": [\"Updated by\"]}}]',12,1),(49,'2020-12-06 13:47:29.545909','11','Delhi to Dehradun',1,'[{\"added\": {}}]',9,1),(50,'2020-12-06 13:47:41.238456','8','DEL-DEH Express',1,'[{\"added\": {}}]',11,1),(51,'2020-12-06 13:50:05.432432','20','Srinagar',1,'[{\"added\": {}}]',10,1),(52,'2020-12-06 13:50:21.311795','12','Dehradun to Srinagar',1,'[{\"added\": {}}]',9,1),(53,'2020-12-06 13:50:35.323839','9','DEHD-SRI Express',1,'[{\"added\": {}}]',11,1),(54,'2020-12-06 13:52:39.255452','11','DEHD-SRI Express of 2020-11-21',2,'[{\"changed\": {\"fields\": [\"Updated by\"]}}]',12,1),(55,'2020-12-06 13:54:50.080830','1','admin',2,'[{\"changed\": {\"fields\": [\"First name\"]}}]',4,1),(56,'2020-12-06 13:55:34.411336','10','DEL-DEH Express of 2020-11-21',2,'[{\"changed\": {\"fields\": [\"Updated by\"]}}]',12,1),(57,'2020-12-06 13:55:51.954347','4','MY-SHIM Mail of 2020-11-26',2,'[{\"changed\": {\"fields\": [\"Updated by\"]}}]',12,1),(58,'2020-12-06 13:56:04.036445','6','MY-SHIM Mail of 2020-12-05',2,'[{\"changed\": {\"fields\": [\"Updated by\"]}}]',12,1),(59,'2020-12-06 13:56:08.651115','11','DEHD-SRI Express of 2020-11-21',2,'[]',12,1),(60,'2020-12-06 13:56:12.044026','10','DEL-DEH Express of 2020-11-21',2,'[]',12,1),(61,'2020-12-06 13:56:17.606617','8','AJ-HYD Express of 2020-11-20',2,'[{\"changed\": {\"fields\": [\"Updated by\"]}}]',12,1),(62,'2020-12-06 13:56:21.633236','6','MY-SHIM Mail of 2020-12-05',2,'[]',12,1),(63,'2020-12-06 13:56:25.333927','4','MY-SHIM Mail of 2020-11-26',2,'[]',12,1),(64,'2020-12-06 15:58:58.651844','14','AJ-HYD Express of 2020-12-12',2,'[{\"changed\": {\"fields\": [\"Updated by\"]}}]',12,1),(65,'2020-12-06 15:59:34.046883','15','AJ-HYD Express of 2020-12-09',1,'[{\"added\": {}}]',12,1),(66,'2020-12-13 10:37:38.529343','21','Jaipur',1,'[{\"added\": {}}]',10,1),(67,'2020-12-13 10:39:15.614404','13','Jaipur to Delhi',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'authenticate','staffmember'),(5,'contenttypes','contenttype'),(8,'scheduler','category'),(9,'scheduler','route'),(13,'scheduler','schedule'),(12,'scheduler','seatchart'),(10,'scheduler','station'),(11,'scheduler','train'),(14,'scheduler','trainlegacy'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-11-22 16:24:09.035416'),(2,'auth','0001_initial','2020-11-22 16:24:09.190407'),(3,'admin','0001_initial','2020-11-22 16:24:09.589030'),(4,'admin','0002_logentry_remove_auto_add','2020-11-22 16:24:09.709397'),(5,'admin','0003_logentry_add_action_flag_choices','2020-11-22 16:24:09.724532'),(6,'contenttypes','0002_remove_content_type_name','2020-11-22 16:24:09.829706'),(7,'auth','0002_alter_permission_name_max_length','2020-11-22 16:24:09.888384'),(8,'auth','0003_alter_user_email_max_length','2020-11-22 16:24:09.922767'),(9,'auth','0004_alter_user_username_opts','2020-11-22 16:24:09.934049'),(10,'auth','0005_alter_user_last_login_null','2020-11-22 16:24:09.980369'),(11,'auth','0006_require_contenttypes_0002','2020-11-22 16:24:09.983403'),(12,'auth','0007_alter_validators_add_error_messages','2020-11-22 16:24:09.997764'),(13,'auth','0008_alter_user_username_max_length','2020-11-22 16:24:10.061257'),(14,'auth','0009_alter_user_last_name_max_length','2020-11-22 16:24:10.122047'),(15,'auth','0010_alter_group_name_max_length','2020-11-22 16:24:10.147567'),(16,'auth','0011_update_proxy_permissions','2020-11-22 16:24:10.162546'),(17,'auth','0012_alter_user_first_name_max_length','2020-11-22 16:24:10.226390'),(18,'authenticate','0001_initial','2020-11-22 16:24:10.259943'),(19,'scheduler','0001_initial','2020-11-22 16:24:10.581944'),(20,'sessions','0001_initial','2020-11-22 16:24:11.018650'),(21,'scheduler','0002_station_occupied_platform','2020-11-24 15:13:57.066938'),(22,'scheduler','0003_auto_20201126_1024','2020-11-26 10:25:13.954779'),(23,'scheduler','0004_auto_20201127_1309','2020-11-27 13:09:44.295842'),(24,'scheduler','0005_seatchart_total_seats','2020-12-05 11:45:41.274111'),(25,'scheduler','0006_auto_20201205_1154','2020-12-05 11:54:21.698774'),(26,'scheduler','0007_auto_20201206_0547','2020-12-06 05:47:07.863585'),(27,'scheduler','0008_seatchart_updated_by','2020-12-06 13:45:23.098469'),(28,'scheduler','0009_auto_20201206_1348','2020-12-06 13:48:38.667424'),(29,'scheduler','0010_auto_20201206_1352','2020-12-06 13:52:08.353730'),(30,'scheduler','0011_remove_trainlegacy_old_train_id','2020-12-13 11:37:42.458208');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5odg89jp9uuaoxea1i0w9cyqx88ysl6q','.eJxVjDkOwjAUBe_iGln-iVdKes5g_cUhAWRLWSrE3SFSCmjfzLyXyritY96WMudJ1FmBOv1uhPwodQdyx3prmltd54n0ruiDLvrapDwvh_t3MOIyfuvUoXCHtkeTegfATA5CKNG6zjMENAOwD5F6MVGsRwjeYkkExINQUe8P1bQ4HQ:1kmtLC:GA_CY1_NsNkIEZF_5Q1DvO-4Mb4IUApbS4Ow1I1_aJ4','2020-12-23 06:52:46.217075'),('5r5njop4dsf9iwbfjiprwm12k8kgb62u','.eJxVjDkOwjAUBe_iGln-iVdKes5g_cUhAWRLWSrE3SFSCmjfzLyXyritY96WMudJ1FmBOv1uhPwodQdyx3prmltd54n0ruiDLvrapDwvh_t3MOIyfuvUoXCHtkeTegfATA5CKNG6zjMENAOwD5F6MVGsRwjeYkkExINQUe8P1bQ4HQ:1knOwy:5wX69uemLgHocwp2Fk6YuvH-OQCOHyiAdMy4wr4XieM','2020-12-24 16:37:52.608818'),('66g8fzxxmmn7u0hva3ehek8bhwcmg1bq','.eJxVjDkOwjAUBe_iGln-iVdKes5g_cUhAWRLWSrE3SFSCmjfzLyXyritY96WMudJ1FmBOv1uhPwodQdyx3prmltd54n0ruiDLvrapDwvh_t3MOIyfuvUoXCHtkeTegfATA5CKNG6zjMENAOwD5F6MVGsRwjeYkkExINQUe8P1bQ4HQ:1knIVN:owHY3q9xYGko7hs3Zt6UM0kKR2GuP19Pd3GsIt8MDdo','2020-12-24 09:44:57.137727'),('7l4hy1lkr8l3585ssbn86fl4ihyiaqvz','.eJxVjDkOwjAUBe_iGln-iVdKes5g_cUhAWRLWSrE3SFSCmjfzLyXyritY96WMudJ1FmBOv1uhPwodQdyx3prmltd54n0ruiDLvrapDwvh_t3MOIyfuvUoXCHtkeTegfATA5CKNG6zjMENAOwD5F6MVGsRwjeYkkExINQUe8P1bQ4HQ:1kjghV:PUw6zuuNjMJjrAYt36sl4VWgBs_meFbJIto9xLEmiZY','2020-12-14 10:46:33.571593'),('86269e72jyj0e8d3nghmbmzy2m1fgc6s','.eJxVjMsOwiAQRf-FtSEMWB4u3fsNZGBAqgaS0q6M_y5NutDtOefeN_O4rcVvPS1-JnZhkp1-WcD4THUX9MB6bzy2ui5z4HvCD9v5rVF6XY_276BgL2MdFQawUwyZlNJqQod6EOF00GDIRaOzQwUpgwUlTZBoSYIQI81OntnnC-vwN5A:1knexh:7hHwmD4BhAGqB2SKdCmlsvCqA_HJDXtVBQvvuFOZeWU','2020-12-25 09:43:41.439638'),('8lqebppavbm4vqr39fzj37j93ytfndof','.eJxVjMsOwiAQRf-FtSEMWB4u3fsNZGBAqgaS0q6M_y5NutDtOefeN_O4rcVvPS1-JnZhkp1-WcD4THUX9MB6bzy2ui5z4HvCD9v5rVF6XY_276BgL2MdFQawUwyZlNJqQod6EOF00GDIRaOzQwUpgwUlTZBoSYIQI81OntnnC-vwN5A:1khpir:ykS-HPrqwQ212tkU-YfpTbYMSbxkB-zDBTqVEGHNOsQ','2020-12-09 08:00:17.266381'),('jhy0sjyfa5r947wwbplukeoyzh7swlr0','.eJxVjMsOgjAURP-la9IU7QNcuucbmvvCoqZNKKyM_y4kLGQ1yZwz81ER1iXFtcocJ1Y3dVXNf4dAL8k74CfkR9FU8jJPqHdFH7TqobC874d7OkhQ07aWvkXD3lkrbA2SjBYJoduyd-RbuBjwwTpDJB0QA4kJYwBxIMgU1PcHFmQ50g:1koPlJ:MT1fv-HL9oyzn-J2QGWFr-pfXBnTTC0EAVEiTB8lJOE','2020-12-27 11:42:01.257437'),('m7ju0co2sk2tt681a5smsew8nyssmvs6','.eJxVjMsOwiAQRf-FtSEMWB4u3fsNZGBAqgaS0q6M_y5NutDtOefeN_O4rcVvPS1-JnZhkp1-WcD4THUX9MB6bzy2ui5z4HvCD9v5rVF6XY_276BgL2MdFQawUwyZlNJqQod6EOF00GDIRaOzQwUpgwUlTZBoSYIQI81OntnnC-vwN5A:1khpeS:6lFvmioRIl6gfrPKMOyhf6LaJd3dtghraUOvDJZsr-w','2020-12-09 07:55:44.289921'),('mg00zzynrcife62tf994nfqctwptphv4','.eJxVjMsOwiAQRf-FtSEMWB4u3fsNZGBAqgaS0q6M_y5NutDtOefeN_O4rcVvPS1-JnZhkp1-WcD4THUX9MB6bzy2ui5z4HvCD9v5rVF6XY_276BgL2MdFQawUwyZlNJqQod6EOF00GDIRaOzQwUpgwUlTZBoSYIQI81OntnnC-vwN5A:1khSr6:B_4AoKOwsjg6B9w2LDTjB2K_6OY0zGfX0oNOW1RJKvc','2020-12-08 07:35:16.360290'),('p86a6px5cw1wbexyygyjpcw42tp7s39w','.eJxVjDkOwjAUBe_iGln-iVdKes5g_cUhAWRLWSrE3SFSCmjfzLyXyritY96WMudJ1FmBOv1uhPwodQdyx3prmltd54n0ruiDLvrapDwvh_t3MOIyfuvUoXCHtkeTegfATA5CKNG6zjMENAOwD5F6MVGsRwjeYkkExINQUe8P1bQ4HQ:1knJrr:5cv7MSwFY6cUYkFTKv7AJUOwgG2UPN87Vj9gfhTwXIo','2020-12-24 11:12:15.692658'),('qvvdxz157bgwccw1ga9aut825k0erd2w','.eJxVjDkOwjAUBe_iGln-iVdKes5g_cUhAWRLWSrE3SFSCmjfzLyXyritY96WMudJ1FmBOv1uhPwodQdyx3prmltd54n0ruiDLvrapDwvh_t3MOIyfuvUoXCHtkeTegfATA5CKNG6zjMENAOwD5F6MVGsRwjeYkkExINQUe8P1bQ4HQ:1kk4oN:ADLnWDaGaZ0AYogQaSaKkphSbwRrb__5HIcCGxw1njw','2020-12-15 12:31:15.887615'),('s8bisqt00ujcepewhwsg9j706u3vprs5','.eJxVjDkOwjAUBe_iGln-iVdKes5g_cUhAWRLWSrE3SFSCmjfzLyXyritY96WMudJ1FmBOv1uhPwodQdyx3prmltd54n0ruiDLvrapDwvh_t3MOIyfuvUoXCHtkeTegfATA5CKNG6zjMENAOwD5F6MVGsRwjeYkkExINQUe8P1bQ4HQ:1khGA4:2Wkx5-FgloQMCAGriaDesd12pvmGXu3906ywFZDahJY','2020-12-07 18:02:00.163137'),('vgz6rkcpffap697x0y27ag1hrwhxb4dq','.eJxVjMsOwiAQRf-FtSEMWB4u3fsNZGBAqgaS0q6M_y5NutDtOefeN_O4rcVvPS1-JnZhkp1-WcD4THUX9MB6bzy2ui5z4HvCD9v5rVF6XY_276BgL2MdFQawUwyZlNJqQod6EOF00GDIRaOzQwUpgwUlTZBoSYIQI81OntnnC-vwN5A:1khyVi:qG8KBZXmHMz_hTKqgJKQbtzpfhwX-T-YH2JVJvt2lww','2020-12-09 17:23:18.278056'),('zod0qukrlzb8d95kv7pa0dprpgk0769v','.eJxVjMsOwiAQRf-FtSEMWB4u3fsNZGBAqgaS0q6M_y5NutDtOefeN_O4rcVvPS1-JnZhkp1-WcD4THUX9MB6bzy2ui5z4HvCD9v5rVF6XY_276BgL2MdFQawUwyZlNJqQod6EOF00GDIRaOzQwUpgwUlTZBoSYIQI81OntnnC-vwN5A:1khSnn:8V7jUfVVqKKtmJmAPegkIJBjqPb_9n7w-3NMNpJc1g8','2020-12-08 07:31:51.057005');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler_category`
--

DROP TABLE IF EXISTS `scheduler_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduler_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_category`
--

LOCK TABLES `scheduler_category` WRITE;
/*!40000 ALTER TABLE `scheduler_category` DISABLE KEYS */;
INSERT INTO `scheduler_category` VALUES (1,'Luxury'),(2,'Mail'),(3,'Passenger'),(4,'Mountain Railways');
/*!40000 ALTER TABLE `scheduler_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler_route`
--

DROP TABLE IF EXISTS `scheduler_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduler_route` (
  `id` int NOT NULL AUTO_INCREMENT,
  `distance_in_km` int unsigned NOT NULL,
  `end_station_id_id` int NOT NULL,
  `start_station_id_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `scheduler_route_end_station_id_id_e76947c3_fk_scheduler` (`end_station_id_id`),
  KEY `scheduler_route_start_station_id_id_a4f3d179_fk_scheduler` (`start_station_id_id`),
  CONSTRAINT `scheduler_route_end_station_id_id_e76947c3_fk_scheduler` FOREIGN KEY (`end_station_id_id`) REFERENCES `scheduler_station` (`id`),
  CONSTRAINT `scheduler_route_start_station_id_id_a4f3d179_fk_scheduler` FOREIGN KEY (`start_station_id_id`) REFERENCES `scheduler_station` (`id`),
  CONSTRAINT `scheduler_route_chk_1` CHECK ((`distance_in_km` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_route`
--

LOCK TABLES `scheduler_route` WRITE;
/*!40000 ALTER TABLE `scheduler_route` DISABLE KEYS */;
INSERT INTO `scheduler_route` VALUES (2,100,2,1),(5,1400,3,9),(9,1200,1,9),(10,600,3,1),(11,860,18,19),(12,760,20,18),(13,640,19,21);
/*!40000 ALTER TABLE `scheduler_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler_schedule`
--

DROP TABLE IF EXISTS `scheduler_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduler_schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `arrival_time` time(6) NOT NULL,
  `departure_time` time(6) NOT NULL,
  `station_id_id` int NOT NULL,
  `train_id_id` int NOT NULL,
  `updated_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scheduler_schedule_station_id_id_date_train_id_id_924cdc3f_uniq` (`station_id_id`,`date`,`train_id_id`),
  KEY `scheduler_schedule_train_id_id_432fb384_fk_scheduler_train_id` (`train_id_id`),
  KEY `scheduler_schedule_station_id_id_450fd7fe` (`station_id_id`),
  KEY `scheduler_schedule_updated_by_id_46e29a19_fk_authentic` (`updated_by_id`),
  CONSTRAINT `scheduler_schedule_station_id_id_450fd7fe_fk_scheduler` FOREIGN KEY (`station_id_id`) REFERENCES `scheduler_station` (`id`),
  CONSTRAINT `scheduler_schedule_train_id_id_432fb384_fk_scheduler_train_id` FOREIGN KEY (`train_id_id`) REFERENCES `scheduler_train` (`id`),
  CONSTRAINT `scheduler_schedule_updated_by_id_46e29a19_fk_authentic` FOREIGN KEY (`updated_by_id`) REFERENCES `authenticate_staffmember` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_schedule`
--

LOCK TABLES `scheduler_schedule` WRITE;
/*!40000 ALTER TABLE `scheduler_schedule` DISABLE KEYS */;
INSERT INTO `scheduler_schedule` VALUES (9,'2020-11-26','04:11:33.000000','09:29:04.000000',18,9,1),(10,'2020-12-16','13:05:00.000000','13:23:00.000000',20,9,1);
/*!40000 ALTER TABLE `scheduler_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler_seatchart`
--

DROP TABLE IF EXISTS `scheduler_seatchart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduler_seatchart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `first_class` int unsigned NOT NULL,
  `second_class` int unsigned NOT NULL,
  `ac` int unsigned NOT NULL,
  `sleeper` int unsigned NOT NULL,
  `general` int unsigned NOT NULL,
  `train_id_id` int NOT NULL,
  `total_seats` int unsigned DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scheduler_seatchart_date_train_id_id_a2d8e200_uniq` (`date`,`train_id_id`),
  KEY `scheduler_seatchart_train_id_id_a6523e28` (`train_id_id`),
  KEY `scheduler_seatchart_updated_by_id_dccbd031_fk_authentic` (`updated_by_id`),
  CONSTRAINT `scheduler_seatchart_train_id_id_a6523e28_fk_scheduler_train_id` FOREIGN KEY (`train_id_id`) REFERENCES `scheduler_train` (`id`),
  CONSTRAINT `scheduler_seatchart_updated_by_id_dccbd031_fk_authentic` FOREIGN KEY (`updated_by_id`) REFERENCES `authenticate_staffmember` (`id`),
  CONSTRAINT `scheduler_seatchart_chk_1` CHECK ((`first_class` >= 0)),
  CONSTRAINT `scheduler_seatchart_chk_2` CHECK ((`second_class` >= 0)),
  CONSTRAINT `scheduler_seatchart_chk_3` CHECK ((`ac` >= 0)),
  CONSTRAINT `scheduler_seatchart_chk_4` CHECK ((`sleeper` >= 0)),
  CONSTRAINT `scheduler_seatchart_chk_5` CHECK ((`general` >= 0)),
  CONSTRAINT `scheduler_seatchart_chk_6` CHECK (((`first_class` <= 100) and (`second_class` <= 100) and (`ac` <= 100) and (`sleeper` <= 100) and (`general` <= 100))),
  CONSTRAINT `scheduler_seatchart_chk_7` CHECK ((`total_seats` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_seatchart`
--

LOCK TABLES `scheduler_seatchart` WRITE;
/*!40000 ALTER TABLE `scheduler_seatchart` DISABLE KEYS */;
INSERT INTO `scheduler_seatchart` VALUES (11,'2020-11-21',100,100,100,100,100,9,500,1),(17,'2020-12-11',10,90,97,100,39,9,336,2),(18,'2020-12-28',100,100,100,100,100,11,500,NULL);
/*!40000 ALTER TABLE `scheduler_seatchart` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trig1` BEFORE INSERT ON `scheduler_seatchart` FOR EACH ROW SET new.total_seats = new.general + new.ac + new.first_class + new.second_class + new.sleeper */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trig2` BEFORE UPDATE ON `scheduler_seatchart` FOR EACH ROW SET new.total_seats = new.general + new.ac + new.first_class + new.second_class + new.sleeper */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `scheduler_station`
--

DROP TABLE IF EXISTS `scheduler_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduler_station` (
  `id` int NOT NULL AUTO_INCREMENT,
  `station_name` varchar(100) NOT NULL,
  `platform_count` int unsigned NOT NULL,
  `updated_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scheduler_station_updated_by_id_4531b675_fk_authentic` (`updated_by_id`),
  CONSTRAINT `scheduler_station_updated_by_id_4531b675_fk_authentic` FOREIGN KEY (`updated_by_id`) REFERENCES `authenticate_staffmember` (`id`),
  CONSTRAINT `scheduler_station_chk_1` CHECK ((`platform_count` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_station`
--

LOCK TABLES `scheduler_station` WRITE;
/*!40000 ALTER TABLE `scheduler_station` DISABLE KEYS */;
INSERT INTO `scheduler_station` VALUES (1,'Mysuru',8,3),(2,'Shimoga',5,2),(3,'Hyderabad',8,2),(9,'Ajmer',5,3),(18,'Dehradun',6,3),(19,'Delhi',15,3),(20,'Srinagar',8,3),(21,'Jaipur',5,3);
/*!40000 ALTER TABLE `scheduler_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler_train`
--

DROP TABLE IF EXISTS `scheduler_train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduler_train` (
  `id` int NOT NULL AUTO_INCREMENT,
  `train_name` varchar(100) NOT NULL,
  `category_id_id` int NOT NULL,
  `destination_id_id` int DEFAULT NULL,
  `route_id_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scheduler_train_category_id_id_18bdfeb1_fk_scheduler_category_id` (`category_id_id`),
  KEY `scheduler_train_destination_id_id_a3406677_fk_scheduler` (`destination_id_id`),
  KEY `scheduler_train_route_id_id_9222d471_fk_scheduler_route_id` (`route_id_id`),
  KEY `scheduler_train_updated_by_id_99848180_fk_authentic` (`updated_by_id`),
  CONSTRAINT `scheduler_train_category_id_id_18bdfeb1_fk_scheduler_category_id` FOREIGN KEY (`category_id_id`) REFERENCES `scheduler_category` (`id`),
  CONSTRAINT `scheduler_train_destination_id_id_a3406677_fk_scheduler` FOREIGN KEY (`destination_id_id`) REFERENCES `scheduler_station` (`id`),
  CONSTRAINT `scheduler_train_route_id_id_9222d471_fk_scheduler_route_id` FOREIGN KEY (`route_id_id`) REFERENCES `scheduler_route` (`id`),
  CONSTRAINT `scheduler_train_updated_by_id_99848180_fk_authentic` FOREIGN KEY (`updated_by_id`) REFERENCES `authenticate_staffmember` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_train`
--

LOCK TABLES `scheduler_train` WRITE;
/*!40000 ALTER TABLE `scheduler_train` DISABLE KEYS */;
INSERT INTO `scheduler_train` VALUES (9,'DEHD-SRI Express',4,20,12,3),(11,'JP-DEL Express',3,21,13,1);
/*!40000 ALTER TABLE `scheduler_train` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trig3` AFTER INSERT ON `scheduler_train` FOR EACH ROW BEGIN
SET @var := (SELECT MAX(id) FROM scheduler_train);
INSERT INTO scheduler_seatchart(date, ac, general, sleeper, first_class, second_class,train_id_id)
VALUES (CURRENT_DATE()+INTERVAL 15 DAY,100,100,100,100,100,@var);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trig4` BEFORE DELETE ON `scheduler_train` FOR EACH ROW BEGIN
     SET @var1 := (SELECT station_name FROM scheduler_station WHERE old.destination_id_id = scheduler_station.id);
     INSERT INTO scheduler_trainlegacy( train_name, destination, route_id_id)
     VALUES ( old.train_name, @var1, old.route_id_id );
 END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `scheduler_trainlegacy`
--

DROP TABLE IF EXISTS `scheduler_trainlegacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduler_trainlegacy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `train_name` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `route_id_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scheduler_trainlegacy_route_id_id_b4c4329c_fk_scheduler_route_id` (`route_id_id`),
  CONSTRAINT `scheduler_trainlegacy_route_id_id_b4c4329c_fk_scheduler_route_id` FOREIGN KEY (`route_id_id`) REFERENCES `scheduler_route` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_trainlegacy`
--

LOCK TABLES `scheduler_trainlegacy` WRITE;
/*!40000 ALTER TABLE `scheduler_trainlegacy` DISABLE KEYS */;
INSERT INTO `scheduler_trainlegacy` VALUES (1,'MY-HD Mail','Hyderabad',10),(2,'MY-SHIM Mail','Shimoga',2),(3,'DEL-DEH Express','Dehradun',11),(4,'AJ-HYD Express','Hyderabad',5),(5,'GT-ty Exp','Delhi',11);
/*!40000 ALTER TABLE `scheduler_trainlegacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Railway_Schedule'
--

--
-- Dumping routines for database 'Railway_Schedule'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-13 17:29:05
