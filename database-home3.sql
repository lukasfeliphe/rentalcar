-- MySQL dump 10.13  Distrib 5.7.44, for osx10.19 (x86_64)
--
-- Host: 127.0.0.1    Database: carento
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'BFHetJ2l3Xa3BknDaqO9N4kFomSPmnFC',1,'2025-01-16 17:21:54','2025-01-16 17:21:54','2025-01-16 17:21:54');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Drive Your Dream Car Today – Affordable Rentals at Your Fingertips!',1,'Book Now','/',0,1,'2025-01-17 00:21:55',NULL,1,'2025-01-16 17:21:55','2025-01-16 17:21:55'),(2,'Announcement 2','Hit the Road in Style – Premium Car Rentals for Every Journey!',1,'Book Now','/',0,1,'2025-01-17 00:21:55',NULL,1,'2025-01-16 17:21:55','2025-01-16 17:21:55'),(3,'Announcement 3','Explore the Open Road – Hassle-Free Car Rentals Just a Click Away!',1,'Book Now','/',0,1,'2025-01-17 00:21:55',NULL,1,'2025-01-16 17:21:55','2025-01-16 17:21:55');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'New Cars',0,'Quia qui nisi harum. Non rerum aut neque optio est similique maiores. Repellat ut laboriosam est. Velit maiores vel repellat est eum quam labore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(2,'Car Rentals',0,'Dicta corporis provident vitae porro inventore. Consectetur tempore odio dolor aut consectetur.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(3,'Electric Vehicles',0,'Minus quos soluta ut magni autem explicabo et. Quidem necessitatibus maxime quos qui commodi quas. Assumenda et placeat dicta ex earum ab.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(4,'Car Maintenance',0,'Voluptatem dolorem debitis provident animi. Eligendi sit esse atque mollitia temporibus. Eius maiores qui molestiae impedit laboriosam doloribus. Molestiae totam eveniet voluptates rem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(5,'Road Trips',0,'Vel maiores sit laborum quam. Consequuntur qui enim ipsum consequatur. Autem libero aut quo et qui. Vero ipsa saepe velit omnis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(6,'Luxury Cars',0,'Quia laudantium aut cum et animi et. Tempora qui quis et veniam porro et eos commodi. Molestias provident molestiae ipsam qui. Placeat fuga tenetur facilis aut sit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(7,'Family Cars',0,'Dolore consectetur numquam itaque nihil rerum et. Vel exercitationem quaerat soluta et odio. Ullam cupiditate natus in qui doloribus quia.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(8,'Off-Road Vehicles',0,'Placeat nulla ad velit qui. Facere non ullam odio mollitia. Adipisci tempore consequatur modi asperiores in. Beatae dolores consectetur voluptatibus.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(9,'Hybrid Cars',0,'Iusto quis assumenda exercitationem quia nulla qui. Qui est ullam nobis perferendis quisquam dolor ut. Facere omnis architecto ratione distinctio.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(10,'Car Innovations',0,'Mollitia quibusdam autem iusto eveniet ducimus sed placeat. Laboriosam iusto doloremque ullam voluptas ipsum sint. Aut quia ab ab odit quam est excepturi. Dolor officiis et et ab sit excepturi.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-01-16 17:22:02','2025-01-16 17:22:02');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Paris','paris',1,1,NULL,0,'locations/location1.jpg',0,'published','2025-01-16 17:22:10','2025-01-16 17:22:10',NULL),(2,'London','london',2,2,NULL,0,'locations/location2.jpg',0,'published','2025-01-16 17:22:10','2025-01-16 17:22:10',NULL),(3,'New York','new-york',3,3,NULL,0,'locations/location3.jpg',0,'published','2025-01-16 17:22:10','2025-01-16 17:22:10',NULL),(4,'New York','new-york-1',4,4,NULL,0,'locations/location4.jpg',0,'published','2025-01-16 17:22:10','2025-01-16 17:22:10',NULL),(5,'Copenhagen','copenhagen',5,5,NULL,0,'locations/location5.jpg',0,'published','2025-01-16 17:22:10','2025-01-16 17:22:10',NULL),(6,'Berlin','berlin',6,6,NULL,0,'locations/location6.jpg',0,'published','2025-01-16 17:22:10','2025-01-16 17:22:10',NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'France','French',0,NULL,0,'published','2025-01-16 17:22:10',NULL,'FRA'),(2,'England','English',0,NULL,0,'published','2025-01-16 17:22:10',NULL,'UK'),(3,'USA','Americans',0,NULL,0,'published','2025-01-16 17:22:10',NULL,'US'),(4,'Holland','Dutch',0,NULL,0,'published','2025-01-16 17:22:10',NULL,'HL'),(5,'Denmark','Danish',0,NULL,0,'published','2025-01-16 17:22:10',NULL,'DN'),(6,'Germany','Danish',0,NULL,0,'published','2025-01-16 17:22:10',NULL,'DN');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_booking_cars`
--

DROP TABLE IF EXISTS `cr_booking_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_booking_cars` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` bigint unsigned NOT NULL,
  `car_id` bigint unsigned NOT NULL,
  `car_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `currency_id` bigint unsigned NOT NULL,
  `pickup_address_id` bigint unsigned DEFAULT NULL,
  `return_address_id` bigint unsigned DEFAULT NULL,
  `rental_start_date` datetime NOT NULL,
  `rental_end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_booking_cars`
--

LOCK TABLES `cr_booking_cars` WRITE;
/*!40000 ALTER TABLE `cr_booking_cars` DISABLE KEYS */;
INSERT INTO `cr_booking_cars` VALUES (1,1,8,NULL,'BMW X5 xDrive40i M Sport 2024',96,1,NULL,NULL,'2025-01-05 00:00:00','2025-01-09 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(2,2,7,NULL,'Honda CR-V Touring Hybrid AWD 2024',31,1,NULL,NULL,'2025-01-01 00:00:00','2025-01-03 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(3,3,9,NULL,'Mercedes-Benz GLC 300 4MATIC 2024',62,1,NULL,NULL,'2025-01-08 00:00:00','2025-01-11 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(4,4,2,NULL,'Honda Accord Sport 2.0T 2024',77,1,NULL,NULL,'2025-01-05 00:00:00','2025-01-07 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(5,5,7,NULL,'Honda CR-V Touring Hybrid AWD 2024',31,1,NULL,NULL,'2025-01-15 00:00:00','2025-01-17 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(6,6,6,NULL,'Toyota RAV4 Prime XSE AWD 2024',47,1,NULL,NULL,'2025-01-14 00:00:00','2025-01-17 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(7,7,9,NULL,'Mercedes-Benz GLC 300 4MATIC 2024',62,1,NULL,NULL,'2025-01-08 00:00:00','2025-01-12 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(8,8,1,NULL,'Toyota Camry XLE Hybrid 2024',64,1,NULL,NULL,'2025-01-08 00:00:00','2025-01-12 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(9,9,5,NULL,'Lexus ES 350 F Sport 2024',60,1,NULL,NULL,'2025-01-10 00:00:00','2025-01-12 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(10,10,3,NULL,'Mercedes-Benz C300 4MATIC 2024',83,1,NULL,NULL,'2025-01-15 00:00:00','2025-01-17 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(11,11,3,NULL,'Mercedes-Benz C300 4MATIC 2024',83,1,NULL,NULL,'2025-01-10 00:00:00','2025-01-14 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(12,12,2,NULL,'Honda Accord Sport 2.0T 2024',77,1,NULL,NULL,'2025-01-10 00:00:00','2025-01-12 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(13,13,10,NULL,'Lexus RX 350 F Sport Handling AWD 2024',88,1,NULL,NULL,'2025-01-15 00:00:00','2025-01-18 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(14,14,1,NULL,'Toyota Camry XLE Hybrid 2024',64,1,NULL,NULL,'2025-01-16 00:00:00','2025-01-20 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(15,15,5,NULL,'Lexus ES 350 F Sport 2024',60,1,NULL,NULL,'2025-01-15 00:00:00','2025-01-19 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(16,16,9,NULL,'Mercedes-Benz GLC 300 4MATIC 2024',62,1,NULL,NULL,'2025-01-14 00:00:00','2025-01-16 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(17,17,7,NULL,'Honda CR-V Touring Hybrid AWD 2024',31,1,NULL,NULL,'2025-01-15 00:00:00','2025-01-17 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(18,18,4,NULL,'BMW 330i xDrive M Sport 2024',52,1,NULL,NULL,'2025-01-16 00:00:00','2025-01-18 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(19,19,8,NULL,'BMW X5 xDrive40i M Sport 2024',96,1,NULL,NULL,'2025-01-15 00:00:00','2025-01-19 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30'),(20,20,10,NULL,'Lexus RX 350 F Sport Handling AWD 2024',88,1,NULL,NULL,'2025-01-16 00:00:00','2025-01-20 00:00:00','2025-01-16 17:22:30','2025-01-16 17:22:30');
/*!40000 ALTER TABLE `cr_booking_cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_booking_service`
--

DROP TABLE IF EXISTS `cr_booking_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_booking_service` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` bigint unsigned NOT NULL,
  `service_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_booking_service`
--

LOCK TABLES `cr_booking_service` WRITE;
/*!40000 ALTER TABLE `cr_booking_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_booking_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_bookings`
--

DROP TABLE IF EXISTS `cr_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_bookings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `booking_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_age` int unsigned DEFAULT NULL,
  `customer_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `sub_total` double NOT NULL,
  `coupon_amount` double NOT NULL DEFAULT '0',
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_amount` double NOT NULL DEFAULT '0',
  `currency_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cr_bookings_booking_number_unique` (`booking_number`),
  UNIQUE KEY `cr_bookings_transaction_id_unique` (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_bookings`
--

LOCK TABLES `cr_bookings` WRITE;
/*!40000 ALTER TABLE `cr_bookings` DISABLE KEYS */;
INSERT INTO `cr_bookings` VALUES (1,'#1000002','9EFHSPHNUYMMO1XHCU5A','Skyla Dickinson','maximillian.damore@example.net',NULL,NULL,'7',96,96,0,NULL,0,'1','1',NULL,'cancelled','2025-01-16 17:22:30','2025-01-16 17:22:30',12),(2,'#1000003','VFYL3OLQ1QFQFUIPQSBB','Loyal Rath','hills.roderick@example.org',NULL,NULL,'8',31,31,0,NULL,0,'1','2',NULL,'cancelled','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(3,'#1000004','CFEGCXAT2ZRBU1K3VSTK','Victoria Gleason','rosenbaum.brisa@example.net',NULL,NULL,'1',62,62,0,NULL,0,'1','3',NULL,'cancelled','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(4,'#1000005','XKMOXHBM009MDAQDTA4X','Kari Schamberger Jr.','ilemke@example.com',NULL,NULL,'3',77,77,0,NULL,0,'1','4',NULL,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30',12),(5,'#1000006','H6ASIB6F5SRSKDAANIEB','Prof. Kelsie Hermiston','vendor@botble.com',NULL,NULL,'12',31,31,0,NULL,0,'1','5',NULL,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(6,'#1000007','Y4ZS0MZQZUIYKXYCWQQC','Verdie Luettgen','sblick@example.com',NULL,NULL,'5',47,47,0,NULL,0,'1','6',NULL,'processing','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(7,'#1000008','K4S3I0PNXORW9EA3RELY','Prof. Kelsie Hermiston','vendor@botble.com',NULL,NULL,'12',62,62,0,NULL,0,'1','7',NULL,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30',12),(8,'#1000009','0SNP4HE8IHUQYUQFA6ZC','Verdie Luettgen','sblick@example.com',NULL,NULL,'5',64,64,0,NULL,0,'1','8',NULL,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(9,'#1000010','G0YBVMOZBU860YTW5RMG','Verdie Luettgen','sblick@example.com',NULL,NULL,'5',60,60,0,NULL,0,'1','9',NULL,'cancelled','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(10,'#1000011','UIIFWFVT0INOA5D1TZVK','Kari Schamberger Jr.','ilemke@example.com',NULL,NULL,'3',83,83,0,NULL,0,'1','10',NULL,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30',12),(11,'#1000012','N3MVDK3UTN38JUJKQJQL','Stephanie Welch','wbalistreri@example.org',NULL,NULL,'2',83,83,0,NULL,0,'1','11',NULL,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(12,'#1000013','CDABEJLAVQO7L3R6EGKR','Victor Hirthe','kory05@example.net',NULL,NULL,'4',77,77,0,NULL,0,'1','12',NULL,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(13,'#1000014','TKTKEZOWE8UAWYQJM1FY','Leonora Collins','ismitham@example.net',NULL,NULL,'10',88,88,0,NULL,0,'1','13',NULL,'cancelled','2025-01-16 17:22:30','2025-01-16 17:22:30',12),(14,'#1000015','N06MMQZXNH0Y3F57WLZM','Verdie Luettgen','sblick@example.com',NULL,NULL,'5',64,64,0,NULL,0,'1','14',NULL,'pending','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(15,'#1000016','TAOPLO2KNL1YXJ8H1NNB','Verdie Luettgen','sblick@example.com',NULL,NULL,'5',60,60,0,NULL,0,'1','15',NULL,'pending','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(16,'#1000017','FMPMUWPKW7UH1HAVLSYP','Clifton Abernathy','customer@botble.com',NULL,NULL,'11',62,62,0,NULL,0,'1','16',NULL,'processing','2025-01-16 17:22:30','2025-01-16 17:22:30',12),(17,'#1000018','LZPWBXNRSJCYI9KHFUKN','Stephanie Welch','wbalistreri@example.org',NULL,NULL,'2',31,31,0,NULL,0,'1','17',NULL,'processing','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(18,'#1000019','RK5M3CDJJW81YLQODM0G','Kari Schamberger Jr.','ilemke@example.com',NULL,NULL,'3',52,52,0,NULL,0,'1','18',NULL,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(19,'#1000020','JIRE7AX9EZTMQCYC6XWF','Ayden Pouros DVM','ken.hamill@example.org',NULL,NULL,'6',96,96,0,NULL,0,'1','19',NULL,'processing','2025-01-16 17:22:30','2025-01-16 17:22:30',12),(20,'#1000021','UJJPGIXKV65FTTZO3QXP','Leonora Collins','ismitham@example.net',NULL,NULL,'10',88,88,0,NULL,0,'1','20',NULL,'cancelled','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL);
/*!40000 ALTER TABLE `cr_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_addresses`
--

DROP TABLE IF EXISTS `cr_car_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `detail_address` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `city_id` bigint unsigned DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_addresses`
--

LOCK TABLES `cr_car_addresses` WRITE;
/*!40000 ALTER TABLE `cr_car_addresses` DISABLE KEYS */;
INSERT INTO `cr_car_addresses` VALUES (1,'3106 Roob Drive','published',2,2,2,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(2,'753 Koch Brooks Apt. 780','published',4,4,4,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(3,'987 Block Ports','published',4,4,4,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(4,'273 Rohan Wall','published',1,1,1,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(5,'4252 Bogan Flats','published',2,2,2,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(6,'1061 Gleichner Extension Apt. 858','published',4,4,4,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(7,'719 Harris Drive Suite 252','published',5,5,5,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(8,'34626 Freeman Expressway','published',4,4,4,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(9,'2535 Kuphal Tunnel Apt. 019','published',2,2,2,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(10,'69005 Haley Port','published',4,4,4,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(11,'5510 Kendrick Ways','published',2,2,2,'2025-01-16 17:22:15','2025-01-16 17:22:15');
/*!40000 ALTER TABLE `cr_car_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_amenities`
--

DROP TABLE IF EXISTS `cr_car_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_amenities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cr_car_amenities_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_amenities`
--

LOCK TABLES `cr_car_amenities` WRITE;
/*!40000 ALTER TABLE `cr_car_amenities` DISABLE KEYS */;
INSERT INTO `cr_car_amenities` VALUES (1,'Leather upholstery','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(2,'Heated seats','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(3,'Sunroof/Moonroof','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(4,'Heads-up display','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(5,'Adaptive cruise control','published','2025-01-16 17:22:15','2025-01-16 17:22:15');
/*!40000 ALTER TABLE `cr_car_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_amenities_translations`
--

DROP TABLE IF EXISTS `cr_car_amenities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_amenities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr_car_amenities_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cr_car_amenities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_amenities_translations`
--

LOCK TABLES `cr_car_amenities_translations` WRITE;
/*!40000 ALTER TABLE `cr_car_amenities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_car_amenities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_categories`
--

DROP TABLE IF EXISTS `cr_car_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_categories`
--

LOCK TABLES `cr_car_categories` WRITE;
/*!40000 ALTER TABLE `cr_car_categories` DISABLE KEYS */;
INSERT INTO `cr_car_categories` VALUES (1,'Sport',0,'Sport cars model','published','ti ti-sport-billard',1,0,0,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(2,'Maserati',1,'','published','ti ti-activity',3,0,0,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(3,'Ferrari',1,'','published',NULL,3,0,0,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(4,'Classic',0,'Classic cars model','published','ti ti-alpha',2,0,0,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(5,'New',0,'New cars model','published','ti ti-new-section',4,0,1,'2025-01-16 17:22:30','2025-01-16 17:22:30');
/*!40000 ALTER TABLE `cr_car_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_categories_translations`
--

DROP TABLE IF EXISTS `cr_car_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr_car_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`cr_car_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_categories_translations`
--

LOCK TABLES `cr_car_categories_translations` WRITE;
/*!40000 ALTER TABLE `cr_car_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_car_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_colors`
--

DROP TABLE IF EXISTS `cr_car_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_colors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cr_car_colors_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_colors`
--

LOCK TABLES `cr_car_colors` WRITE;
/*!40000 ALTER TABLE `cr_car_colors` DISABLE KEYS */;
INSERT INTO `cr_car_colors` VALUES (1,'Red','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(2,'White','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(3,'Black','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(4,'Blue','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(5,'Pink','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(6,'Brown','published','2025-01-16 17:22:15','2025-01-16 17:22:15');
/*!40000 ALTER TABLE `cr_car_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_colors_translations`
--

DROP TABLE IF EXISTS `cr_car_colors_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_colors_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr_car_colors_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cr_car_colors_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_colors_translations`
--

LOCK TABLES `cr_car_colors_translations` WRITE;
/*!40000 ALTER TABLE `cr_car_colors_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_car_colors_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_fuels`
--

DROP TABLE IF EXISTS `cr_car_fuels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_fuels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cr_car_fuels_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_fuels`
--

LOCK TABLES `cr_car_fuels` WRITE;
/*!40000 ALTER TABLE `cr_car_fuels` DISABLE KEYS */;
INSERT INTO `cr_car_fuels` VALUES (1,'Gasoline','icons/car-diesel.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(2,'Diesel','icons/car-diesel.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(3,'Electric','icons/car-electricity.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15');
/*!40000 ALTER TABLE `cr_car_fuels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_fuels_translations`
--

DROP TABLE IF EXISTS `cr_car_fuels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_fuels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr_car_fuels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cr_car_fuels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_fuels_translations`
--

LOCK TABLES `cr_car_fuels_translations` WRITE;
/*!40000 ALTER TABLE `cr_car_fuels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_car_fuels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_maintenance_histories`
--

DROP TABLE IF EXISTS `cr_car_maintenance_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_maintenance_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `amount` double NOT NULL DEFAULT '0',
  `currency_id` bigint unsigned NOT NULL,
  `date` datetime DEFAULT NULL,
  `car_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cr_car_maintenance_histories_car_id_index` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_maintenance_histories`
--

LOCK TABLES `cr_car_maintenance_histories` WRITE;
/*!40000 ALTER TABLE `cr_car_maintenance_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_car_maintenance_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_maintenance_histories_translations`
--

DROP TABLE IF EXISTS `cr_car_maintenance_histories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_maintenance_histories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr_car_maintenance_histories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cr_car_maintenance_histories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_maintenance_histories_translations`
--

LOCK TABLES `cr_car_maintenance_histories_translations` WRITE;
/*!40000 ALTER TABLE `cr_car_maintenance_histories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_car_maintenance_histories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_makes`
--

DROP TABLE IF EXISTS `cr_car_makes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_makes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_makes`
--

LOCK TABLES `cr_car_makes` WRITE;
/*!40000 ALTER TABLE `cr_car_makes` DISABLE KEYS */;
INSERT INTO `cr_car_makes` VALUES (1,'Lexus','icons/lexus.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(2,'Mercedes','icons/mer.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(3,'Bugatti','icons/bugatti.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(4,'Jaguar','icons/jaguar.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(5,'Honda','icons/honda.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(6,'Chevrolet','icons/chevrolet.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(7,'Acura','icons/acura.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(8,'BMW','icons/bmw.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(9,'Toyota','icons/toyota.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(10,'Ford','icons/ford-i.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(11,'Nissan','icons/nissan-i.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(12,'Opel','icons/opel-i.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(13,'BMW','icons/bmw.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(14,'Toyota','icons/toyota.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15');
/*!40000 ALTER TABLE `cr_car_makes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_makes_translations`
--

DROP TABLE IF EXISTS `cr_car_makes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_makes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr_car_makes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cr_car_makes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_makes_translations`
--

LOCK TABLES `cr_car_makes_translations` WRITE;
/*!40000 ALTER TABLE `cr_car_makes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_car_makes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_reviews`
--

DROP TABLE IF EXISTS `cr_car_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` double NOT NULL DEFAULT '0',
  `customer_id` bigint unsigned NOT NULL,
  `car_id` bigint unsigned NOT NULL,
  `booking_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cr_car_reviews_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_reviews`
--

LOCK TABLES `cr_car_reviews` WRITE;
/*!40000 ALTER TABLE `cr_car_reviews` DISABLE KEYS */;
INSERT INTO `cr_car_reviews` VALUES (1,'Velit quas quos voluptas quam ipsum doloremque. Ut corrupti autem tempore aut vel aut. Illo quo et perferendis et voluptate est.',4,7,4,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(2,'Accusantium ipsa eveniet optio. Qui repellat reprehenderit earum maxime eaque doloribus. Voluptatum inventore voluptates itaque.',5,3,10,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(3,'Porro recusandae sed quae soluta ea officiis neque. Itaque doloribus culpa quibusdam illum et similique numquam. Nobis atque atque quaerat facilis placeat et iusto.',2,11,8,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(4,'Magnam saepe tempore eum omnis. Eveniet est quam distinctio et repudiandae at suscipit. Rem veniam sit beatae non.',3,9,7,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(5,'Fugit nulla et quasi sunt rerum autem. Hic id ipsum unde aut recusandae. Qui qui pariatur illum ratione alias quaerat.',4,11,8,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(6,'Porro pariatur esse cumque quae nisi ratione nostrum. Tenetur cupiditate saepe est et atque consectetur. Laudantium qui molestias qui voluptas impedit ullam et.',4,4,3,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(7,'Enim exercitationem maxime sed quia architecto. Esse non et numquam temporibus. Praesentium est officia ut et velit.',4,6,5,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(8,'Nostrum est facere debitis possimus eos nobis dolor. Veniam veniam perspiciatis tempore voluptate. Reprehenderit vero minima nihil amet odio distinctio.',4,2,9,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(9,'Ex nesciunt explicabo quasi qui sed quod ut. Quia labore aspernatur id deserunt occaecati molestiae velit. Nemo repellat eveniet consectetur possimus sit.',5,7,3,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(10,'Facere neque exercitationem consequatur eos maxime asperiores. Reiciendis autem id veniam neque. Dicta quos exercitationem quia est voluptatem.',5,10,1,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(11,'Modi fugiat cupiditate ut optio ad non. Aut consequuntur at omnis commodi rerum. Eligendi qui ducimus quibusdam ducimus consequatur aliquam repellendus deleniti.',4,11,6,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(12,'Qui minus placeat ducimus iure omnis ut est. Cumque fuga omnis repellat. Dolore dolor excepturi vel dolorem tempore. Autem et omnis placeat officia.',5,3,1,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(13,'Voluptates quia inventore corporis voluptas cupiditate. Voluptas quam nihil id eaque odit cupiditate natus. Facilis reprehenderit ab fuga magni magni asperiores voluptas.',4,1,5,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(14,'Odit consequatur vel voluptatum et tempora. Est qui temporibus placeat velit qui quam. Enim iure amet ea voluptas quisquam at.',3,9,4,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(15,'Doloribus adipisci et iste eos. Minima quia asperiores ipsa sunt aut. Nulla sit et et velit dolores sequi fugit. Magni repudiandae ea laborum possimus excepturi nulla.',2,6,10,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(16,'Ullam sed non aut natus doloribus. Est tenetur repellendus vitae asperiores quasi commodi. Sit provident quia blanditiis quo dolore doloribus.',1,9,10,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(17,'Sint consectetur ullam vel dicta iusto sint deserunt. Commodi sed soluta rem possimus est corrupti. Aperiam repellat dolorum architecto alias molestias veritatis officiis.',4,2,7,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(18,'Quam qui aut accusamus consequatur. Unde ex recusandae sint sint earum. Sed saepe et ipsum itaque quam quae dicta. Omnis sed architecto sit molestiae repellendus possimus natus.',2,10,6,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(19,'Ad iure voluptatum fugiat. Quo qui aut qui. Ad cumque id non et atque beatae est. Natus odit ab sit cupiditate eum vero. Aut numquam voluptas suscipit eos.',3,6,3,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30'),(20,'Rerum eveniet quod error. Modi distinctio quo sed non qui et dolore. Accusamus sit magni omnis doloribus.',3,2,2,NULL,'published','2025-01-16 17:22:30','2025-01-16 17:22:30');
/*!40000 ALTER TABLE `cr_car_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_tag`
--

DROP TABLE IF EXISTS `cr_car_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_tag` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `car_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_tag`
--

LOCK TABLES `cr_car_tag` WRITE;
/*!40000 ALTER TABLE `cr_car_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_car_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_transmissions`
--

DROP TABLE IF EXISTS `cr_car_transmissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_transmissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cr_car_transmissions_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_transmissions`
--

LOCK TABLES `cr_car_transmissions` WRITE;
/*!40000 ALTER TABLE `cr_car_transmissions` DISABLE KEYS */;
INSERT INTO `cr_car_transmissions` VALUES (1,'Automatic','icons/car-transmission-auto.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(2,'Manual','icons/car-transmission-manual.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15');
/*!40000 ALTER TABLE `cr_car_transmissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_transmissions_translations`
--

DROP TABLE IF EXISTS `cr_car_transmissions_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_transmissions_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr_car_transmissions_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cr_car_transmissions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_transmissions_translations`
--

LOCK TABLES `cr_car_transmissions_translations` WRITE;
/*!40000 ALTER TABLE `cr_car_transmissions_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_car_transmissions_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_types`
--

DROP TABLE IF EXISTS `cr_car_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cr_car_types_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_types`
--

LOCK TABLES `cr_car_types` WRITE;
/*!40000 ALTER TABLE `cr_car_types` DISABLE KEYS */;
INSERT INTO `cr_car_types` VALUES (1,'SUV','cars/car-1.jpg','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(2,'Hatchback','cars/car-2.jpg','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(3,'Sedan','cars/car-3.jpg','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(4,'Crossover','cars/car-4.jpg','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(5,'Minivan','cars/car-5.jpg','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(6,'Coupe','cars/car-6.jpg','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(7,'Sport Cars','cars/car-7.jpg','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(8,'Pickup Truck','cars/car-8.jpg','published','2025-01-16 17:22:15','2025-01-16 17:22:15');
/*!40000 ALTER TABLE `cr_car_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_types_translations`
--

DROP TABLE IF EXISTS `cr_car_types_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_types_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr_car_types_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cr_car_types_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_types_translations`
--

LOCK TABLES `cr_car_types_translations` WRITE;
/*!40000 ALTER TABLE `cr_car_types_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_car_types_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_car_views`
--

DROP TABLE IF EXISTS `cr_car_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_car_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `car_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2025-01-17',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cr_car_views_car_id_date_unique` (`car_id`,`date`),
  KEY `cr_car_views_car_id_index` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_car_views`
--

LOCK TABLES `cr_car_views` WRITE;
/*!40000 ALTER TABLE `cr_car_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_car_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_cars`
--

DROP TABLE IF EXISTS `cr_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_cars` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `license_plate` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `make_id` bigint unsigned DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `year` int unsigned DEFAULT NULL,
  `mileage` int unsigned DEFAULT NULL,
  `vehicle_type_id` bigint unsigned DEFAULT NULL,
  `transmission_id` bigint unsigned DEFAULT NULL,
  `fuel_type_id` bigint unsigned DEFAULT NULL,
  `number_of_seats` tinyint unsigned DEFAULT NULL,
  `number_of_doors` tinyint unsigned DEFAULT NULL,
  `rental_rate` double unsigned NOT NULL DEFAULT '0',
  `rental_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'per_day',
  `rental_available_types` text COLLATE utf8mb4_unicode_ci,
  `insurance_info` text COLLATE utf8mb4_unicode_ci,
  `vin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_address_id` bigint unsigned DEFAULT NULL COMMENT 'Id table cr_car_addresses',
  `return_address_id` bigint unsigned DEFAULT NULL COMMENT 'Id table cr_car_addresses',
  `tax_id` bigint unsigned DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `moderation_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`),
  KEY `cr_cars_make_id_index` (`make_id`),
  KEY `cr_cars_status_index` (`status`),
  KEY `cr_cars_vehicle_type_id_index` (`vehicle_type_id`),
  KEY `cr_cars_vin_index` (`vin`),
  KEY `cr_pick_address_index` (`pick_address_id`),
  KEY `cr_return_address_index` (`return_address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_cars`
--

LOCK TABLES `cr_cars` WRITE;
/*!40000 ALTER TABLE `cr_cars` DISABLE KEYS */;
INSERT INTO `cr_cars` VALUES (1,'Toyota Camry XLE Hybrid 2024',NULL,'<p>Introducing the epitome of modern sophistication in the realm of compact SUVs – the Seltos K3. Dressed in a captivating blue hue that exudes elegance and flair, this dynamic vehicle stands as a testament to innovation and style. With its sleek design accentuated by striking dark wheels, the Seltos K3 is not merely a mode of transportation but a statement of refined taste and contemporary living.</p>\n<p>Prepare to embark on a journey where cutting-edge technology meets unparalleled comfort, all wrapped in a package of unparalleled aesthetics. Join us as we delve into the world of the Seltos K3, where every detail is crafted to elevate your driving experience to new heights.</p>\n','[\"cars\\/3.jpg\",\"cars\\/9.jpg\",\"cars\\/car-interiors-1.jpg\",\"cars\\/car-interiors-6.jpg\",\"cars\\/car-interiors-5.jpg\",\"cars\\/car-interiors-5.jpg\"]','30A-123.00',7,'available',2010,17419,2,2,1,5,5,64,'per_day',NULL,'','55YTZM755CZSTUJL4','',11,11,NULL,1,0,'2025-01-16 17:22:30','2025-01-16 17:22:30',12,'Botble\\CarRentals\\Models\\Customer','approved'),(2,'Honda Accord Sport 2.0T 2024',NULL,'<p>Introducing the epitome of modern sophistication in the realm of compact SUVs – the Seltos K3. Dressed in a captivating blue hue that exudes elegance and flair, this dynamic vehicle stands as a testament to innovation and style. With its sleek design accentuated by striking dark wheels, the Seltos K3 is not merely a mode of transportation but a statement of refined taste and contemporary living.</p>\n<p>Prepare to embark on a journey where cutting-edge technology meets unparalleled comfort, all wrapped in a package of unparalleled aesthetics. Join us as we delve into the world of the Seltos K3, where every detail is crafted to elevate your driving experience to new heights.</p>\n','[\"cars\\/10.jpg\",\"cars\\/7.jpg\",\"cars\\/car-interiors-7.jpg\",\"cars\\/car-interiors-3.jpg\",\"cars\\/car-interiors-6.jpg\",\"cars\\/car-interiors-6.jpg\"]','30A-123.11',11,'available',2017,9464,8,1,2,4,2,77,'per_day',NULL,'','AKCESN1E5MGR2Y36N','',5,5,NULL,0,0,'2025-01-16 17:22:30','2025-01-16 17:22:30',1,'Botble\\ACL\\Models\\User','approved'),(3,'Mercedes-Benz C300 4MATIC 2024',NULL,'<p>Introducing the epitome of modern sophistication in the realm of compact SUVs – the Seltos K3. Dressed in a captivating blue hue that exudes elegance and flair, this dynamic vehicle stands as a testament to innovation and style. With its sleek design accentuated by striking dark wheels, the Seltos K3 is not merely a mode of transportation but a statement of refined taste and contemporary living.</p>\n<p>Prepare to embark on a journey where cutting-edge technology meets unparalleled comfort, all wrapped in a package of unparalleled aesthetics. Join us as we delve into the world of the Seltos K3, where every detail is crafted to elevate your driving experience to new heights.</p>\n','[\"cars\\/10.jpg\",\"cars\\/10.jpg\",\"cars\\/car-interiors-7.jpg\",\"cars\\/car-interiors-6.jpg\",\"cars\\/car-interiors-6.jpg\",\"cars\\/car-interiors-7.jpg\"]','29A-123.22',9,'available',2017,13346,2,1,2,5,4,83,'per_day',NULL,'','EA1291J08NMULCSCK','',1,1,NULL,1,0,'2025-01-16 17:22:30','2025-01-16 17:22:30',12,'Botble\\CarRentals\\Models\\Customer','approved'),(4,'BMW 330i xDrive M Sport 2024',NULL,'<p>Introducing the epitome of modern sophistication in the realm of compact SUVs – the Seltos K3. Dressed in a captivating blue hue that exudes elegance and flair, this dynamic vehicle stands as a testament to innovation and style. With its sleek design accentuated by striking dark wheels, the Seltos K3 is not merely a mode of transportation but a statement of refined taste and contemporary living.</p>\n<p>Prepare to embark on a journey where cutting-edge technology meets unparalleled comfort, all wrapped in a package of unparalleled aesthetics. Join us as we delve into the world of the Seltos K3, where every detail is crafted to elevate your driving experience to new heights.</p>\n','[\"cars\\/2.jpg\",\"cars\\/4.jpg\",\"cars\\/car-interiors-7.jpg\",\"cars\\/car-interiors-5.jpg\",\"cars\\/car-interiors-1.jpg\",\"cars\\/car-interiors-8.jpg\"]','30A-123.33',12,'available',2018,17699,2,2,1,5,4,52,'per_day',NULL,'','HKJ4G20S3WV83GT99','',6,6,NULL,0,1,'2025-01-16 17:22:30','2025-01-16 17:22:30',1,'Botble\\ACL\\Models\\User','approved'),(5,'Lexus ES 350 F Sport 2024',NULL,'<p>Introducing the epitome of modern sophistication in the realm of compact SUVs – the Seltos K3. Dressed in a captivating blue hue that exudes elegance and flair, this dynamic vehicle stands as a testament to innovation and style. With its sleek design accentuated by striking dark wheels, the Seltos K3 is not merely a mode of transportation but a statement of refined taste and contemporary living.</p>\n<p>Prepare to embark on a journey where cutting-edge technology meets unparalleled comfort, all wrapped in a package of unparalleled aesthetics. Join us as we delve into the world of the Seltos K3, where every detail is crafted to elevate your driving experience to new heights.</p>\n','[\"cars\\/5.jpg\",\"cars\\/6.jpg\",\"cars\\/car-interiors-6.jpg\",\"cars\\/car-interiors-6.jpg\",\"cars\\/car-interiors-2.jpg\",\"cars\\/car-interiors-5.jpg\"]','30A-123.44',11,'available',2015,3919,2,2,1,5,5,60,'per_day',NULL,'','CFG157127FCDAGCJ9','',1,1,NULL,1,0,'2025-01-16 17:22:30','2025-01-16 17:22:30',12,'Botble\\CarRentals\\Models\\Customer','approved'),(6,'Toyota RAV4 Prime XSE AWD 2024',NULL,'<p>Introducing the epitome of modern sophistication in the realm of compact SUVs – the Seltos K3. Dressed in a captivating blue hue that exudes elegance and flair, this dynamic vehicle stands as a testament to innovation and style. With its sleek design accentuated by striking dark wheels, the Seltos K3 is not merely a mode of transportation but a statement of refined taste and contemporary living.</p>\n<p>Prepare to embark on a journey where cutting-edge technology meets unparalleled comfort, all wrapped in a package of unparalleled aesthetics. Join us as we delve into the world of the Seltos K3, where every detail is crafted to elevate your driving experience to new heights.</p>\n','[\"cars\\/10.jpg\",\"cars\\/5.jpg\",\"cars\\/car-interiors-8.jpg\",\"cars\\/car-interiors-4.jpg\",\"cars\\/car-interiors-5.jpg\",\"cars\\/car-interiors-2.jpg\"]','30A-123.55',5,'available',2013,7128,4,3,1,8,2,47,'per_day',NULL,'','67DAM00U8T4F8KZGP','',1,1,NULL,0,0,'2025-01-16 17:22:30','2025-01-16 17:22:30',1,'Botble\\ACL\\Models\\User','approved'),(7,'Honda CR-V Touring Hybrid AWD 2024',NULL,'<p>Introducing the epitome of modern sophistication in the realm of compact SUVs – the Seltos K3. Dressed in a captivating blue hue that exudes elegance and flair, this dynamic vehicle stands as a testament to innovation and style. With its sleek design accentuated by striking dark wheels, the Seltos K3 is not merely a mode of transportation but a statement of refined taste and contemporary living.</p>\n<p>Prepare to embark on a journey where cutting-edge technology meets unparalleled comfort, all wrapped in a package of unparalleled aesthetics. Join us as we delve into the world of the Seltos K3, where every detail is crafted to elevate your driving experience to new heights.</p>\n','[\"cars\\/7.jpg\",\"cars\\/5.jpg\",\"cars\\/car-interiors-2.jpg\",\"cars\\/car-interiors-7.jpg\",\"cars\\/car-interiors-1.jpg\",\"cars\\/car-interiors-8.jpg\"]','30A-123.66',4,'available',2022,7092,7,2,3,7,2,31,'per_day',NULL,'','EHRN9SYG3RVHH4M6G','',4,4,NULL,1,0,'2025-01-16 17:22:30','2025-01-16 17:22:30',12,'Botble\\CarRentals\\Models\\Customer','approved'),(8,'BMW X5 xDrive40i M Sport 2024',NULL,'<p>Introducing the epitome of modern sophistication in the realm of compact SUVs – the Seltos K3. Dressed in a captivating blue hue that exudes elegance and flair, this dynamic vehicle stands as a testament to innovation and style. With its sleek design accentuated by striking dark wheels, the Seltos K3 is not merely a mode of transportation but a statement of refined taste and contemporary living.</p>\n<p>Prepare to embark on a journey where cutting-edge technology meets unparalleled comfort, all wrapped in a package of unparalleled aesthetics. Join us as we delve into the world of the Seltos K3, where every detail is crafted to elevate your driving experience to new heights.</p>\n','[\"cars\\/3.jpg\",\"cars\\/2.jpg\",\"cars\\/car-interiors-6.jpg\",\"cars\\/car-interiors-2.jpg\",\"cars\\/car-interiors-8.jpg\",\"cars\\/car-interiors-5.jpg\"]','30A-123.77',12,'available',2018,18356,6,3,2,7,2,96,'per_day',NULL,'','A1DYNEHM95K8XM209','',11,11,NULL,0,0,'2025-01-16 17:22:30','2025-01-16 17:22:30',1,'Botble\\ACL\\Models\\User','approved'),(9,'Mercedes-Benz GLC 300 4MATIC 2024',NULL,'<p>Introducing the epitome of modern sophistication in the realm of compact SUVs – the Seltos K3. Dressed in a captivating blue hue that exudes elegance and flair, this dynamic vehicle stands as a testament to innovation and style. With its sleek design accentuated by striking dark wheels, the Seltos K3 is not merely a mode of transportation but a statement of refined taste and contemporary living.</p>\n<p>Prepare to embark on a journey where cutting-edge technology meets unparalleled comfort, all wrapped in a package of unparalleled aesthetics. Join us as we delve into the world of the Seltos K3, where every detail is crafted to elevate your driving experience to new heights.</p>\n','[\"cars\\/3.jpg\",\"cars\\/4.jpg\",\"cars\\/car-interiors-7.jpg\",\"cars\\/car-interiors-3.jpg\",\"cars\\/car-interiors-4.jpg\",\"cars\\/car-interiors-8.jpg\"]','30A-123.88',5,'available',2018,14745,1,2,2,8,5,62,'per_day',NULL,'','6N475NTB4B6Y83LT4','',4,4,NULL,1,0,'2025-01-16 17:22:30','2025-01-16 17:22:30',12,'Botble\\CarRentals\\Models\\Customer','approved'),(10,'Lexus RX 350 F Sport Handling AWD 2024',NULL,'<p>Introducing the epitome of modern sophistication in the realm of compact SUVs – the Seltos K3. Dressed in a captivating blue hue that exudes elegance and flair, this dynamic vehicle stands as a testament to innovation and style. With its sleek design accentuated by striking dark wheels, the Seltos K3 is not merely a mode of transportation but a statement of refined taste and contemporary living.</p>\n<p>Prepare to embark on a journey where cutting-edge technology meets unparalleled comfort, all wrapped in a package of unparalleled aesthetics. Join us as we delve into the world of the Seltos K3, where every detail is crafted to elevate your driving experience to new heights.</p>\n','[\"cars\\/9.jpg\",\"cars\\/1.jpg\",\"cars\\/car-interiors-3.jpg\",\"cars\\/car-interiors-7.jpg\",\"cars\\/car-interiors-5.jpg\",\"cars\\/car-interiors-5.jpg\"]','29A-123.99',12,'available',2022,8073,3,1,1,4,4,88,'per_day',NULL,'','L9ELEP5V79W5XGFBN','',7,7,NULL,0,1,'2025-01-16 17:22:30','2025-01-16 17:22:30',1,'Botble\\ACL\\Models\\User','approved');
/*!40000 ALTER TABLE `cr_cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_cars_amenities`
--

DROP TABLE IF EXISTS `cr_cars_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_cars_amenities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cr_car_id` bigint unsigned NOT NULL,
  `cr_car_amenity_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_cars_amenities`
--

LOCK TABLES `cr_cars_amenities` WRITE;
/*!40000 ALTER TABLE `cr_cars_amenities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_cars_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_cars_categories`
--

DROP TABLE IF EXISTS `cr_cars_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_cars_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cr_car_category_id` bigint unsigned DEFAULT NULL,
  `cr_car_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cr_cars_categories_cr_car_category_id_index` (`cr_car_category_id`),
  KEY `cr_cars_categories_cr_car_id_index` (`cr_car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_cars_categories`
--

LOCK TABLES `cr_cars_categories` WRITE;
/*!40000 ALTER TABLE `cr_cars_categories` DISABLE KEYS */;
INSERT INTO `cr_cars_categories` VALUES (1,5,7),(2,2,6),(3,4,9),(4,1,1),(5,1,3),(6,3,2),(7,5,5),(8,4,4),(9,1,8),(10,2,10);
/*!40000 ALTER TABLE `cr_cars_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_cars_colors`
--

DROP TABLE IF EXISTS `cr_cars_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_cars_colors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cr_car_id` bigint unsigned NOT NULL,
  `cr_car_color_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_cars_colors`
--

LOCK TABLES `cr_cars_colors` WRITE;
/*!40000 ALTER TABLE `cr_cars_colors` DISABLE KEYS */;
INSERT INTO `cr_cars_colors` VALUES (1,1,4,NULL,NULL),(2,2,1,NULL,NULL),(3,3,6,NULL,NULL),(4,4,4,NULL,NULL),(5,5,6,NULL,NULL),(6,6,6,NULL,NULL),(7,7,6,NULL,NULL),(8,8,1,NULL,NULL),(9,9,2,NULL,NULL),(10,10,6,NULL,NULL);
/*!40000 ALTER TABLE `cr_cars_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_cars_translations`
--

DROP TABLE IF EXISTS `cr_cars_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_cars_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr_cars_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`cr_cars_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_cars_translations`
--

LOCK TABLES `cr_cars_translations` WRITE;
/*!40000 ALTER TABLE `cr_cars_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_cars_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_coupons`
--

DROP TABLE IF EXISTS `cr_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_unlimited_expires` tinyint NOT NULL DEFAULT '0',
  `expires_at` datetime DEFAULT NULL,
  `is_unlimited` tinyint NOT NULL DEFAULT '1',
  `limit` int NOT NULL DEFAULT '0',
  `used` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cr_coupons_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_coupons`
--

LOCK TABLES `cr_coupons` WRITE;
/*!40000 ALTER TABLE `cr_coupons` DISABLE KEYS */;
INSERT INTO `cr_coupons` VALUES (1,'Q8aaH6UnyMUd','percentage',56.69,0,'2025-02-17 00:22:15',0,261,59,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(2,'UQ7UDKipmPjS','money',3,1,NULL,1,0,80,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(3,'YS5cYCWNEgLN','money',2,1,NULL,1,0,98,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(4,'ek3NCeXYklqj','percentage',69.69,1,NULL,1,0,90,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(5,'DpmXzgtrzxmN','percentage',39.51,0,'2025-03-17 00:22:15',1,0,54,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(6,'THNpWMJL9Asm','money',9,0,'2025-04-17 00:22:15',1,0,103,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(7,'A4MYdB9Zi9fE','money',5,0,'2025-05-17 00:22:15',1,0,41,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(8,'21X2792OjVYD','money',9,1,NULL,1,0,78,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(9,'yisWqfd8H6yk','money',1,1,NULL,0,166,60,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(10,'WrXwRhA4TNhz','percentage',57.78,0,'2025-06-17 00:22:15',0,132,93,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(11,'uGhFk7UG71jd','percentage',24.64,0,'2025-07-17 00:22:15',0,877,128,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(12,'8Tohe8dgu7IZ','money',8,1,NULL,0,465,35,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(13,'ENaDcJMVUJMp','money',4,1,NULL,1,0,56,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(14,'KMUx4iV9uhPx','money',4,1,NULL,1,0,72,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(15,'P0QDiRojG7oo','percentage',64.41,0,'2025-08-17 00:22:15',0,801,20,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(16,'IkyvJrb5MzzI','money',3,1,NULL,1,0,31,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(17,'SM7niBKnXibO','money',3,1,NULL,1,0,13,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(18,'54eaMW5Wlssn','percentage',84.65,0,'2025-09-17 00:22:15',1,0,123,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(19,'izJmJaFABbet','money',3,1,NULL,0,930,47,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(20,'TMoAwI4cSphh','money',9,0,'2025-10-17 00:22:15',0,548,103,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(21,'FeKgu66srTSY','percentage',25.05,1,NULL,0,547,92,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(22,'ihnId7AsD7op','percentage',98.94,0,'2025-11-17 00:22:15',0,682,12,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(23,'6CHVAc0GqoRE','percentage',43.56,1,NULL,0,836,29,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(24,'xnLVU3Kx1PhX','money',6,0,'2025-12-17 00:22:15',1,0,119,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(25,'xgAz4hNW07l6','percentage',21.07,0,'2026-01-17 00:22:15',0,310,127,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(26,'KBS9PGqClCPd','percentage',19.27,1,NULL,0,420,114,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(27,'CooGDXs48zVm','money',8,0,'2026-02-17 00:22:15',0,439,43,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(28,'6f6sWKDG2syF','percentage',1.71,1,NULL,1,0,11,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(29,'YelZrUiWonX0','percentage',83.31,0,'2026-03-17 00:22:15',0,429,32,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(30,'x7EY4IkN32EH','percentage',41.32,0,'2026-04-17 00:22:15',1,0,75,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(31,'2hPZu6voIu2k','percentage',87.36,1,NULL,0,887,129,'2025-01-16 17:22:15','2025-01-16 17:22:15');
/*!40000 ALTER TABLE `cr_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_currencies`
--

DROP TABLE IF EXISTS `cr_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned NOT NULL DEFAULT '0',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_currencies`
--

LOCK TABLES `cr_currencies` WRITE;
/*!40000 ALTER TABLE `cr_currencies` DISABLE KEYS */;
INSERT INTO `cr_currencies` VALUES (1,'USD','$',1,0,0,1,1,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(2,'EUR','€',0,0,1,0,0.84,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(3,'VND','₫',0,0,2,0,23203,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(4,'NGN','₦',1,0,2,0,895.52,'2025-01-16 17:22:15','2025-01-16 17:22:15');
/*!40000 ALTER TABLE `cr_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_customer_password_resets`
--

DROP TABLE IF EXISTS `cr_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `cr_customer_password_resets_email_index` (`email`),
  KEY `cr_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_customer_password_resets`
--

LOCK TABLES `cr_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `cr_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_customers`
--

DROP TABLE IF EXISTS `cr_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cr_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_customers`
--

LOCK TABLES `cr_customers` WRITE;
/*!40000 ALTER TABLE `cr_customers` DISABLE KEYS */;
INSERT INTO `cr_customers` VALUES (1,'Victoria Gleason','rosenbaum.brisa@example.net','$2y$12$pNBe59WC.vZCk64uKkZuJ.qkGb8NKCAqsOab4tZANZm/1jgtGbSvG','customers/1.jpg','+14257348147',NULL,'published',NULL,NULL,NULL,'2025-01-16 17:22:15','2025-01-16 17:22:15',0,NULL),(2,'Stephanie Welch','wbalistreri@example.org','$2y$12$Sk/DY88mDY7eJ5ayTEap4.9VaIYuxqaD1UdmyiWAiv8mfHhmqDcBO','customers/2.jpg','+16605400733',NULL,'published',NULL,NULL,NULL,'2025-01-16 17:22:15','2025-01-16 17:22:15',0,NULL),(3,'Kari Schamberger Jr.','ilemke@example.com','$2y$12$6qA/f5zod4Hb3/ZUVdUGh.SeiyTyUwNVEADTwzuW.GAkUc6WFzy.e','customers/3.jpg','+18782527633',NULL,'published',NULL,NULL,NULL,'2025-01-16 17:22:15','2025-01-16 17:22:15',0,NULL),(4,'Victor Hirthe','kory05@example.net','$2y$12$8SeYg.C4fgWHVDSUem./9.0wUV59.yg/acSEnhv8JOqQuA6VbWCjm','customers/4.jpg','+17817503478',NULL,'published',NULL,NULL,NULL,'2025-01-16 17:22:15','2025-01-16 17:22:15',0,NULL),(5,'Verdie Luettgen','sblick@example.com','$2y$12$qze.z3OPtsyqfmQg4.BtCOZQmg8FT80msmeS5vCwiIamu.wgTUlqm','customers/5.jpg','+12345781842',NULL,'published',NULL,NULL,NULL,'2025-01-16 17:22:15','2025-01-16 17:22:15',0,NULL),(6,'Ayden Pouros DVM','ken.hamill@example.org','$2y$12$E82KOBuO/.oTi/C3Xi4azO4WVmWiuESSETxzyZTcNiG4Pvfr9l5Wa','customers/6.jpg','+15702160653',NULL,'published',NULL,NULL,NULL,'2025-01-16 17:22:15','2025-01-16 17:22:15',0,NULL),(7,'Skyla Dickinson','maximillian.damore@example.net','$2y$12$MeqfmgdYoh8iWG.1YkL2Ou7ko3rHBilYj0PkqCROHy0SjuRnwvLyK','customers/7.jpg','+17864267124',NULL,'published',NULL,NULL,NULL,'2025-01-16 17:22:15','2025-01-16 17:22:15',0,NULL),(8,'Loyal Rath','hills.roderick@example.org','$2y$12$cf5uDPrpJz2/iBy6o/c7leVnApVDeDrw0BCzmfvPqRApFUDtCDW0u','customers/8.jpg','+15168750236',NULL,'published',NULL,NULL,NULL,'2025-01-16 17:22:15','2025-01-16 17:22:15',0,NULL),(9,'Lurline Terry','brooklyn.kunde@example.org','$2y$12$5mQdtbBSAUom0kgk7WDPpeaf/99ferO9Fx7IRpDXttxifmsauSuhW','customers/9.jpg','+16895789858',NULL,'published',NULL,NULL,NULL,'2025-01-16 17:22:15','2025-01-16 17:22:15',0,NULL),(10,'Leonora Collins','ismitham@example.net','$2y$12$uJ0ydhYXucsK2oSnNmkH/.Sd/OawUiFHsJHljfPHr8QXTGMdlGBgu','customers/10.jpg','+13474960880',NULL,'published',NULL,NULL,NULL,'2025-01-16 17:22:15','2025-01-16 17:22:15',0,NULL),(11,'Clifton Abernathy','customer@botble.com','$2y$12$CCXUOxYTCq4uvC0HkFjYJ.EM7bZiJh7E6hcZkO4FaDX4ZNNa0plty','customers/1.jpg','+19569058823',NULL,'published',NULL,NULL,NULL,'2025-01-16 17:22:15','2025-01-16 17:22:15',0,NULL),(12,'Prof. Kelsie Hermiston','vendor@botble.com','$2y$12$oNpjoD/Hr0no1MaJyI76E.12FIUX4H1F6O4nNs/8BvCmygukal5vm','customers/1.jpg','+13239962545',NULL,'published',NULL,NULL,NULL,'2025-01-16 17:22:15','2025-01-16 17:22:15',1,NULL);
/*!40000 ALTER TABLE `cr_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_invoice_items`
--

DROP TABLE IF EXISTS `cr_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_invoice_items`
--

LOCK TABLES `cr_invoice_items` WRITE;
/*!40000 ALTER TABLE `cr_invoice_items` DISABLE KEYS */;
INSERT INTO `cr_invoice_items` VALUES (1,1,'BMW X5 xDrive40i M Sport 2024','',1,96.00,0.00,0.00,96.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(2,2,'Honda CR-V Touring Hybrid AWD 2024','',1,31.00,0.00,0.00,31.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(3,3,'Mercedes-Benz GLC 300 4MATIC 2024','',1,62.00,0.00,0.00,62.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(4,4,'Honda Accord Sport 2.0T 2024','',1,77.00,0.00,0.00,77.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(5,5,'Honda CR-V Touring Hybrid AWD 2024','',1,31.00,0.00,0.00,31.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(6,6,'Toyota RAV4 Prime XSE AWD 2024','',1,47.00,0.00,0.00,47.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(7,7,'Mercedes-Benz GLC 300 4MATIC 2024','',1,62.00,0.00,0.00,62.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(8,8,'Toyota Camry XLE Hybrid 2024','',1,64.00,0.00,0.00,64.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(9,9,'Lexus ES 350 F Sport 2024','',1,60.00,0.00,0.00,60.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(10,10,'Mercedes-Benz C300 4MATIC 2024','',1,83.00,0.00,0.00,83.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(11,11,'Mercedes-Benz C300 4MATIC 2024','',1,83.00,0.00,0.00,83.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(12,12,'Honda Accord Sport 2.0T 2024','',1,77.00,0.00,0.00,77.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(13,13,'Lexus RX 350 F Sport Handling AWD 2024','',1,88.00,0.00,0.00,88.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(14,14,'Toyota Camry XLE Hybrid 2024','',1,64.00,0.00,0.00,64.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(15,15,'Lexus ES 350 F Sport 2024','',1,60.00,0.00,0.00,60.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(16,16,'Mercedes-Benz GLC 300 4MATIC 2024','',1,62.00,0.00,0.00,62.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(17,17,'Honda CR-V Touring Hybrid AWD 2024','',1,31.00,0.00,0.00,31.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(18,18,'BMW 330i xDrive M Sport 2024','',1,52.00,0.00,0.00,52.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(19,19,'BMW X5 xDrive40i M Sport 2024','',1,96.00,0.00,0.00,96.00,'2025-01-16 17:22:30','2025-01-16 17:22:30'),(20,20,'Lexus RX 350 F Sport Handling AWD 2024','',1,88.00,0.00,0.00,88.00,'2025-01-16 17:22:30','2025-01-16 17:22:30');
/*!40000 ALTER TABLE `cr_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_invoices`
--

DROP TABLE IF EXISTS `cr_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `currency_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` double NOT NULL,
  `tax_amount` double NOT NULL DEFAULT '0',
  `discount_amount` double NOT NULL DEFAULT '0',
  `amount` double NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cr_invoices_code_unique` (`code`),
  KEY `cr_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `cr_invoices_payment_id_index` (`payment_id`),
  KEY `cr_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_invoices`
--

LOCK TABLES `cr_invoices` WRITE;
/*!40000 ALTER TABLE `cr_invoices` DISABLE KEYS */;
INSERT INTO `cr_invoices` VALUES (1,7,'Skyla Dickinson','maximillian.damore@example.net','+17864267124',1,1,'Botble\\CarRentals\\Models\\Booking',1,'INV-1',96,0,0,96,'pending',NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30',12),(2,8,'Loyal Rath','hills.roderick@example.org','+15168750236',2,1,'Botble\\CarRentals\\Models\\Booking',2,'INV-2',31,0,0,31,'pending',NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(3,1,'Victoria Gleason','rosenbaum.brisa@example.net','+14257348147',3,1,'Botble\\CarRentals\\Models\\Booking',3,'INV-3',62,0,0,62,'pending',NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(4,3,'Kari Schamberger Jr.','ilemke@example.com','+18782527633',4,1,'Botble\\CarRentals\\Models\\Booking',4,'INV-4',77,0,0,77,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30','2025-01-16 17:22:30',12),(5,12,'Prof. Kelsie Hermiston','vendor@botble.com','+13239962545',5,1,'Botble\\CarRentals\\Models\\Booking',5,'INV-5',31,0,0,31,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(6,5,'Verdie Luettgen','sblick@example.com','+12345781842',6,1,'Botble\\CarRentals\\Models\\Booking',6,'INV-6',47,0,0,47,'pending',NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(7,12,'Prof. Kelsie Hermiston','vendor@botble.com','+13239962545',7,1,'Botble\\CarRentals\\Models\\Booking',7,'INV-7',62,0,0,62,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30','2025-01-16 17:22:30',12),(8,5,'Verdie Luettgen','sblick@example.com','+12345781842',8,1,'Botble\\CarRentals\\Models\\Booking',8,'INV-8',64,0,0,64,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(9,5,'Verdie Luettgen','sblick@example.com','+12345781842',9,1,'Botble\\CarRentals\\Models\\Booking',9,'INV-9',60,0,0,60,'pending',NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(10,3,'Kari Schamberger Jr.','ilemke@example.com','+18782527633',10,1,'Botble\\CarRentals\\Models\\Booking',10,'INV-10',83,0,0,83,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30','2025-01-16 17:22:30',12),(11,2,'Stephanie Welch','wbalistreri@example.org','+16605400733',11,1,'Botble\\CarRentals\\Models\\Booking',11,'INV-11',83,0,0,83,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(12,4,'Victor Hirthe','kory05@example.net','+17817503478',12,1,'Botble\\CarRentals\\Models\\Booking',12,'INV-12',77,0,0,77,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(13,10,'Leonora Collins','ismitham@example.net','+13474960880',13,1,'Botble\\CarRentals\\Models\\Booking',13,'INV-13',88,0,0,88,'pending',NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30',12),(14,5,'Verdie Luettgen','sblick@example.com','+12345781842',14,1,'Botble\\CarRentals\\Models\\Booking',14,'INV-14',64,0,0,64,'pending',NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(15,5,'Verdie Luettgen','sblick@example.com','+12345781842',15,1,'Botble\\CarRentals\\Models\\Booking',15,'INV-15',60,0,0,60,'pending',NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(16,11,'Clifton Abernathy','customer@botble.com','+19569058823',16,1,'Botble\\CarRentals\\Models\\Booking',16,'INV-16',62,0,0,62,'pending',NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30',12),(17,2,'Stephanie Welch','wbalistreri@example.org','+16605400733',17,1,'Botble\\CarRentals\\Models\\Booking',17,'INV-17',31,0,0,31,'pending',NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(18,3,'Kari Schamberger Jr.','ilemke@example.com','+18782527633',18,1,'Botble\\CarRentals\\Models\\Booking',18,'INV-18',52,0,0,52,'completed','2025-01-16 17:22:30','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(19,6,'Ayden Pouros DVM','ken.hamill@example.org','+15702160653',19,1,'Botble\\CarRentals\\Models\\Booking',19,'INV-19',96,0,0,96,'pending',NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30',12),(20,10,'Leonora Collins','ismitham@example.net','+13474960880',20,1,'Botble\\CarRentals\\Models\\Booking',20,'INV-20',88,0,0,88,'pending',NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30',NULL);
/*!40000 ALTER TABLE `cr_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_messages`
--

DROP TABLE IF EXISTS `cr_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `car_id` bigint unsigned DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `vendor_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_messages`
--

LOCK TABLES `cr_messages` WRITE;
/*!40000 ALTER TABLE `cr_messages` DISABLE KEYS */;
INSERT INTO `cr_messages` VALUES (1,NULL,3,'John Doe','johndoe@example.com','I would like to know more about your services.','192.168.1.1','2025-01-16 17:22:30','2025-01-16 17:22:30','123-456-7890','unread',12),(2,NULL,3,'Jane Smith','janesmith@example.com','Can you provide a quotation for the project?','192.168.1.2','2025-01-16 17:22:30','2025-01-16 17:22:30','987-654-3210','read',NULL),(3,NULL,11,'Alice Brown','alicebrown@example.com','I am having an issue with my recent order.','192.168.1.3','2025-01-16 17:22:30','2025-01-16 17:22:30','555-666-7777','read',NULL),(4,NULL,2,'Bob Green','bobgreen@example.com','What are your business hours?','192.168.1.4','2025-01-16 17:22:30','2025-01-16 17:22:30','222-333-4444','unread',12),(5,NULL,5,'Charlie White','charliewhite@example.com','I need assistance with your product.','192.168.1.5','2025-01-16 17:22:30','2025-01-16 17:22:30','333-444-5555','unread',NULL),(6,NULL,3,'Diana Blue','dianablue@example.com','Do you offer international shipping?','192.168.1.6','2025-01-16 17:22:30','2025-01-16 17:22:30','444-555-6666','read',NULL),(7,NULL,4,'Edward Black','edwardblack@example.com','Can I schedule an appointment?','192.168.1.7','2025-01-16 17:22:30','2025-01-16 17:22:30','555-666-7778','unread',12),(8,NULL,1,'Fiona Gray','fionagray@example.com','Your website is not loading for me.','192.168.1.8','2025-01-16 17:22:30','2025-01-16 17:22:30','666-777-8888','unread',NULL),(9,NULL,2,'George Violet','georgeviolet@example.com','I want to change my order details.','192.168.1.9','2025-01-16 17:22:30','2025-01-16 17:22:30','777-888-9999','read',NULL),(10,NULL,6,'Hannah Pink','hannahpink@example.com','Can you send me a catalog of your products?','192.168.1.10','2025-01-16 17:22:30','2025-01-16 17:22:30','888-999-0000','read',12),(11,NULL,8,'Ian Orange','ianorange@example.com','Do you offer discounts for bulk purchases?','192.168.1.11','2025-01-16 17:22:30','2025-01-16 17:22:30','999-000-1111','read',NULL),(12,NULL,10,'Jack Purple','jackpurple@example.com','I forgot my account password.','192.168.1.12','2025-01-16 17:22:30','2025-01-16 17:22:30','000-111-2222','read',NULL),(13,NULL,1,'Karen Yellow','karenyellow@example.com','Can you expedite my order?','192.168.1.13','2025-01-16 17:22:30','2025-01-16 17:22:30','111-222-3333','unread',12),(14,NULL,10,'Liam Red','liamred@example.com','Do you have a return policy?','192.168.1.14','2025-01-16 17:22:30','2025-01-16 17:22:30','222-333-4445','read',NULL),(15,NULL,10,'Mia Silver','miasilver@example.com','Thank you for resolving my issue quickly.','192.168.1.15','2025-01-16 17:22:30','2025-01-16 17:22:30','333-444-5556','read',NULL),(16,NULL,7,'Noah Gold','noahgold@example.com','Can I get an invoice for my purchase?','192.168.1.16','2025-01-16 17:22:30','2025-01-16 17:22:30','444-555-6667','read',12),(17,NULL,6,'Olivia Bronze','oliviabronze@example.com','I would like to cancel my order.','192.168.1.17','2025-01-16 17:22:30','2025-01-16 17:22:30','555-666-7779','read',NULL),(18,NULL,12,'Paul Amber','paulamber@example.com','Your support team is very helpful.','192.168.1.18','2025-01-16 17:22:30','2025-01-16 17:22:30','666-777-8889','unread',NULL),(19,NULL,2,'Quinn Platinum','quinnplatinum@example.com','How do I track my shipment?','192.168.1.19','2025-01-16 17:22:30','2025-01-16 17:22:30','777-888-9990','read',12),(20,NULL,3,'Ruby Diamond','rubydiamond@example.com','Great service and prompt delivery!','192.168.1.20','2025-01-16 17:22:30','2025-01-16 17:22:30','888-999-0001','read',NULL);
/*!40000 ALTER TABLE `cr_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_services`
--

DROP TABLE IF EXISTS `cr_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `price` double unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cr_services_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_services`
--

LOCK TABLES `cr_services` WRITE;
/*!40000 ALTER TABLE `cr_services` DISABLE KEYS */;
INSERT INTO `cr_services` VALUES (1,'Driver Rental Service','In addition to our car rental service, we offer professional drivers for hire. Enjoy a stress-free journey with our experienced drivers handling the road.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/9.jpg\" image_2=\"news/5.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Velit in quibusdam commodi enim ut. Doloremque quibusdam excepturi tenetur alias quibusdam sint eum. Voluptatem magni rerum sit similique exercitationem commodi officiis. Reprehenderit voluptas officia aut quis. Animi unde recusandae eligendi laboriosam corrupti. Et eaque fugit qui quaerat. Unde porro architecto id nam illo. Ab ipsa quis consequatur facere doloribus sint accusantium.\" content_2=\"Vel quisquam ipsum autem aut dicta. Aut aut occaecati corrupti exercitationem inventore et. Et totam esse alias tempore repudiandae et. Sint illum libero quibusdam eum. Cumque quisquam omnis in non. Enim corporis doloremque corporis suscipit ut. Eligendi quisquam quis perferendis neque molestias cum porro. Fugit magnam aliquid culpa quis non. Eligendi distinctio quibusdam quam vero.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/9.jpg\" image_2=\"news/5.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n',274,'news/1.jpg','icons/lexus.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(2,'Oil Change Service','Keep your engine in top condition with our oil change service. Available as an add-on to any of our maintenance or repair services.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/2.jpg\" image_2=\"news/3.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Quod aliquid molestiae reiciendis sit. Consequuntur nesciunt quibusdam ea quasi ut esse. Error illum laboriosam at perferendis est. Beatae consectetur eligendi sit sit dolores fuga. Deserunt doloribus commodi maiores deleniti dignissimos. Similique quisquam possimus eos qui.\" content_2=\"Reiciendis tempore illum et ea quia eum maxime. Tempore exercitationem soluta deleniti neque quia. Dolores numquam consequatur et dolores iusto. Ut nemo sit saepe harum. Dolorem voluptatem qui veniam vitae amet. Eius earum consequatur similique maxime ut sint facere. Beatae veritatis voluptates quibusdam. Ex aperiam rem quas architecto asperiores nobis.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/2.jpg\" image_2=\"news/3.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n',101,'news/2.jpg','icons/mer.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(3,'Car Wash & Detailing Package','Enhance your car rental or repair experience with our premium car wash and detailing service, leaving your car spotless inside and out.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/8.jpg\" image_2=\"news/8.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Aut consectetur excepturi sed expedita est ipsa. Maxime iure explicabo dolores. Voluptates expedita perspiciatis dolorum numquam maiores similique.\" content_2=\"Consequatur aut illo vero qui in ipsa. Sed magni amet in dolorem ut officia officiis. Qui illo qui est nulla autem quidem minus. Et ipsam ut nemo quidem. Rem animi autem est voluptas sunt. Voluptas iusto iste hic qui qui sapiente sunt. Aliquam soluta sint vel omnis et.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/8.jpg\" image_2=\"news/8.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n',111,'news/3.jpg','icons/bugatti.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(4,'Roadside Assistance','Our roadside assistance service ensures peace of mind while you rent or drive. Get help with breakdowns, flat tires, or towing when you need it most.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/1.jpg\" image_2=\"news/3.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Tempora nesciunt ratione aspernatur dolor porro labore ut fugiat. Deserunt vel molestiae dolores asperiores. Autem nobis at voluptas nulla quam quisquam. Sed nisi veniam molestias laboriosam eum est aut. Ad reiciendis aut animi dignissimos delectus. Aut aut accusantium itaque quaerat unde illum necessitatibus dolorem.\" content_2=\"Aliquam qui doloribus nemo voluptates ducimus animi. Laborum repellendus repellat autem exercitationem officia dolorem animi. Eum tempora necessitatibus explicabo voluptatum sunt illum. Qui suscipit dolorem dolor voluptas quae. Amet deserunt non architecto est sed optio quasi. Minus et dicta officiis repellendus ab.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/1.jpg\" image_2=\"news/3.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n',479,'news/4.jpg','icons/jaguar.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(5,'Temporary Car Replacement','If your car is in for repairs or maintenance, we offer a temporary car replacement service so you’re never without transportation.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/9.jpg\" image_2=\"news/1.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Vel repudiandae fugit sed adipisci. Voluptas similique vitae molestias. Quos vel velit eum velit commodi dolore aperiam. Aut totam labore minus laborum. Et voluptates doloribus beatae inventore illo voluptates et in. Ut tempora aut sunt cum. Non dolorem excepturi debitis esse veniam nostrum et. Eaque expedita ipsum sunt quisquam.\" content_2=\"Officia sit minima nisi dolorum expedita molestiae in quaerat. Qui quisquam consequatur ut facilis. Voluptates accusamus optio a. Id nesciunt esse dolorum amet quidem ea. Eligendi quia non nihil autem facere. Et deserunt laboriosam recusandae aut a. Aperiam est magni ipsa exercitationem dicta.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/9.jpg\" image_2=\"news/1.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n',373,'news/5.jpg','icons/honda.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(6,'Tire Replacement & Balancing','We provide tire replacement and wheel balancing services, ensuring your car is safe and smooth on the road, available as an add-on to any maintenance package.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/2.jpg\" image_2=\"news/7.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Consequatur sequi numquam quis itaque in minima. Quidem sit natus ab non et deserunt. Accusamus corrupti aut quod voluptatum repellat. Est ea consequatur eveniet totam aliquam in. Veritatis qui ut ea quia voluptas consequatur quis sunt. Assumenda quidem sit facilis reprehenderit.\" content_2=\"Deserunt et tenetur aspernatur. Quis nostrum ut delectus esse itaque eum quos earum. Atque aut modi assumenda eos odio. Velit saepe rem corrupti aliquid rerum atque. Est maiores excepturi non iste. Qui aut qui perferendis. Sed quidem ut facilis eligendi velit. Tempore cum magni dolorem excepturi sit porro et blanditiis.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/2.jpg\" image_2=\"news/7.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n',683,'news/6.jpg','icons/chevrolet.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(7,'Vehicle Inspection Service','For those looking to sell or rent a car, we offer thorough vehicle inspection services to certify your car’s condition and increase its market value.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/3.jpg\" image_2=\"news/4.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Totam placeat voluptas totam et quia neque ea. Voluptatem animi dolorum excepturi ratione dolorem velit. Dignissimos velit commodi sint ipsa similique quod dolorem impedit. Nostrum ab voluptatem pariatur laborum ipsam non. Consequatur veritatis ut qui in incidunt deleniti necessitatibus. Repellendus nobis non in minima.\" content_2=\"Quo vero consectetur ipsam. Laudantium sequi non qui qui quidem. Minima eum porro ut ut consequatur. Voluptatum dolorem ex et officia. Sed nihil ut iste corrupti id. Nulla iusto est inventore eaque repudiandae eos rerum. Error quia odio qui eos omnis libero numquam.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/3.jpg\" image_2=\"news/4.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n',905,'news/7.jpg','icons/chevrolet.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(8,'Car Insurance Assistance','Our experts can help you find the right car insurance policy, available as an add-on when purchasing or renting a vehicle from us.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/9.jpg\" image_2=\"news/9.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Et quia atque ut dolorem optio cumque omnis necessitatibus. Ratione voluptas perferendis consequuntur aliquam quidem explicabo atque. Nihil harum placeat provident dolores explicabo nihil sed. Qui quo corrupti natus ut. Harum laboriosam cumque perspiciatis enim ratione dolor. Et ut qui incidunt molestiae. Sint voluptatum sapiente quis laboriosam. Ut et maxime dignissimos autem.\" content_2=\"Fugit sint mollitia est aliquam sed et quibusdam. Ut dolor aliquam veritatis exercitationem. Quod nesciunt rerum quia pariatur nulla. Aut aut aut odit consequuntur ut. Enim soluta nam modi cumque corporis doloremque earum. Dolores repudiandae beatae explicabo architecto dolorem odio. Ut atque nisi et ex architecto et provident.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/9.jpg\" image_2=\"news/9.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n',120,'news/8.jpg','icons/chevrolet.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(9,'Pick-Up & Drop-Off Service','We offer a convenient pick-up and drop-off service when you rent a car, have your car serviced, or use our detailing services.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/9.jpg\" image_2=\"news/2.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Omnis sed molestias expedita sed voluptate quo occaecati. Quia ullam possimus iste eum repellendus ut et dignissimos. Similique pariatur nesciunt id necessitatibus sed libero. Ut praesentium est aspernatur nemo possimus animi quaerat. Qui est dolorem illo ab. At nobis voluptate quia occaecati cumque. In aperiam quas tenetur ab alias.\" content_2=\"Consequatur quo sit excepturi quo assumenda. Rerum itaque sit qui. Eum non fuga sint esse. Minus exercitationem molestias voluptatum odit et quo veniam. Perspiciatis ut quae soluta enim autem qui. Perspiciatis quo commodi ratione mollitia ut. Placeat architecto voluptatem odio molestiae natus optio.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/9.jpg\" image_2=\"news/2.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n',751,'news/9.jpg','icons/chevrolet.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15'),(10,'Premium Fuel Service','Refuel your rental or serviced vehicle with high-quality premium fuel before hitting the road, ensuring optimal performance and mileage.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/3.jpg\" image_2=\"news/1.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Id aut dolore officiis nihil. Distinctio voluptas deleniti nemo pariatur ipsum maxime. Et ratione beatae et laudantium harum ut et. Quae animi ut iste deserunt reiciendis. Ut nobis qui ut velit magnam mollitia. Quas qui sunt mollitia aut. Ex dolorem nihil dolor ab. Ipsum incidunt sunt eaque sit.\" content_2=\"Velit sint ut corrupti amet. Odio tenetur similique quos molestiae. Rerum ducimus eos temporibus ut deleniti debitis est sunt. Possimus dicta voluptates qui est aut. Laudantium non maxime ut autem voluptas excepturi. Earum a rerum distinctio aut corrupti omnis cum. Id ut rem minus quasi adipisci repellendus.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/3.jpg\" image_2=\"news/1.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n',398,'news/10.jpg','icons/chevrolet.png','published','2025-01-16 17:22:15','2025-01-16 17:22:15');
/*!40000 ALTER TABLE `cr_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_services_translations`
--

DROP TABLE IF EXISTS `cr_services_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_services_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr_services_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`cr_services_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_services_translations`
--

LOCK TABLES `cr_services_translations` WRITE;
/*!40000 ALTER TABLE `cr_services_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_services_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_tags`
--

DROP TABLE IF EXISTS `cr_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cr_tags_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_tags`
--

LOCK TABLES `cr_tags` WRITE;
/*!40000 ALTER TABLE `cr_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_tags_translations`
--

DROP TABLE IF EXISTS `cr_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr_tags_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cr_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_tags_translations`
--

LOCK TABLES `cr_tags_translations` WRITE;
/*!40000 ALTER TABLE `cr_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_taxes`
--

DROP TABLE IF EXISTS `cr_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` decimal(8,6) DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `priority` smallint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_taxes`
--

LOCK TABLES `cr_taxes` WRITE;
/*!40000 ALTER TABLE `cr_taxes` DISABLE KEYS */;
INSERT INTO `cr_taxes` VALUES (1,'Import Duty',1.260000,'published',1,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(2,'Value Added Tax (VAT)',3.460000,'published',2,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(3,'Currency Conversion',1.560000,'published',3,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(4,'Brokerage',1.490000,'published',4,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(5,'Storage',0.610000,'published',5,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(6,'Administrative',4.840000,'published',6,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(7,'Handling',0.890000,'published',7,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(8,'Insurance',2.450000,'published',8,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(9,'Rural Delivery',3.240000,'published',9,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(10,'Return Shipping',0.970000,'published',10,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(11,'Environmental',3.310000,'published',11,'2025-01-16 17:22:15','2025-01-16 17:22:15'),(12,'Excise',2.270000,'published',12,'2025-01-16 17:22:15','2025-01-16 17:22:15');
/*!40000 ALTER TABLE `cr_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cr_taxes_translations`
--

DROP TABLE IF EXISTS `cr_taxes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cr_taxes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr_taxes_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_code`,`cr_taxes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cr_taxes_translations`
--

LOCK TABLES `cr_taxes_translations` WRITE;
/*!40000 ALTER TABLE `cr_taxes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cr_taxes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'GENERAL INFORMATION',0,'published','2025-01-16 17:22:05','2025-01-16 17:22:05',NULL),(2,'ACCOMMODATIONS AND AMENITIES',1,'published','2025-01-16 17:22:05','2025-01-16 17:22:05',NULL),(3,'SPECIAL EVENTS',2,'published','2025-01-16 17:22:05','2025-01-16 17:22:05',NULL),(4,'SAFETY AND HEALTH',3,'published','2025-01-16 17:22:05','2025-01-16 17:22:05',NULL),(5,'EXPLORING',4,'published','2025-01-16 17:22:05','2025-01-16 17:22:05',NULL),(6,'Account Management',5,'published','2025-01-16 17:22:05','2025-01-16 17:22:05',NULL),(7,'Booking and Reservations',6,'published','2025-01-16 17:22:05','2025-01-16 17:22:05',NULL),(8,'Activity Information',7,'published','2025-01-16 17:22:05','2025-01-16 17:22:05',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What sets Luxury Hotel apart from others area?','Our hotel stands out with its prime coastal location, captivating design that harmonizes with nature, impeccable service dedicated to fulfilling every guest’s desire, and an array of world-class amenities that redefine opulence and sophistication.',1,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(2,'Are pets allowed at your hotel?','Unfortunately, as we strive to maintain an environment of tranquility and luxury for all our guests, we regret to inform you that we do not permit pets in our elegantly appointed rooms and meticulously designed public spaces.',2,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(3,'Is there a service from airport to hotel?','Absolutely! For your convenience, we offer an exclusive airport shuttle service that can be arranged in advance. Our dedicated concierge team will be delighted to provide you with detailed information and assist with reservations.',1,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(4,'What dining options are available at hotel?','Indulge in a culinary journey at our resort with a range of exquisite dining options. From elegantly crafted local and international cuisines to delightful specialty restaurants and inviting bars, every dining experience promises to tantalize your taste buds and elevate your stay to new heights of gastronomic pleasure.',2,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(5,'Is there a spa and wellness center on-site?','Embrace holistic well-being at our luxurious on-site spa and wellness center. Immerse yourself in a world of serenity and rejuvenation with a diverse selection of treatments, therapies, and state-of-the-art facilities that cater to your body, mind, and soul.',2,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(6,'Do you have family-friendly activities?','Families are warmly welcomed to our resort, where we have thoughtfully curated a range of family-friendly amenities and activities. From a dedicated kids’ club to a family pool and a host of engaging recreational options, we ensure a harmonious and enjoyable stay for guests of all ages.',2,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(7,'How can I arrange special at resort?','Celebrate life’s most precious moments in the epitome of luxury and elegance. Our skilled event planning team is committed to orchestrating seamless and memorable celebrations, ensuring every detail is tailored to your vision. Contact our dedicated events department to embark on a journey of crafting extraordinary moments.',3,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(8,'What safety measures do you have for guests?','Your well-being is our paramount concern. We have implemented stringent health and safety protocols to ensure a secure and comfortable environment for all our guests. These measures encompass enhanced cleaning procedures, social distancing guidelines, and a commitment to maintaining the highest standards of hygiene throughout the resort.',4,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(9,'Can I cancel or modify my reservation?','Our reservation policies vary based on the rate type and specific booking conditions. We kindly advise reviewing the terms and details of your reservation or reaching out to our dedicated reservations team for personalized assistance regarding cancellations or modifications. Your comfort and satisfaction remain our utmost priority.',1,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(10,'What activities are near your hotel?','Our hotel’s prime location offers easy access to a plethora of attractions. Explore the captivating Adriatic coastline, immerse yourself in historical landmarks, indulge in vibrant local culture, and embark on memorable excursions that our concierge team can readily assist in arranging.',5,'published','2025-01-16 17:22:05','2025-01-16 17:22:05');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fob_comments`
--

DROP TABLE IF EXISTS `fob_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fob_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reply_to` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fob_comments_author_type_author_id_index` (`author_type`,`author_id`),
  KEY `fob_comments_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `fob_comments_reply_to_index` (`reply_to`),
  KEY `fob_comments_reference_url_index` (`reference_url`),
  KEY `fob_comments_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fob_comments`
--

LOCK TABLES `fob_comments` WRITE;
/*!40000 ALTER TABLE `fob_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `fob_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Stunning Electric Cars of 2024','Sit molestiae voluptas est omnis. Iste iure vero nam magnam quia. Perferendis facere beatae et ratione.',0,0,'galleries/1.jpg',1,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(2,'Top Luxury Cars for Special Occasions','Asperiores molestiae qui optio accusamus porro quidem aliquam. Voluptas quo reprehenderit minima quam odit.',0,0,'galleries/2.jpg',1,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(3,'Family Cars with Advanced Safety Features','Aut autem minima suscipit. Eaque quis vel voluptatum aliquid. Illo magnam omnis rem doloribus.',0,0,'galleries/3.jpg',1,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(4,'Off-Road Vehicles in Action','Quisquam eligendi doloremque asperiores inventore. Laudantium et dolor eum. Error consequatur placeat omnis dignissimos voluptatem sunt ipsum.',0,0,'galleries/4.jpg',1,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(5,'The Evolution of Car Design: A Visual Journey','Dolorem ut et consectetur at. Temporibus incidunt velit occaecati explicabo beatae.',0,0,'galleries/5.jpg',1,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(6,'Best Road Trip Cars of the Year','Excepturi earum earum esse itaque non officiis porro. Rerum laudantium ut similique. Autem voluptatum reprehenderit aut exercitationem.',0,0,'galleries/6.jpg',1,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(7,'Exclusive New Car Models Unveiled','Accusantium autem amet ut non iusto magni. Sapiente ad in rem et consequatur.',0,0,'galleries/7.jpg',1,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(8,'Iconic Cars from Around the World','Velit dignissimos qui officiis. Nihil eveniet soluta illo placeat corporis expedita illum. Beatae est dolorem quidem dolore iste optio.',0,0,'galleries/8.jpg',1,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(9,'The Future of Electric and Hybrid Cars','Autem minima quia aut a qui aut saepe. Iusto id dolore magni. Incidunt et aut illo facilis voluptate ipsam ipsam.',0,0,'galleries/9.jpg',1,'published','2025-01-16 17:22:05','2025-01-16 17:22:05'),(10,'Luxury Car Interiors: A Closer Look','Omnis omnis voluptatem iste laborum harum. Qui iusto doloremque sed ut dignissimos debitis. Consequatur nulla molestias tempore autem.',0,0,'galleries/10.jpg',1,'published','2025-01-16 17:22:05','2025-01-16 17:22:05');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',1,'Botble\\Gallery\\Models\\Gallery','2025-01-16 17:22:05','2025-01-16 17:22:05'),(2,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',2,'Botble\\Gallery\\Models\\Gallery','2025-01-16 17:22:05','2025-01-16 17:22:05'),(3,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',3,'Botble\\Gallery\\Models\\Gallery','2025-01-16 17:22:05','2025-01-16 17:22:05'),(4,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',4,'Botble\\Gallery\\Models\\Gallery','2025-01-16 17:22:05','2025-01-16 17:22:05'),(5,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',5,'Botble\\Gallery\\Models\\Gallery','2025-01-16 17:22:05','2025-01-16 17:22:05'),(6,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',6,'Botble\\Gallery\\Models\\Gallery','2025-01-16 17:22:05','2025-01-16 17:22:05'),(7,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',7,'Botble\\Gallery\\Models\\Gallery','2025-01-16 17:22:05','2025-01-16 17:22:05'),(8,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',8,'Botble\\Gallery\\Models\\Gallery','2025-01-16 17:22:05','2025-01-16 17:22:05'),(9,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',9,'Botble\\Gallery\\Models\\Gallery','2025-01-16 17:22:05','2025-01-16 17:22:05'),(10,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"\"}]',10,'Botble\\Gallery\\Models\\Gallery','2025-01-16 17:22:05','2025-01-16 17:22:05');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','dbcdc0120a92e2494c96b31e774ddb82',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','af48eb11d32714ddb0e8857615e9f3a5',1,'Botble\\Menu\\Models\\Menu'),(3,'en_US','78bd4fd81d1b4c99996e5c404997d862',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','3bbace2311af4edaa027128eeb0776ae',2,'Botble\\SimpleSlider\\Models\\SimpleSlider');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',10644,'general/1.jpg','[]','2025-01-16 17:21:11','2025-01-16 17:21:11',NULL,'public'),(2,0,'2','2',1,'image/jpeg',4750,'general/2.jpg','[]','2025-01-16 17:21:12','2025-01-16 17:21:12',NULL,'public'),(3,0,'3','3',1,'image/jpeg',8045,'general/3.jpg','[]','2025-01-16 17:21:12','2025-01-16 17:21:12',NULL,'public'),(4,0,'about-us-1','about-us-1',1,'image/jpeg',11009,'general/about-us-1.jpg','[]','2025-01-16 17:21:12','2025-01-16 17:21:12',NULL,'public'),(5,0,'about-us-2','about-us-2',1,'image/jpeg',11009,'general/about-us-2.jpg','[]','2025-01-16 17:21:12','2025-01-16 17:21:12',NULL,'public'),(6,0,'about-us-3','about-us-3',1,'image/jpeg',9151,'general/about-us-3.jpg','[]','2025-01-16 17:21:13','2025-01-16 17:21:13',NULL,'public'),(7,0,'admin-logo','admin-logo',1,'image/png',3856,'general/admin-logo.png','[]','2025-01-16 17:21:13','2025-01-16 17:21:13',NULL,'public'),(8,0,'appstore','appstore',1,'image/png',3718,'general/appstore.png','[]','2025-01-16 17:21:13','2025-01-16 17:21:13',NULL,'public'),(9,0,'background','background',1,'image/png',171804,'general/background.png','[]','2025-01-16 17:21:13','2025-01-16 17:21:13',NULL,'public'),(10,0,'favicon','favicon',1,'image/png',2019,'general/favicon.png','[]','2025-01-16 17:21:14','2025-01-16 17:21:14',NULL,'public'),(11,0,'googleplay','googleplay',1,'image/png',3970,'general/googleplay.png','[]','2025-01-16 17:21:14','2025-01-16 17:21:14',NULL,'public'),(12,0,'img-1','img-1',1,'image/png',8332,'general/img-1.png','[]','2025-01-16 17:21:14','2025-01-16 17:21:14',NULL,'public'),(13,0,'img-2-1','img-2-1',1,'image/png',4793,'general/img-2-1.png','[]','2025-01-16 17:21:14','2025-01-16 17:21:14',NULL,'public'),(14,0,'img-2-2','img-2-2',1,'image/png',4443,'general/img-2-2.png','[]','2025-01-16 17:21:15','2025-01-16 17:21:15',NULL,'public'),(15,0,'img-2-3','img-2-3',1,'image/png',3547,'general/img-2-3.png','[]','2025-01-16 17:21:15','2025-01-16 17:21:15',NULL,'public'),(16,0,'img-2-4','img-2-4',1,'image/png',4221,'general/img-2-4.png','[]','2025-01-16 17:21:15','2025-01-16 17:21:15',NULL,'public'),(17,0,'img-2','img-2',1,'image/png',8360,'general/img-2.png','[]','2025-01-16 17:21:15','2025-01-16 17:21:15',NULL,'public'),(18,0,'img-3','img-3',1,'image/png',7564,'general/img-3.png','[]','2025-01-16 17:21:16','2025-01-16 17:21:16',NULL,'public'),(19,0,'img-4','img-4',1,'image/png',7335,'general/img-4.png','[]','2025-01-16 17:21:16','2025-01-16 17:21:16',NULL,'public'),(20,0,'img-5','img-5',1,'image/png',8318,'general/img-5.png','[]','2025-01-16 17:21:16','2025-01-16 17:21:16',NULL,'public'),(21,0,'logo-dark','logo-dark',1,'image/png',3856,'general/logo-dark.png','[]','2025-01-16 17:21:16','2025-01-16 17:21:16',NULL,'public'),(22,0,'logo','logo',1,'image/png',4617,'general/logo.png','[]','2025-01-16 17:21:17','2025-01-16 17:21:17',NULL,'public'),(23,0,'phone','phone',1,'image/png',10618,'general/phone.png','[]','2025-01-16 17:21:17','2025-01-16 17:21:17',NULL,'public'),(24,0,'truck','truck',1,'image/png',5660,'general/truck.png','[]','2025-01-16 17:21:17','2025-01-16 17:21:17',NULL,'public'),(136,0,'1','1',6,'image/jpeg',19108,'news/1.jpg','[]','2025-01-16 17:21:55','2025-01-16 17:21:55',NULL,'public'),(137,0,'10','10',6,'image/jpeg',19108,'news/10.jpg','[]','2025-01-16 17:21:55','2025-01-16 17:21:55',NULL,'public'),(138,0,'11','11',6,'image/jpeg',19108,'news/11.jpg','[]','2025-01-16 17:21:55','2025-01-16 17:21:55',NULL,'public'),(139,0,'12','12',6,'image/jpeg',19108,'news/12.jpg','[]','2025-01-16 17:21:56','2025-01-16 17:21:56',NULL,'public'),(140,0,'13','13',6,'image/jpeg',19108,'news/13.jpg','[]','2025-01-16 17:21:56','2025-01-16 17:21:56',NULL,'public'),(141,0,'14','14',6,'image/jpeg',19108,'news/14.jpg','[]','2025-01-16 17:21:56','2025-01-16 17:21:56',NULL,'public'),(142,0,'15','15',6,'image/jpeg',19108,'news/15.jpg','[]','2025-01-16 17:21:57','2025-01-16 17:21:57',NULL,'public'),(143,0,'16','16',6,'image/jpeg',19108,'news/16.jpg','[]','2025-01-16 17:21:57','2025-01-16 17:21:57',NULL,'public'),(144,0,'17','17',6,'image/jpeg',19108,'news/17.jpg','[]','2025-01-16 17:21:58','2025-01-16 17:21:58',NULL,'public'),(145,0,'18','18',6,'image/jpeg',19108,'news/18.jpg','[]','2025-01-16 17:21:58','2025-01-16 17:21:58',NULL,'public'),(146,0,'19','19',6,'image/jpeg',19108,'news/19.jpg','[]','2025-01-16 17:21:58','2025-01-16 17:21:58',NULL,'public'),(147,0,'2','2',6,'image/jpeg',19108,'news/2.jpg','[]','2025-01-16 17:21:59','2025-01-16 17:21:59',NULL,'public'),(148,0,'20','20',6,'image/jpeg',19108,'news/20.jpg','[]','2025-01-16 17:21:59','2025-01-16 17:21:59',NULL,'public'),(149,0,'3','3',6,'image/jpeg',19108,'news/3.jpg','[]','2025-01-16 17:21:59','2025-01-16 17:21:59',NULL,'public'),(150,0,'4','4',6,'image/jpeg',19108,'news/4.jpg','[]','2025-01-16 17:22:00','2025-01-16 17:22:00',NULL,'public'),(151,0,'5','5',6,'image/jpeg',19108,'news/5.jpg','[]','2025-01-16 17:22:00','2025-01-16 17:22:00',NULL,'public'),(152,0,'6','6',6,'image/jpeg',19108,'news/6.jpg','[]','2025-01-16 17:22:00','2025-01-16 17:22:00',NULL,'public'),(153,0,'7','7',6,'image/jpeg',19108,'news/7.jpg','[]','2025-01-16 17:22:01','2025-01-16 17:22:01',NULL,'public'),(154,0,'8','8',6,'image/jpeg',19108,'news/8.jpg','[]','2025-01-16 17:22:01','2025-01-16 17:22:01',NULL,'public'),(155,0,'9','9',6,'image/jpeg',19108,'news/9.jpg','[]','2025-01-16 17:22:01','2025-01-16 17:22:01',NULL,'public'),(156,0,'1','1',7,'image/jpeg',12879,'galleries/1.jpg','[]','2025-01-16 17:22:02','2025-01-16 17:22:02',NULL,'public'),(157,0,'10','10',7,'image/jpeg',12879,'galleries/10.jpg','[]','2025-01-16 17:22:02','2025-01-16 17:22:02',NULL,'public'),(158,0,'2','2',7,'image/jpeg',12879,'galleries/2.jpg','[]','2025-01-16 17:22:02','2025-01-16 17:22:02',NULL,'public'),(159,0,'3','3',7,'image/jpeg',12879,'galleries/3.jpg','[]','2025-01-16 17:22:03','2025-01-16 17:22:03',NULL,'public'),(160,0,'4','4',7,'image/jpeg',12879,'galleries/4.jpg','[]','2025-01-16 17:22:03','2025-01-16 17:22:03',NULL,'public'),(161,0,'5','5',7,'image/jpeg',12879,'galleries/5.jpg','[]','2025-01-16 17:22:03','2025-01-16 17:22:03',NULL,'public'),(162,0,'6','6',7,'image/jpeg',12879,'galleries/6.jpg','[]','2025-01-16 17:22:04','2025-01-16 17:22:04',NULL,'public'),(163,0,'7','7',7,'image/jpeg',12879,'galleries/7.jpg','[]','2025-01-16 17:22:04','2025-01-16 17:22:04',NULL,'public'),(164,0,'8','8',7,'image/jpeg',12879,'galleries/8.jpg','[]','2025-01-16 17:22:04','2025-01-16 17:22:04',NULL,'public'),(165,0,'9','9',7,'image/jpeg',12879,'galleries/9.jpg','[]','2025-01-16 17:22:04','2025-01-16 17:22:04',NULL,'public'),(166,0,'1','1',8,'image/jpeg',9803,'teams/1.jpg','[]','2025-01-16 17:22:05','2025-01-16 17:22:05',NULL,'public'),(167,0,'2','2',8,'image/jpeg',9803,'teams/2.jpg','[]','2025-01-16 17:22:05','2025-01-16 17:22:05',NULL,'public'),(168,0,'3','3',8,'image/jpeg',9803,'teams/3.jpg','[]','2025-01-16 17:22:05','2025-01-16 17:22:05',NULL,'public'),(169,0,'4','4',8,'image/jpeg',9803,'teams/4.jpg','[]','2025-01-16 17:22:06','2025-01-16 17:22:06',NULL,'public'),(170,0,'5','5',8,'image/jpeg',9803,'teams/5.jpg','[]','2025-01-16 17:22:06','2025-01-16 17:22:06',NULL,'public'),(171,0,'6','6',8,'image/jpeg',9803,'teams/6.jpg','[]','2025-01-16 17:22:06','2025-01-16 17:22:06',NULL,'public'),(172,0,'7','7',8,'image/jpeg',9803,'teams/7.jpg','[]','2025-01-16 17:22:06','2025-01-16 17:22:06',NULL,'public'),(173,0,'8','8',8,'image/jpeg',9803,'teams/8.jpg','[]','2025-01-16 17:22:07','2025-01-16 17:22:07',NULL,'public'),(174,0,'1','1',9,'image/png',3750,'testimonials/1.png','[]','2025-01-16 17:22:07','2025-01-16 17:22:07',NULL,'public'),(175,0,'2','2',9,'image/png',3750,'testimonials/2.png','[]','2025-01-16 17:22:07','2025-01-16 17:22:07',NULL,'public'),(176,0,'3','3',9,'image/png',3750,'testimonials/3.png','[]','2025-01-16 17:22:07','2025-01-16 17:22:07',NULL,'public'),(177,0,'4','4',9,'image/png',3750,'testimonials/4.png','[]','2025-01-16 17:22:08','2025-01-16 17:22:08',NULL,'public'),(178,0,'location1','location1',10,'image/jpeg',11707,'locations/location1.jpg','[]','2025-01-16 17:22:08','2025-01-16 17:22:08',NULL,'public'),(179,0,'location2','location2',10,'image/jpeg',11707,'locations/location2.jpg','[]','2025-01-16 17:22:08','2025-01-16 17:22:08',NULL,'public'),(180,0,'location3','location3',10,'image/jpeg',11707,'locations/location3.jpg','[]','2025-01-16 17:22:08','2025-01-16 17:22:08',NULL,'public'),(181,0,'location4','location4',10,'image/jpeg',11707,'locations/location4.jpg','[]','2025-01-16 17:22:09','2025-01-16 17:22:09',NULL,'public'),(182,0,'location5','location5',10,'image/jpeg',11707,'locations/location5.jpg','[]','2025-01-16 17:22:09','2025-01-16 17:22:09',NULL,'public'),(183,0,'location6','location6',10,'image/jpeg',11707,'locations/location6.jpg','[]','2025-01-16 17:22:09','2025-01-16 17:22:09',NULL,'public'),(184,0,'1','1',11,'image/jpeg',3916,'customers/1.jpg','[]','2025-01-16 17:22:10','2025-01-16 17:22:10',NULL,'public'),(185,0,'10','10',11,'image/jpeg',3916,'customers/10.jpg','[]','2025-01-16 17:22:10','2025-01-16 17:22:10',NULL,'public'),(186,0,'11','11',11,'image/jpeg',3916,'customers/11.jpg','[]','2025-01-16 17:22:10','2025-01-16 17:22:10',NULL,'public'),(187,0,'2','2',11,'image/jpeg',3916,'customers/2.jpg','[]','2025-01-16 17:22:10','2025-01-16 17:22:10',NULL,'public'),(188,0,'3','3',11,'image/jpeg',3916,'customers/3.jpg','[]','2025-01-16 17:22:10','2025-01-16 17:22:10',NULL,'public'),(189,0,'4','4',11,'image/jpeg',3916,'customers/4.jpg','[]','2025-01-16 17:22:11','2025-01-16 17:22:11',NULL,'public'),(190,0,'5','5',11,'image/jpeg',3916,'customers/5.jpg','[]','2025-01-16 17:22:11','2025-01-16 17:22:11',NULL,'public'),(191,0,'6','6',11,'image/jpeg',3916,'customers/6.jpg','[]','2025-01-16 17:22:11','2025-01-16 17:22:11',NULL,'public'),(192,0,'7','7',11,'image/jpeg',3916,'customers/7.jpg','[]','2025-01-16 17:22:11','2025-01-16 17:22:11',NULL,'public'),(193,0,'8','8',11,'image/jpeg',3916,'customers/8.jpg','[]','2025-01-16 17:22:12','2025-01-16 17:22:12',NULL,'public'),(194,0,'9','9',11,'image/jpeg',3916,'customers/9.jpg','[]','2025-01-16 17:22:12','2025-01-16 17:22:12',NULL,'public'),(228,0,'banner-1','banner-1',13,'image/jpeg',23738,'sliders/banner-1.jpg','[]','2025-01-16 17:22:30','2025-01-16 17:22:30',NULL,'public'),(229,0,'banner-2','banner-2',13,'image/jpeg',23738,'sliders/banner-2.jpg','[]','2025-01-16 17:22:31','2025-01-16 17:22:31',NULL,'public'),(230,0,'img-1-1','img-1-1',13,'image/jpeg',23738,'sliders/img-1-1.jpg','[]','2025-01-16 17:22:31','2025-01-16 17:22:31',NULL,'public'),(231,0,'img-1','img-1',13,'image/jpeg',23738,'sliders/img-1.jpg','[]','2025-01-16 17:22:31','2025-01-16 17:22:31',NULL,'public'),(232,0,'1','1',14,'image/jpeg',40917,'cars/1.jpg','[]','2025-01-16 17:22:32','2025-01-16 17:22:32',NULL,'public'),(233,0,'10','10',14,'image/jpeg',30621,'cars/10.jpg','[]','2025-01-16 17:22:32','2025-01-16 17:22:32',NULL,'public'),(234,0,'11','11',14,'image/jpeg',35318,'cars/11.jpg','[]','2025-01-16 17:22:33','2025-01-16 17:22:33',NULL,'public'),(235,0,'12','12',14,'image/jpeg',39739,'cars/12.jpg','[]','2025-01-16 17:22:34','2025-01-16 17:22:34',NULL,'public'),(236,0,'13','13',14,'image/jpeg',41749,'cars/13.jpg','[]','2025-01-16 17:22:34','2025-01-16 17:22:34',NULL,'public'),(237,0,'14','14',14,'image/jpeg',39739,'cars/14.jpg','[]','2025-01-16 17:22:35','2025-01-16 17:22:35',NULL,'public'),(238,0,'15','15',14,'image/jpeg',41749,'cars/15.jpg','[]','2025-01-16 17:22:35','2025-01-16 17:22:35',NULL,'public'),(239,0,'2','2',14,'image/jpeg',29034,'cars/2.jpg','[]','2025-01-16 17:22:36','2025-01-16 17:22:36',NULL,'public'),(240,0,'3','3',14,'image/jpeg',30016,'cars/3.jpg','[]','2025-01-16 17:22:36','2025-01-16 17:22:36',NULL,'public'),(241,0,'4','4',14,'image/jpeg',31076,'cars/4.jpg','[]','2025-01-16 17:22:37','2025-01-16 17:22:37',NULL,'public'),(242,0,'5','5',14,'image/jpeg',39739,'cars/5.jpg','[]','2025-01-16 17:22:37','2025-01-16 17:22:37',NULL,'public'),(243,0,'6','6',14,'image/jpeg',31076,'cars/6.jpg','[]','2025-01-16 17:22:38','2025-01-16 17:22:38',NULL,'public'),(244,0,'7','7',14,'image/jpeg',30621,'cars/7.jpg','[]','2025-01-16 17:22:38','2025-01-16 17:22:38',NULL,'public'),(245,0,'8','8',14,'image/jpeg',31076,'cars/8.jpg','[]','2025-01-16 17:22:39','2025-01-16 17:22:39',NULL,'public'),(246,0,'9','9',14,'image/jpeg',31076,'cars/9.jpg','[]','2025-01-16 17:22:39','2025-01-16 17:22:39',NULL,'public'),(247,0,'car-1','car-1',14,'image/jpeg',2054,'cars/car-1.jpg','[]','2025-01-16 17:22:40','2025-01-16 17:22:40',NULL,'public'),(248,0,'car-2','car-2',14,'image/jpeg',2054,'cars/car-2.jpg','[]','2025-01-16 17:22:40','2025-01-16 17:22:40',NULL,'public'),(249,0,'car-3','car-3',14,'image/jpeg',2054,'cars/car-3.jpg','[]','2025-01-16 17:22:40','2025-01-16 17:22:40',NULL,'public'),(250,0,'car-4','car-4',14,'image/jpeg',2054,'cars/car-4.jpg','[]','2025-01-16 17:22:40','2025-01-16 17:22:40',NULL,'public'),(251,0,'car-5','car-5',14,'image/jpeg',2054,'cars/car-5.jpg','[]','2025-01-16 17:22:41','2025-01-16 17:22:41',NULL,'public'),(252,0,'car-6','car-6',14,'image/jpeg',2054,'cars/car-6.jpg','[]','2025-01-16 17:22:41','2025-01-16 17:22:41',NULL,'public'),(253,0,'car-7','car-7',14,'image/jpeg',9160,'cars/car-7.jpg','[]','2025-01-16 17:22:41','2025-01-16 17:22:41',NULL,'public'),(254,0,'car-8','car-8',14,'image/jpeg',2054,'cars/car-8.jpg','[]','2025-01-16 17:22:41','2025-01-16 17:22:41',NULL,'public'),(255,0,'car-interiors-1','car-interiors-1',14,'image/jpeg',39739,'cars/car-interiors-1.jpg','[]','2025-01-16 17:22:42','2025-01-16 17:22:42',NULL,'public'),(256,0,'car-interiors-2','car-interiors-2',14,'image/jpeg',31076,'cars/car-interiors-2.jpg','[]','2025-01-16 17:22:42','2025-01-16 17:22:42',NULL,'public'),(257,0,'car-interiors-3','car-interiors-3',14,'image/jpeg',30621,'cars/car-interiors-3.jpg','[]','2025-01-16 17:22:43','2025-01-16 17:22:43',NULL,'public'),(258,0,'car-interiors-4','car-interiors-4',14,'image/jpeg',39739,'cars/car-interiors-4.jpg','[]','2025-01-16 17:22:43','2025-01-16 17:22:43',NULL,'public'),(259,0,'car-interiors-5','car-interiors-5',14,'image/jpeg',31076,'cars/car-interiors-5.jpg','[]','2025-01-16 17:22:44','2025-01-16 17:22:44',NULL,'public'),(260,0,'car-interiors-6','car-interiors-6',14,'image/jpeg',31076,'cars/car-interiors-6.jpg','[]','2025-01-16 17:22:44','2025-01-16 17:22:44',NULL,'public'),(261,0,'car-interiors-7','car-interiors-7',14,'image/jpeg',38496,'cars/car-interiors-7.jpg','[]','2025-01-16 17:22:45','2025-01-16 17:22:45',NULL,'public'),(262,0,'car-interiors-8','car-interiors-8',14,'image/jpeg',38721,'cars/car-interiors-8.jpg','[]','2025-01-16 17:22:45','2025-01-16 17:22:45',NULL,'public'),(263,0,'img-1','img-1',14,'image/png',4870,'cars/img-1.png','[]','2025-01-16 17:22:46','2025-01-16 17:22:46',NULL,'public'),(264,0,'img-2','img-2',14,'image/png',4704,'cars/img-2.png','[]','2025-01-16 17:22:46','2025-01-16 17:22:46',NULL,'public'),(265,0,'activity-w','activity-w',15,'image/png',309,'icons/activity-w.png','[]','2025-01-16 17:22:46','2025-01-16 17:22:46',NULL,'public'),(266,0,'activity','activity',15,'image/png',311,'icons/activity.png','[]','2025-01-16 17:22:46','2025-01-16 17:22:46',NULL,'public'),(267,0,'acura-w','acura-w',15,'image/png',1472,'icons/acura-w.png','[]','2025-01-16 17:22:47','2025-01-16 17:22:47',NULL,'public'),(268,0,'acura','acura',15,'image/png',1070,'icons/acura.png','[]','2025-01-16 17:22:47','2025-01-16 17:22:47',NULL,'public'),(269,0,'bmw-i','bmw-i',15,'image/png',2407,'icons/bmw-i.png','[]','2025-01-16 17:22:47','2025-01-16 17:22:47',NULL,'public'),(270,0,'bmw-w','bmw-w',15,'image/png',1695,'icons/bmw-w.png','[]','2025-01-16 17:22:47','2025-01-16 17:22:47',NULL,'public'),(271,0,'bmw','bmw',15,'image/png',1345,'icons/bmw.png','[]','2025-01-16 17:22:47','2025-01-16 17:22:47',NULL,'public'),(272,0,'bugatti-w','bugatti-w',15,'image/png',661,'icons/bugatti-w.png','[]','2025-01-16 17:22:48','2025-01-16 17:22:48',NULL,'public'),(273,0,'bugatti','bugatti',15,'image/png',491,'icons/bugatti.png','[]','2025-01-16 17:22:48','2025-01-16 17:22:48',NULL,'public'),(274,0,'car-center','car-center',15,'image/png',68902,'icons/car-center.png','[]','2025-01-16 17:22:48','2025-01-16 17:22:48',NULL,'public'),(275,0,'car-city-model','car-city-model',15,'image/png',12964,'icons/car-city-model.png','[]','2025-01-16 17:22:48','2025-01-16 17:22:48',NULL,'public'),(276,0,'car-diesel','car-diesel',15,'image/png',15273,'icons/car-diesel.png','[]','2025-01-16 17:22:49','2025-01-16 17:22:49',NULL,'public'),(277,0,'car-electricity','car-electricity',15,'image/png',20161,'icons/car-electricity.png','[]','2025-01-16 17:22:49','2025-01-16 17:22:49',NULL,'public'),(278,0,'car-key','car-key',15,'image/png',6173,'icons/car-key.png','[]','2025-01-16 17:22:49','2025-01-16 17:22:49',NULL,'public'),(279,0,'car-location','car-location',15,'image/png',6800,'icons/car-location.png','[]','2025-01-16 17:22:49','2025-01-16 17:22:49',NULL,'public'),(280,0,'car-selected','car-selected',15,'image/png',6364,'icons/car-selected.png','[]','2025-01-16 17:22:50','2025-01-16 17:22:50',NULL,'public'),(281,0,'car-transmission-auto','car-transmission-auto',15,'image/png',886,'icons/car-transmission-auto.png','[]','2025-01-16 17:22:50','2025-01-16 17:22:50',NULL,'public'),(282,0,'car-transmission-manual','car-transmission-manual',15,'image/png',14426,'icons/car-transmission-manual.png','[]','2025-01-16 17:22:50','2025-01-16 17:22:50',NULL,'public'),(283,0,'car','car',15,'image/png',8383,'icons/car.png','[]','2025-01-16 17:22:50','2025-01-16 17:22:50',NULL,'public'),(284,0,'chevrolet-w','chevrolet-w',15,'image/png',1126,'icons/chevrolet-w.png','[]','2025-01-16 17:22:50','2025-01-16 17:22:50',NULL,'public'),(285,0,'chevrolet','chevrolet',15,'image/png',854,'icons/chevrolet.png','[]','2025-01-16 17:22:51','2025-01-16 17:22:51',NULL,'public'),(286,0,'contact','contact',15,'image/png',13413,'icons/contact.png','[]','2025-01-16 17:22:51','2025-01-16 17:22:51',NULL,'public'),(287,0,'convenient','convenient',15,'image/png',3708,'icons/convenient.png','[]','2025-01-16 17:22:51','2025-01-16 17:22:51',NULL,'public'),(288,0,'flash-w','flash-w',15,'image/png',467,'icons/flash-w.png','[]','2025-01-16 17:22:51','2025-01-16 17:22:51',NULL,'public'),(289,0,'flash','flash',15,'image/png',498,'icons/flash.png','[]','2025-01-16 17:22:51','2025-01-16 17:22:51',NULL,'public'),(290,0,'ford-i','ford-i',15,'image/png',2144,'icons/ford-i.png','[]','2025-01-16 17:22:52','2025-01-16 17:22:52',NULL,'public'),(291,0,'honda-w','honda-w',15,'image/png',1419,'icons/honda-w.png','[]','2025-01-16 17:22:52','2025-01-16 17:22:52',NULL,'public'),(292,0,'honda','honda',15,'image/png',1055,'icons/honda.png','[]','2025-01-16 17:22:52','2025-01-16 17:22:52',NULL,'public'),(293,0,'icon-1','icon-1',15,'image/png',1946,'icons/icon-1.png','[]','2025-01-16 17:22:52','2025-01-16 17:22:52',NULL,'public'),(294,0,'icon-2','icon-2',15,'image/png',1112,'icons/icon-2.png','[]','2025-01-16 17:22:52','2025-01-16 17:22:52',NULL,'public'),(295,0,'jaguar-w','jaguar-w',15,'image/png',1654,'icons/jaguar-w.png','[]','2025-01-16 17:22:53','2025-01-16 17:22:53',NULL,'public'),(296,0,'jaguar','jaguar',15,'image/png',1240,'icons/jaguar.png','[]','2025-01-16 17:22:53','2025-01-16 17:22:53',NULL,'public'),(297,0,'jeep','jeep',15,'image/png',12394,'icons/jeep.png','[]','2025-01-16 17:22:53','2025-01-16 17:22:53',NULL,'public'),(298,0,'lexus-w','lexus-w',15,'image/png',1976,'icons/lexus-w.png','[]','2025-01-16 17:22:53','2025-01-16 17:22:53',NULL,'public'),(299,0,'lexus','lexus',15,'image/png',1544,'icons/lexus.png','[]','2025-01-16 17:22:53','2025-01-16 17:22:53',NULL,'public'),(300,0,'list-w','list-w',15,'image/png',173,'icons/list-w.png','[]','2025-01-16 17:22:54','2025-01-16 17:22:54',NULL,'public'),(301,0,'list','list',15,'image/png',168,'icons/list.png','[]','2025-01-16 17:22:54','2025-01-16 17:22:54',NULL,'public'),(302,0,'mer-i','mer-i',15,'image/png',711,'icons/mer-i.png','[]','2025-01-16 17:22:54','2025-01-16 17:22:54',NULL,'public'),(303,0,'mer-w','mer-w',15,'image/png',861,'icons/mer-w.png','[]','2025-01-16 17:22:54','2025-01-16 17:22:54',NULL,'public'),(304,0,'mer','mer',15,'image/png',569,'icons/mer.png','[]','2025-01-16 17:22:54','2025-01-16 17:22:54',NULL,'public'),(305,0,'money','money',15,'image/png',5109,'icons/money.png','[]','2025-01-16 17:22:55','2025-01-16 17:22:55',NULL,'public'),(306,0,'nissan-i','nissan-i',15,'image/png',793,'icons/nissan-i.png','[]','2025-01-16 17:22:55','2025-01-16 17:22:55',NULL,'public'),(307,0,'nissan-w','nissan-w',15,'image/png',601625,'icons/nissan-w.png','[]','2025-01-16 17:22:55','2025-01-16 17:22:55',NULL,'public'),(308,0,'opel-i','opel-i',15,'image/png',723,'icons/opel-i.png','[]','2025-01-16 17:22:57','2025-01-16 17:22:57',NULL,'public'),(309,0,'opel-w','opel-w',15,'image/png',36158,'icons/opel-w.png','[]','2025-01-16 17:22:57','2025-01-16 17:22:57',NULL,'public'),(310,0,'pick-up','pick-up',15,'image/png',11125,'icons/pick-up.png','[]','2025-01-16 17:22:57','2025-01-16 17:22:57',NULL,'public'),(311,0,'refresh-w','refresh-w',15,'image/png',292,'icons/refresh-w.png','[]','2025-01-16 17:22:57','2025-01-16 17:22:57',NULL,'public'),(312,0,'refresh','refresh',15,'image/png',308,'icons/refresh.png','[]','2025-01-16 17:22:57','2025-01-16 17:22:57',NULL,'public'),(313,0,'sedan-car-model','sedan-car-model',15,'image/png',13020,'icons/sedan-car-model.png','[]','2025-01-16 17:22:58','2025-01-16 17:22:58',NULL,'public'),(314,0,'supporter','supporter',15,'image/png',7273,'icons/supporter.png','[]','2025-01-16 17:22:58','2025-01-16 17:22:58',NULL,'public'),(315,0,'ticket-w','ticket-w',15,'image/png',279,'icons/ticket-w.png','[]','2025-01-16 17:22:58','2025-01-16 17:22:58',NULL,'public'),(316,0,'ticket','ticket',15,'image/png',279,'icons/ticket.png','[]','2025-01-16 17:22:58','2025-01-16 17:22:58',NULL,'public'),(317,0,'toyota-i','toyota-i',15,'image/png',1194,'icons/toyota-i.png','[]','2025-01-16 17:22:59','2025-01-16 17:22:59',NULL,'public'),(318,0,'toyota-w','toyota-w',15,'image/png',1728,'icons/toyota-w.png','[]','2025-01-16 17:22:59','2025-01-16 17:22:59',NULL,'public'),(319,0,'toyota','toyota',15,'image/png',1140,'icons/toyota.png','[]','2025-01-16 17:22:59','2025-01-16 17:22:59',NULL,'public'),(320,0,'user-w','user-w',15,'image/png',381,'icons/user-w.png','[]','2025-01-16 17:22:59','2025-01-16 17:22:59',NULL,'public'),(321,0,'user','user',15,'image/png',390,'icons/user.png','[]','2025-01-16 17:22:59','2025-01-16 17:22:59',NULL,'public'),(322,0,'wallet-w','wallet-w',15,'image/png',304,'icons/wallet-w.png','[]','2025-01-16 17:23:00','2025-01-16 17:23:00',NULL,'public'),(323,0,'wallet','wallet',15,'image/png',297,'icons/wallet.png','[]','2025-01-16 17:23:00','2025-01-16 17:23:00',NULL,'public'),(324,0,'about-us-bg','about-us-bg',16,'image/jpeg',20823,'backgrounds/about-us-bg.jpg','[]','2025-01-16 17:23:00','2025-01-16 17:23:00',NULL,'public'),(325,0,'background','background',16,'image/jpeg',22425,'backgrounds/background.jpg','[]','2025-01-16 17:23:00','2025-01-16 17:23:00',NULL,'public'),(326,0,'banner6','banner6',16,'image/jpeg',39675,'backgrounds/banner6.jpg','[]','2025-01-16 17:23:01','2025-01-16 17:23:01',NULL,'public'),(327,0,'brand-bg','brand-bg',16,'image/jpeg',10040,'backgrounds/brand-bg.jpg','[]','2025-01-16 17:23:01','2025-01-16 17:23:01',NULL,'public'),(328,0,'car-loan-form-bg-1','car-loan-form-bg-1',16,'image/jpeg',23656,'backgrounds/car-loan-form-bg-1.jpg','[]','2025-01-16 17:23:02','2025-01-16 17:23:02',NULL,'public'),(329,0,'car-loan-form-bg-2','car-loan-form-bg-2',16,'image/jpeg',30170,'backgrounds/car-loan-form-bg-2.jpg','[]','2025-01-16 17:23:02','2025-01-16 17:23:02',NULL,'public'),(330,0,'car-loan-form-bg','car-loan-form-bg',16,'image/jpeg',25692,'backgrounds/car-loan-form-bg.jpg','[]','2025-01-16 17:23:03','2025-01-16 17:23:03',NULL,'public'),(331,0,'contact-bg','contact-bg',16,'image/jpeg',10040,'backgrounds/contact-bg.jpg','[]','2025-01-16 17:23:03','2025-01-16 17:23:03',NULL,'public'),(332,0,'footer-bg','footer-bg',16,'image/jpeg',25330,'backgrounds/footer-bg.jpg','[]','2025-01-16 17:23:03','2025-01-16 17:23:03',NULL,'public'),(333,0,'hero-banner','hero-banner',16,'image/jpeg',26408,'backgrounds/hero-banner.jpg','[]','2025-01-16 17:23:04','2025-01-16 17:23:04',NULL,'public'),(334,0,'newsletter-bg','newsletter-bg',16,'image/jpeg',39739,'backgrounds/newsletter-bg.jpg','[]','2025-01-16 17:23:04','2025-01-16 17:23:04',NULL,'public'),(335,0,'pricing-bg','pricing-bg',16,'image/jpeg',10040,'backgrounds/pricing-bg.jpg','[]','2025-01-16 17:23:05','2025-01-16 17:23:05',NULL,'public'),(336,0,'promotion-block-bg','promotion-block-bg',16,'image/jpeg',14196,'backgrounds/promotion-block-bg.jpg','[]','2025-01-16 17:23:05','2025-01-16 17:23:05',NULL,'public'),(337,0,'service-bg','service-bg',16,'image/jpeg',10040,'backgrounds/service-bg.jpg','[]','2025-01-16 17:23:05','2025-01-16 17:23:05',NULL,'public'),(338,0,'testimonial-bg','testimonial-bg',16,'image/jpeg',46200,'backgrounds/testimonial-bg.jpg','[]','2025-01-16 17:23:06','2025-01-16 17:23:06',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'general',NULL,'general',0,'2025-01-16 17:21:11','2025-01-16 17:21:11',NULL),(6,0,'news',NULL,'news',0,'2025-01-16 17:21:55','2025-01-16 17:21:55',NULL),(7,0,'galleries',NULL,'galleries',0,'2025-01-16 17:22:02','2025-01-16 17:22:02',NULL),(8,0,'teams',NULL,'teams',0,'2025-01-16 17:22:05','2025-01-16 17:22:05',NULL),(9,0,'testimonials',NULL,'testimonials',0,'2025-01-16 17:22:07','2025-01-16 17:22:07',NULL),(10,0,'locations',NULL,'locations',0,'2025-01-16 17:22:08','2025-01-16 17:22:08',NULL),(11,0,'customers',NULL,'customers',0,'2025-01-16 17:22:10','2025-01-16 17:22:10',NULL),(13,0,'sliders',NULL,'sliders',0,'2025-01-16 17:22:30','2025-01-16 17:22:30',NULL),(14,0,'cars',NULL,'cars',0,'2025-01-16 17:22:32','2025-01-16 17:22:32',NULL),(15,0,'icons',NULL,'icons',0,'2025-01-16 17:22:46','2025-01-16 17:22:46',NULL),(16,0,'backgrounds',NULL,'backgrounds',0,'2025-01-16 17:23:00','2025-01-16 17:23:00',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-01-16 17:21:54','2025-01-16 17:21:54');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(2,1,1,NULL,NULL,'https://carento.botble.com',NULL,0,'Home Page v1',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(3,1,1,NULL,NULL,'https://carento-home-2.botble.com',NULL,0,'Home Page v2',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(4,1,1,NULL,NULL,'https://carento-home-3.botble.com',NULL,0,'Home Page v3',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(5,1,0,NULL,NULL,'/',NULL,0,'Vehicles',NULL,'_self',1,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(6,1,5,7,'Botble\\Page\\Models\\Page','/car-list-1',NULL,0,'Cars List v1',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(7,1,5,NULL,NULL,'/cars/honda-accord-sport-20t-2024',NULL,0,'Car Detail v1',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(8,1,5,8,'Botble\\Page\\Models\\Page','/car-list-2',NULL,0,'Car List v2',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:55'),(9,1,5,NULL,NULL,'/cars/honda-accord-sport-20t-2024?style=style-2',NULL,0,'Car Detail v2',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(10,1,5,9,'Botble\\Page\\Models\\Page','/car-list-3',NULL,0,'Car List v3',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:55'),(11,1,5,NULL,NULL,'/cars/honda-accord-sport-20t-2024?style=style-3',NULL,0,'Car Detail v3',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(12,1,5,10,'Botble\\Page\\Models\\Page','/car-list-4',NULL,0,'Car List v4',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:55'),(13,1,5,NULL,NULL,'/cars/honda-accord-sport-20t-2024?style=style-4',NULL,0,'Car Detail v4',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(14,1,0,NULL,NULL,'/',NULL,0,'Pages',NULL,'_self',1,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(15,1,14,6,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:55'),(16,1,14,4,'Botble\\Page\\Models\\Page','/services',NULL,0,'Our Services',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:55'),(17,1,14,5,'Botble\\Page\\Models\\Page','/pricing',NULL,0,'Pricing',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:55'),(18,1,14,12,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:55'),(19,1,14,16,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Term',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:55'),(20,1,14,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(21,1,14,NULL,NULL,'/register',NULL,0,'Register',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(22,1,0,NULL,NULL,'/',NULL,0,'News',NULL,'_self',1,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(23,1,22,2,'Botble\\Page\\Models\\Page','/blog',NULL,0,'News Grid',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:55'),(24,1,22,NULL,NULL,'/blog?style=list',NULL,0,'News List',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(25,1,22,NULL,NULL,'/news/top-5-new-cars-to-look-out-for-in-2024',NULL,0,'New Detail',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:54'),(26,1,0,3,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2025-01-16 17:21:54','2025-01-16 17:21:55');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-01-16 17:21:54','2025-01-16 17:21:54');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'content_on_top','[\"[car-advance-search button_search_name=\\\"Find a Vehicle\\\" link_need_help=\\\"\\/faqs\\\" top=\\\"0\\\" bottom=\\\"0\\\" left=\\\"0\\\" right=\\\"0\\\" url=\\\"\\/cars\\\" tabs=\\\"all,new_car,used_car\\\"][\\/car-advance-search]\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-01-16 17:21:19','2025-01-16 17:21:19'),(2,'footer_on_top','[\"<p><span class=\\\"text-lg-medium color-white\\\">Get 5% discount when <\\/span><a class=\\\"text-primary\\\" href=\\\"#install-app\\\"><span class=\\\"text-lg-medium\\\">Ordering via APP<\\/span><\\/a><\\/p>\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-01-16 17:21:19','2025-01-16 17:21:19'),(3,'label_top','[\"+3600 cars for you\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-01-16 17:21:19','2025-01-16 17:21:19'),(4,'keywords','[[{\"name\":\"Economy\",\"link\":\"\\/\"},{\"name\":\"Standard\",\"link\":\"\\/\"},{\"name\":\"Luxury\",\"link\":\"\\/\"},{\"name\":\"SUV\",\"link\":\"\\/\"},{\"name\":\"Convertible\",\"link\":\"\\/\"}]]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-01-16 17:21:19','2025-01-16 17:21:19'),(5,'label_top','[\"Best car rental system\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-01-16 17:21:19','2025-01-16 17:21:19'),(6,'keywords','[[{\"name\":\"Economy\",\"link\":\"\\/\"},{\"name\":\"Standard\",\"link\":\"\\/\"},{\"name\":\"Luxury\",\"link\":\"\\/\"},{\"name\":\"SUV\",\"link\":\"\\/\"},{\"name\":\"Convertible\",\"link\":\"\\/\"}]]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-01-16 17:21:19','2025-01-16 17:21:19'),(7,'appearance','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-01-16 17:21:19','2025-01-16 17:21:19'),(8,'subtitle','[\"2025 Mazda CX-50 <br class=\\\"d-none d-md-block\\\"> Review and news\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-01-16 17:21:19','2025-01-16 17:21:19'),(9,'link_label','[\"View Details\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-01-16 17:21:19','2025-01-16 17:21:19'),(10,'subtitle','[\"Hyundai Tucson Plug-In <br class=\\\"d-none d-md-block\\\"> Hybrid 2025 review\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-01-16 17:21:19','2025-01-16 17:21:19'),(11,'link_label','[\"View Details\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-01-16 17:21:19','2025-01-16 17:21:19'),(12,'breadcrumb_simple','[true]',2,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(13,'breadcrumb_background_image','[\"backgrounds\\/contact-bg.jpg\"]',3,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(14,'breadcrumb_text_color','[\"#ffffff\"]',3,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(15,'breadcrumb_background_image','[\"backgrounds\\/service-bg.jpg\"]',4,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(16,'breadcrumb_text_color','[\"#ffffff\"]',4,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(17,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',5,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(18,'breadcrumb_text_color','[\"#ffffff\"]',5,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(19,'breadcrumb_background_image','[\"backgrounds\\/about-us-bg.jpg\"]',6,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(20,'breadcrumb_text_color','[\"#ffffff\"]',6,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(21,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',11,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(22,'breadcrumb_text_color','[\"#ffffff\"]',11,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(23,'breadcrumb_display_last_update','[true]',11,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(24,'breadcrumb_simple','[true]',12,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(25,'breadcrumb_background_image','[\"backgrounds\\/brand-bg.jpg\"]',13,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(26,'breadcrumb_text_color','[\"#ffffff\"]',13,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(27,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',14,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(28,'breadcrumb_text_color','[\"#ffffff\"]',14,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(29,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',15,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(30,'breadcrumb_text_color','[\"#ffffff\"]',15,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(31,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',16,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(32,'breadcrumb_text_color','[\"#ffffff\"]',16,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(33,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',17,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(34,'breadcrumb_text_color','[\"#ffffff\"]',17,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(35,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',18,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(36,'breadcrumb_text_color','[\"#ffffff\"]',18,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(37,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',19,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(38,'breadcrumb_text_color','[\"#ffffff\"]',19,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(39,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',20,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(40,'breadcrumb_text_color','[\"#ffffff\"]',20,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(41,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',21,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(42,'breadcrumb_text_color','[\"#ffffff\"]',21,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(43,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',22,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(44,'breadcrumb_text_color','[\"#ffffff\"]',22,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(45,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',23,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(46,'breadcrumb_text_color','[\"#ffffff\"]',23,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(47,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',24,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(48,'breadcrumb_text_color','[\"#ffffff\"]',24,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(49,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',25,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(50,'breadcrumb_text_color','[\"#ffffff\"]',25,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(51,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',26,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(52,'breadcrumb_text_color','[\"#ffffff\"]',26,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(53,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',27,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(54,'breadcrumb_text_color','[\"#ffffff\"]',27,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(55,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',28,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(56,'breadcrumb_text_color','[\"#ffffff\"]',28,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(57,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',29,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(58,'breadcrumb_text_color','[\"#ffffff\"]',29,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(59,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',30,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(60,'breadcrumb_text_color','[\"#ffffff\"]',30,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(61,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',31,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(62,'breadcrumb_text_color','[\"#ffffff\"]',31,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(63,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',32,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(64,'breadcrumb_text_color','[\"#ffffff\"]',32,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(65,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',33,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(66,'breadcrumb_text_color','[\"#ffffff\"]',33,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(67,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',34,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(68,'breadcrumb_text_color','[\"#ffffff\"]',34,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(69,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',35,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(70,'breadcrumb_text_color','[\"#ffffff\"]',35,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(71,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',36,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(72,'breadcrumb_text_color','[\"#ffffff\"]',36,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(73,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',37,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(74,'breadcrumb_text_color','[\"#ffffff\"]',37,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(75,'breadcrumb_background_image','[\"backgrounds\\/pricing-bg.jpg\"]',38,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(76,'breadcrumb_text_color','[\"#ffffff\"]',38,'Botble\\Page\\Models\\Page','2025-01-16 17:21:54','2025-01-16 17:21:54'),(77,'logo','[\"icons\\/activity.png\"]',1,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(78,'logo_dark','[\"icons\\/activity-w.png\"]',1,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(79,'logo','[\"icons\\/flash.png\"]',2,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(80,'logo_dark','[\"icons\\/flash-w.png\"]',2,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(81,'logo','[\"icons\\/list.png\"]',3,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(82,'logo_dark','[\"icons\\/list-w.png\"]',3,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(83,'logo','[\"icons\\/refresh.png\"]',4,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(84,'logo_dark','[\"icons\\/refresh-w.png\"]',4,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(85,'logo','[\"icons\\/ticket.png\"]',5,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(86,'logo_dark','[\"icons\\/ticket-w.png\"]',5,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(87,'logo','[\"icons\\/user.png\"]',6,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(88,'logo_dark','[\"icons\\/user-w.png\"]',6,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(89,'logo','[\"icons\\/ticket.png\"]',7,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(90,'logo_dark','[\"icons\\/ticket-w.png\"]',7,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(91,'logo','[\"icons\\/wallet.png\"]',8,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(92,'logo_dark','[\"icons\\/wallet-w.png\"]',8,'Botble\\Faq\\Models\\FaqCategory','2025-01-16 17:22:05','2025-01-16 17:22:05'),(93,'rating_star','[5]',1,'Botble\\Testimonial\\Models\\Testimonial','2025-01-16 17:22:08','2025-01-16 17:22:08'),(94,'rating_star','[5]',2,'Botble\\Testimonial\\Models\\Testimonial','2025-01-16 17:22:08','2025-01-16 17:22:08'),(95,'rating_star','[5]',3,'Botble\\Testimonial\\Models\\Testimonial','2025-01-16 17:22:08','2025-01-16 17:22:08'),(96,'rating_star','[5]',4,'Botble\\Testimonial\\Models\\Testimonial','2025-01-16 17:22:08','2025-01-16 17:22:08'),(97,'logo_dark','[\"icons\\/lexus-w.png\"]',1,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(98,'logo_invert','[\"icons\\/lexus-w.png\"]',1,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(99,'logo_dark','[\"icons\\/mer-w.png\"]',2,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(100,'logo_invert','[\"icons\\/mer-i.png\"]',2,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(101,'logo_dark','[\"icons\\/bugatti-w.png\"]',3,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(102,'logo_invert','[\"icons\\/bugatti-w.png\"]',3,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(103,'logo_dark','[\"icons\\/jaguar-w.png\"]',4,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(104,'logo_invert','[\"icons\\/jaguar-w.png\"]',4,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(105,'logo_dark','[\"icons\\/honda-w.png\"]',5,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(106,'logo_invert','[\"icons\\/honda-w.png\"]',5,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(107,'logo_dark','[\"icons\\/chevrolet-w.png\"]',6,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(108,'logo_invert','[\"icons\\/chevrolet-w.png\"]',6,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(109,'logo_dark','[\"icons\\/acura-w.png\"]',7,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(110,'logo_invert','[\"icons\\/acura-w.png\"]',7,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(111,'logo_dark','[\"icons\\/bmw-w.png\"]',8,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(112,'logo_invert','[\"icons\\/bmw-i.png\"]',8,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(113,'logo_dark','[\"icons\\/toyota-w.png\"]',9,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(114,'logo_invert','[\"icons\\/toyota-i.png\"]',9,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(115,'logo_dark','[\"icons\\/ford-i.png\"]',10,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(116,'logo_invert','[\"icons\\/ford-i.png\"]',10,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(117,'logo_dark','[\"icons\\/nissan-w.png\"]',11,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(118,'logo_invert','[\"icons\\/nissan-i.png\"]',11,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(119,'logo_dark','[\"icons\\/opel-w.png\"]',12,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(120,'logo_invert','[\"icons\\/opel-i.png\"]',12,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(121,'logo_dark','[\"icons\\/bmw-w.png\"]',13,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(122,'logo_invert','[\"icons\\/bmw-i.png\"]',13,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(123,'logo_dark','[\"icons\\/toyota-w.png\"]',14,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(124,'logo_invert','[\"icons\\/toyota-i.png\"]',14,'Botble\\CarRentals\\Models\\CarMake','2025-01-16 17:22:15','2025-01-16 17:22:15'),(125,'faq_ids','[[1,2,3,5,6]]',1,'Botble\\CarRentals\\Models\\Car','2025-01-16 17:22:30','2025-01-16 17:22:30'),(126,'faq_ids','[[2,4,6,7,9]]',2,'Botble\\CarRentals\\Models\\Car','2025-01-16 17:22:30','2025-01-16 17:22:30'),(127,'faq_ids','[[2,4,6,7,8]]',3,'Botble\\CarRentals\\Models\\Car','2025-01-16 17:22:30','2025-01-16 17:22:30'),(128,'faq_ids','[[5,6,7,8,10]]',4,'Botble\\CarRentals\\Models\\Car','2025-01-16 17:22:30','2025-01-16 17:22:30'),(129,'faq_ids','[[1,4,5,7,10]]',5,'Botble\\CarRentals\\Models\\Car','2025-01-16 17:22:30','2025-01-16 17:22:30'),(130,'faq_ids','[[2,4,7,8,9]]',6,'Botble\\CarRentals\\Models\\Car','2025-01-16 17:22:30','2025-01-16 17:22:30'),(131,'faq_ids','[[1,2,5,8,9]]',7,'Botble\\CarRentals\\Models\\Car','2025-01-16 17:22:30','2025-01-16 17:22:30'),(132,'faq_ids','[[4,6,7,9,10]]',8,'Botble\\CarRentals\\Models\\Car','2025-01-16 17:22:30','2025-01-16 17:22:30'),(133,'faq_ids','[[3,4,7,8,9]]',9,'Botble\\CarRentals\\Models\\Car','2025-01-16 17:22:30','2025-01-16 17:22:30'),(134,'faq_ids','[[2,3,6,7,8]]',10,'Botble\\CarRentals\\Models\\Car','2025-01-16 17:22:30','2025-01-16 17:22:30');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2015_06_18_033822_create_blog_table',1),(7,'2015_06_29_025744_create_audit_history',1),(8,'2016_06_10_230148_create_acl_tables',1),(9,'2016_06_14_230857_create_menus_table',1),(10,'2016_06_17_091537_create_contacts_table',1),(11,'2016_06_28_221418_create_pages_table',1),(12,'2016_10_03_032336_create_languages_table',1),(13,'2016_10_05_074239_create_setting_table',1),(14,'2016_10_07_193005_create_translations_table',1),(15,'2016_10_13_150201_create_galleries_table',1),(16,'2016_11_28_032840_create_dashboard_widget_tables',1),(17,'2016_12_16_084601_create_widgets_table',1),(18,'2017_05_09_070343_create_media_tables',1),(19,'2017_05_18_080441_create_payment_tables',1),(20,'2017_07_11_140018_create_simple_slider_table',1),(21,'2017_10_24_154832_create_newsletter_table',1),(22,'2017_11_03_070450_create_slug_table',1),(23,'2018_07_09_214610_create_testimonial_table',1),(24,'2018_07_09_221238_create_faq_table',1),(25,'2019_01_05_053554_create_jobs_table',1),(26,'2019_08_19_000000_create_failed_jobs_table',1),(27,'2019_11_18_061011_create_country_table',1),(28,'2019_12_14_000001_create_personal_access_tokens_table',1),(29,'2021_02_16_092633_remove_default_value_for_author_type',1),(30,'2021_03_27_144913_add_customer_type_into_table_payments',1),(31,'2021_05_24_034720_make_column_currency_nullable',1),(32,'2021_08_05_134214_fix_social_link_theme_options',1),(33,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(34,'2021_10_19_020859_update_metadata_field',1),(35,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(36,'2021_12_03_030600_create_blog_translations',1),(37,'2021_12_03_075608_create_page_translations',1),(38,'2021_12_03_082134_create_faq_translations',1),(39,'2021_12_03_082953_create_gallery_translations',1),(40,'2021_12_03_083642_create_testimonials_translations',1),(41,'2021_12_03_084118_create_location_translations',1),(42,'2021_12_03_094518_migrate_old_location_data',1),(43,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(44,'2022_01_16_085908_improve_plugin_location',1),(45,'2022_04_19_113923_add_index_to_table_posts',1),(46,'2022_04_20_100851_add_index_to_media_table',1),(47,'2022_04_20_101046_add_index_to_menu_table',1),(48,'2022_04_30_034048_create_gallery_meta_translations_table',1),(49,'2022_06_28_151901_activate_paypal_stripe_plugin',1),(50,'2022_07_07_153354_update_charge_id_in_table_payments',1),(51,'2022_07_10_034813_move_lang_folder_to_root',1),(52,'2022_08_04_051940_add_missing_column_expires_at',1),(53,'2022_08_04_052122_delete_location_backup_tables',1),(54,'2022_09_01_000001_create_admin_notifications_tables',1),(55,'2022_10_14_024629_drop_column_is_featured',1),(56,'2022_11_02_092723_team_create_team_table',1),(57,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(58,'2022_12_02_093615_update_slug_index_columns',1),(59,'2023_01_30_024431_add_alt_to_media_table',1),(60,'2023_02_16_042611_drop_table_password_resets',1),(61,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(62,'2023_04_23_061847_increase_state_translations_abbreviation_column',1),(63,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(64,'2023_07_06_011444_create_slug_translations_table',1),(65,'2023_07_26_041451_add_more_columns_to_location_table',1),(66,'2023_07_27_041451_add_more_columns_to_location_translation_table',1),(67,'2023_08_11_060908_create_announcements_table',1),(68,'2023_08_11_094574_update_team_table',1),(69,'2023_08_15_073307_drop_unique_in_states_cities_translations',1),(70,'2023_08_21_090810_make_page_content_nullable',1),(71,'2023_08_29_074620_make_column_author_id_nullable',1),(72,'2023_08_29_075308_make_column_user_id_nullable',1),(73,'2023_09_14_021936_update_index_for_slugs_table',1),(74,'2023_09_14_022423_add_index_for_language_table',1),(75,'2023_10_21_065016_make_state_id_in_table_cities_nullable',1),(76,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',1),(77,'2023_11_14_033417_change_request_column_in_table_audit_histories',1),(78,'2023_11_17_063408_add_description_column_to_faq_categories_table',1),(79,'2023_11_30_085354_add_missing_description_to_team',1),(80,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(81,'2023_12_12_105220_drop_translations_table',1),(82,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(83,'2024_01_16_050056_create_comments_table',1),(84,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',1),(85,'2024_03_25_000001_update_captcha_settings_for_contact',1),(86,'2024_03_25_000001_update_captcha_settings_for_newsletter',1),(87,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(88,'2024_04_19_063914_create_custom_fields_table',1),(89,'2024_04_27_100730_improve_analytics_setting',1),(90,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(91,'2024_07_04_083133_create_payment_logs_table',1),(92,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(93,'2024_07_12_100000_change_random_hash_for_media',1),(94,'2024_07_30_091615_fix_order_column_in_categories_table',1),(95,'2024_08_17_094600_add_image_into_countries',1),(96,'2024_08_22_062602_create_car_rentals_tables',1),(97,'2024_08_28_154009_create_cr_car_addresses',1),(98,'2024_09_05_151532_add_column_addresses_cars_table',1),(99,'2024_09_11_151251_create_cr_car_categories',1),(100,'2024_09_30_024515_create_sessions_table',1),(101,'2024_10_02_030027_add_more_columns_to_teams_translations_table',1),(102,'2024_12_11_044552_add_author_to_table_cr_cars',1),(103,'2024_12_11_082630_create_cr_messages_table',1),(104,'2024_12_12_034118_add_is_vendor_to_cr_customers',1),(105,'2024_12_12_082259_add_phone_to_table_cr_messages',1),(106,'2024_12_12_093603_add_vendor_verified_at_to_table_cr_customers',1),(107,'2024_12_20_064621_add_moderation_status_to_cr_cars',1),(108,'2024_12_30_022046_add_vendor_id_to_cr_bookings_table',1),(109,'2025_01_06_033807_add_default_value_for_categories_author_type',1),(110,'2025_01_08_093652_add_zip_code_to_cities',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','[simple-slider key=&quot;home-slider&quot; style=&quot;style-3&quot;][/simple-slider][car-advance-search button_search_name=&quot;Find a Vehicle&quot; link_need_help=&quot;/cars&quot; top=&quot;-124&quot; bottom=&quot;0&quot; left=&quot;0&quot; right=&quot;0&quot; url=&quot;/cars&quot; tabs=&quot;all,new_car,used_car&quot;][/car-advance-search][cars style=&quot;style-popular&quot; title=&quot;Popular Vehicles&quot; subtitle=&quot;Favorite vehicles based on customer reviews&quot; filter_types=&quot;category,fuel_type,order,price_range&quot; limit=&quot;8&quot; button_label=&quot;View More&quot; button_url=&quot;/cars&quot;][/cars][brands title=&quot;Premium Brands&quot; subtitle=&quot;Unveil the Finest Selection of High-End Vehicles&quot; brand_ids=&quot;1,2,3,4,5,6,7,8,9,10,11,12,13,14&quot; button_label=&quot;Show All Brands&quot; button_url=&quot;/brands&quot;][/brands][why-us sub_title=&quot;HOW IT WORKS&quot; title=&quot;Presenting Your New Go-To Car &lt;br&gt; Rental Experience&quot; card_image_1=&quot;icons/car-location.png&quot; card_title_1=&quot;Choose a Location&quot; card_content_1=&quot;Select the ideal destination to begin your journey with ease&quot; card_image_2=&quot;icons/car-selected.png&quot; card_title_2=&quot;Choose Your Vehicle&quot; card_content_2=&quot;Browse our fleet and find the perfect car for your needs&quot; card_image_3=&quot;icons/car.png&quot; card_title_3=&quot;Verification&quot; card_content_3=&quot;Review your information and confirm your booking&quot; card_image_4=&quot;icons/car-key.png&quot; card_title_4=&quot;Begin Your Journey&quot; card_content_4=&quot;Start your adventure with confidence and ease&quot; quantity=&quot;4&quot;][/why-us][simple-banners title_1=&quot;Looking for a rental car?&quot; subtitle_1=&quot;Discover your ideal rental car for every adventure, &lt;br&gt;whether it&#039;s a road trip or business travel&quot; image_1=&quot;cars/img-1.png&quot; button_url_1=&quot;/cars&quot; button_name_1=&quot;Get Started Now&quot; button_color_1=&quot;#70f46d&quot; background_color_1=&quot;#9dd3fb&quot; title_2=&quot;Looking for a rental car?&quot; subtitle_2=&quot;Maximize your vehicle&#039;s potential: seamlessly &lt;br&gt; rent or sell with confidence&quot; image_2=&quot;cars/img-2.png&quot; button_url_2=&quot;/cars&quot; button_name_2=&quot;Get Started Now&quot; button_color_2=&quot;#ffffff&quot; background_color_2=&quot;#ffec88&quot; quantity=&quot;2&quot;][/simple-banners][featured-block style=&quot;style-2&quot; title=&quot;Sell your car at a fair price.&lt;br /&gt; Get started with us today.&quot; subtitle=&quot;Best Car Rental System&quot; description=&quot;We are committed to delivering exceptional service, competitive pricing, and a diverse selection of options for our customers&quot; button_label=&quot;Get Started Now&quot; button_url=&quot;/contact&quot; quantity=&quot;3&quot; content_1=&quot;Explore a wide range of flexible rental options to suit your needs&quot; content_2=&quot;Comprehensive insurance coverage for complete peace of mind&quot; content_3=&quot; 24/7 customer support for assistance anytime, anywhere&quot; image_1=&quot;general/img-2-1.png&quot; image_2=&quot;general/img-2-2.png&quot; image_3=&quot;general/img-2-3.png&quot; image_4=&quot;general/img-2-4.png&quot; enable_lazy_loading=&quot;no&quot;][/featured-block][site-statistics quantity=&quot;5&quot; title_1=&quot;Global &lt;br&gt; Branches&quot; data_1=&quot;45&quot; unit_1=&quot;+&quot; title_2=&quot;Destinations  &lt;br&gt; Collaboration&quot; data_2=&quot;29&quot; unit_2=&quot;K&quot; title_3=&quot;Years &lt;br&gt; Experience&quot; data_3=&quot;20&quot; unit_3=&quot;+&quot; title_4=&quot;Happy &lt;br&gt; Customers&quot; data_4=&quot;168&quot; unit_4=&quot;K&quot; title_5=&quot;User  &lt;br&gt; Account&quot; data_5=&quot;15&quot; unit_5=&quot;M&quot;][/site-statistics][car-types title=&quot;Browse by Type&quot; sub_title=&quot;Find the perfect ride for any occasion&quot; car_types=&quot;1,2,3,4,5,6,7,8&quot; redirect_url=&quot;/cars&quot; button_label=&quot;View More&quot; button_url=&quot;/cars&quot;][/car-types][car-loan-form style=&quot;style-3&quot; form_url=&quot;/contact&quot; form_title=&quot;Car Loan Calculator&quot; form_description=&quot;Estimate your monthly auto loan payments with this calculator.&quot; form_button_label=&quot;Apply for a loan&quot; background_image=&quot;backgrounds/car-loan-form-bg-2.jpg&quot; enable_lazy_loading=&quot;&quot;][/car-loan-form][cars style=&quot;style-feature&quot; title=&quot;Featured Listings&quot; subtitle=&quot;Find the perfect ride for any occasion&quot; limit=&quot;4&quot; button_label=&quot;View More&quot; button_url=&quot;/cars&quot;][/cars][testimonials title=&quot;What our customers say&quot; subtitle=&quot;Testimonials&quot; testimonial_ids=&quot;1,2,3,4&quot; style=&quot;style-3&quot; enable_lazy_loading=&quot;&quot;][/testimonials][cars-by-locations title=&quot;Available Car Rentals&quot; main_content=&quot;Choose the location that suits your journey and start exploring today&quot; city_ids=&quot;1,2,3,5,6&quot; button_label=&quot;View More&quot; button_url=&quot;/cars&quot; redirect_url=&quot;/cars&quot;][/cars-by-locations][simple-slider key=&quot;home-slider-02&quot; style=&quot;style-2&quot;][/simple-slider][team title=&quot;Meet Our Agents&quot; subtitle=&quot;Awesome Teams&quot; team_ids=&quot;1,2,3,5&quot;][/team][blog-posts title=&quot;Upcoming Cars &amp; Events&quot; subtitle=&quot;Stay ahead with the latest car releases and upcoming events&quot; button_label=&quot;Keep Reading&quot; category_ids=&quot;1,2,3,4,5,6,7,8,9,10&quot; limit=&quot;10&quot;][/blog-posts][install-apps style=&quot;style-3&quot; title=&quot;Carento App is Available&quot; description=&quot;Install App&quot; apps_description=&quot;Manage all your car rentals on the go with the Carento app&quot; android_app_url=&quot;/contact&quot; android_app_image=&quot;general/googleplay.png&quot; ios_app_url=&quot;/contact&quot; ios_app_image=&quot;general/appstore.png&quot; decor_image=&quot;general/phone.png&quot; button_label=&quot;Download Apps&quot; button_url=&quot;/contact&quot; background_color=&quot;#f2f4f6&quot;][/install-apps]',1,NULL,'homepage',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(2,'Blog','',1,NULL,'blog-with-sidebar',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(3,'Contact','[branch-locations title=\"Our agents worldwide\" quantity=\"4\" name_1=\"New York\" icon_image_1=\"icons/sedan-car-model.png\" phone_1=\"+1 212 555 0146\" email_1=\"newyork@carento.com\" address_1=\"750 7th Avenue, Manhattan, New York, NY 10019, USA\" name_2=\"Tokyo\" icon_image_2=\"icons/car-city-model.png\" phone_2=\"+81 3 3456 7890\" email_2=\"tokyo@carento.com\" address_2=\"2-11-3 Meguro, Meguro City, Tokyo 153-0063, Japan\" name_3=\"Paris\" icon_image_3=\"icons/jeep.png\" phone_3=\"+33 1 42 68 53 00\" email_3=\"paris@carento.com\" address_3=\"22 Rue de la Paix, 75002 Paris, France\" name_4=\"Sydney\" icon_image_4=\"icons/pick-up.png\" phone_4=\"+61 2 9255 6000\" email_4=\"sydney@carento.com\" address_4=\"88 George Street, The Rocks, Sydney NSW 2000, Australia\"][/branch-locations][contact-form display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" title=\"Get in Touch\" show_map=\"0,1\" map_title=\"Our location\" map_address=\"12560 Rental Rd, Memphis, TN 38118, United States\"][/contact-form]',1,NULL,NULL,NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(4,'Services','[car-services title=\"Comprehensive Car Rental Services to Meet All Your Needs\" description=\"From daily rentals to long-term solutions, we offer a comprehensive range of vehicles and services to suit every need and budget.\" limit=\"10\"][/car-services][promotion-block title=\"Best Car Rent Deals\" subtitle=\"Save 15% or more when you book and ride before 1 April 2025\" button_label=\"Find Early 2025 Deals\" button_url=\"/cars\" background_image=\"backgrounds/promotion-block-bg.jpg\"][/promotion-block][testimonials title=\"What they say about us?\" subtitle=\"Testimonials\" testimonial_ids=\"1,2,3,4\" style=\"style-2\" enable_lazy_loading=\"\"][/testimonials][intro-video title=\"Receive a Competitive Offer Sell Your Car to Us Today.\" description=\"We are committed to delivering exceptional service, competitive pricing, and a diverse selection of options for our customers.\" subtitle=\"Best Car Rental System\" image=\"general/1.jpg\" content_1=\"Expert Certified Mechanics\" content_2=\"First Class Services\" content_3=\"Get Reasonable Price\" content_4=\"24/7 road assistance\" content_5=\"Genuine Spares Parts\" content_6=\"Free Pick-Up & Drop-Offs\" quantity=\"6\"][/intro-video][site-statistics quantity=\"5\" title_1=\"Global <br> Branches\" data_1=\"45\" unit_1=\"+\" title_2=\"Destinations  <br> Collaboration\" data_2=\"29\" unit_2=\"K\" title_3=\"Years <br> Experience\" data_3=\"20\" unit_3=\"+\" title_4=\"Happy <br> Customers\" data_4=\"168\" unit_4=\"K\" title_5=\"User  <br> Account\" data_5=\"15\" unit_5=\"M\"][/site-statistics][blog-posts style=\"style-1\" title=\"Upcoming Cars & Events\" subtitle=\"Stay ahead with the latest car releases and upcoming events\" button_label=\"Keep Reading\" category_ids=\"1,2,3,4,5\" limit=\"10\"][/blog-posts]',1,NULL,'full-width',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(5,'Pricing','[pricing title=\"Membership Plans\" button_label_monthly=\"Monthly Price\" button_label_yearly=\"Annual Price\" quantity=\"4\" name_1=\"Basic\" description_1=\"For most businesses that want to optimize web queries\" monthly_price_1=\"19\" yearly_price_1=\"348\" features_1=\"+ Access to standard vehicles \\n + 24/7 customer support \\n + Basic insurance coverage \\n + Online booking \\n + Standard roadside assistance \\n+ One free vehicle per month\" button_label_1=\"Get Started Now\" button_url_1=\"/\" name_2=\"Standard\" description_2=\"For most businesses that want to optimize web queries\" monthly_price_2=\"29\" yearly_price_2=\"348\" features_2=\"+ All Basic Plan features \\n + Access to premium vehicles \\n + Flexible rental terms \\n + GPS included \\n + Free additional driver \\n + Unlimited vehicle swaps\" button_label_2=\"Get Started Now\" button_url_2=\"/\" name_3=\"Premium\" description_3=\"For most businesses that want to optimize web queries\" monthly_price_3=\"49\" yearly_price_3=\"585\" features_3=\"+ All Standard Plan features \\n + Luxury vehicle options \\n + Complimentary upgrades \\n + Enhanced insurance coverage \\n + Free airport pickup, drop off \\n + Exclusive deals and offers\" button_label_3=\"Get Started Now\" button_url_3=\"/\" name_4=\"VIP\" description_4=\"For most businesses that want to optimize web queries\" monthly_price_4=\"99\" yearly_price_4=\"1185\" features_4=\"+ All Premium Plan features \\n + VIP transfer service \\n + Personal concierge \\n + Unlimited mileage \\n + Luxury vehicle upgrades \\n + 24/7 account manager\" button_label_4=\"Get Started Now\" button_url_4=\"/\"][/pricing][faqs title=\"Frequently Asked Questions\" description=\"Any questions? We would be happy to help you.\" faq_category_ids=\"1,2,3,4,5\" limit=\"10\" button_secondary_label=\"Contact Us\" button_secondary_url=\"/contact\" button_primary_label=\"Submit A Ticket\" button_primary_url=\"/\"][/faqs]',1,NULL,'full-width',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(6,'About Us','[about-us-information title=&quot;The Future of &lt;br&gt; Car Rental is Here&quot; description=&quot;Welcome to Carento, your trusted partner in car rentals. Since our founding, we have been committed to providing our customers with a seamless and reliable car rental experience. Whether you are planning a business trip, a family vacation, or just need a vehicle for everyday use, we offer a wide range of vehicles to meet your needs.&quot; quantity=&quot;3&quot; data_number_1=&quot;86&quot; data_title_1=&quot;Industry &lt;br&gt; Experts&quot; image_1=&quot;general/about-us-1.jpg&quot; image_2=&quot;general/about-us-2.jpg&quot; data_number_3=&quot;25&quot; data_title_3=&quot;Years in Business&quot; image_3=&quot;general/about-us-3.jpg&quot;][/about-us-information][why-us card_image_1=&quot;icons/car-location.png&quot; card_title_1=&quot;Choose a Location&quot; card_content_1=&quot;Select the ideal destination to begin your journey with ease&quot; card_image_2=&quot;icons/money.png&quot; card_title_2=&quot;Transparent Pricing&quot; card_content_2=&quot;Enjoy clear and upfront pricing with no surprises, ensuring you know exactly what you are paying for.&quot; card_image_3=&quot;icons/convenient.png&quot; card_title_3=&quot;Convenient Booking&quot; card_content_3=&quot;Benefit from a variety of rental options, including short-term, long-term, and weekend specials&quot; card_image_4=&quot;icons/supporter.png&quot; card_title_4=&quot;24/7 Customer Support&quot; card_content_4=&quot;Get assistance whenever you need it with our dedicated support team available around the clock.&quot; quantity=&quot;4&quot;][/why-us][team title=&quot;Meet Our Agents&quot; subtitle=&quot;Awesome Teams&quot; team_ids=&quot;1,2,3,5&quot;][/team][featured-block style=&quot;style-2&quot; title=&quot;Sell your car at a fair price. Get started with us today.&quot; subtitle=&quot;Our Mission&quot; description=&quot;Our mission is to make car rental easy, accessible, and affordable for everyone. We believe that renting a car should be a hassle-free experience, and we are dedicated to ensuring that every customer finds the perfect vehicle for their journey.&quot; button_label=&quot;Get Started Now&quot; button_url=&quot;/contact&quot; quantity=&quot;3&quot; content_1=&quot;Explore a wide range of flexible rental options to suit your needs&quot; content_2=&quot;Comprehensive insurance coverage for complete peace of mind&quot; content_3=&quot; 24/7 customer support for assistance anytime, anywhere&quot; image_1=&quot;general/img-2-1.png&quot; image_2=&quot;general/img-2-2.png&quot; image_3=&quot;general/img-2-3.png&quot; image_4=&quot;general/img-2-4.png&quot; enable_lazy_loading=&quot;no&quot;][/featured-block][site-statistics quantity=&quot;5&quot; title_1=&quot;Global &lt;br&gt; Branches&quot; data_1=&quot;45&quot; unit_1=&quot;+&quot; title_2=&quot;Destinations  &lt;br&gt; Collaboration&quot; data_2=&quot;29&quot; unit_2=&quot;K&quot; title_3=&quot;Years &lt;br&gt; Experience&quot; data_3=&quot;20&quot; unit_3=&quot;+&quot; title_4=&quot;Happy &lt;br&gt; Customers&quot; data_4=&quot;168&quot; unit_4=&quot;K&quot; title_5=&quot;User  &lt;br&gt; Account&quot; data_5=&quot;15&quot; unit_5=&quot;M&quot; background_color=&quot;#d8f4db&quot;][/site-statistics][intro-video style=&quot;style-2&quot; title=&quot;Carento offers clear pricing and 24/7 great support.&quot; subtitle=&quot;Our Commitment&quot; description=&quot;We are committed to offering transparent pricing with no hidden fees, comprehensive insurance options for peace of mind, and 24/7 customer support to assist you whenever you need it. At Carento, your satisfaction is our top priority.&quot; youtube_video_url=&quot;https://www.youtube.com/watch?v=ldusxyoq0Y8&quot; quantity=&quot;3&quot; content_1=&quot;Explore a wide range of flexible rental options to suit your needs&quot; content_2=&quot;Comprehensive insurance coverage for complete peace of mind&quot; content_3=&quot;24/7 customer support for assistance anytime, anywhere&quot; button_label=&quot;Get Started Now&quot; button_url=&quot;/contact&quot; image=&quot;general/3.jpg&quot; image_1=&quot;general/2.jpg&quot; enable_lazy_loading=&quot;&quot;][/intro-video][testimonials title=&quot;What they say about us?&quot; subtitle=&quot;Testimonials&quot; testimonial_ids=&quot;1,2,3,4&quot; style=&quot;style-2&quot; enable_lazy_loading=&quot;&quot;][/testimonials][blog-posts style=&quot;style-1&quot; title=&quot;Upcoming Cars &amp; Events&quot; subtitle=&quot;Stay ahead with the latest car releases and upcoming events&quot; button_label=&quot;Keep Reading&quot; category_ids=&quot;1,2,3,4,5&quot; limit=&quot;10&quot;][/blog-posts]',1,NULL,'full-width',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(7,'Car List 1','[banner title=&quot;Find Your Perfect Car&quot; subtitle=&quot;Search and find your best car rental with easy way&quot; tag=&quot;Find cars for sale and for rent near you&quot; background_image=&quot;backgrounds/banner6.jpg&quot;][/banner][car-advance-search button_search_name=&quot;Find a Vehicle&quot; link_need_help=&quot;/faqs&quot; top=&quot;-124&quot; bottom=&quot;0&quot; left=&quot;0&quot; right=&quot;0&quot; tabs=&quot;all,new_car,used_car&quot;][/car-advance-search][car-list title=&quot;Our Vehicle Fleet&quot; subtitle=&quot;Turning dreams into reality with versatile vehicles.&quot; enable_filter=&quot;yes&quot; default_layout=&quot;grid&quot;][/car-list][brands title=&quot;&quot; subtitle=&quot;&quot; brand_ids=&quot;1,2,3,4,5,6,7,8,9,10,11,12,13,14&quot; button_label=&quot;&quot; button_url=&quot;&quot;][/brands]',1,NULL,'homepage',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(8,'Car List 2','[banner title=&quot;Find Your Perfect Car&quot; subtitle=&quot;Search and find your best car rental with easy way&quot; tag=&quot;Find cars for sale and for rent near you&quot; background_image=&quot;backgrounds/banner6.jpg&quot;][/banner][car-advance-search button_search_name=&quot;Find a Vehicle&quot; link_need_help=&quot;/faqs&quot; top=&quot;-124&quot; bottom=&quot;0&quot; left=&quot;0&quot; right=&quot;0&quot; tabs=&quot;all,new_car,used_car&quot;][/car-advance-search][car-list title=&quot;Our Vehicle Fleet&quot; subtitle=&quot;Turning dreams into reality with versatile vehicles.&quot; enable_filter=&quot;no&quot; default_layout=&quot;grid&quot; layout_col=&quot;4&quot;][/car-list][brands title=&quot;&quot; subtitle=&quot;&quot; brand_ids=&quot;1,2,3,4,5,6,7,8,9,10,11,12,13,14&quot; button_label=&quot;&quot; button_url=&quot;&quot;][/brands]',1,NULL,'homepage',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(9,'Car List 3','[banner title=&quot;Find Your Perfect Car&quot; subtitle=&quot;Search and find your best car rental with easy way&quot; tag=&quot;Find cars for sale and for rent near you&quot; background_image=&quot;backgrounds/banner6.jpg&quot;][/banner][car-list title=&quot;Our Vehicle Fleet&quot; subtitle=&quot;Turning dreams into reality with versatile vehicles.&quot; enable_filter=&quot;no&quot; default_layout=&quot;grid&quot; layout_col=&quot;3&quot;][/car-list][brands title=&quot;&quot; subtitle=&quot;&quot; brand_ids=&quot;1,2,3,4,5,6,7,8,9,10,11,12,13,14&quot; button_label=&quot;&quot; button_url=&quot;&quot;][/brands]',1,NULL,'homepage',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(10,'Car List 4','[banner title=&quot;Find Your Perfect Car&quot; subtitle=&quot;Search and find your best car rental with easy way&quot; tag=&quot;Find cars for sale and for rent near you&quot; background_image=&quot;backgrounds/banner6.jpg&quot;][/banner][car-advance-search button_search_name=&quot;Find a Vehicle&quot; link_need_help=&quot;/faqs&quot; top=&quot;-124&quot; bottom=&quot;0&quot; left=&quot;0&quot; right=&quot;0&quot; tabs=&quot;all,new_car,used_car&quot;][/car-advance-search][car-list title=&quot;Our Vehicle Fleet&quot; subtitle=&quot;Turning dreams into reality with versatile vehicles.&quot; enable_filter=&quot;yes&quot; default_layout=&quot;list&quot; layout_col=&quot;4&quot;][/car-list][brands title=&quot;&quot; subtitle=&quot;&quot; brand_ids=&quot;1,2,3,4,5,6,7,8,9,10,11,12,13,14&quot; button_label=&quot;&quot; button_url=&quot;&quot;][/brands]',1,NULL,'homepage',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(11,'Agencies','[team title=\"Meet Our Agents\" subtitle=\"Awesome Teams\" team_ids=\"1,2,3,4,5,6,7,8\"][/team]',1,NULL,'full-width',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(12,'Faqs','[faq-categories title=&quot;Frequently Asked Questions&quot; description=&quot;Any questions? We would be happy to help you.&quot;][/faq-categories][faqs title=&quot;Frequently Asked Questions&quot; description=&quot;Any questions? We would be happy to help you.&quot; faq_category_ids=&quot;1,2,3,4,5&quot; limit=&quot;10&quot; button_secondary_label=&quot;Contact Us&quot; button_secondary_url=&quot;/contact&quot; button_primary_label=&quot;Submit A Ticket&quot; button_primary_url=&quot;/&quot;][/faqs][faqs title=&quot;Frequently Asked Questions&quot; description=&quot;Any questions? We would be happy to help you.&quot; faq_category_ids=&quot;1,2,3,4,5&quot; limit=&quot;10&quot; button_secondary_label=&quot;Contact Us&quot; button_secondary_url=&quot;/contact&quot; button_primary_label=&quot;Submit A Ticket&quot; button_primary_url=&quot;/&quot;][/faqs][site-statistics quantity=&quot;5&quot; title_1=&quot;Global &lt;br&gt; Branches&quot; data_1=&quot;45&quot; unit_1=&quot;+&quot; title_2=&quot;Destinations  &lt;br&gt; Collaboration&quot; data_2=&quot;29&quot; unit_2=&quot;K&quot; title_3=&quot;Years &lt;br&gt; Experience&quot; data_3=&quot;20&quot; unit_3=&quot;+&quot; title_4=&quot;Happy &lt;br&gt; Customers&quot; data_4=&quot;168&quot; unit_4=&quot;K&quot; title_5=&quot;User  &lt;br&gt; Account&quot; data_5=&quot;15&quot; unit_5=&quot;M&quot;][/site-statistics]',1,NULL,'full-width',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(13,'Brands','[brands title=\"Brands\" style=\"style-3\" brand_ids=\"1,2,3,4,5,6,7,8,9,10,11,12,13,14\"][/brands]',1,NULL,NULL,NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(14,'Our Awards','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(15,'Copyright Notices','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(16,'Terms of Use','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(17,'Privacy Notice','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(18,'Lost &amp; Found','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(19,'Car Rental Services','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(20,'Vehicle Leasing Options','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(21,'Long-Term Car Rentals','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(22,'Car Sales and Trade-Ins','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(23,'Luxury Car Rentals','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(24,'Rent-to-Own Programs','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(25,'Fleet Management Solutions','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(26,'Affiliates','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(27,'Travel Agents','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(28,'AARP Members','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(29,'Points Programs','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(30,'Military &amp; Veterans','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(31,'Work with us','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(32,'Advertise with us','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(33,'Forum support','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(34,'Help Center','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(35,'Live chat','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(36,'How it works','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(37,'Security','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06'),(38,'Refund Policy','<p>\n    <strong>Welcome to Carento!</strong>\n    Renting a car with us is easy, fast, and convenient. Whether you\\\'re going on a weekend getaway, need a car for business, or are planning a road trip, Carento makes renting a car seamless. Here’s how it works:</p>\n<h3>1.\n    <strong>Browse &amp; Select Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Browse Our Fleet:</strong>\n        Start by browsing our diverse fleet of cars. Whether you\\\'re looking for a compact car, an SUV, or a luxury vehicle, we have a variety of options to suit your needs.</li>\n    <li>\n        <strong>Filter Your Choices:</strong>\n        Use our search filters to select the type of vehicle, pick-up location, rental dates, and any additional features you may need, such as GPS or a child car seat.</li>\n    <li>\n        <strong>Check Availability:</strong>\n        View real-time availability and pricing for your selected car. If your desired car is unavailable, you’ll see alternative options.</li>\n</ul><hr><h3>2.\n    <strong>Make a Reservation</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Select Your Rental Period:</strong>\n        Choose the dates and times you need the car, from daily rentals to weekly or monthly bookings.</li>\n    <li>\n        <strong>Add Extras:</strong>\n        You can add optional extras such as additional drivers, insurance, or GPS systems at this stage.</li>\n    <li>\n        <strong>Review Your Booking:</strong>\n        Review your booking details, including the car type, rental period, and total cost.</li>\n    <li>\n        <strong>Secure Payment:</strong>\n        Confirm your reservation by entering your payment details through our secure payment gateway. We accept all major credit cards, debit cards, and payment systems like PayPal.</li>\n    <li>\n        <strong>Get Confirmation:</strong>\n        Once your payment is processed, you\\\'ll receive an instant email confirmation with all the details of your reservation, including a unique booking reference number.</li>\n</ul><hr><h3>3.\n    <strong>Pick Up Your Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Locate Your Pick-Up Location:</strong>\n        You’ll find your car ready for you at the designated pick-up location. We offer several convenient locations, including major airports, city centers, and train stations.</li>\n    <li>\n        <strong>Present Your ID &amp; License:</strong>\n        When you arrive, we’ll need to verify your identity. Please bring a valid driver’s license and the credit card used for the booking.</li>\n    <li>\n        <strong>Car Inspection:</strong>\n        Before you drive off, we will conduct a quick inspection of the car with you, noting any pre-existing damage. You’ll also receive instructions on how to operate the vehicle, including key features and emergency procedures.</li>\n    <li>\n        <strong>Sign the Rental Agreement:</strong>\n        Sign the rental agreement, which will outline the terms and conditions of your rental. If you have any questions about the agreement, our staff is happy to assist you.</li>\n</ul><hr><h3>4.\n    <strong>Enjoy Your Ride</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Drive with Confidence:</strong>\n        Once you’re all set, you’re free to enjoy your trip! Feel free to use the car for your travel needs, whether it\\\'s for business, leisure, or exploration.</li>\n    <li>\n        <strong>24/7 Roadside Assistance:</strong>\n        If you encounter any issues during your rental, we offer 24/7 roadside assistance to help with breakdowns, flat tires, or emergencies.</li>\n    <li>\n        <strong>Fuel Policy:</strong>\n        Our cars are provided with a full tank of fuel. You can return the vehicle with a full tank or pay for the fuel used during your rental period. Please note, if the car is returned with less than a full tank, you may be charged a refueling fee.</li>\n</ul><hr><h3>5.\n    <strong>Return the Car</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Return Location:</strong>\n        Return the car to the same location where you picked it up, or select a different return location if available. For airport rentals, simply drop the car off at the designated Carento area.</li>\n    <li>\n        <strong>Car Inspection &amp; Check-Out:</strong>\n        Upon return, we will conduct a brief inspection of the vehicle to ensure there’s no damage or additional issues. Please remember to return the car on time to avoid any late fees.</li>\n    <li>\n        <strong>Final Payment (If Necessary):</strong>\n        Any remaining balance (such as extra mileage charges or fuel costs) will be settled at the time of return. You can pay with your credit/debit card or any other available payment method.</li>\n    <li>\n        <strong>Get Your Final Receipt:</strong>\n        Once everything is checked, we\\’ll send you a final receipt by email, outlining the charges and any deposits returned. If applicable, we’ll also issue any refunds for unused services.</li>\n</ul><hr><h3>6.\n    <strong>Enjoy Our Loyalty Program (Optional)</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Earn Points with Every Rental:</strong>\n        If you\\\'re a member of the\n        <strong>Carento Loyalty Program</strong>, you can earn points with every booking to redeem for discounts, free upgrades, and other special offers.</li>\n    <li>\n        <strong>Exclusive Deals &amp; Offers:</strong>\n        Sign up for exclusive offers, early access to new fleet options, and seasonal promotions.</li>\n</ul>\n<p>&nbsp;</p>\n<h3>\n    <strong>Need Help?</strong>\n</h3>\n<p>If you need assistance at any point in your rental process, our customer support team is always ready to help. We offer live chat support, email assistance, and a 24/7 customer service hotline.</p>\n<h3>\n    <strong>Why Rent with Carento?</strong>\n</h3>\n<ul>\n    <li>\n        <strong>Wide Selection:</strong>\n        A variety of cars for all needs, from economy to luxury, compact cars to SUVs.</li>\n    <li>\n        <strong>Flexible Booking:</strong>\n        Easily book online with flexible rental durations, from daily to monthly rentals.</li>\n    <li>\n        <strong>Transparent Pricing:</strong>\n        No hidden fees! Our prices are clear, and all fees are explained upfront.</li>\n    <li>\n        <strong>Customer Satisfaction:</strong>\n        We pride ourselves on excellent customer service and ensuring your rental experience is smooth and hassle-free.</li>\n</ul>\n<h3>\n    <strong>Get Started Today!</strong>\n</h3>\n<p>Ready to hit the road?\n    <strong>Browse our fleet</strong>\n    today, select your car, and book your next rental with Carento! We’re here to make your car rental experience easy, safe, and enjoyable.</p>\n<p>\n    <strong>Contact Us:</strong>\n</p>\n<p>If you have any questions or need more information, feel free to reach out to us:</p>\n<ul>\n    <li>\n        <strong>Email:</strong>\n        <a rel=\"noopener\">\n            <span>support@carento.com</span>\n        </a>\n    </li>\n    <li>\n        <strong>Phone:</strong>\n        +1 (800) 123-4567</li>\n    <li>\n        <strong>Live Chat:</strong>\n        Available on our website 24/7</li>\n</ul>\n',1,NULL,'default',NULL,'published','2025-01-16 17:23:06','2025-01-16 17:23:06');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',7,'T00PUDFQFHBA','stripe',NULL,96.00,1,'pending','direct',7,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(2,'USD',8,'G98XEJ1MZLKK','razorpay',NULL,31.00,2,'pending','direct',8,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(3,'USD',1,'PB3SYNPDEMVB','paypal',NULL,62.00,3,'pending','direct',1,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(4,'USD',3,'CQXB0H9MSDRE','stripe',NULL,77.00,4,'completed','direct',3,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(5,'USD',12,'A2WK7VEPTTMY','stripe',NULL,31.00,5,'completed','direct',12,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(6,'USD',5,'URYE06CR9VDR','stripe',NULL,47.00,6,'pending','direct',5,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(7,'USD',12,'EGEJDWJK3UHY','sslcommerz',NULL,62.00,7,'completed','direct',12,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(8,'USD',5,'7OAOD9YTC5QM','sslcommerz',NULL,64.00,8,'completed','direct',5,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(9,'USD',5,'BPIAUCGMNIVP','stripe',NULL,60.00,9,'pending','direct',5,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(10,'USD',3,'D9NUSNLDXO7C','paystack',NULL,83.00,10,'completed','direct',3,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(11,'USD',2,'DLCWKIWHPEI9','stripe',NULL,83.00,11,'completed','direct',2,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(12,'USD',4,'FTHV9YG002E3','stripe',NULL,77.00,12,'completed','direct',4,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(13,'USD',10,'O3CHSGVU3QPC','razorpay',NULL,88.00,13,'pending','direct',10,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(14,'USD',5,'VII7VDVH6XOS','bank_transfer',NULL,64.00,14,'pending','direct',5,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(15,'USD',5,'SH3TNRLLNSIX','stripe',NULL,60.00,15,'pending','direct',5,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(16,'USD',11,'B8DRRRXDUPTU','stripe',NULL,62.00,16,'pending','direct',11,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(17,'USD',2,'IRPQCV0HKHQO','razorpay',NULL,31.00,17,'pending','direct',2,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(18,'USD',3,'EHNUH3YS5G8E','bank_transfer',NULL,52.00,18,'completed','direct',3,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(19,'USD',6,'LJQPENJPL4VQ','stripe',NULL,96.00,19,'pending','direct',6,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL),(20,'USD',10,'SBSWWTUSBUYA','cod',NULL,88.00,20,'pending','direct',10,NULL,NULL,'2025-01-16 17:22:30','2025-01-16 17:22:30','Botble\\CarRentals\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (7,1),(5,1),(1,2),(8,2),(4,3),(7,3),(5,4),(4,4),(7,5),(10,5),(5,6),(10,6),(8,7),(10,8),(6,8),(7,9),(1,10),(8,11),(9,11),(4,12),(2,12),(3,13),(5,13),(10,14),(6,14),(1,15),(7,16),(10,16),(3,17),(4,17),(7,18),(6,18),(4,19),(7,19),(6,20),(9,20);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (4,1),(2,1),(7,1),(10,2),(6,2),(7,3),(10,3),(1,4),(6,4),(8,4),(5,5),(2,5),(7,5),(2,6),(3,6),(10,7),(7,7),(5,7),(6,8),(8,8),(1,9),(6,9),(7,9),(3,10),(4,10),(6,10),(4,11),(9,11),(2,11),(2,12),(9,12),(8,13),(3,13),(5,13),(9,14),(10,14),(3,14),(6,15),(10,15),(3,15),(1,16),(8,16),(6,16),(6,17),(4,17),(2,17),(9,18),(6,18),(4,19),(7,19),(5,19),(3,20),(5,20),(4,20);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Top 5 New Cars to Look Out for in 2024','Discover the most anticipated car models coming in 2024, featuring cutting-edge technology and stunning designs.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/6.jpg\" image_2=\"news/10.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"In eius numquam quis quia non nemo. Error qui unde voluptas non facilis dolores. Eum labore voluptatem ea cum et. Earum placeat ut ipsa maxime. Molestiae ipsum quia quam accusamus. Sint exercitationem et maiores autem unde tempora itaque.\" content_2=\"Sed debitis ipsa ut quis impedit repellat. Voluptas soluta voluptatum neque omnis explicabo nesciunt deleniti. Perspiciatis et temporibus facilis dolore sed facere tempore. Dolore sequi non consequatur reiciendis. Dolorem ab nihil voluptatum ducimus earum eos. Architecto molestiae ut sunt veritatis. Unde velit sequi tempore laborum. Quis sed quod nulla non ut modi.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/6.jpg\" image_2=\"news/10.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',882,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(2,'How to Choose the Best Car Rental Service for Your Trip','A comprehensive guide on selecting the right car rental service based on your travel needs and budget.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/5.jpg\" image_2=\"news/3.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Ut architecto debitis molestias maxime et. Eaque necessitatibus magni unde ipsum beatae ab omnis. Illo soluta repellendus in minus a soluta. Inventore ut beatae et et. Deleniti eveniet ut et et saepe qui a. Beatae recusandae eos et nihil tenetur impedit pariatur. Neque cum consequatur assumenda soluta accusamus ipsam vero dolorem.\" content_2=\"Excepturi odio asperiores officia inventore voluptatem repudiandae rem. Similique quia in aut odio. Odio totam vitae quas dolores. Consectetur laborum consequatur ut voluptate dignissimos. Ex deleniti nostrum molestias. Aut quis qui accusamus. Vel inventore perferendis quia. Repellat amet aut accusantium voluptatem. Rerum voluptatibus itaque nulla ea.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/5.jpg\" image_2=\"news/3.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',763,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(3,'The Evolution of Electric Vehicles: A New Era','Explore how electric cars are transforming the auto industry and why they are the future of transportation.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/5.jpg\" image_2=\"news/5.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Aspernatur recusandae ipsa assumenda quasi quas. Quas qui molestiae nemo similique. Placeat eveniet consequatur deleniti sequi repudiandae. Unde reiciendis rerum voluptatem id ex. Est eos voluptatum officia voluptatem ullam velit quo. Reprehenderit vero dolor eos eveniet ab sit expedita.\" content_2=\"Ea unde et sequi quo amet. Sint autem ut et eligendi. Qui laudantium mollitia est. Sunt optio fugit facere nulla quo quam. Aut magni sit quam voluptatem debitis. Voluptatem rerum beatae fuga mollitia quasi tempora nihil. Ut repellat quam explicabo.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/5.jpg\" image_2=\"news/5.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1660,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(4,'Leasing vs. Buying a Car: Which Is Right for You?','An in-depth comparison of leasing and buying a car, helping you decide which option suits your lifestyle.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/7.jpg\" image_2=\"news/3.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Ab nam neque in rem optio suscipit. Quaerat ullam eius deleniti fugit iusto. Fuga est illum aliquid eos doloremque nemo. Quaerat amet nihil harum est et molestiae. Ex sit ut enim molestias quia veniam. Animi quia voluptatem quisquam ad. Nisi rerum odit expedita veniam velit corrupti voluptate et. Et non harum rem ipsa vero praesentium iusto praesentium. Esse iusto quibusdam perferendis aut.\" content_2=\"Rerum dicta magni in ad beatae. Nemo corporis quos saepe et et repudiandae aut. Voluptatum voluptas blanditiis quo temporibus. Assumenda vero enim possimus enim fugit sit. Qui et quos ullam. Itaque et odio ullam aut quibusdam consectetur libero. Totam tenetur magnam ut esse numquam. Odit ut optio recusandae est ex dolore quae.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/7.jpg\" image_2=\"news/3.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1893,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(5,'The Ultimate Road Trip Checklist','Everything you need to pack and check before embarking on an unforgettable road trip adventure.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/3.jpg\" image_2=\"news/6.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Esse eius totam aliquid. Officiis magnam voluptatum vel ratione adipisci non. Enim voluptas beatae reprehenderit in vel sed. Perspiciatis deleniti et ut beatae at tempora sint voluptatem. Labore eum dolores maxime numquam. Quam repellendus sequi vel eaque qui est in doloremque. Ea unde atque aut consequatur omnis cupiditate fugiat et.\" content_2=\"Architecto dolores repellat praesentium et necessitatibus dicta. Ut deserunt sint rerum alias. Quasi culpa soluta ab omnis quia omnis. Aut et molestiae aspernatur assumenda velit. Doloremque nesciunt aut dolores. Perspiciatis omnis qui sint dolor perspiciatis iusto modi. Repellendus ut repudiandae voluptatem ducimus quis. Consequatur ut ex eligendi sed quaerat eaque.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/3.jpg\" image_2=\"news/6.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1457,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(6,'The Benefits of Renting a Luxury Car for Special Occasions','Find out why renting a luxury vehicle can make your events even more memorable and stylish.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/2.jpg\" image_2=\"news/6.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Sint eligendi omnis non aut tempore vitae magni. Dicta tempore nisi ea impedit officia fuga eos. Iusto cumque quam sit illo ullam. Et dolorum minus qui molestiae quia. Repellendus similique voluptatem dolorem dolorem expedita sed unde. Est velit atque sed ut dignissimos enim sed.\" content_2=\"In asperiores placeat tempore. Voluptatibus accusantium repellendus temporibus occaecati laudantium ipsum placeat. Qui voluptatem earum non nihil perspiciatis ea nam repellat. Adipisci explicabo aliquam facere blanditiis. Totam hic saepe reiciendis quia. Dolorem quos officiis aperiam blanditiis modi ducimus. Placeat hic est voluptatem laborum non labore.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/2.jpg\" image_2=\"news/6.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2240,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(7,'Tips for Maintaining Your Car to Extend Its Lifespan','Essential tips on how to keep your car in top condition, ensuring it lasts longer and performs better.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/2.jpg\" image_2=\"news/3.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Sint porro rerum facere impedit aliquam omnis unde. Enim accusantium illo laboriosam. Similique harum laboriosam est. Sed dolor minus laborum voluptatem mollitia. Totam ea minus perferendis sequi et. Totam pariatur ex debitis eum assumenda laborum quasi. Temporibus excepturi harum quam ut quis voluptas. Repellendus possimus aliquam numquam repellendus excepturi.\" content_2=\"Consequatur rerum et tempora numquam. Saepe voluptatem harum et laudantium magnam qui rerum. Dolorem corporis est earum dolores ea iusto architecto. Aut ut omnis quis officia. Non voluptatem velit natus qui. Nobis quia expedita vel voluptatibus ea. Accusantium nihil minima exercitationem maiores. Illum nesciunt quo labore. Officiis debitis mollitia ex ducimus quo cupiditate pariatur.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/2.jpg\" image_2=\"news/3.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',723,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(8,'Top Safety Features to Look for in a Family Car','A guide to the latest safety innovations in family vehicles and how they protect your loved ones on the road.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/1.jpg\" image_2=\"news/8.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Aliquid adipisci sunt et quia illo et omnis. Qui esse sequi ut dolor praesentium et. Pariatur possimus voluptatibus sit fugiat consectetur non. Cum vitae rem ut officiis voluptates est. Repellat ut tempora iste numquam ipsum porro nesciunt. Maiores modi ut modi rem blanditiis atque est. Deleniti voluptatem iure facere reiciendis dolor non.\" content_2=\"Magni voluptates voluptate cumque modi asperiores iste. Pariatur et odio quo distinctio voluptas quia sed. Sequi ut dolorum aut odio illum magni. Quia eaque eos ea ut ut ad rerum. Tempora ut eum et assumenda nemo. Ratione aut quasi quis alias minus doloribus rem.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/1.jpg\" image_2=\"news/8.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1578,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(9,'How Self-Driving Cars Are Changing the Future of Transportation','An overview of autonomous vehicles and the potential they have to reshape the way we travel.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/2.jpg\" image_2=\"news/4.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Qui et omnis facere omnis consectetur modi a. Ipsa dolores optio aut nemo. Deserunt consequatur quasi atque iure quis magnam quod. Excepturi officia necessitatibus recusandae. Omnis est perspiciatis ea quis quasi. Ipsam sequi sapiente facere eveniet sit id. Repellat nemo quia neque eius. Quidem nisi veritatis accusamus perferendis rerum necessitatibus ratione.\" content_2=\"Sit eveniet veniam voluptatem quos cumque est voluptas. Vitae laboriosam minus dolores qui voluptatem totam. Ipsam odit delectus necessitatibus tempora et ipsa. Incidunt iure et natus voluptate aliquid nulla. Sed deserunt sint accusantium qui odit facere in dicta.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/2.jpg\" image_2=\"news/4.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',265,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(10,'The Best Cars for Off-Road Adventures','Discover the top vehicles that offer exceptional performance on rough terrains for your next outdoor adventure.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/7.jpg\" image_2=\"news/2.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Ut facere earum deleniti ut harum eum ut. Possimus sint dolorem modi ipsam similique provident. Eaque provident iusto quam voluptas. Molestiae dolorum maiores quia. Recusandae nam atque vero aliquid vero sunt. Voluptate expedita quas incidunt provident.\" content_2=\"Facere quam fugit voluptatem beatae dolores vel. Qui qui nesciunt facilis dicta est inventore. Ea ea est consequatur et. Autem labore saepe blanditiis enim dignissimos dolores inventore placeat. Sit saepe minus est porro nobis voluptatem. Ratione deleniti delectus unde ut ducimus quaerat. Aperiam dolor deleniti enim adipisci aut et.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/7.jpg\" image_2=\"news/2.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',107,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(11,'The Rise of Car Subscription Services','Learn about the growing trend of car subscription services and why more drivers are opting for this flexible alternative to car ownership.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/4.jpg\" image_2=\"news/8.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Porro ducimus id quaerat nulla excepturi. Similique doloribus possimus laboriosam vel suscipit ullam illo. Animi soluta fugit quibusdam hic voluptatem tempore. Ut iure et quia velit sit velit incidunt. Molestiae ab voluptatem fugiat est beatae. Sed voluptatibus excepturi non aspernatur. Unde modi qui culpa est voluptatibus. Ea beatae nesciunt laboriosam illum. Ipsam laborum doloremque eaque.\" content_2=\"Velit pariatur est atque facilis quidem sapiente. Eligendi dolorem quo ut. Magnam explicabo ea et beatae quibusdam aut ea similique. Nihil eveniet dolorem consequuntur animi et dolores repellendus. Et ab nostrum deserunt provident perferendis qui. Unde ut ut beatae vel quaerat. Earum autem quia animi sed consectetur. Est dolores ipsa quis expedita tenetur. Numquam eaque tempora qui animi autem.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/4.jpg\" image_2=\"news/8.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/11.jpg',1336,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(12,'Eco-Friendly Driving Tips to Reduce Your Carbon Footprint','Simple strategies for eco-conscious drivers to minimize their environmental impact on the road.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/8.jpg\" image_2=\"news/9.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Dicta recusandae ipsa itaque aperiam id quasi perferendis. Amet natus modi sit quo eum sapiente. Aliquid itaque a aut. Sequi modi accusantium id aperiam in et sequi. Eos tempora dicta voluptas rerum in. Et enim quis voluptatem et nobis. Molestias ipsam dolorum sunt eum voluptatum placeat.\" content_2=\"Velit labore alias eligendi ipsam. Possimus in rerum sed velit saepe. Et dolorem voluptatum exercitationem debitis itaque et odit mollitia. Est et et iure et sed illum. In aut sit aspernatur omnis dolor. Magni sint eveniet aspernatur et molestiae consequatur aperiam. Molestiae qui quae saepe et.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/8.jpg\" image_2=\"news/9.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/12.jpg',299,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(13,'The Future of Car Sharing: Convenience at Your Fingertips','Explore how car sharing platforms are making it easier for people to access vehicles without the commitment of ownership.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/8.jpg\" image_2=\"news/3.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Ut sit quia deleniti a. Eligendi vitae neque itaque est. Praesentium omnis et ea maiores. Nihil minima iure itaque. Cumque et debitis impedit rem nemo nulla. Doloribus reiciendis et perferendis blanditiis. Iure non qui et provident odit maiores quia.\" content_2=\"Ut magni id perferendis facilis. Voluptates ut possimus sint esse soluta dolorem. Voluptatibus earum aut est aliquam. Voluptatem quia minima officia occaecati sapiente vel accusamus. Architecto harum architecto animi fugiat provident ut eos sed. Consequatur omnis autem repellendus ratione. Sed labore sint eaque.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/8.jpg\" image_2=\"news/3.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/13.jpg',1569,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(14,'How to Get the Best Deals on Car Rentals During Holidays','Insider tips on how to save money and secure great deals when renting cars for your holiday travels.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/5.jpg\" image_2=\"news/9.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Natus repellendus sunt labore perferendis et ab labore. Repellat autem cum facere quasi distinctio corrupti deleniti. Eius eum dolorem ratione quia vero. Fugiat fugit ut perspiciatis ut. Qui laudantium est dolor voluptatem est illum. Natus assumenda labore odio dolor hic maxime. Mollitia debitis quas tempore officiis nihil ut. Illum et et debitis eos et suscipit aliquam.\" content_2=\"Natus laboriosam suscipit voluptatibus molestiae blanditiis. Debitis tempore ipsam aut eos dolorem occaecati. Dignissimos perferendis sint debitis consequuntur consequatur est doloremque. Aliquid est cum eum ut et est. Itaque et impedit et aut maxime. Ipsam placeat est ut vero praesentium ducimus ducimus.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/5.jpg\" image_2=\"news/9.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/14.jpg',1640,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(15,'The Pros and Cons of Hybrid Vehicles','An analysis of the advantages and disadvantages of hybrid cars, helping you decide if they are the right choice for you.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/7.jpg\" image_2=\"news/1.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Veritatis sed eos voluptatem ea laudantium eligendi. Rerum autem vitae a. Aut corrupti aliquam amet exercitationem ad officia. Optio eveniet provident fugiat aliquid deserunt. Ut eaque qui ut dolorum dolores labore id. Reprehenderit blanditiis consequuntur maxime veritatis fugit ut. Occaecati veniam omnis rerum.\" content_2=\"Natus sed dolor vitae et. Perferendis sunt in dignissimos aut nobis dicta. Distinctio id voluptatem facere qui voluptatibus dolorem voluptas. Nihil ea perferendis ipsam quaerat quae consequuntur. Odit qui dolores labore. Adipisci accusantium qui et quas provident perferendis reprehenderit quod. Doloremque eos sapiente at. Iusto voluptatem animi voluptatem qui ratione impedit.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/7.jpg\" image_2=\"news/1.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/15.jpg',1918,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(16,'How to Properly Clean and Detail Your Car','Step-by-step instructions on cleaning your car inside and out to keep it looking brand new.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/7.jpg\" image_2=\"news/6.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Qui quis in soluta magnam sunt et hic. Voluptatem eligendi modi quo ab. Minus amet consectetur architecto quis autem aut neque. Veritatis quisquam eum aut ex harum commodi. Sint natus et et. Et error veniam ipsam recusandae animi voluptatem.\" content_2=\"Qui totam modi consequatur repudiandae laudantium. Ut aliquam rerum voluptas quasi et et unde. Laboriosam cupiditate non id maxime. Rem architecto explicabo ut voluptate dolore eos natus. Labore odio et qui rem veritatis dolores assumenda. Illum quas ullam recusandae omnis. Iusto fuga ad nisi est architecto. Aliquam corporis dolorem vel enim voluptas. Sit et error consequatur dolorum.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/7.jpg\" image_2=\"news/6.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/16.jpg',2131,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(17,'Car Innovations: What to Expect in the Next 5 Years','A look at the technological advancements expected to revolutionize cars in the near future.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/3.jpg\" image_2=\"news/9.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Saepe facere aliquid repellendus et tempore maxime. Debitis beatae vitae minima perspiciatis modi doloribus est. Corrupti molestiae consequatur natus est eos quia. Eaque suscipit voluptates et dolor. Facere saepe saepe rerum eius perferendis a placeat. Aut architecto libero id maiores rerum vel sed animi.\" content_2=\"Velit omnis tenetur quis pariatur rerum laudantium tenetur. Error porro quam adipisci corporis molestiae explicabo ex mollitia. Ipsa aut expedita voluptatibus ullam est. Non esse recusandae odio vitae sunt officia. Esse natus tenetur et eligendi. Debitis animi saepe sapiente excepturi. Esse ullam quidem pariatur.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/3.jpg\" image_2=\"news/9.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/17.jpg',642,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(18,'The Ultimate Guide to Buying a Used Car','Everything you need to know about purchasing a used vehicle, from inspecting it to negotiating the best price.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/7.jpg\" image_2=\"news/4.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Aut sunt esse voluptas dignissimos qui. Animi quidem veritatis ipsam aut est. Velit corporis ipsum eligendi provident nemo unde perspiciatis. Id voluptas sit culpa eligendi facere nam quam iusto. Exercitationem excepturi iste libero consequatur doloribus iusto saepe. Quos labore sequi earum aut voluptatem blanditiis nulla sunt.\" content_2=\"Ratione aut ipsa quis unde laborum rerum. Qui asperiores delectus eum in. Aliquam inventore nam quae nobis. Reiciendis itaque magnam consequuntur ea molestiae. Corrupti doloremque aut officiis vitae harum perferendis nam.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/7.jpg\" image_2=\"news/4.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/18.jpg',706,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(19,'How to Plan a Cross-Country Trip with a Rented Car','Tips on organizing a successful cross-country road trip, including how to choose the right rental car.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/3.jpg\" image_2=\"news/3.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Nam in aliquam velit rerum eveniet sed necessitatibus. Nisi quos repellendus minus et omnis. Id asperiores est qui explicabo sit voluptas esse. Nulla voluptatem a veritatis numquam id ut iste. Aut corporis facere dicta voluptatem enim saepe totam voluptatibus. Reprehenderit nemo eum id quia modi qui. Ullam sunt explicabo nihil quae autem delectus. Modi labore velit in omnis dolore.\" content_2=\"Voluptatem et tempore sed dolor labore et nihil sed. Voluptas quod aut nihil voluptatem repellat autem nobis rerum. Blanditiis debitis dolores dolores itaque magnam quis cumque. Aut laboriosam ipsam reprehenderit eos sed. Rem laudantium omnis nesciunt architecto cumque et corrupti aspernatur. Quis officiis facilis voluptatum sed laudantium. Sed voluptatum fugiat velit neque.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/3.jpg\" image_2=\"news/3.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/19.jpg',1047,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02'),(20,'What You Need to Know About Car Insurance Before Renting','An essential guide to understanding car rental insurance and how to choose the right coverage for your trip.','<h6>Determine Your Trip Purpose</h6>\n\n<p class=\"neutral-1000\">The first step in choosing the right rental car is to clearly define the purpose of your trip. Are you traveling alone or with family? Is it a business trip or a leisure vacation? The purpose of your trip will greatly influence the type of car you need. For instance, a compact car might be ideal for a solo business trip in a busy city, while a spacious SUV or minivan would be better suited for a family road trip.</p>\n\n[content-images quantity=\"2\" image_1=\"news/5.jpg\" image_2=\"news/10.jpg\"][/content-images]\n\n<h6>Consider the Number of Passengers and Luggage</h6>\n\n<p>The number of passengers and the amount of luggage you need to carry are crucial factors in choosing a rental car. If you\'re traveling with a large group or have plenty of baggage, a larger vehicle like an SUV or minivan will provide the space and comfort you need. On the other hand, if you\'re traveling light or with just one other person, a compact or mid-size car may be more economical and easier to maneuver.</p>\n\n<h6>Think About the Terrain and Weather Conditions</h6>\n\n<p>Where you’re going plays a significant role in your choice of rental car. If you\'re planning to drive in a mountainous region or during winter, a vehicle with all-wheel drive (AWD) or four-wheel drive (4WD) might be necessary for safety. For urban areas with smooth roads, a standard sedan or compact car should suffice. Additionally, consider the climate; air conditioning is essential in hot climates, while heated seats can be a nice touch in colder regions.</p>\n\n<h6>Assess Your Budget</h6>\n\n<p>Your budget is another crucial factor when choosing a rental car. Rental rates vary depending on the vehicle type, rental duration, and additional services or features. Set a budget before you start comparing options and stick to it. Remember to factor in additional costs like insurance, fuel, and any extras such as GPS, child seats, or toll passes.</p>\n\n<h6>Check for Special Requirements or Preferences</h6>\n\n[content-columns quantity=\"2\" content_1=\"Consequuntur ut quasi eaque necessitatibus hic. Et expedita dolores blanditiis esse tempora. Maxime non harum molestias porro mollitia ipsam. Sit at enim qui ut explicabo et velit. Quod esse dignissimos dicta non aut similique illo. Ducimus aliquam et consequatur mollitia voluptatum. Qui aut beatae est placeat itaque asperiores.\" content_2=\"Vel numquam est sequi facilis. Inventore illum adipisci dolore aut voluptas. Reprehenderit aliquid blanditiis aut eius labore. Eveniet voluptatibus vitae saepe velit fugit. Omnis velit voluptate aut aut nobis. Veritatis vero ipsa et sed. Quaerat sunt quo pariatur dicta ab architecto nulla. Delectus ut nam rem commodi dolor numquam magnam. Esse et id error minima.\"][/content-columns]\n\n[content-images quantity=\"2\" image_1=\"news/5.jpg\" image_2=\"news/10.jpg\"][/content-images]\n\n<h6>Conclusion</h6>\n\n<p>Choosing the right rental car involves more than just picking a vehicle that looks good. By considering the purpose of your trip, the number of passengers, the terrain, fuel efficiency, and your budget, you can select a car that will make your journey smooth, comfortable, and enjoyable. Take your time to compare options and book in advance to ensure you get the best vehicle for your needs. Whether you\'re hitting the open road or navigating city streets, the right rental car can make all the difference in your travel experience.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/20.jpg',898,NULL,'2025-01-16 17:22:02','2025-01-16 17:22:02');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"car-rentals.index\":true,\"car-rentals.cars.index\":true,\"car-rentals.cars.create\":true,\"car-rentals.cars.edit\":true,\"car-rentals.cars.destroy\":true,\"car-rentals.customers.index\":true,\"car-rentals.customers.create\":true,\"car-rentals.customers.edit\":true,\"car-rentals.customers.destroy\":true,\"car-rentals.bookings.index\":true,\"car-rentals.bookings.create\":true,\"car-rentals.bookings.edit\":true,\"car-rentals.bookings.destroy\":true,\"car-rentals.invoices.index\":true,\"car-rentals.invoices.create\":true,\"car-rentals.invoices.edit\":true,\"car-rentals.invoices.destroy\":true,\"car-rentals.reviews.index\":true,\"car-rentals.reviews.edit\":true,\"car-rentals.reviews.destroy\":true,\"car-rentals.coupons.index\":true,\"car-rentals.coupons.create\":true,\"car-rentals.coupons.edit\":true,\"car-rentals.coupons.destroy\":true,\"car-rentals.taxes.index\":true,\"car-rentals.taxes.create\":true,\"car-rentals.taxes.edit\":true,\"car-rentals.taxes.destroy\":true,\"car-rentals.car-makes.index\":true,\"car-rentals.car-makes.create\":true,\"car-rentals.car-makes.edit\":true,\"car-rentals.car-makes.destroy\":true,\"car-rentals.car-types.index\":true,\"car-rentals.car-types.create\":true,\"car-rentals.car-types.edit\":true,\"car-rentals.car-types.destroy\":true,\"car-rentals.car-transmissions.index\":true,\"car-rentals.car-transmissions.create\":true,\"car-rentals.car-transmissions.edit\":true,\"car-rentals.car-transmissions.destroy\":true,\"car-rentals.car-fuels.index\":true,\"car-rentals.car-fuels.create\":true,\"car-rentals.car-fuels.edit\":true,\"car-rentals.car-fuels.destroy\":true,\"car-rentals.car-colors.index\":true,\"car-rentals.car-colors.create\":true,\"car-rentals.car-colors.edit\":true,\"car-rentals.car-colors.destroy\":true,\"car-rentals.car-maintenance-histories.index\":true,\"car-rentals.car-maintenance-histories.create\":true,\"car-rentals.car-maintenance-histories.edit\":true,\"car-rentals.car-maintenance-histories.destroy\":true,\"car-rentals.car-tags.index\":true,\"car-rentals.car-tags.create\":true,\"car-rentals.car-tags.edit\":true,\"car-rentals.car-tags.destroy\":true,\"car-rentals.car-categories.index\":true,\"car-rentals.car-categories.create\":true,\"car-rentals.car-categories.edit\":true,\"car-rentals.car-categories.destroy\":true,\"car-rentals.car-amenities.index\":true,\"car-rentals.car-amenities.create\":true,\"car-rentals.car-amenities.edit\":true,\"car-rentals.car-amenities.destroy\":true,\"car-rentals.services.index\":true,\"car-rentals.services.create\":true,\"car-rentals.services.edit\":true,\"car-rentals.services.destroy\":true,\"car-rentals.car-addresses.index\":true,\"car-rentals.car-addresses.create\":true,\"car-rentals.car-addresses.edit\":true,\"car-rentals.car-addresses.destroy\":true,\"car-rentals.booking.reports.index\":true,\"car-rentals.booking.calendar.index\":true,\"car-rentals.message.index\":true,\"car-rentals.message.edit\":true,\"car-rentals.message.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"fob-comment.index\":true,\"fob-comment.comments.index\":true,\"fob-comment.comments.edit\":true,\"fob-comment.comments.destroy\":true,\"fob-comment.comments.reply\":true,\"fob-comment.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"team.index\":true,\"team.create\":true,\"team.edit\":true,\"team.destroy\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-01-16 17:21:54','2025-01-16 17:21:54');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','e43c401f8f76095baf15ad8e21019269',NULL,'2025-01-16 17:23:06'),(2,'api_enabled','0',NULL,'2025-01-16 17:23:06'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"car-rentals\",\"contact\",\"cookie-consent\",\"faq\",\"fob-comment\",\"gallery\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"team\",\"testimonial\",\"translation\"]',NULL,'2025-01-16 17:23:06'),(4,'theme','carento',NULL,'2025-01-16 17:23:06'),(5,'show_admin_bar','1',NULL,'2025-01-16 17:23:06'),(6,'admin_logo','general/logo-dark.png',NULL,'2025-01-16 17:23:06'),(7,'admin_favicon','general/favicon.png',NULL,'2025-01-16 17:23:06'),(8,'permalink-botble-blog-models-post','news',NULL,'2025-01-16 17:23:06'),(9,'permalink-botble-blog-models-category','news',NULL,'2025-01-16 17:23:06'),(10,'payment_cod_status','1',NULL,'2025-01-16 17:23:06'),(11,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-01-16 17:23:06'),(12,'payment_bank_transfer_status','1',NULL,'2025-01-16 17:23:06'),(13,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-01-16 17:23:06'),(14,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-01-16 17:23:06'),(15,'language_switcher_display','dropdown',NULL,'2025-01-16 17:23:06'),(16,'hotel_company_logo_for_invoicing','general/logo-dark.png',NULL,'2025-01-16 17:23:06'),(17,'hotel_company_address_for_invoicing','123, My Street, Kingston, New York',NULL,'2025-01-16 17:23:06'),(18,'hotel_company_email_for_invoicing','contact@botble.com',NULL,'2025-01-16 17:23:06'),(19,'hotel_company_phone_for_invoicing','123456789',NULL,'2025-01-16 17:23:06'),(20,'hotel_enable_review_room','1',NULL,'2025-01-16 17:23:06'),(21,'hotel_reviews_per_page','10',NULL,'2025-01-16 17:23:06'),(22,'car_rentals_enabled_multi_vendor','1',NULL,'2025-01-16 17:23:06'),(23,'simple_slider_using_assets','0',NULL,'2025-01-16 17:23:06'),(60,'language_hide_default','1',NULL,'2025-01-16 17:23:06'),(61,'language_display','all',NULL,'2025-01-16 17:23:06'),(62,'language_hide_languages','[]',NULL,'2025-01-16 17:23:07'),(63,'announcement_max_width','1210',NULL,'2025-01-16 17:23:07'),(64,'announcement_text_color','#FFFFFF',NULL,'2025-01-16 17:23:07'),(65,'announcement_background_color','transparent',NULL,'2025-01-16 17:23:07'),(66,'announcement_text_alignment','start',NULL,'2025-01-16 17:23:07'),(67,'announcement_dismissible','1',NULL,'2025-01-16 17:23:07'),(68,'announcement_font_size','14',NULL,'2025-01-16 17:23:07'),(69,'announcement_font_size_unit','px',NULL,'2025-01-16 17:23:07'),(70,'announcement_placement','theme',NULL,'2025-01-16 17:23:07'),(71,'theme-carento-site_title','Carento - Car Rentals Laravel Script',NULL,NULL),(72,'theme-carento-seo_description','Carento is a robust Laravel script for managing car rental businesses, featuring advanced booking, real-time vehicle availability, and customizable options for efficient operations.',NULL,NULL),(73,'theme-carento-copyright','©%Y Botble Team. All Rights Reserved.',NULL,NULL),(74,'theme-carento-favicon','general/favicon.png',NULL,NULL),(75,'theme-carento-logo','general/logo.png',NULL,NULL),(76,'theme-carento-logo_dark','general/logo-dark.png',NULL,NULL),(77,'theme-carento-logo_height','76',NULL,NULL),(78,'theme-carento-primary_font','Urbanist',NULL,NULL),(79,'theme-carento-secondary_font','Urbanist',NULL,NULL),(80,'theme-carento-primary_color','#82b440',NULL,NULL),(81,'theme-carento-primary_color_hover','#7aa93c',NULL,NULL),(82,'theme-carento-secondary_color','rgba(45, 74, 44, 0.6)',NULL,NULL),(83,'theme-carento-heading_color','#000000',NULL,NULL),(84,'theme-carento-text_color','#454545',NULL,NULL),(85,'theme-carento-header_top_background_color','#000000',NULL,NULL),(86,'theme-carento-header_top_text_color','#ffffff',NULL,NULL),(87,'theme-carento-is_header_transparent','0',NULL,NULL),(88,'theme-carento-preloader_enabled','1',NULL,NULL),(89,'theme-carento-preloader_version','v2',NULL,NULL),(90,'theme-carento-breadcrumb_background_image','backgrounds/service-bg.jpg',NULL,NULL),(91,'theme-carento-homepage_id','1',NULL,NULL),(92,'theme-carento-blog_page_id','2',NULL,NULL),(93,'theme-carento-blog_post_list_page_title','Recent Posts',NULL,NULL),(94,'theme-carento-blog_post_list_page_description','Favorite vehicles based on customer reviews',NULL,NULL),(95,'theme-carento-blog_post_gird_items_per_row','2',NULL,NULL),(96,'theme-carento-blog_post_style','grid',NULL,NULL),(97,'theme-carento-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(98,'theme-carento-footer_text_color','#8e8e8e',NULL,NULL),(99,'theme-carento-footer_heading_color','#ffffff',NULL,NULL),(100,'theme-carento-footer_border_color','#5756567d',NULL,NULL),(101,'theme-carento-footer_background_color','#000000',NULL,NULL),(102,'theme-carento-newsletter_popup_enable','1',NULL,NULL),(103,'theme-carento-newsletter_popup_image','backgrounds/newsletter-bg.jpg',NULL,NULL),(104,'theme-carento-newsletter_popup_title','Special Offers',NULL,NULL),(105,'theme-carento-newsletter_popup_subtitle','Newsletter',NULL,NULL),(106,'theme-carento-newsletter_popup_description','Special Offer: Rent Your Car Today!',NULL,NULL),(107,'theme-carento-display_header_top','1',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Find your next vehicle today','sliders/banner-1.jpg','/','Browse our diverse inventory and enjoy a seamless buying experience <br> with expert support every step of the way',0,'2025-01-16 17:22:32','2025-01-16 17:22:32'),(2,1,'Discover your next ride today','sliders/banner-2.jpg','/','Explore our wide selection and enjoy a smooth purchasing journey, <br> with expert assistance at every turn',1,'2025-01-16 17:22:32','2025-01-16 17:22:32'),(3,2,'CAR REVIEW','sliders/img-1-1.jpg','/','The Tucson Plug-in Hybrid is easy to drive and provides a sufficient all-electric range.',0,'2025-01-16 17:22:32','2025-01-16 17:22:32'),(4,2,'CAR REVIEW','sliders/img-1.jpg','/','The Tucson Plug-in Hybrid is easy to drive and provides a sufficient all-electric range.',1,'2025-01-16 17:22:32','2025-01-16 17:22:32');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2025-01-16 17:22:32','2025-01-16 17:22:32'),(2,'Home slider 02','home-slider-02','The slider in homepage page 2','published','2025-01-16 17:22:32','2025-01-16 17:22:32');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'homepage',1,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(2,'blog',2,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(3,'contact',3,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(4,'services',4,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(5,'pricing',5,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(6,'about-us',6,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(7,'car-list-1',7,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(8,'car-list-2',8,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(9,'car-list-3',9,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(10,'car-list-4',10,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(11,'agencies',11,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(12,'faqs',12,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(13,'brands',13,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(14,'our-awards',14,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(15,'copyright-notices',15,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(16,'terms-of-use',16,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(17,'privacy-notice',17,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(18,'lost-found',18,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(19,'car-rental-services',19,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(20,'vehicle-leasing-options',20,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(21,'long-term-car-rentals',21,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(22,'car-sales-and-trade-ins',22,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(23,'luxury-car-rentals',23,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(24,'rent-to-own-programs',24,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(25,'fleet-management-solutions',25,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(26,'affiliates',26,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(27,'travel-agents',27,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(28,'aarp-members',28,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(29,'points-programs',29,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(30,'military-veterans',30,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(31,'work-with-us',31,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(32,'advertise-with-us',32,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(33,'forum-support',33,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(34,'help-center',34,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(35,'live-chat',35,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(36,'how-it-works',36,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(37,'security',37,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(38,'refund-policy',38,'Botble\\Page\\Models\\Page','','2025-01-16 17:21:54','2025-01-16 17:21:54'),(39,'new-cars',1,'Botble\\Blog\\Models\\Category','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(40,'car-rentals',2,'Botble\\Blog\\Models\\Category','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(41,'electric-vehicles',3,'Botble\\Blog\\Models\\Category','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(42,'car-maintenance',4,'Botble\\Blog\\Models\\Category','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(43,'road-trips',5,'Botble\\Blog\\Models\\Category','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(44,'luxury-cars',6,'Botble\\Blog\\Models\\Category','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(45,'family-cars',7,'Botble\\Blog\\Models\\Category','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(46,'off-road-vehicles',8,'Botble\\Blog\\Models\\Category','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(47,'hybrid-cars',9,'Botble\\Blog\\Models\\Category','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(48,'car-innovations',10,'Botble\\Blog\\Models\\Category','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(49,'2024-cars',1,'Botble\\Blog\\Models\\Tag','tag','2025-01-16 17:22:02','2025-01-16 17:22:02'),(50,'car-leasing',2,'Botble\\Blog\\Models\\Tag','tag','2025-01-16 17:22:02','2025-01-16 17:22:02'),(51,'self-driving-cars',3,'Botble\\Blog\\Models\\Tag','tag','2025-01-16 17:22:02','2025-01-16 17:22:02'),(52,'eco-friendly',4,'Botble\\Blog\\Models\\Tag','tag','2025-01-16 17:22:02','2025-01-16 17:22:02'),(53,'car-subscription',5,'Botble\\Blog\\Models\\Tag','tag','2025-01-16 17:22:02','2025-01-16 17:22:02'),(54,'car-insurance',6,'Botble\\Blog\\Models\\Tag','tag','2025-01-16 17:22:02','2025-01-16 17:22:02'),(55,'used-cars',7,'Botble\\Blog\\Models\\Tag','tag','2025-01-16 17:22:02','2025-01-16 17:22:02'),(56,'car-detailing',8,'Botble\\Blog\\Models\\Tag','tag','2025-01-16 17:22:02','2025-01-16 17:22:02'),(57,'holiday-rentals',9,'Botble\\Blog\\Models\\Tag','tag','2025-01-16 17:22:02','2025-01-16 17:22:02'),(58,'cross-country-trips',10,'Botble\\Blog\\Models\\Tag','tag','2025-01-16 17:22:02','2025-01-16 17:22:02'),(59,'top-5-new-cars-to-look-out-for-in-2024',1,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(60,'how-to-choose-the-best-car-rental-service-for-your-trip',2,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(61,'the-evolution-of-electric-vehicles-a-new-era',3,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(62,'leasing-vs-buying-a-car-which-is-right-for-you',4,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(63,'the-ultimate-road-trip-checklist',5,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(64,'the-benefits-of-renting-a-luxury-car-for-special-occasions',6,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(65,'tips-for-maintaining-your-car-to-extend-its-lifespan',7,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(66,'top-safety-features-to-look-for-in-a-family-car',8,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(67,'how-self-driving-cars-are-changing-the-future-of-transportation',9,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(68,'the-best-cars-for-off-road-adventures',10,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(69,'the-rise-of-car-subscription-services',11,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(70,'eco-friendly-driving-tips-to-reduce-your-carbon-footprint',12,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(71,'the-future-of-car-sharing-convenience-at-your-fingertips',13,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(72,'how-to-get-the-best-deals-on-car-rentals-during-holidays',14,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(73,'the-pros-and-cons-of-hybrid-vehicles',15,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(74,'how-to-properly-clean-and-detail-your-car',16,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(75,'car-innovations-what-to-expect-in-the-next-5-years',17,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(76,'the-ultimate-guide-to-buying-a-used-car',18,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(77,'how-to-plan-a-cross-country-trip-with-a-rented-car',19,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(78,'what-you-need-to-know-about-car-insurance-before-renting',20,'Botble\\Blog\\Models\\Post','news','2025-01-16 17:22:02','2025-01-16 17:22:02'),(79,'stunning-electric-cars-of-2024',1,'Botble\\Gallery\\Models\\Gallery','galleries','2025-01-16 17:22:05','2025-01-16 17:22:05'),(80,'top-luxury-cars-for-special-occasions',2,'Botble\\Gallery\\Models\\Gallery','galleries','2025-01-16 17:22:05','2025-01-16 17:22:05'),(81,'family-cars-with-advanced-safety-features',3,'Botble\\Gallery\\Models\\Gallery','galleries','2025-01-16 17:22:05','2025-01-16 17:22:05'),(82,'off-road-vehicles-in-action',4,'Botble\\Gallery\\Models\\Gallery','galleries','2025-01-16 17:22:05','2025-01-16 17:22:05'),(83,'the-evolution-of-car-design-a-visual-journey',5,'Botble\\Gallery\\Models\\Gallery','galleries','2025-01-16 17:22:05','2025-01-16 17:22:05'),(84,'best-road-trip-cars-of-the-year',6,'Botble\\Gallery\\Models\\Gallery','galleries','2025-01-16 17:22:05','2025-01-16 17:22:05'),(85,'exclusive-new-car-models-unveiled',7,'Botble\\Gallery\\Models\\Gallery','galleries','2025-01-16 17:22:05','2025-01-16 17:22:05'),(86,'iconic-cars-from-around-the-world',8,'Botble\\Gallery\\Models\\Gallery','galleries','2025-01-16 17:22:05','2025-01-16 17:22:05'),(87,'the-future-of-electric-and-hybrid-cars',9,'Botble\\Gallery\\Models\\Gallery','galleries','2025-01-16 17:22:05','2025-01-16 17:22:05'),(88,'luxury-car-interiors-a-closer-look',10,'Botble\\Gallery\\Models\\Gallery','galleries','2025-01-16 17:22:05','2025-01-16 17:22:05'),(89,'devon-lane',1,'Botble\\Team\\Models\\Team','teams','2025-01-16 17:22:07','2025-01-16 17:22:07'),(90,'marvin-mckinney',2,'Botble\\Team\\Models\\Team','teams','2025-01-16 17:22:07','2025-01-16 17:22:07'),(91,'ronald-richards',3,'Botble\\Team\\Models\\Team','teams','2025-01-16 17:22:07','2025-01-16 17:22:07'),(92,'cameron-williamson',4,'Botble\\Team\\Models\\Team','teams','2025-01-16 17:22:07','2025-01-16 17:22:07'),(93,'alicia-sanders',5,'Botble\\Team\\Models\\Team','teams','2025-01-16 17:22:07','2025-01-16 17:22:07'),(94,'ethan-wright',6,'Botble\\Team\\Models\\Team','teams','2025-01-16 17:22:07','2025-01-16 17:22:07'),(95,'isabella-johnson',7,'Botble\\Team\\Models\\Team','teams','2025-01-16 17:22:07','2025-01-16 17:22:07'),(96,'liam-brown',8,'Botble\\Team\\Models\\Team','teams','2025-01-16 17:22:07','2025-01-16 17:22:07'),(97,'toyota-camry-xle-hybrid-2024',1,'Botble\\CarRentals\\Models\\Car','cars','2025-01-16 17:23:07','2025-01-16 17:23:07'),(98,'honda-accord-sport-20t-2024',2,'Botble\\CarRentals\\Models\\Car','cars','2025-01-16 17:23:07','2025-01-16 17:23:07'),(99,'mercedes-benz-c300-4matic-2024',3,'Botble\\CarRentals\\Models\\Car','cars','2025-01-16 17:23:07','2025-01-16 17:23:07'),(100,'bmw-330i-xdrive-m-sport-2024',4,'Botble\\CarRentals\\Models\\Car','cars','2025-01-16 17:23:07','2025-01-16 17:23:07'),(101,'lexus-es-350-f-sport-2024',5,'Botble\\CarRentals\\Models\\Car','cars','2025-01-16 17:23:07','2025-01-16 17:23:07'),(102,'toyota-rav4-prime-xse-awd-2024',6,'Botble\\CarRentals\\Models\\Car','cars','2025-01-16 17:23:07','2025-01-16 17:23:07'),(103,'honda-cr-v-touring-hybrid-awd-2024',7,'Botble\\CarRentals\\Models\\Car','cars','2025-01-16 17:23:07','2025-01-16 17:23:07'),(104,'bmw-x5-xdrive40i-m-sport-2024',8,'Botble\\CarRentals\\Models\\Car','cars','2025-01-16 17:23:07','2025-01-16 17:23:07'),(105,'mercedes-benz-glc-300-4matic-2024',9,'Botble\\CarRentals\\Models\\Car','cars','2025-01-16 17:23:07','2025-01-16 17:23:07'),(106,'lexus-rx-350-f-sport-handling-awd-2024',10,'Botble\\CarRentals\\Models\\Car','cars','2025-01-16 17:23:07','2025-01-16 17:23:07'),(107,'driver-rental-service',1,'Botble\\CarRentals\\Models\\Service','services','2025-01-16 17:23:07','2025-01-16 17:23:07'),(108,'oil-change-service',2,'Botble\\CarRentals\\Models\\Service','services','2025-01-16 17:23:07','2025-01-16 17:23:07'),(109,'car-wash-detailing-package',3,'Botble\\CarRentals\\Models\\Service','services','2025-01-16 17:23:07','2025-01-16 17:23:07'),(110,'roadside-assistance',4,'Botble\\CarRentals\\Models\\Service','services','2025-01-16 17:23:07','2025-01-16 17:23:07'),(111,'temporary-car-replacement',5,'Botble\\CarRentals\\Models\\Service','services','2025-01-16 17:23:07','2025-01-16 17:23:07'),(112,'tire-replacement-balancing',6,'Botble\\CarRentals\\Models\\Service','services','2025-01-16 17:23:07','2025-01-16 17:23:07'),(113,'vehicle-inspection-service',7,'Botble\\CarRentals\\Models\\Service','services','2025-01-16 17:23:07','2025-01-16 17:23:07'),(114,'car-insurance-assistance',8,'Botble\\CarRentals\\Models\\Service','services','2025-01-16 17:23:07','2025-01-16 17:23:07'),(115,'pick-up-drop-off-service',9,'Botble\\CarRentals\\Models\\Service','services','2025-01-16 17:23:07','2025-01-16 17:23:07'),(116,'premium-fuel-service',10,'Botble\\CarRentals\\Models\\Service','services','2025-01-16 17:23:07','2025-01-16 17:23:07'),(117,'sport',1,'Botble\\CarRentals\\Models\\CarCategory','car-categories','2025-01-16 17:23:07','2025-01-16 17:23:07'),(118,'maserati',2,'Botble\\CarRentals\\Models\\CarCategory','car-categories','2025-01-16 17:23:07','2025-01-16 17:23:07'),(119,'ferrari',3,'Botble\\CarRentals\\Models\\CarCategory','car-categories','2025-01-16 17:23:07','2025-01-16 17:23:07'),(120,'classic',4,'Botble\\CarRentals\\Models\\CarCategory','car-categories','2025-01-16 17:23:07','2025-01-16 17:23:07'),(121,'new',5,'Botble\\CarRentals\\Models\\CarCategory','car-categories','2025-01-16 17:23:07','2025-01-16 17:23:07'),(122,'lexus',1,'Botble\\CarRentals\\Models\\CarMake','makes','2025-01-16 17:23:07','2025-01-16 17:23:07'),(123,'mercedes',2,'Botble\\CarRentals\\Models\\CarMake','makes','2025-01-16 17:23:07','2025-01-16 17:23:07'),(124,'bugatti',3,'Botble\\CarRentals\\Models\\CarMake','makes','2025-01-16 17:23:07','2025-01-16 17:23:07'),(125,'jaguar',4,'Botble\\CarRentals\\Models\\CarMake','makes','2025-01-16 17:23:07','2025-01-16 17:23:07'),(126,'honda',5,'Botble\\CarRentals\\Models\\CarMake','makes','2025-01-16 17:23:07','2025-01-16 17:23:07'),(127,'chevrolet',6,'Botble\\CarRentals\\Models\\CarMake','makes','2025-01-16 17:23:07','2025-01-16 17:23:07'),(128,'acura',7,'Botble\\CarRentals\\Models\\CarMake','makes','2025-01-16 17:23:07','2025-01-16 17:23:07'),(129,'bmw',8,'Botble\\CarRentals\\Models\\CarMake','makes','2025-01-16 17:23:07','2025-01-16 17:23:07'),(130,'toyota',9,'Botble\\CarRentals\\Models\\CarMake','makes','2025-01-16 17:23:07','2025-01-16 17:23:07'),(131,'ford',10,'Botble\\CarRentals\\Models\\CarMake','makes','2025-01-16 17:23:07','2025-01-16 17:23:07'),(132,'nissan',11,'Botble\\CarRentals\\Models\\CarMake','makes','2025-01-16 17:23:07','2025-01-16 17:23:07'),(133,'opel',12,'Botble\\CarRentals\\Models\\CarMake','makes','2025-01-16 17:23:07','2025-01-16 17:23:07'),(134,'bmw',13,'Botble\\CarRentals\\Models\\CarMake','makes','2025-01-16 17:23:07','2025-01-16 17:23:07'),(135,'toyota',14,'Botble\\CarRentals\\Models\\CarMake','makes','2025-01-16 17:23:07','2025-01-16 17:23:07');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'France','france','FR',1,0,NULL,0,'published','2025-01-16 17:22:10','2025-01-16 17:22:10'),(2,'England','england','EN',2,0,NULL,0,'published','2025-01-16 17:22:10','2025-01-16 17:22:10'),(3,'New York','new-york','NY',1,0,NULL,0,'published','2025-01-16 17:22:10','2025-01-16 17:22:10'),(4,'Holland','holland','HL',4,0,NULL,0,'published','2025-01-16 17:22:10','2025-01-16 17:22:10'),(5,'Denmark','denmark','DN',5,0,NULL,0,'published','2025-01-16 17:22:10','2025-01-16 17:22:10'),(6,'Germany','germany','GER',1,0,NULL,0,'published','2025-01-16 17:22:10','2025-01-16 17:22:10');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'2024 Cars',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-01-16 17:22:02','2025-01-16 17:22:02'),(2,'Car Leasing',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-01-16 17:22:02','2025-01-16 17:22:02'),(3,'Self-Driving Cars',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-01-16 17:22:02','2025-01-16 17:22:02'),(4,'Eco-Friendly',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-01-16 17:22:02','2025-01-16 17:22:02'),(5,'Car Subscription',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-01-16 17:22:02','2025-01-16 17:22:02'),(6,'Car Insurance',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-01-16 17:22:02','2025-01-16 17:22:02'),(7,'Used Cars',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-01-16 17:22:02','2025-01-16 17:22:02'),(8,'Car Detailing',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-01-16 17:22:02','2025-01-16 17:22:02'),(9,'Holiday Rentals',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-01-16 17:22:02','2025-01-16 17:22:02'),(10,'Cross-Country Trips',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-01-16 17:22:02','2025-01-16 17:22:02');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socials` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Devon Lane','teams/1.jpg','Chief Executive Officer (CEO)','India','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-01-16 17:22:07','2025-01-16 17:22:07','<p>Our diverse team of experts brings a wealth of knowledge and experience across various industries. We are united by a shared passion for excellence and a commitment to providing innovative solutions for your business needs. Get to know the faces driving our success and learn how their expertise can contribute to yours.</p>','01123259241','devonsoland111@gmail.com','4855, 24, Ansari Road, Darya Ganj',NULL,'Sharing content online allows you to craft an online persona that reflects your personal values and professional skills. Even if you only use social media occasionally'),(2,'Marvin McKinney','teams/2.jpg','Fleet Manager','Thailand','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-01-16 17:22:07','2025-01-16 17:22:07','<p>Our diverse team of experts brings a wealth of knowledge and experience across various industries. We are united by a shared passion for excellence and a commitment to providing innovative solutions for your business needs. Get to know the faces driving our success and learn how their expertise can contribute to yours.</p>','6623742088','marvinkensy@gmail.com','849 Sukhapibal 1 Klong Chan Bang Kapi',NULL,'Sharing content online allows you to craft an online persona that reflects your personal values and professional skills. Even if you only use social media occasionally'),(3,'Ronald Richards','teams/3.jpg','Customer Service Representative','Canada','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-01-16 17:22:07','2025-01-16 17:22:07','<p>Our diverse team of experts brings a wealth of knowledge and experience across various industries. We are united by a shared passion for excellence and a commitment to providing innovative solutions for your business needs. Get to know the faces driving our success and learn how their expertise can contribute to yours.</p>','4165550123','ronrichards@marketing.com','123 Maple Street, Toronto, ON',NULL,'Sharing content online allows you to craft an online persona that reflects your personal values and professional skills. Even if you only use social media occasionally'),(4,'Cameron Williamson','teams/4.jpg','Finance &amp; Accounting Officer','Germany','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-01-16 17:22:07','2025-01-16 17:22:07','<p>Our diverse team of experts brings a wealth of knowledge and experience across various industries. We are united by a shared passion for excellence and a commitment to providing innovative solutions for your business needs. Get to know the faces driving our success and learn how their expertise can contribute to yours.</p>','49221567890','cameronwill@tech.com','45 Hauptstraße, 50667 Köln',NULL,'Sharing content online allows you to craft an online persona that reflects your personal values and professional skills. Even if you only use social media occasionally'),(5,'Alicia Sanders','teams/5.jpg','Marketing Executive','Australia','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-01-16 17:22:07','2025-01-16 17:22:07','<p>Our diverse team of experts brings a wealth of knowledge and experience across various industries. We are united by a shared passion for excellence and a commitment to providing innovative solutions for your business needs. Get to know the faces driving our success and learn how their expertise can contribute to yours.</p>','0298765432','alicia.hr@company.com','15 George St, Sydney, NSW',NULL,'Sharing content online allows you to craft an online persona that reflects your personal values and professional skills. Even if you only use social media occasionally'),(6,'Ethan Wright','teams/6.jpg','Automotive Technician/Mechanic','South Africa','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-01-16 17:22:07','2025-01-16 17:22:07','<p>Our diverse team of experts brings a wealth of knowledge and experience across various industries. We are united by a shared passion for excellence and a commitment to providing innovative solutions for your business needs. Get to know the faces driving our success and learn how their expertise can contribute to yours.</p>','0217896543','ethanwright@operations.com','789 Beach Road, Cape Town',NULL,'Sharing content online allows you to craft an online persona that reflects your personal values and professional skills. Even if you only use social media occasionally'),(7,'Isabella Johnson','teams/7.jpg','Operations Coordinator','New Zealand','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-01-16 17:22:07','2025-01-16 17:22:07','<p>Our diverse team of experts brings a wealth of knowledge and experience across various industries. We are united by a shared passion for excellence and a commitment to providing innovative solutions for your business needs. Get to know the faces driving our success and learn how their expertise can contribute to yours.</p>','0498761234','isabella.prod@company.com','32 Victoria St, Wellington',NULL,'Sharing content online allows you to craft an online persona that reflects your personal values and professional skills. Even if you only use social media occasionally'),(8,'Liam Brown','teams/8.jpg','HR &amp; Administration Officer','United Kingdom','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-01-16 17:22:07','2025-01-16 17:22:07','<p>Our diverse team of experts brings a wealth of knowledge and experience across various industries. We are united by a shared passion for excellence and a commitment to providing innovative solutions for your business needs. Get to know the faces driving our success and learn how their expertise can contribute to yours.</p>','02079461234','liam.legal@company.co.uk','10 Downing Street, London',NULL,'Sharing content online allows you to craft an online persona that reflects your personal values and professional skills. Even if you only use social media occasionally');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams_translations`
--

DROP TABLE IF EXISTS `teams_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teams_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`teams_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams_translations`
--

LOCK TABLES `teams_translations` WRITE;
/*!40000 ALTER TABLE `teams_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Guy Hawkins','Exceptional service! Gerow’s attention to detail and reliability have been instrumental in our supply chain success.','testimonials/1.png','CEO, JAKS Shans','published','2025-01-16 17:22:08','2025-01-16 17:22:08'),(2,'Eleanor Pena','Gerow has consistently met and exceeded our logistics needs. Their dedication to excellence is truly commendable.','testimonials/2.png','SEO, ChenTech Solutions','published','2025-01-16 17:22:08','2025-01-16 17:22:08'),(3,'Cody Fisher','Their team is a valuable asset to our business operations. Gerow’s efficient service has saved us time and money.','testimonials/3.png','Developer, Moie Agency','published','2025-01-16 17:22:08','2025-01-16 17:22:08'),(4,'Albert Flores','Gerow’s attention to detail and professionalism have made them our preferred logistics partner. Highly recommended!','testimonials/4.png','CEO, Bank of America','published','2025-01-16 17:22:08','2025-01-16 17:22:08');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'kling.tianna@streich.biz',NULL,'$2y$12$ukrc62FhyXB2F9/.DIUysuPdTSkTPSTe.EVBVKc.oOJvE7fEsqcaq',NULL,'2025-01-16 17:21:54','2025-01-16 17:22:07','Mariana','Rodriguez','admin',171,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInformationWidget','footer_sidebar','carento',1,'{\"id\":\"SiteInformationWidget\",\"logo\":\"general\\/logo-dark.png\",\"quantity\":4,\"icon_1\":\"ti ti-map-pin\",\"description_1\":\"2356 Oakwood Drive, Suite 18, San Francisco, California 94111, US\",\"icon_2\":\"ti ti-clock-hour-3\",\"description_2\":\"Hours: 8:00 - 17:00, Mon - Sat\",\"icon_3\":\"ti ti-mail\",\"description_3\":\"support@carento.com\",\"title_4\":\"Need help? Call us\",\"icon_4\":\"ti ti-phone\",\"description_4\":\"<a href=\\\"tel:+1 222-555-33-99\\\">+1 222-555-33-99<\\/a>\"}','2025-01-16 17:22:30','2025-01-16 17:22:30'),(2,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','carento',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Company\",\"items\":[[{\"key\":\"label\",\"value\":\"About Us\"},{\"key\":\"url\",\"value\":\"\\/about-us\"}],[{\"key\":\"label\",\"value\":\"Our Awards\"},{\"key\":\"url\",\"value\":\"\\/our-awards\"}],[{\"key\":\"label\",\"value\":\"Agencies\"},{\"key\":\"url\",\"value\":\"\\/agencies\"}],[{\"key\":\"label\",\"value\":\"Copyright Notices\"},{\"key\":\"url\",\"value\":\"\\/copyright-notices\"}],[{\"key\":\"label\",\"value\":\"Terms of Use\"},{\"key\":\"url\",\"value\":\"\\/terms-of-use\"}],[{\"key\":\"label\",\"value\":\"Privacy Notice\"},{\"key\":\"url\",\"value\":\"\\/privacy-notice\"}],[{\"key\":\"label\",\"value\":\"Lost & Found\"},{\"key\":\"url\",\"value\":\"\\/lost-found\"}]]}','2025-01-16 17:22:30','2025-01-16 17:22:30'),(3,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','carento',3,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Our Services\",\"items\":[[{\"key\":\"label\",\"value\":\"Premium Fuel Service\"},{\"key\":\"url\",\"value\":\"http:\\/\\/carento.test\\/services\\/premium-fuel-service\"}],[{\"key\":\"label\",\"value\":\"Pick-Up & Drop-Off Service\"},{\"key\":\"url\",\"value\":\"http:\\/\\/carento.test\\/services\\/pick-up-drop-off-service\"}],[{\"key\":\"label\",\"value\":\"Car Insurance Assistance\"},{\"key\":\"url\",\"value\":\"http:\\/\\/carento.test\\/services\\/car-insurance-assistance\"}],[{\"key\":\"label\",\"value\":\"Vehicle Inspection Service\"},{\"key\":\"url\",\"value\":\"http:\\/\\/carento.test\\/services\\/vehicle-inspection-service\"}],[{\"key\":\"label\",\"value\":\"Tire Replacement & Balancing\"},{\"key\":\"url\",\"value\":\"http:\\/\\/carento.test\\/services\\/tire-replacement-balancing\"}],[{\"key\":\"label\",\"value\":\"Temporary Car Replacement\"},{\"key\":\"url\",\"value\":\"http:\\/\\/carento.test\\/services\\/temporary-car-replacement\"}],[{\"key\":\"label\",\"value\":\"Roadside Assistance\"},{\"key\":\"url\",\"value\":\"http:\\/\\/carento.test\\/services\\/roadside-assistance\"}]]}','2025-01-16 17:22:30','2025-01-16 17:22:30'),(4,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','carento',4,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Our Partners\",\"items\":[[{\"key\":\"label\",\"value\":\"Affiliates\"},{\"key\":\"url\",\"value\":\"\\/affiliates\"}],[{\"key\":\"label\",\"value\":\"Travel Agents\"},{\"key\":\"url\",\"value\":\"\\/travel-agents\"}],[{\"key\":\"label\",\"value\":\"AARP Members\"},{\"key\":\"url\",\"value\":\"\\/aarp-members\"}],[{\"key\":\"label\",\"value\":\"Points Programs\"},{\"key\":\"url\",\"value\":\"\\/points-programs\"}],[{\"key\":\"label\",\"value\":\"Military & Veterans\"},{\"key\":\"url\",\"value\":\"\\/military-veterans\"}],[{\"key\":\"label\",\"value\":\"Work with us\"},{\"key\":\"url\",\"value\":\"\\/work-with-us\"}],[{\"key\":\"label\",\"value\":\"Advertise with us\"},{\"key\":\"url\",\"value\":\"\\/advertise-with-us\"}]]}','2025-01-16 17:22:30','2025-01-16 17:22:30'),(5,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','carento',5,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Support\",\"items\":[[{\"key\":\"label\",\"value\":\"Forum support\"},{\"key\":\"url\",\"value\":\"\\/forum-support\"}],[{\"key\":\"label\",\"value\":\"Help Center\"},{\"key\":\"url\",\"value\":\"\\/help-center\"}],[{\"key\":\"label\",\"value\":\"Live chat\"},{\"key\":\"url\",\"value\":\"\\/live-chat\"}],[{\"key\":\"label\",\"value\":\"How it works\"},{\"key\":\"url\",\"value\":\"\\/how-it-works\"}],[{\"key\":\"label\",\"value\":\"Security\"},{\"key\":\"url\",\"value\":\"\\/security\"}],[{\"key\":\"label\",\"value\":\"Refund Policy\"},{\"key\":\"url\",\"value\":\"\\/refund-policy\"}]]}','2025-01-16 17:22:30','2025-01-16 17:22:30'),(6,'SiteCopyrightWidget','bottom_footer_sidebar','carento',1,'[]','2025-01-16 17:22:30','2025-01-16 17:22:30'),(7,'SocialLinksWidget','bottom_footer_sidebar','carento',2,'{\"id\":\"SocialLinksWidget\",\"title\":\"\"}','2025-01-16 17:22:30','2025-01-16 17:22:30'),(8,'NewsletterWidget','top_footer_sidebar','carento',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe to see secret deals prices drop the moment you sign up!\",\"button_label\":\"Subscribe\"}','2025-01-16 17:22:30','2025-01-16 17:22:30'),(9,'ContactInformationWidget','header_top_sidebar','carento',1,'{\"id\":\"ContactInformationWidget\",\"quantity\":2,\"title_1\":\"+123 9898 500\",\"icon_1\":\"ti ti-phone-call\",\"url_1\":\"tel:123 9898 500\",\"title_2\":\"sale@carento.com\",\"icon_2\":\"ti ti-mail\",\"url_2\":\"mailto:sale@carento.com\"}','2025-01-16 17:22:30','2025-01-16 17:22:30'),(10,'BlogSearchWidget','blog_sidebar','carento',1,'{\"id\":\"BlogSearchWidget\"}','2025-01-16 17:22:30','2025-01-16 17:22:30'),(11,'BlogPostsWidget','blog_sidebar','carento',2,'{\"id\":\"BlogPostsWidget\",\"title\":\"Latest Posts\",\"category_ids\":[1,2,3,4,5],\"limit\":5}','2025-01-16 17:22:30','2025-01-16 17:22:30'),(12,'GalleriesWidget','blog_sidebar','carento',3,'{\"id\":\"GalleriesWidget\",\"title\":\"Instagram Posts\",\"limit\":9}','2025-01-16 17:22:30','2025-01-16 17:22:30'),(13,'FeaturedPostsWidget','above_blog_list_sidebar','carento',1,'{\"id\":\"FeaturedPostsWidget\",\"title\":\"Inside & Trending\",\"category_ids\":[1,2,3,4,5,6],\"limit\":4}','2025-01-16 17:22:30','2025-01-16 17:22:30'),(14,'BlogPostsWidget','off_canvas_sidebar','carento',1,'{\"id\":\"BlogPostsWidget\",\"title\":\"Latest Posts\",\"category_ids\":[1,2,3,4,5],\"limit\":5}','2025-01-16 17:22:30','2025-01-16 17:22:30'),(15,'SiteInformationWidget','off_canvas_sidebar','carento',2,'{\"id\":\"SiteInformationWidget\",\"logo\":\"icons\\/contact.png\",\"quantity\":4,\"icon_1\":\"ti ti-map-pin\",\"description_1\":\"2356 Oakwood Drive, Suite 18, San Francisco, California 94111, US\",\"icon_2\":\"ti ti-clock-hour-3\",\"description_2\":\"Hours: 8:00 - 17:00, Mon - Sat\",\"icon_3\":\"ti ti-mail\",\"description_3\":\"support@carento.com\"}','2025-01-16 17:22:30','2025-01-16 17:22:30');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-17  7:23:08
