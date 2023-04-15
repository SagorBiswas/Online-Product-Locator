CREATE DATABASE  IF NOT EXISTS `online_product_locator` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `online_product_locator`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: online_product_locator
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add auth group',7,'add_authgroup'),(26,'Can change auth group',7,'change_authgroup'),(27,'Can delete auth group',7,'delete_authgroup'),(28,'Can view auth group',7,'view_authgroup'),(29,'Can add auth group permissions',8,'add_authgrouppermissions'),(30,'Can change auth group permissions',8,'change_authgrouppermissions'),(31,'Can delete auth group permissions',8,'delete_authgrouppermissions'),(32,'Can view auth group permissions',8,'view_authgrouppermissions'),(33,'Can add auth permission',9,'add_authpermission'),(34,'Can change auth permission',9,'change_authpermission'),(35,'Can delete auth permission',9,'delete_authpermission'),(36,'Can view auth permission',9,'view_authpermission'),(37,'Can add auth user',10,'add_authuser'),(38,'Can change auth user',10,'change_authuser'),(39,'Can delete auth user',10,'delete_authuser'),(40,'Can view auth user',10,'view_authuser'),(41,'Can add auth user groups',11,'add_authusergroups'),(42,'Can change auth user groups',11,'change_authusergroups'),(43,'Can delete auth user groups',11,'delete_authusergroups'),(44,'Can view auth user groups',11,'view_authusergroups'),(45,'Can add auth user user permissions',12,'add_authuseruserpermissions'),(46,'Can change auth user user permissions',12,'change_authuseruserpermissions'),(47,'Can delete auth user user permissions',12,'delete_authuseruserpermissions'),(48,'Can view auth user user permissions',12,'view_authuseruserpermissions'),(49,'Can add cart',13,'add_cart'),(50,'Can change cart',13,'change_cart'),(51,'Can delete cart',13,'delete_cart'),(52,'Can view cart',13,'view_cart'),(53,'Can add cart details',14,'add_cartdetails'),(54,'Can change cart details',14,'change_cartdetails'),(55,'Can delete cart details',14,'delete_cartdetails'),(56,'Can view cart details',14,'view_cartdetails'),(57,'Can add discount',15,'add_discount'),(58,'Can change discount',15,'change_discount'),(59,'Can delete discount',15,'delete_discount'),(60,'Can view discount',15,'view_discount'),(61,'Can add django admin log',16,'add_djangoadminlog'),(62,'Can change django admin log',16,'change_djangoadminlog'),(63,'Can delete django admin log',16,'delete_djangoadminlog'),(64,'Can view django admin log',16,'view_djangoadminlog'),(65,'Can add django content type',17,'add_djangocontenttype'),(66,'Can change django content type',17,'change_djangocontenttype'),(67,'Can delete django content type',17,'delete_djangocontenttype'),(68,'Can view django content type',17,'view_djangocontenttype'),(69,'Can add django migrations',18,'add_djangomigrations'),(70,'Can change django migrations',18,'change_djangomigrations'),(71,'Can delete django migrations',18,'delete_djangomigrations'),(72,'Can view django migrations',18,'view_djangomigrations'),(73,'Can add django session',19,'add_djangosession'),(74,'Can change django session',19,'change_djangosession'),(75,'Can delete django session',19,'delete_djangosession'),(76,'Can view django session',19,'view_djangosession'),(77,'Can add payment',20,'add_payment'),(78,'Can change payment',20,'change_payment'),(79,'Can delete payment',20,'delete_payment'),(80,'Can view payment',20,'view_payment'),(81,'Can add product',21,'add_product'),(82,'Can change product',21,'change_product'),(83,'Can delete product',21,'delete_product'),(84,'Can view product',21,'view_product'),(85,'Can add shop',22,'add_shop'),(86,'Can change shop',22,'change_shop'),(87,'Can delete shop',22,'delete_shop'),(88,'Can view shop',22,'view_shop'),(89,'Can add shoplog',23,'add_shoplog'),(90,'Can change shoplog',23,'change_shoplog'),(91,'Can delete shoplog',23,'delete_shoplog'),(92,'Can view shoplog',23,'view_shoplog'),(93,'Can add user',24,'add_user'),(94,'Can change user',24,'change_user'),(95,'Can delete user',24,'delete_user'),(96,'Can view user',24,'view_user'),(97,'Can add discount details',25,'add_discountdetails'),(98,'Can change discount details',25,'change_discountdetails'),(99,'Can delete discount details',25,'delete_discountdetails'),(100,'Can view discount details',25,'view_discountdetails'),(101,'Can add shop storage',26,'add_shopstorage'),(102,'Can change shop storage',26,'change_shopstorage'),(103,'Can delete shop storage',26,'delete_shopstorage'),(104,'Can view shop storage',26,'view_shopstorage'),(105,'Can add shop owner',27,'add_shopowner'),(106,'Can change shop owner',27,'change_shopowner'),(107,'Can delete shop owner',27,'delete_shopowner'),(108,'Can view shop owner',27,'view_shopowner'),(109,'Can add user_ auth_ info',28,'add_user_auth_info'),(110,'Can change user_ auth_ info',28,'change_user_auth_info'),(111,'Can delete user_ auth_ info',28,'delete_user_auth_info'),(112,'Can view user_ auth_ info',28,'view_user_auth_info'),(113,'Can add sells_log',29,'add_sells_log'),(114,'Can change sells_log',29,'change_sells_log'),(115,'Can delete sells_log',29,'delete_sells_log'),(116,'Can view sells_log',29,'view_sells_log'),(117,'Can add auth group',30,'add_authgroup'),(118,'Can change auth group',30,'change_authgroup'),(119,'Can delete auth group',30,'delete_authgroup'),(120,'Can view auth group',30,'view_authgroup'),(121,'Can add auth group permissions',31,'add_authgrouppermissions'),(122,'Can change auth group permissions',31,'change_authgrouppermissions'),(123,'Can delete auth group permissions',31,'delete_authgrouppermissions'),(124,'Can view auth group permissions',31,'view_authgrouppermissions'),(125,'Can add auth permission',32,'add_authpermission'),(126,'Can change auth permission',32,'change_authpermission'),(127,'Can delete auth permission',32,'delete_authpermission'),(128,'Can view auth permission',32,'view_authpermission'),(129,'Can add auth user',33,'add_authuser'),(130,'Can change auth user',33,'change_authuser'),(131,'Can delete auth user',33,'delete_authuser'),(132,'Can view auth user',33,'view_authuser'),(133,'Can add auth user groups',34,'add_authusergroups'),(134,'Can change auth user groups',34,'change_authusergroups'),(135,'Can delete auth user groups',34,'delete_authusergroups'),(136,'Can view auth user groups',34,'view_authusergroups'),(137,'Can add auth user user permissions',35,'add_authuseruserpermissions'),(138,'Can change auth user user permissions',35,'change_authuseruserpermissions'),(139,'Can delete auth user user permissions',35,'delete_authuseruserpermissions'),(140,'Can view auth user user permissions',35,'view_authuseruserpermissions'),(141,'Can add discount',36,'add_discount'),(142,'Can change discount',36,'change_discount'),(143,'Can delete discount',36,'delete_discount'),(144,'Can view discount',36,'view_discount'),(145,'Can add django admin log',37,'add_djangoadminlog'),(146,'Can change django admin log',37,'change_djangoadminlog'),(147,'Can delete django admin log',37,'delete_djangoadminlog'),(148,'Can view django admin log',37,'view_djangoadminlog'),(149,'Can add django content type',38,'add_djangocontenttype'),(150,'Can change django content type',38,'change_djangocontenttype'),(151,'Can delete django content type',38,'delete_djangocontenttype'),(152,'Can view django content type',38,'view_djangocontenttype'),(153,'Can add django migrations',39,'add_djangomigrations'),(154,'Can change django migrations',39,'change_djangomigrations'),(155,'Can delete django migrations',39,'delete_djangomigrations'),(156,'Can view django migrations',39,'view_djangomigrations'),(157,'Can add django session',40,'add_djangosession'),(158,'Can change django session',40,'change_djangosession'),(159,'Can delete django session',40,'delete_djangosession'),(160,'Can view django session',40,'view_djangosession'),(161,'Can add log',41,'add_log'),(162,'Can change log',41,'change_log'),(163,'Can delete log',41,'delete_log'),(164,'Can view log',41,'view_log'),(165,'Can add shop',42,'add_shop'),(166,'Can change shop',42,'change_shop'),(167,'Can delete shop',42,'delete_shop'),(168,'Can view shop',42,'view_shop'),(169,'Can add user',43,'add_user'),(170,'Can change user',43,'change_user'),(171,'Can delete user',43,'delete_user'),(172,'Can view user',43,'view_user'),(173,'Can add product',44,'add_product'),(174,'Can change product',44,'change_product'),(175,'Can delete product',44,'delete_product'),(176,'Can view product',44,'view_product');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
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
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$150000$kfGoWtcZuZ37$ePZU3SWJxoXc2wxuOV4N2Bk2atBNxk06CvzReA1d51I=','2019-09-14 07:46:23.485014',1,'sagor','','','bsagor15@gmail.com',1,1,'2019-07-14 16:03:07.945693'),(3,'pbkdf2_sha256$150000$IMnjapBp4kqL$aJOLS6i+w0rIBdpSh4RRapLr3neMW5i4MrHHJhqVDYo=',NULL,1,'shawon','','','shawon56512@gmail.com',1,1,'2019-08-28 08:34:33.909252');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
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
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `discount` (
  `DiscountID` int(11) NOT NULL AUTO_INCREMENT,
  `Percentage` float DEFAULT NULL,
  `DiscountAmount` float DEFAULT NULL,
  `MaxAmount` int(11) DEFAULT NULL,
  PRIMARY KEY (`DiscountID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,0,0,0),(2,10,0,50),(3,5,0,40),(4,20,0,100),(5,25,100,100),(6,25,NULL,100);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (42,'2019-07-15 01:42:22.361382','5','Shop object (5)',1,'[{\"added\": {}}]',22,2),(43,'2019-07-17 03:17:11.368314','53','Product object (53)',3,'',21,2),(44,'2019-07-17 05:40:36.457611','55','Product object (55)',2,'[{\"changed\": {\"fields\": [\"rating\"]}}]',21,2),(45,'2019-07-17 05:40:49.116725','54','Product object (54)',3,'',21,2),(46,'2019-07-17 05:40:57.637979','52','Product object (52)',2,'[{\"changed\": {\"fields\": [\"rating\"]}}]',21,2),(47,'2019-07-30 16:20:10.597437','68','Product object (68)',3,'',21,2),(48,'2019-07-30 16:20:10.827822','67','Product object (67)',3,'',21,2),(49,'2019-07-30 16:20:10.949493','66','Product object (66)',3,'',21,2),(50,'2019-07-30 16:20:11.071170','65','Product object (65)',3,'',21,2),(51,'2019-07-30 16:20:11.181873','64','Product object (64)',3,'',21,2),(52,'2019-07-30 16:20:11.326490','63','Product object (63)',3,'',21,2),(53,'2019-07-30 16:20:11.471155','62','Product object (62)',3,'',21,2),(54,'2019-07-30 16:20:11.548261','61','Product object (61)',3,'',21,2),(55,'2019-07-30 16:20:11.659600','60','Product object (60)',3,'',21,2),(56,'2019-07-30 16:20:11.725440','59','Product object (59)',3,'',21,2),(57,'2019-07-30 16:20:11.803576','58','Product object (58)',3,'',21,2),(58,'2019-08-22 12:47:18.379396','69','Product object (69)',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',21,2),(59,'2019-08-28 07:27:17.402970','1','kishore',3,'',4,2),(60,'2019-09-04 07:17:28.644283','1','Juice-Corners',2,'[]',42,2),(61,'2019-09-04 08:33:30.043030','1','Discount object (1)',1,'[{\"added\": {}}]',36,2),(62,'2019-09-04 08:36:10.985693','2','abc3',1,'[{\"added\": {}}]',44,2),(63,'2019-09-04 08:36:41.632800','3','abc_4',1,'[{\"added\": {}}]',44,2),(64,'2019-09-04 08:38:37.451136','4','abc_5',1,'[{\"added\": {}}]',44,2),(65,'2019-09-04 09:21:40.600115','5','Lemon',2,'[{\"changed\": {\"fields\": [\"shop\", \"Quantity\", \"discount\"]}}]',44,2),(66,'2019-09-05 07:39:57.782641','1','Juice-CornersabcdefTanvir Ahmed',1,'[{\"added\": {}}]',41,2),(67,'2019-09-06 04:51:14.303631','2','Juice-Corners abc3 Khandakar Mishad',1,'[{\"added\": {}}]',41,2),(68,'2019-09-06 04:54:18.780601','3','Juice-Corners abc3 Tanvir Ahmed',1,'[{\"added\": {}}]',41,2),(69,'2019-09-06 06:12:41.900785','1','abcdef',2,'[{\"changed\": {\"fields\": [\"discount\"]}}]',44,2),(70,'2019-09-10 04:15:15.655598','6','Banana-Shake',3,'',44,2),(71,'2019-09-10 05:22:52.520789','4','abul',2,'[{\"changed\": {\"fields\": [\"user\", \"Mobile\"]}}]',43,2),(72,'2019-09-10 05:23:10.271794','3','akkas',2,'[{\"changed\": {\"fields\": [\"user\"]}}]',43,2),(73,'2019-09-10 05:33:00.371595','5','tanvir',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',43,2),(74,'2019-09-13 19:35:12.668014','2','10.0 Percrnt(Max 50)',1,'[{\"added\": {}}]',36,2),(75,'2019-09-13 19:35:28.979031','3','5.0 Percrnt(Max 40)',1,'[{\"added\": {}}]',36,2),(76,'2019-09-14 07:46:39.216933','1','abcdef',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',44,2),(77,'2019-09-14 07:50:06.943351','8','a2z',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',44,2),(78,'2019-09-15 17:47:02.932153','13','abcd102',2,'[{\"changed\": {\"fields\": [\"discount\"]}}]',44,2),(79,'2019-09-15 21:54:16.053944','4','20.0 Percent(Max 100)',2,'[{\"changed\": {\"fields\": [\"DiscountAmount\"]}}]',36,2),(80,'2019-09-15 21:55:57.723871','4','20.0 Percent(Max 100)',2,'[]',36,2),(81,'2019-09-17 16:49:01.794653','18','abcd',3,'',44,2),(82,'2019-09-17 16:56:24.900822','19','abcd',3,'',44,2),(83,'2019-09-17 16:59:44.978242','20','abcd',3,'',44,2),(84,'2019-09-17 17:17:42.329826','21','abcd',3,'',44,2),(85,'2019-09-17 17:22:30.273180','16','abcdef',3,'',44,2),(87,'2019-09-17 17:24:38.645586','1','abcdef',3,'',44,2),(88,'2019-09-17 18:22:20.411300','12','None Percent(Max None)',3,'',36,2),(89,'2019-09-17 18:22:20.566856','11','None Percent(Max None)',3,'',36,2),(90,'2019-09-17 18:22:20.644652','10','None Percent(Max None)',3,'',36,2),(91,'2019-09-17 18:22:20.722440','9','None Percent(Max None)',3,'',36,2),(92,'2019-09-17 18:22:20.844116','8','None Percent(Max None)',3,'',36,2),(93,'2019-09-17 18:22:20.975762','7','None Percent(Max 40)',3,'',36,2),(94,'2019-09-18 02:04:55.515749','6','Polashi_Juice_Corner',2,'[{\"changed\": {\"fields\": [\"Location\", \"Latitude\", \"Longitude\"]}}]',42,2),(95,'2019-09-18 02:06:28.916583','1','Juice-Corners',2,'[{\"changed\": {\"fields\": [\"Location\", \"Latitude\", \"Longitude\"]}}]',42,2),(96,'2019-09-18 02:21:49.157126','5','tanvirTanu Flowers',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',43,2),(97,'2019-09-18 02:29:48.767153','17','Mango_Juice-54',3,'',44,2),(98,'2019-09-18 02:29:48.837963','15','abcd58',3,'',44,2),(99,'2019-09-18 02:29:48.915755','14','abcdef',3,'',44,2),(100,'2019-09-18 02:29:49.016487','13','abcd102',3,'',44,2),(101,'2019-09-18 02:29:49.231910','11','abcd4',3,'',44,2),(102,'2019-09-18 02:29:49.409436','10','baby-food',3,'',44,2),(103,'2019-09-18 02:29:49.548064','9','abcd',3,'',44,2),(104,'2019-09-18 02:29:49.853248','8','a2z',3,'',44,2),(105,'2019-09-18 02:29:50.064694','5','Lemon',3,'',44,2),(106,'2019-09-18 02:29:50.274131','4','abc_5',3,'',44,2),(107,'2019-09-18 02:29:50.468603','3','abc_4',3,'',44,2),(108,'2019-09-18 02:29:50.610223','2','abc3',3,'',44,2),(109,'2019-09-18 02:31:25.385188','17','Mango_Juice-54',3,'',44,2),(110,'2019-09-18 02:32:30.527799','15','abcd58',3,'',44,2),(111,'2019-09-18 02:32:30.613572','14','abcdef',3,'',44,2),(112,'2019-09-18 02:32:30.793088','13','abcd102',3,'',44,2),(113,'2019-09-18 02:32:31.001531','11','abcd4',3,'',44,2),(114,'2019-09-18 02:32:31.179071','10','baby-food',3,'',44,2),(115,'2019-09-18 02:32:31.267820','9','abcd',3,'',44,2),(116,'2019-09-18 02:32:31.500198','8','a2z',3,'',44,2),(117,'2019-09-18 02:32:31.599933','5','Lemon',3,'',44,2),(118,'2019-09-18 02:32:31.689694','4','abc_5',3,'',44,2),(119,'2019-09-18 02:32:31.914091','3','abc_4',3,'',44,2),(120,'2019-09-18 02:32:53.748973','2','abc3',2,'[{\"changed\": {\"fields\": [\"Quantity\", \"Mfg\", \"Exp\"]}}]',44,2),(122,'2019-09-18 02:58:49.281960','15','None Percent(Max None)',3,'',36,2),(123,'2019-09-18 02:58:49.363742','14','None Percent(Max None)',3,'',36,2),(124,'2019-09-18 02:58:49.474459','13','None Percent(Max None)',3,'',36,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'products','authgroup'),(8,'products','authgrouppermissions'),(9,'products','authpermission'),(10,'products','authuser'),(11,'products','authusergroups'),(12,'products','authuseruserpermissions'),(13,'products','cart'),(14,'products','cartdetails'),(15,'products','discount'),(25,'products','discountdetails'),(16,'products','djangoadminlog'),(17,'products','djangocontenttype'),(18,'products','djangomigrations'),(19,'products','djangosession'),(20,'products','payment'),(21,'products','product'),(29,'products','sells_log'),(22,'products','shop'),(23,'products','shoplog'),(27,'products','shopowner'),(26,'products','shopstorage'),(24,'products','user'),(28,'products','user_auth_info'),(6,'sessions','session'),(30,'shopDB','authgroup'),(31,'shopDB','authgrouppermissions'),(32,'shopDB','authpermission'),(33,'shopDB','authuser'),(34,'shopDB','authusergroups'),(35,'shopDB','authuseruserpermissions'),(36,'shopDB','discount'),(37,'shopDB','djangoadminlog'),(38,'shopDB','djangocontenttype'),(39,'shopDB','djangomigrations'),(40,'shopDB','djangosession'),(41,'shopDB','log'),(44,'shopDB','product'),(42,'shopDB','shop'),(43,'shopDB','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-06-26 04:11:18.893525'),(2,'auth','0001_initial','2019-06-26 04:11:24.712482'),(3,'admin','0001_initial','2019-06-26 04:12:20.221364'),(4,'admin','0002_logentry_remove_auto_add','2019-06-26 04:12:29.945389'),(5,'admin','0003_logentry_add_action_flag_choices','2019-06-26 04:12:30.117216'),(6,'contenttypes','0002_remove_content_type_name','2019-06-26 04:12:34.793242'),(7,'auth','0002_alter_permission_name_max_length','2019-06-26 04:12:38.044234'),(8,'auth','0003_alter_user_email_max_length','2019-06-26 04:12:38.835262'),(9,'auth','0004_alter_user_username_opts','2019-06-26 04:12:38.885424'),(10,'auth','0005_alter_user_last_login_null','2019-06-26 04:12:41.731320'),(11,'auth','0006_require_contenttypes_0002','2019-06-26 04:12:41.909523'),(12,'auth','0007_alter_validators_add_error_messages','2019-06-26 04:12:42.015835'),(13,'auth','0008_alter_user_username_max_length','2019-06-26 04:12:44.309828'),(14,'auth','0009_alter_user_last_name_max_length','2019-06-26 04:12:49.421116'),(15,'auth','0010_alter_group_name_max_length','2019-06-26 04:12:50.254678'),(16,'auth','0011_update_proxy_permissions','2019-06-26 04:12:50.566955'),(17,'sessions','0001_initial','2019-06-26 04:12:52.143391'),(18,'products','0001_initial','2019-06-26 04:15:55.798830'),(19,'products','0002_discountdetails','2019-06-26 07:26:17.336464'),(20,'products','0003_shopstorage','2019-06-26 08:10:15.508436'),(21,'products','0004_auto_20190701_1746','2019-07-01 11:52:08.030625'),(22,'products','0005_auto_20190701_1751','2019-07-01 11:58:42.918354'),(23,'products','0006_auto_20190701_1755','2019-07-01 11:58:43.340199'),(24,'products','0007_auto_20190701_1758','2019-07-01 11:58:43.607811'),(25,'products','0008_auto_20190703_1430','2019-07-03 08:31:12.389731'),(26,'products','0009_auto_20190703_2053','2019-07-03 14:53:34.431060'),(27,'products','0010_product_image','2019-07-03 15:21:44.463377'),(28,'products','0011_auto_20190703_2231','2019-07-03 16:31:44.005867'),(29,'products','0012_auto_20190703_2259','2019-07-03 16:59:39.030541'),(30,'products','0013_auto_20190703_2306','2019-07-03 17:06:57.538656'),(31,'products','0014_auto_20190703_2316','2019-07-03 17:17:04.103673'),(32,'products','0015_auto_20190707_1818','2019-07-07 12:18:31.903300'),(33,'products','0015_auto_20190707_1844','2019-07-07 12:44:39.248867'),(34,'products','0016_auto_20190710_0916','2019-07-10 03:18:46.327174'),(35,'products','0017_auto_20190710_0918','2019-07-10 03:18:49.296673'),(36,'products','0018_remove_product_image_url','2019-07-10 03:20:25.669563'),(37,'products','0019_product_rating','2019-07-10 03:28:12.423330'),(38,'products','0020_product_image_url','2019-07-10 03:38:12.676837'),(39,'products','0021_auto_20190710_0939','2019-07-10 03:39:17.590595'),(40,'products','0022_auto_20190710_0940','2019-07-10 03:40:16.161507'),(41,'products','0023_auto_20190710_0940','2019-07-10 03:41:01.194043'),(42,'products','0024_remove_product_image_url','2019-07-10 03:42:39.740471'),(43,'products','0004_user_auth_info','2019-07-14 15:55:05.766400'),(44,'products','0025_auto_20190714_2224','2019-07-14 16:29:19.702015'),(45,'products','0026_auto_20190714_2227','2019-07-14 16:29:19.851615'),(46,'products','0027_sells_log','2019-07-24 08:04:17.556857'),(47,'products','0028_auto_20190825_0713','2019-08-25 06:18:14.294547'),(48,'shopDB','0001_initial','2019-08-25 06:18:14.809721'),(49,'shopDB','0002_delete_storage','2019-08-25 06:18:14.872785'),(50,'shopDB','0003_auto_20190828_0026','2019-08-28 01:07:44.146954'),(51,'shopDB','0004_auto_20190828_0030','2019-08-28 01:07:44.225456');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
INSERT INTO `django_session` VALUES ('47nksxixkbdzy93g338ukw5mcuu5x2ny','OWZjZmE5NjU0M2YyZmY3YTkwZWY0M2E2ZjliN2RiNDRiNzYzZTIyZjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNmI3ODAyMDBjMGZjMzA4NjU3MWUyZDBmMWQ2YjcwZDBhMWM0NzQzIn0=','2019-08-13 16:01:20.865021'),('a4209tijxxcbn3m3mopirdfnsf8vm1jm','OWZjZmE5NjU0M2YyZmY3YTkwZWY0M2E2ZjliN2RiNDRiNzYzZTIyZjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNmI3ODAyMDBjMGZjMzA4NjU3MWUyZDBmMWQ2YjcwZDBhMWM0NzQzIn0=','2019-07-28 16:03:30.996680'),('cim28k2emp87ou4wm9q02qij38d0x7wc','OGM1MTQzZmEwOWMwMjQwZjc1NzcyNzYwYzExNTE2MjBlMTJjNTZjMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMDUwYjJhMWIwZDk2OWI2ZTRhOTk0YTllNzFlYmZjMzNiZWM2OGQ3In0=','2019-07-24 07:54:03.055891'),('gywtagj4cctg55vempgaop0ktr4fvp7s','OGM1MTQzZmEwOWMwMjQwZjc1NzcyNzYwYzExNTE2MjBlMTJjNTZjMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMDUwYjJhMWIwZDk2OWI2ZTRhOTk0YTllNzFlYmZjMzNiZWM2OGQ3In0=','2019-07-10 06:18:10.449438'),('szwa0d4l2l5dyizjfwhgseexfcg22ywm','Y2NmZDIxZGI4MTc1NWY1N2QyY2Y5YzY1MTliMjcxZDMyMjZkOWJhNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0OTAwYzUzYTNkOTNhN2FkNDNhMmRjMjVmOGI2MWQwZDkwODNhMjQ0In0=','2019-09-28 07:46:23.693460'),('uirnmycl5lawcg3b8tg2uj8u0vrpkozo','Y2NmZDIxZGI4MTc1NWY1N2QyY2Y5YzY1MTliMjcxZDMyMjZkOWJhNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0OTAwYzUzYTNkOTNhN2FkNDNhMmRjMjVmOGI2MWQwZDkwODNhMjQ0In0=','2019-09-14 06:37:56.310077');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log` (
  `LogID` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `Time` datetime DEFAULT NULL,
  `Buyer_Name` varchar(45) DEFAULT NULL,
  `Buyer_Mobile_No` varchar(11) DEFAULT NULL,
  `Net_Price` float DEFAULT NULL,
  `Profit` float DEFAULT NULL,
  `Buyer_Email` varchar(45) DEFAULT NULL,
  `No_of_prods` int(11) DEFAULT NULL,
  PRIMARY KEY (`LogID`),
  KEY `ShopID_idx` (`shop_id`),
  KEY `ProductID_idx` (`product_id`),
  KEY `ShopID_idx2` (`shop_id`),
  KEY `ProductID_idx2` (`product_id`),
  CONSTRAINT `product` FOREIGN KEY (`product_id`) REFERENCES `product` (`ProductID`) ON UPDATE CASCADE,
  CONSTRAINT `shop` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`ShopID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (2,2,1,'2019-09-06 04:51:14','Khandakar Mishad','01759022706',150,50,'mishad@gmail.com',1),(3,2,1,'2019-09-06 04:54:19','Tanvir Ahmed','01933475269',150,50,'ttanvir25@gmail.com',1),(4,2,1,'2019-09-09 18:05:18','Chandra Maitra','01552162163',300,100,'rchandra@gmail.com',2),(5,2,1,'2019-09-09 18:05:52','Chandra Maitra','01552162163',300,100,'rchandra@gmail.com',2),(6,2,1,'2019-09-09 18:07:05','Suvro Maitra','01552358565',150,50,'rchandra@gmail.com',1);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(45) NOT NULL,
  `BuyingPrice` float DEFAULT NULL,
  `SellingPrice` float DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `Mfg` date DEFAULT NULL,
  `Exp` date DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `shopName_idx` (`shop_id`),
  KEY `discount_idx` (`discount_id`),
  CONSTRAINT `discount` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`DiscountID`) ON DELETE SET NULL,
  CONSTRAINT `shopName` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`ShopID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'abc3',100,150,'',1,0,1,'2019-09-02','2019-09-19'),(7,'Banana-Shake',80,110,'',1,12,NULL,NULL,NULL),(12,'Mango_Juice2',100,120,'',1,10,1,NULL,NULL),(22,'Burger',45,80,'Buffalo-chicken-burger-recipe.jpg',4,48,1,NULL,NULL),(23,'Sandwitch',60,100,'sandwitch2.jpg',4,38,1,NULL,NULL),(24,'Bread',12,20,'bread.jpg',4,18,1,'2019-09-18','2019-09-25'),(25,'Singara',5,10,'singara-recipe-1a.jpg',4,35,1,NULL,NULL),(26,'Chop',7,12,'alur_Chop.jpg',4,28,1,NULL,NULL),(27,'French-Fries',25,55,'Sreet_French_Fries_2.jpg',4,30,1,NULL,NULL),(28,'Chicken-fry',50,80,'Fried_chicken.jpeg',4,28,1,NULL,NULL),(29,'Burger',40,60,'Chicken_Burger2.jpg',3,55,1,NULL,NULL),(30,'Sandwitch',30,50,'well_sandwitch.jpg',3,25,1,NULL,NULL),(31,'Bread',12,20,'bread2.jpg',3,17,1,NULL,NULL),(32,'Somucha',8,15,'samucha.jpg',3,35,1,NULL,NULL),(33,'Chop',7,10,'Alu_chop_street2.jpg',3,18,1,NULL,NULL),(34,'French-Fries',30,55,'Street1_french.jpg',3,25,1,NULL,NULL),(35,'Chicken-fry',50,80,'fried_Chicken_2.jpg',3,22,1,NULL,NULL),(36,'Burger',65,100,'spicy-chicken-burgers-3.jpg',2,45,1,NULL,NULL),(37,'Sandwitch',40,65,'well_sandwitch_DTcge76.jpg',2,18,1,NULL,NULL),(38,'Bread',10,25,'french-bread-recipe.jpg',2,25,1,NULL,NULL),(39,'Singara',25,50,'Well_singara.jpg',2,26,1,NULL,NULL),(40,'Chop',10,20,'Well_Dim_chop.jpg',2,34,1,NULL,NULL),(41,'Somucha',12,20,'TSC_Somucha.jpg',2,35,1,NULL,NULL),(42,'French-Fries',40,100,'Well_French_Fries.jpg',2,15,1,NULL,NULL),(43,'Chicken-fry',75,120,'well_fried_chicken.jpg',2,25,1,NULL,NULL),(44,'Cake',250,350,'Neapolitan-Ice-Cream-Cake.jpg',2,10,1,NULL,NULL),(45,'Pastry',25,40,'pineapple-pastries-500x500.jpg',2,28,1,NULL,NULL),(46,'Mango_Juice',40,60,'mango-juice-recipe-mango-drink.jpg',6,20,1,NULL,NULL),(47,'Lemon_Juice',10,20,'juicy_spot_lemon_juice-1.jpg',6,18,1,NULL,NULL),(48,'Lacchi',30,60,'polashi_lacchi.jpg',6,25,1,NULL,NULL),(49,'Milk-Shake',25,40,'vanilla-butterscotch-milk-shake-shooters.jpg',6,15,1,NULL,NULL),(50,'Choclate-Milk-Shake',40,60,'polashi-Chocolate-Milkshakes-square.jpg',6,18,1,NULL,NULL),(51,'Mango_Juice',20,30,'200-ml-mango-juice-500x500.jpg',7,25,1,NULL,NULL),(52,'Lemon_Juice',10,15,'nimbu-pani-500x500.jpg',7,45,1,NULL,NULL),(53,'Lacchi',35,50,'Motijheel_Lacchi.jpg',7,25,1,NULL,NULL),(54,'Milk-Shake',30,45,'Moti_milk_shake.jpeg',7,15,1,NULL,NULL),(55,'Choclate-Milk-Shake',40,60,'chocolate-milkshake-recipe.jpg',7,18,1,NULL,NULL),(56,'Mango_Juice',25,40,'Ripe-Mango-Juice.jpg',8,25,1,NULL,NULL),(57,'Milk-Shake',25,40,'Funfetti-Cake-Mix-Milkshake-.jpg',8,25,1,NULL,NULL),(58,'Lacchi',40,60,'Bakshi_lacchi.jpg',8,25,1,NULL,NULL),(59,'Lemon_Juice',10,15,'lemon-juice-500x500.jpg',8,19,1,NULL,NULL),(60,'Napa',10,15,'napa.jpg',11,100,1,'2019-08-13','2021-10-20'),(61,'Xelopes',30,40,'Xelopes-20.jpg',11,15,1,'2019-06-12','2022-06-12'),(62,'Max-Pro',40,50,'max_pro_20.jpg',11,1,1,'2019-07-16','2022-07-16'),(63,'Entacid',40,60,'ENTACYD_SUP_-400x400.jpg',11,8,1,'2019-07-15','2021-10-20'),(64,'Joy-Trip',35,50,'',11,10,1,'2019-03-27','2022-03-26'),(65,'Avomin',10,15,'avomine-tablet-10-s-45535578.jpg',11,10,1,'2019-08-07','2022-08-06'),(66,'Metryl',10,15,'',11,10,1,'2019-09-03','2021-09-03'),(67,'Xelopes',30,40,'Xelopes-20_nmy0DeB.jpg',10,25,1,'2019-08-13','2022-08-13'),(68,'Xeldrin',40,50,'Xeldrin-20-mg-copy.jpg',10,15,1,'2019-09-02','2022-09-02'),(69,'Odomos',250,450,'odomos_100g.jpg',10,15,1,'2019-04-15','2021-04-08'),(70,'Max-Pro',40,50,'Maxpro-40-mg.jpg',10,15,1,'2019-09-03','2021-09-03'),(71,'Napa',10,15,'napa_ME5qxfg.jpg',10,10,1,'2019-09-10','2022-09-10'),(72,'Napa-Extra',12,18,'napa_extra_epharma_10_pcs_tk25.jpg',10,7,1,'2019-06-05','2021-07-04'),(73,'Elatrol',10,15,'',10,10,1,'2019-09-03','2022-09-11'),(74,'Pevison',40,55,'pevison-1.jpg',10,18,1,'2019-09-02','2022-09-02'),(75,'Entacid',40,60,'ENTACYD_SUP_-400x400_e0UA84r.jpg',10,15,1,'2019-09-01','2022-09-01'),(76,'Entacid-Plus',60,80,'ENTACYD-PLUS-200.jpg',10,8,1,'2019-07-18','2022-07-18'),(77,'Metryl',10,15,'',10,10,1,'2019-09-02','2022-09-02'),(78,'Avomin',10,15,'avomin.jpg',10,10,1,'2019-09-05','2022-09-05'),(79,'Joy-Trip',35,50,'',10,10,1,'2019-09-02','2022-09-02');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shop` (
  `ShopID` int(11) NOT NULL AUTO_INCREMENT,
  `ShopName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL,
  `ContactNumber` varchar(11) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`ShopID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'Juice-Corners','Sagor Biswas','Savar, Dhaka',23.8780696,90.2540589,'01521315589','bsagor15@gmail.com'),(2,'Well-Food','Shawon','Azimpur,Dhaka',23.726783752,90.386528015,'01521329895','shawon56512@gmail.com'),(3,'Street_Burger','Md. Akkas Mia','Shapla Chattar, Motijheel',23.7265973,90.4216076,'01915233660','princekarl060@gmail.com'),(4,'Street_Burger_2','Abul hossain','Polashi, Dhaka',23.72691819,90.3896842,'01915233660','unknown@gmail.com'),(5,'Tanu Flowers','Tanvir Hossain','Mohamodpur, Dhaka',23.76286065,90.36085796,'01915233660','tanvirhossain96@gmail.com'),(6,'Polashi_Juice_Corner','Sagor Biswas','Polashi Market, Polashi, Dhaka',23.72702034,90.38962948,'01915233660','bsagor15@gmail.com'),(7,'Motijheel Juice Corner','Sadikur Rahman','Motijheel, Dhaka',23.72535649,90.42181599,'01915233660','princekarl060@gmail.com'),(8,'Bakshi Bazar Juice House','Tanvir Ahmed','Bakshi Bazar, Dhaka',23.72438017,90.39556789,'01915233660','princekarl060@gmail.com'),(9,'Mohammadpur Fast Food','Md. Jubayer Hossain','Mohammadpur, Dhaka',23.76379937,90.35904264,'01915233660','princekarl060@gmail.com'),(10,'Lazz_Pharma','Pronay Sharma','Dhaka Medical College Road, Dhaka',23.72402265,90.39819324,'01521315587','bsagor15@gmail.com'),(11,'Healthy_Medicines','Md. Omer Danish','Shahbagh, Dhaka',23.73828662,90.39511728,'01521315589','waltonabcdef@gmail.com');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Mobile` varchar(11) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user-shop_idx` (`user_id`),
  CONSTRAINT `user_shop` FOREIGN KEY (`user_id`) REFERENCES `shop` (`ShopID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'sagor','12345','01521315589','idle'),(2,2,'shawon','12345','01521329895','idle'),(3,3,'akkas','12345','01915233660','idle'),(4,4,'abul','12345','01521315584','idle'),(5,5,'tanvir','12345','01915233660','idle'),(6,6,'sagor2','12345','01915233660','idle'),(7,7,'mishad','12345','01915233660','idle'),(8,8,'sumon','12345','01915233660','idle'),(9,9,'jubayer','12345','01915233660','idle'),(10,10,'pronay','12345','01521315587','idle'),(11,11,'danish','12345','01521315589','idle');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-18 11:43:31
