CREATE DATABASE  IF NOT EXISTS `myschool_erp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `myschool_erp`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: myschool_erp
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.24.04.2

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
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint unsigned DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint unsigned DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (1,'default','User was created','App\\Models\\User','created',1,NULL,NULL,'{\"attributes\": {\"name\": \"Test User\", \"role\": \"student\", \"email\": \"test@example.com\", \"username\": \"testuser\", \"is_active\": false, \"mobile_no\": null, \"school_id\": null, \"is_verified\": false}}',NULL,'2025-09-27 15:52:20','2025-09-27 15:52:20'),(2,'default','User was created','App\\Models\\User','created',2,NULL,NULL,'{\"attributes\": {\"name\": \"Super Administrator\", \"role\": \"super-admin\", \"email\": \"superadmin@schoolerp.com\", \"username\": \"superadmin\", \"is_active\": true, \"mobile_no\": null, \"school_id\": null, \"is_verified\": true}}',NULL,'2025-09-27 15:57:18','2025-09-27 15:57:18'),(3,'default','User was created','App\\Models\\User','created',3,NULL,NULL,'{\"attributes\": {\"name\": \"Sapna Singh\", \"role\": \"admin\", \"email\": \"raushansinghrana95@gmail.com\", \"username\": \"sapna-singh\", \"is_active\": false, \"mobile_no\": \"7903541590\", \"school_id\": null, \"is_verified\": false}}',NULL,'2025-09-27 16:01:12','2025-09-27 16:01:12'),(4,'default','User was updated','App\\Models\\User','updated',3,NULL,NULL,'{\"old\": {\"is_active\": false, \"is_verified\": false}, \"attributes\": {\"is_active\": true, \"is_verified\": true}}',NULL,'2025-09-27 16:02:15','2025-09-27 16:02:15'),(5,'default','User was created','App\\Models\\User','created',4,NULL,NULL,'{\"attributes\": {\"name\": \"Monu Singh\", \"email\": \"raushansinghrana95@gmail.com\", \"username\": \"monu-singh\", \"is_active\": false, \"mobile_no\": \"7903541590\", \"school_id\": null, \"is_verified\": false}}',NULL,'2025-09-28 11:56:54','2025-09-28 11:56:54'),(6,'default','Password changed','App\\Models\\User',NULL,3,NULL,NULL,'{\"ip_address\": \"127.0.0.1\", \"user_agent\": \"PostmanRuntime/7.48.0\"}',NULL,'2025-10-04 15:58:47','2025-10-04 15:58:47'),(13,'default','User was created','App\\Models\\User','created',12,'App\\Models\\User',3,'{\"attributes\": {\"name\": \"Suresh Kumar\", \"email\": \"suresh.kumar@example.com\", \"username\": \"suresh-kumar1685\", \"is_active\": false, \"mobile_no\": null, \"school_id\": \"1\", \"is_verified\": false}}',NULL,'2025-10-05 02:07:41','2025-10-05 02:07:41'),(14,'default','User was created','App\\Models\\User','created',13,'App\\Models\\User',3,'{\"attributes\": {\"name\": \"Rahul Kumar\", \"email\": \"suresh.kumar@example.com\", \"username\": \"rahul-kumar5799\", \"is_active\": false, \"mobile_no\": null, \"school_id\": \"1\", \"is_verified\": false}}',NULL,'2025-10-05 02:07:41','2025-10-05 02:07:41'),(15,'default','User was created','App\\Models\\User','created',14,NULL,NULL,'{\"attributes\": {\"name\": \"Komal Khakare\", \"email\": \"khakarekomal16@gmail.com\", \"username\": \"komal-khakare\", \"is_active\": false, \"mobile_no\": \"7903541590\", \"school_id\": null, \"is_verified\": false}}',NULL,'2025-10-09 12:20:01','2025-10-09 12:20:01'),(16,'default','User was created','App\\Models\\User','created',15,'App\\Models\\User',3,'{\"attributes\": {\"name\": \"Samay Raina\", \"email\": \"suresh.kumar@example.com\", \"username\": \"samay-raina5717\", \"is_active\": true, \"mobile_no\": null, \"school_id\": \"1\", \"is_verified\": true}}',NULL,'2025-10-09 13:16:45','2025-10-09 13:16:45'),(17,'default','User was created','App\\Models\\User','created',16,'App\\Models\\User',3,'{\"attributes\": {\"name\": \"Sujeet Singh\", \"email\": \"sujeet.singh@example.com\", \"username\": \"sujeet-singh9637\", \"is_active\": true, \"mobile_no\": null, \"school_id\": \"1\", \"is_verified\": true}}',NULL,'2025-10-09 13:25:39','2025-10-09 13:25:39'),(18,'default','User was created','App\\Models\\User','created',17,'App\\Models\\User',3,'{\"attributes\": {\"name\": \"Sonal Singh\", \"email\": \"sujeet.singh@example.com\", \"username\": \"sonal-singh7854\", \"is_active\": true, \"mobile_no\": null, \"school_id\": \"1\", \"is_verified\": true}}',NULL,'2025-10-09 13:25:40','2025-10-09 13:25:40'),(19,'default','User was created','App\\Models\\User','created',18,'App\\Models\\User',3,'{\"attributes\": {\"name\": \"Amit Singh\", \"email\": \"amit.singh@example.com\", \"username\": \"amit-singh4978\", \"is_active\": true, \"mobile_no\": null, \"school_id\": \"1\", \"is_verified\": true}}',NULL,'2025-10-09 13:29:11','2025-10-09 13:29:11'),(20,'default','User was created','App\\Models\\User','created',19,'App\\Models\\User',3,'{\"attributes\": {\"name\": \"Amrita Singh\", \"email\": \"amit.singh@example.com\", \"username\": \"amrita-singh4310\", \"is_active\": true, \"mobile_no\": null, \"school_id\": \"1\", \"is_verified\": true}}',NULL,'2025-10-09 13:29:11','2025-10-09 13:29:11');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
INSERT INTO `contact_messages` VALUES (1,'Raushan Singh','raushan22012024@gmail.com','7903541590','Marketing Automation','Need a CRM','2025-11-19 12:10:17','2025-11-19 12:10:17'),(2,'Nikki Singh','raushan22012024@gmail.com','8294682576','Mobile App Development','Hello','2025-11-19 12:42:53','2025-11-19 12:42:53'),(3,'Simran Singh','manish.feb.2016@gmail.com','9256660985','Mobile App Development','Hello I need message Application','2025-11-19 13:01:13','2025-11-19 13:01:13');
/*!40000 ALTER TABLE `contact_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2025_09_18_175028_create_cache_table',1),(2,'2025_09_18_175351_create_activity_log_table',1),(3,'2025_09_18_175352_add_event_column_to_activity_log_table',1),(4,'2025_09_18_175353_add_batch_uuid_column_to_activity_log_table',1),(5,'2025_09_18_180000_create_users_table',1),(6,'2025_09_18_182413_create_schools_table',1),(7,'2025_09_23_080813_add_password_reset_columns_to_users_table',1),(8,'2025_09_27_193847_update_users_role_column',1),(9,'2025_09_27_211739_create_permission_tables',1),(10,'2025_10_04_185020_create_parents_profiles_table',2),(11,'2025_10_04_185025_create_parents_profiles_table',3),(12,'2025_10_04_203539_create_parents_profiles_table',4),(13,'2025_10_04_203722_create_students_table',4),(14,'2025_11_19_164540_create_contact_messages_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',2),(2,'App\\Models\\User',3),(6,'App\\Models\\User',12),(5,'App\\Models\\User',13),(5,'App\\Models\\User',15),(6,'App\\Models\\User',16),(5,'App\\Models\\User',17),(6,'App\\Models\\User',18),(5,'App\\Models\\User',19);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parents_profiles`
--

DROP TABLE IF EXISTS `parents_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parents_profiles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondary_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annual_income` decimal(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `parents_profiles_primary_mobile_unique` (`primary_mobile`),
  UNIQUE KEY `parents_profiles_email_unique` (`email`),
  KEY `parents_profiles_user_id_foreign` (`user_id`),
  CONSTRAINT `parents_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents_profiles`
--

LOCK TABLES `parents_profiles` WRITE;
/*!40000 ALTER TABLE `parents_profiles` DISABLE KEYS */;
INSERT INTO `parents_profiles` VALUES (3,12,'Suresh Kumar','Sunita Kumar','9876543210',NULL,'suresh.kumar@example.com',NULL,NULL,NULL,NULL,NULL,NULL,'2025-10-05 02:07:41','2025-10-05 02:07:41'),(4,16,'Sujeet Singh','Sulekha Singh','7903541590',NULL,'sujeet.singh@example.com',NULL,NULL,NULL,NULL,NULL,NULL,'2025-10-09 13:25:39','2025-10-09 13:25:39'),(5,18,'Amit Singh','Amrita Singh','7903541591',NULL,'amit.singh@example.com',NULL,NULL,NULL,NULL,NULL,NULL,'2025-10-09 13:29:11','2025-10-09 13:29:11');
/*!40000 ALTER TABLE `parents_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'manage users','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(2,'view dashboard','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(3,'manage students','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(4,'view students','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(5,'create students','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(6,'edit students','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(7,'delete students','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(8,'manage staff','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(9,'view staff','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(10,'manage classes','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(11,'view reports','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(12,'manage settings','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(13,'onboard schools','web','2025-09-27 15:57:17','2025-09-27 15:57:17'),(14,'manage all schools','web','2025-09-27 15:57:17','2025-09-27 15:57:17'),(15,'activate schools','web','2025-09-27 15:57:17','2025-09-27 15:57:17'),(16,'deactivate schools','web','2025-09-27 15:57:17','2025-09-27 15:57:17'),(17,'view all schools','web','2025-09-27 15:57:17','2025-09-27 15:57:17'),(18,'manage system settings','web','2025-09-27 15:57:17','2025-09-27 15:57:17'),(19,'view system logs','web','2025-09-27 15:57:17','2025-09-27 15:57:17'),(20,'manage super users','web','2025-09-27 15:57:17','2025-09-27 15:57:17'),(21,'school.create','web','2025-09-28 12:45:43','2025-09-28 12:45:43'),(22,'school.update','web','2025-09-28 12:45:43','2025-09-28 12:45:43'),(23,'school.view','web','2025-09-28 12:45:43','2025-09-28 12:45:43'),(24,'school.activate','web','2025-09-28 12:45:43','2025-09-28 12:45:43'),(25,'school.deactivate','web','2025-09-28 12:45:43','2025-09-28 12:45:43');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(2,2),(3,2),(4,2),(5,2),(6,2),(8,2),(9,2),(10,2),(11,2),(12,2),(2,3),(3,3),(4,3),(5,3),(6,3),(9,3),(10,3),(2,4),(4,4),(11,4),(2,5);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'super-admin','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(2,'admin','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(3,'staff','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(4,'teacher','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(5,'student','web','2025-09-27 15:54:28','2025-09-27 15:54:28'),(6,'parent','web','2025-09-27 15:54:28','2025-09-27 15:54:28');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schools` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_type` enum('public','private','charter','international','boarding') COLLATE utf8mb4_unicode_ci NOT NULL,
  `education_level` enum('elementary','middle','high','k12','preschool') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `principal_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `principal_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `principal_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `founded_date` date DEFAULT NULL,
  `board_affiliation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medium_of_instruction` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `verification_date` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `schools_name_unique` (`name`),
  UNIQUE KEY `schools_school_code_unique` (`school_code`),
  UNIQUE KEY `schools_email_unique` (`email`),
  UNIQUE KEY `schools_registration_number_unique` (`registration_number`),
  KEY `schools_created_by_foreign` (`created_by`),
  KEY `schools_updated_by_foreign` (`updated_by`),
  CONSTRAINT `schools_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `schools_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES (1,'Springfield Elementary School','Springfield Elementary','SCH2025SPR0001','REG-2025-001','public','elementary','infoSpringFord@gmail.com','9525331027','https://www.springfield-elementary.edu','123 Education Street','Building A','Springfield','Illinois','62701','United States','Dr. John Smith','principalspringfield@gmail.com','9525331027','1995-08-15','Springfield School District','English','A community-focused elementary school providing quality education','pending',0,NULL,2,NULL,NULL,'2025-09-30 12:32:58','2025-09-30 12:32:58');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `sessions` VALUES ('kRTPITUFUWyIaJjSkv2JQzgPFqS1NK4JCt28JH9q',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFViWTIzZThnbXo1QndVdXdneGNLWHdNRU5BY1pCVGlobG9kaDgySCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1763576995),('uFLbTEf0VDvS5fTDgTgU5WWD8gBCFGHFH9rJDTOG',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:145.0) Gecko/20100101 Firefox/145.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoia0Voc0FhVTFxeUZsSXEzaDdEMkNrVGdUTllZYkRDVmVldzIyWER5cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1763575928);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admission_date` date DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_school` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_exam_result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_roll_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transfer_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `students_admission_number_unique` (`admission_number`),
  UNIQUE KEY `students_aadhar_number_unique` (`aadhar_number`),
  KEY `students_user_id_foreign` (`user_id`),
  KEY `students_parent_id_foreign` (`parent_id`),
  KEY `students_admission_number_index` (`admission_number`),
  KEY `students_full_name_index` (`full_name`),
  KEY `students_class_index` (`class`),
  KEY `students_section_index` (`section`),
  CONSTRAINT `students_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `parents_profiles` (`id`) ON DELETE SET NULL,
  CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,13,3,'Rahul Kumar','male','2014-05-12',NULL,NULL,NULL,NULL,NULL,'ADM20251005',NULL,'5','B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2025-10-05 02:07:41','2025-10-05 02:07:41'),(2,15,3,'Samay Raina','male','2014-05-12',NULL,NULL,NULL,NULL,NULL,'ADM20251005ERTWE',NULL,'5','B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2025-10-09 13:16:45','2025-10-09 13:16:45'),(3,17,4,'Sonal Singh','female','2012-05-12',NULL,NULL,NULL,NULL,NULL,'ADM2025100545555',NULL,'XII','B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2025-10-09 13:25:40','2025-10-09 13:25:40'),(4,19,5,'Amrita Singh','female','2012-05-12',NULL,NULL,NULL,NULL,NULL,'ADM2025002810102',NULL,'XII','B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2025-10-09 13:29:11','2025-10-09 13:29:11');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('super-admin','admin','staff','teacher','student','guest','parent','alumni','librarian','accountant') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'student',
  `school_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` json DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failed_login_attempts` int NOT NULL DEFAULT '0',
  `locked_until` timestamp NULL DEFAULT NULL,
  `password_changed_at` timestamp NULL DEFAULT NULL,
  `must_change_password` tinyint(1) NOT NULL DEFAULT '0',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `password_reset_otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_reset_otp_expires_at` timestamp NULL DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_reset_verified` tinyint(1) NOT NULL DEFAULT '0',
  `password_reset_verified_at` timestamp NULL DEFAULT NULL,
  `temp_reset_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_uuid_unique` (`uuid`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_email_index` (`email`),
  KEY `users_username_index` (`username`),
  KEY `users_uuid_index` (`uuid`),
  KEY `users_school_id_index` (`school_id`),
  KEY `users_role_index` (`role`),
  KEY `users_is_active_index` (`is_active`),
  KEY `users_is_verified_index` (`is_verified`),
  KEY `users_email_is_active_index` (`email`,`is_active`),
  KEY `users_role_school_id_index` (`role`,`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'a15cbfd6-cf33-44c2-8ecb-9ae805ceeef8','testuser','Test User','test@example.com','2025-09-27 15:52:20','$2y$12$tlLwu6NFSCNicFeIq1a4g.MSpwI2rrcWJTW0JSx4483mXM77YcRgS',NULL,NULL,'student',NULL,NULL,NULL,'J9PMf3FupL',NULL,NULL,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'2025-09-27 15:52:20','2025-09-27 15:52:20',NULL),(2,'964074a4-093a-4f0f-8221-d1566e8a56d3','superadmin','Super Administrator','superadmin@schoolerp.com','2025-09-27 15:57:18','$2y$12$nL0P9ebVxdHzRpR6RS7E3.cN0OkotnqePsMtovLsQZqhmZdiH/x5q',NULL,NULL,'super-admin',NULL,NULL,NULL,NULL,'2025-10-09 12:39:45','127.0.0.1',0,NULL,'2025-09-27 15:57:18',0,1,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'2025-09-27 15:57:18','2025-10-09 12:39:45',NULL),(3,'7d523413-8cd9-4729-a29a-b67529a56479','sapna-singh','Sapna Singh','raushansinghrana95@gmail.com',NULL,'$2y$12$ad0vUnysL2ap1MgZo0lm4O8sbEJ84uLqLuWMkWlOqiw4C5CK9aymq','7903541590',NULL,'admin','1',NULL,NULL,NULL,'2025-10-15 14:32:17','127.0.0.1',0,NULL,'2025-10-04 15:58:46',0,1,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'2025-09-27 16:01:12','2025-10-15 14:32:17',NULL),(4,'fa268bc6-b43e-4845-b618-60772d190903','monu-singh','Monu Singh','raushansinghrana99@gmail.com',NULL,'$2y$12$ugaANaIMM0XWy/HsUR/7k.RXnwbhxzGnYByRyQNjxL4BrnH3FR7i2','7903541590',NULL,'student',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-09-28 11:56:54',0,0,0,'$2y$12$Dmil9aVDV6IGZtw0p3jZuOsrNo/fmpHpBJPhVLYhEl7ePptMX38Rq','2025-09-28 12:06:54',NULL,NULL,NULL,0,NULL,NULL,'$2y$12$2khe7OPthUMNQSP9aTPZluC.mqjum02V44CgtzxCiF.fpgwQTI5Ca','2025-09-28 11:56:54','2025-09-28 11:56:55',NULL),(12,'4a7f763c-f37d-46e7-80e9-b063a236c5fd','suresh-kumar1685','Suresh Kumar','suresh.kumar@example.com',NULL,'$2y$12$lLT3pqCXrDXgRtTTLjlS2u5z0rDTD4tgMdaex3grGxI80gNS0iBkG',NULL,NULL,'student','1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'2025-10-05 02:07:41','2025-10-05 02:07:41',NULL),(13,'0e26714c-8bea-48ed-86ba-e4cc90f34c7b','rahul-kumar5799','Rahul Kumar','suresh.kumar@example.com',NULL,'$2y$12$Gi70mWpqv1l3UKaaK4xCg.oQMnvUidgBohZslb9ojW.Mmk9gb6OHW',NULL,NULL,'student','1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'2025-10-05 02:07:41','2025-10-05 02:07:41',NULL),(14,'3796e1b5-4d2a-45f0-862b-dfaf50434f07','komal-khakare','Komal Khakare','khakarekomal16@gmail.com',NULL,'$2y$12$qrTuRMHvWB7HE97PoA5Xce8Mk61COfxfINYWuOkq9GHvW5U9ZZXzO','7903541590',NULL,'admin',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2025-10-09 12:20:00',0,0,0,'$2y$12$6ucf63oJekHrb1ZUDA3AWuQz1yW5G4sns/NawmkWBzecu7UJGLWZu','2025-10-09 12:58:49',NULL,NULL,NULL,0,NULL,NULL,'$2y$12$a2KMfsTQztfKP5YU2cw6GO6ruNBXja6d.98KaMu4Y/L/iKsH9ZUfG','2025-10-09 12:20:00','2025-10-09 12:48:49',NULL),(15,'d150779b-6c18-4cc0-95b6-ea411227feac','samay-raina5717','Samay Raina','suresh.kumar@example.com',NULL,'$2y$12$Va/7npX1y2CQA5aZyLe11Op8hdoedsKhphtuxVnJRuzhRcJId0PWC',NULL,NULL,'student','1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,1,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'2025-10-09 13:16:45','2025-10-09 13:16:45',NULL),(16,'b5bf4ec5-9836-493f-805a-9161f88f15d2','sujeet-singh9637','Sujeet Singh','sujeet.singh@example.com',NULL,'$2y$12$bRsJUkd4IDsHE1qal8wjF.aVe6E5BwFQrvZ2WnZ/bGZIQOjr1swE6',NULL,NULL,'student','1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,1,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'2025-10-09 13:25:39','2025-10-09 13:25:39',NULL),(17,'71cbebb1-b60d-4ef2-9916-3d72f97b9fb9','sonal-singh7854','Sonal Singh','sujeet.singh@example.com',NULL,'$2y$12$9gTjUI5RqlYjVrEYW1ncs.ut19H6e1/e8j51NVJ8n.xpKDrnBEXee',NULL,NULL,'student','1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,1,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'2025-10-09 13:25:40','2025-10-09 13:25:40',NULL),(18,'230d4b8b-6fde-4917-83aa-4f251277ea4e','amit-singh4978','Amit Singh','amit.singh@example.com',NULL,'$2y$12$CmAhZQr/gk8tfMit459iQejrAKoJ4tgHBmp3H.ti4WHa1GQl7/ebi',NULL,NULL,'parent','1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,1,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'2025-10-09 13:29:11','2025-10-09 13:29:11',NULL),(19,'0efa79ad-13ed-4105-9583-7d2d175b5603','amrita-singh4310','Amrita Singh','amit.singh@example.com',NULL,'$2y$12$w2uNQr4hVhWcGuqV1diQAupxlpswo.pDaPqj1CDZq7K/nfQ7pX66.',NULL,NULL,'student','1',NULL,NULL,NULL,'2025-10-15 14:16:22','127.0.0.1',0,NULL,NULL,0,1,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'2025-10-09 13:29:11','2025-10-15 14:16:22',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-21  0:12:15
