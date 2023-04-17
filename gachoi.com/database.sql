-- MySQL dump 10.13  Distrib 8.0.28, for macos10.15 (x86_64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
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
INSERT INTO `activations` VALUES (1,1,'eSFfgv1cQVbBOVzldJAftMJJexMw3h0H',1,'2022-05-20 21:25:28','2022-05-20 21:25:28','2022-05-20 21:25:28');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2027-05-21 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2022-05-20 21:25:26','2022-05-20 21:25:26'),(2,'Top Slider Image 2','2027-05-21 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2022-05-20 21:25:26','2022-05-20 21:25:26'),(3,'Homepage middle 1','2027-05-21 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2022-05-20 21:25:26','2022-05-20 21:25:26'),(4,'Homepage middle 2','2027-05-21 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2022-05-20 21:25:26','2022-05-20 21:25:26'),(5,'Homepage middle 3','2027-05-21 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2022-05-20 21:25:26','2022-05-20 21:25:26'),(6,'Homepage big 1','2027-05-21 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2022-05-20 21:25:26','2022-05-20 21:25:26'),(7,'Homepage bottom small','2027-05-21 00:00:00','not_set','4MYFI8U1B2Z3','promotion/7.jpg','/products',0,7,'published','2022-05-20 21:25:26','2022-05-20 21:25:26'),(8,'Product sidebar','2027-05-21 00:00:00','product-sidebar','HAXBQMFXPWCK','promotion/8.jpg','/products',0,8,'published','2022-05-20 21:25:26','2022-05-20 21:25:26'),(9,'Homepage big 2','2027-05-21 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2022-05-20 21:25:26','2022-05-20 21:25:26');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Top Slider Image 1','promotion/1.jpg','/vi/products'),('vi',2,'Top Slider Image 2','promotion/2.jpg','/vi/products'),('vi',3,'Homepage middle 1','promotion/3.jpg','/vi/products'),('vi',4,'Homepage middle 2','promotion/4.jpg','/vi/products'),('vi',5,'Homepage middle 3','promotion/5.jpg','/vi/products'),('vi',6,'Homepage big 1','promotion/6.jpg','/vi/products'),('vi',7,'Homepage bottom small','promotion/7.jpg','/vi/products'),('vi',8,'Product sidebar','promotion/8.jpg','/vi/products'),('vi',9,'Homepage big 2','promotion/9.jpg','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Dolore suscipit sit amet aut aut in. Corporis numquam nam et quia. Qui exercitationem esse cum molestiae. Autem dolorem rerum doloribus est. Esse et molestias saepe nesciunt.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2022-05-20 21:25:18','2022-05-20 21:25:18'),(2,'Fashion',0,'Incidunt consequatur quia hic repellat molestiae aut maxime minima. Id sit soluta iste commodi aliquam. Facere eum soluta fuga iure quod. Voluptatem qui odio facilis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-05-20 21:25:18','2022-05-20 21:25:18'),(3,'Electronic',0,'Rerum temporibus omnis minima omnis eaque saepe. Magnam quas tempore quaerat. Rerum ut necessitatibus aliquam. Officiis quia sed sequi voluptas.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-05-20 21:25:18','2022-05-20 21:25:18'),(4,'Commercial',0,'Necessitatibus sit sit sed et. Voluptas porro nam qui et ducimus. Non deserunt nihil voluptatem quia. Libero est dolorem architecto rem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-05-20 21:25:18','2022-05-20 21:25:18');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_backup`
--

DROP TABLE IF EXISTS `cities_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_backup`
--

LOCK TABLES `cities_backup` WRITE;
/*!40000 ALTER TABLE `cities_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Ariel Hodkiewicz','delmer.legros@example.org','(417) 819-9597','1504 Kihn Loaf\nAimeeborough, CA 08843-3452','Et voluptas quis tempora pariatur consequatur id.','Harum quis non dolores corporis autem ea. Blanditiis ut qui ut quo illo nemo in inventore. Voluptas ut consectetur in quo odit magni aut. Voluptates a ipsum rem consequuntur sed qui. Quo facere odit cum ratione saepe labore voluptatum. Facilis quia ea aut dolorem et aperiam iure. Eaque enim et nesciunt voluptas rem deleniti explicabo. Veniam consequuntur error vitae ut. Commodi quo veniam dolor.','read','2022-05-20 21:25:07','2022-05-20 21:25:07'),(2,'Dr. Pasquale Schuster','desiree76@example.com','+1.838.560.5335','2829 Toy Fork Apt. 547\nSouth Jaclynbury, TX 84632','Qui itaque nihil libero et et dolorem ut.','Saepe nemo accusantium numquam eveniet velit ab. Aut facilis consequatur occaecati blanditiis blanditiis. Voluptates minus odit est aut aliquam nihil omnis. Enim velit at voluptas doloremque. Ea quis saepe dolor eum vel. Sunt accusantium id voluptas qui et suscipit harum. Sequi dolorem ratione qui tempore id. Ut quae excepturi ab et debitis qui. Sed atque ut qui labore sint rerum sint. Officia in mollitia sit aut. Non quod tempora distinctio.','read','2022-05-20 21:25:08','2022-05-20 21:25:08'),(3,'Jensen Terry','jazlyn25@example.com','520.608.6657','48648 Price Mill\nSchneiderberg, AZ 35371','Quam deserunt quae aperiam occaecati aut.','Optio vel rem maiores quo perferendis. Eos deleniti est aut error quo sint. Excepturi qui iure libero amet. Aut expedita quibusdam aliquid aliquid adipisci fugit quos consequatur. Corrupti qui vitae omnis dolores. Et animi et velit ipsa quia itaque. Facilis ea ut quas pariatur. Officiis et voluptatum error quia reprehenderit.','read','2022-05-20 21:25:08','2022-05-20 21:25:08'),(4,'Prof. Amelie Gaylord IV','cstamm@example.com','+16782885360','7886 Bud Knoll Apt. 304\nEast Delphaborough, IN 54674-8447','Saepe nesciunt magnam dolor.','Voluptas perferendis maxime exercitationem non. Voluptas tempora doloribus qui cum assumenda impedit. Odio sint soluta repudiandae aut illo molestias commodi. Placeat eum aspernatur autem dolores. Et est similique id odit aut fuga et. Est totam quia corrupti cum quas et magnam. Quas eligendi aliquam laborum exercitationem officia. Eius dolorem cumque repudiandae temporibus libero distinctio.','read','2022-05-20 21:25:08','2022-05-20 21:25:08'),(5,'Maximillia Zulauf','olaf06@example.org','1-928-644-6580','489 Daugherty Haven\nImmanuelstad, MO 64423','Voluptas et dolorem sit libero.','Dolorem voluptatem in enim blanditiis inventore sed. Quisquam non eos quisquam nobis. Consectetur natus qui nostrum. Est distinctio esse ipsam doloribus facilis. Ea enim ut omnis voluptatem. Consequatur aut sed tempora et est nihil ex. Dolorum voluptatem molestias et. Iusto eum sit vero aliquid vitae. Nisi eaque unde in omnis eum. Provident ut laboriosam voluptates totam fugit. Distinctio qui adipisci autem placeat.','read','2022-05-20 21:25:08','2022-05-20 21:25:08'),(6,'Kasandra Hilpert','graham22@example.net','+1-620-459-8968','36252 Trenton Course\nEast Gabriella, MI 66881-4070','Ab placeat ut labore deserunt eum.','Rerum hic autem soluta aut aut placeat et. Ipsam aliquid modi odit suscipit. Reprehenderit at rerum et autem fugit dolor omnis. Ea porro explicabo qui aut modi voluptate praesentium. Natus doloribus harum quo optio. Quisquam esse alias modi temporibus quis consequatur. A vitae numquam labore quidem fuga. Aspernatur repellat labore iusto quod in. Voluptas aliquid id dolor consequatur et. Harum dolores omnis qui non. Expedita debitis totam error aut vel veritatis iste.','unread','2022-05-20 21:25:08','2022-05-20 21:25:08'),(7,'Prof. Cleve Grimes','henderson.denesik@example.org','+1.954.212.8028','33260 O\'Hara Land\nNew Jammieview, DE 88122','Libero quae eum numquam pariatur ipsum.','Amet sunt voluptas beatae quos minus ea. Assumenda et quasi aliquam eius odit. Nam voluptas dolorum dignissimos non. Consequatur ducimus quibusdam ipsa necessitatibus minus id quasi. Sunt dolores et magnam repellat voluptates aut. Ea voluptates qui soluta. Illum nisi illum earum vitae totam voluptate. Aut quam maiores ratione quisquam ipsa. Qui est odio excepturi maxime quis accusamus necessitatibus. Officiis earum sit dolores et in ea. Omnis nisi ad eos iure labore minus id.','read','2022-05-20 21:25:08','2022-05-20 21:25:08'),(8,'Wendy Frami','cruz.von@example.net','+1-906-973-3227','615 Georgiana Meadow Suite 069\nAngelinaville, ND 02436','Nisi aliquid nobis nam amet totam vel quo.','Maiores provident consequuntur ut molestiae commodi. Ratione dolores quasi id aspernatur voluptas qui doloremque. Quidem esse sint officia magnam molestiae voluptas non. Nemo et alias rerum et animi excepturi quos. Ex fuga distinctio doloribus quia nulla. Minima modi quae est nobis. Tempora id quia rem tempore sed tenetur.','unread','2022-05-20 21:25:08','2022-05-20 21:25:08'),(9,'Stanton Rohan','lkunze@example.com','229-479-7166','1712 Mathilde Plaza Suite 851\nCharityshire, UT 08781','Minima nam accusamus et sint quos cupiditate.','Voluptas quos minima placeat rerum voluptatem. Debitis architecto esse porro. A et occaecati ipsa. Adipisci voluptas dicta voluptas quia ab nostrum. Quo molestiae repudiandae unde unde sapiente. Voluptate et reprehenderit assumenda culpa. Provident molestiae cumque est assumenda. Eos incidunt alias harum est dolorem. Sint laborum corporis ad voluptatem veniam qui. Blanditiis consequatur dolorem ut autem exercitationem odio. Cumque quia fugit sint dolores.','read','2022-05-20 21:25:08','2022-05-20 21:25:08'),(10,'Joany Halvorson','dominic.mohr@example.com','+14635573953','449 Runolfsdottir Curve\nLake Trevor, CA 67831-5057','Nulla autem laborum quibusdam aut in.','Similique quia expedita qui voluptatem. Et inventore impedit corrupti fugiat eligendi assumenda non. Et eum quia tempora. Reprehenderit quia qui vel temporibus id eaque quis nihil. Quia et dolorem unde excepturi cum. Autem ipsam deserunt aspernatur aspernatur consequuntur exercitationem rem ut. Ullam consequatur error aspernatur odio similique.','unread','2022-05-20 21:25:08','2022-05-20 21:25:08');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_backup`
--

DROP TABLE IF EXISTS `countries_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_backup`
--

LOCK TABLES `countries_backup` WRITE;
/*!40000 ALTER TABLE `countries_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
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
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2022-05-20 21:24:14','2022-05-20 21:24:14'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2022-05-20 21:24:14','2022-05-20 21:24:14'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2022-05-20 21:24:14','2022-05-20 21:24:14'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2022-05-20 21:24:14','2022-05-20 21:24:14'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2022-05-20 21:24:14','2022-05-20 21:24:14'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2022-05-20 21:24:14','2022-05-20 21:24:14'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2022-05-20 21:24:14','2022-05-20 21:24:14');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Fashion live',NULL),('vi',2,'Hand crafted',NULL),('vi',3,'Mestonix',NULL),('vi',4,'Sunshine',NULL),('vi',5,'Pure',NULL),('vi',6,'Anfold',NULL),('vi',7,'Automotive',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2022-05-20 21:24:14','2022-05-20 21:24:14'),(2,'EUR','€',0,2,1,0,0.84,'2022-05-20 21:24:14','2022-05-20 21:24:14'),(3,'VND','₫',0,0,2,0,23203,'2022-05-20 21:24:14','2022-05-20 21:24:14');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Cordia Yundt','customer@botble.com','+12814754832','MV','Kentucky','Lake Kellymouth','5917 Jessyca Pass Apt. 885',1,1,'2022-05-20 21:25:04','2022-05-20 21:25:04','35116-9024'),(2,'Cordia Yundt','customer@botble.com','+13803148887','NP','West Virginia','North Lydiaville','82023 Alta Shore Apt. 465',1,0,'2022-05-20 21:25:04','2022-05-20 21:25:04','55845'),(3,'Marjorie Simonis','vendor@botble.com','+18287243422','TK','California','Gusikowskiland','84377 Padberg Ports Suite 108',2,1,'2022-05-20 21:25:04','2022-05-20 21:25:04','15259-5682'),(4,'Marjorie Simonis','vendor@botble.com','+12159760805','AD','Michigan','Vivienport','760 Stanton Crossroad',2,0,'2022-05-20 21:25:04','2022-05-20 21:25:04','67105-6348'),(5,'Cassandra Willms','schuppe.rosalee@example.com','+18383094587','TC','Montana','Gregoryside','831 Blaze Hill Apt. 486',3,1,'2022-05-20 21:25:04','2022-05-20 21:25:04','57006'),(6,'Cordelia Huel','xnader@example.org','+14347723261','MC','Iowa','Port Elissaport','63568 Kaley Highway Suite 607',4,1,'2022-05-20 21:25:04','2022-05-20 21:25:04','66220'),(7,'Prof. Brayan Carter','mueller.mark@example.com','+17549126776','BN','Georgia','Stoltenbergview','24302 Osinski Hill',5,1,'2022-05-20 21:25:05','2022-05-20 21:25:05','93311-9079'),(8,'Aurelie Eichmann','emily.cummerata@example.net','+17163871153','AT','Florida','East Nikita','5937 Heather Throughway Suite 043',6,1,'2022-05-20 21:25:05','2022-05-20 21:25:05','85114-0170'),(9,'Retta Ruecker','cali.schneider@example.net','+19563174509','PW','Arizona','Bonniehaven','83712 Tromp Rue',7,1,'2022-05-20 21:25:05','2022-05-20 21:25:05','00339'),(10,'Jazmyn Welch','mdouglas@example.net','+12397347316','KW','Minnesota','Prohaskaville','64871 Moen Circle Suite 517',8,1,'2022-05-20 21:25:05','2022-05-20 21:25:05','28026'),(11,'Roscoe Fahey','ryan.jarret@example.com','+16503760167','RU','New York','Boyletown','58277 Mabel Valleys',9,1,'2022-05-20 21:25:06','2022-05-20 21:25:06','55850-9592'),(12,'Prof. Federico Wiegand','adolphus.dickinson@example.org','+17135761591','AM','Mississippi','Citlalliville','57152 Carter Ferry Apt. 192',10,1,'2022-05-20 21:25:06','2022-05-20 21:25:06','66915-9460');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Cordia Yundt','customer@botble.com','$2y$10$QERn4JcShH9NeP0vru2avuKrMukiqe9EqwTMbiC1Dn.TaRpP0Z4pe','customers/3.jpg','1974-05-15','+13462547217',NULL,'2022-05-20 21:25:04','2022-05-20 21:25:04','2022-05-21 04:25:04',NULL,0,NULL,'activated'),(2,'Marjorie Simonis','vendor@botble.com','$2y$10$SF7ySfW63vfi13HQFpqVue3ArIIiIFUUQHaKTnhFwMRH6N22THqzW','customers/4.jpg','1993-04-27','+19492568532',NULL,'2022-05-20 21:25:04','2022-05-20 21:25:42','2022-05-21 04:25:04',NULL,1,'2022-05-21 04:25:42','activated'),(3,'Cassandra Willms','schuppe.rosalee@example.com','$2y$10$fE6pEpjQ/JbMvK2K1Zq1aeJ2QRDTIh9X4cNk0TcHqvt0VL9TXVGdG','customers/1.jpg','1976-05-11','+18704026864',NULL,'2022-05-20 21:25:04','2022-05-20 21:25:42','2022-05-21 04:25:04',NULL,1,'2022-05-21 04:25:42','activated'),(4,'Cordelia Huel','xnader@example.org','$2y$10$GQjShtHxVKAo0MsKfdmaI.YCmjIzv3NzJFZv/8RLbAqBJ4mIDLBH6','customers/2.jpg','1980-05-07','+14843606912',NULL,'2022-05-20 21:25:04','2022-05-20 21:25:04','2022-05-21 04:25:04',NULL,0,NULL,'activated'),(5,'Prof. Brayan Carter','mueller.mark@example.com','$2y$10$.g4Y/glNUbIbvguP0JC3ruOG0raOm3Xot0tU1GPjesoN6iipNjo/e','customers/3.jpg','1977-05-15','+15626930558',NULL,'2022-05-20 21:25:05','2022-05-20 21:25:05','2022-05-21 04:25:05',NULL,0,NULL,'activated'),(6,'Aurelie Eichmann','emily.cummerata@example.net','$2y$10$iDInACYfA.4/UU6l25PQn.0yeiwjh2doSAwVvst4qz1TGFgypfMlS','customers/4.jpg','1986-05-09','+14342202776',NULL,'2022-05-20 21:25:05','2022-05-20 21:25:43','2022-05-21 04:25:05',NULL,1,'2022-05-21 04:25:43','activated'),(7,'Retta Ruecker','cali.schneider@example.net','$2y$10$z/Mn5EjPlCUxnOub.Us7Numuo6KpIACYHycJ6QyLFSPJT2tD7u0iq','customers/5.jpg','1984-05-15','+17206680446',NULL,'2022-05-20 21:25:05','2022-05-20 21:25:05','2022-05-21 04:25:05',NULL,0,NULL,'activated'),(8,'Jazmyn Welch','mdouglas@example.net','$2y$10$BKYwGJqvfm3nqH6KAPNM3.zT7vILfhshp.c2IYlK9zdsC0HOu.XEG','customers/6.jpg','1996-05-01','+16515761134',NULL,'2022-05-20 21:25:05','2022-05-20 21:25:05','2022-05-21 04:25:05',NULL,0,NULL,'activated'),(9,'Roscoe Fahey','ryan.jarret@example.com','$2y$10$2PWnJE.FB.Swh7XF6rBipekggcy097R3fTT4fop..WqQaJGIdVg9i','customers/7.jpg','1976-05-03','+18068533288',NULL,'2022-05-20 21:25:06','2022-05-20 21:25:06','2022-05-21 04:25:06',NULL,0,NULL,'activated'),(10,'Prof. Federico Wiegand','adolphus.dickinson@example.org','$2y$10$d1pbni9N7qDTFX5qooT2AOcEFLLRpseEXFGzQLxs0LfOxuSJ.SeI6','customers/8.jpg','1993-04-24','+14084965941',NULL,'2022-05-20 21:25:06','2022-05-20 21:25:43','2022-05-21 04:25:06',NULL,1,'2022-05-21 04:25:43','activated');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,63.3975,17,5),(1,2,16.605,16,3),(1,3,7.4,11,1),(1,4,337.26,17,3),(1,5,481.73,11,5),(1,6,231.84,17,5),(1,7,416.48,19,5),(1,8,359.529,13,5),(1,9,356.32,14,1),(1,10,974.38,16,1);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2022-06-20 00:00:00','published','2022-05-20 21:25:07','2022-05-20 21:25:07');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi mùa đông.');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Cordelia Huel','+14347723261','xnader@example.org','MC','Iowa','Port Elissaport','63568 Kaley Highway Suite 607',1,'66220'),(2,'Cordelia Huel','+14347723261','xnader@example.org','MC','Iowa','Port Elissaport','63568 Kaley Highway Suite 607',2,'66220'),(3,'Cordelia Huel','+14347723261','xnader@example.org','MC','Iowa','Port Elissaport','63568 Kaley Highway Suite 607',3,'66220'),(4,'Prof. Brayan Carter','+17549126776','mueller.mark@example.com','BN','Georgia','Stoltenbergview','24302 Osinski Hill',4,'93311-9079'),(5,'Prof. Brayan Carter','+17549126776','mueller.mark@example.com','BN','Georgia','Stoltenbergview','24302 Osinski Hill',5,'93311-9079'),(6,'Retta Ruecker','+19563174509','cali.schneider@example.net','PW','Arizona','Bonniehaven','83712 Tromp Rue',6,'00339'),(7,'Retta Ruecker','+19563174509','cali.schneider@example.net','PW','Arizona','Bonniehaven','83712 Tromp Rue',7,'00339'),(8,'Cordelia Huel','+14347723261','xnader@example.org','MC','Iowa','Port Elissaport','63568 Kaley Highway Suite 607',8,'66220'),(9,'Cordelia Huel','+14347723261','xnader@example.org','MC','Iowa','Port Elissaport','63568 Kaley Highway Suite 607',9,'66220'),(10,'Prof. Brayan Carter','+17549126776','mueller.mark@example.com','BN','Georgia','Stoltenbergview','24302 Osinski Hill',10,'93311-9079'),(11,'Prof. Brayan Carter','+17549126776','mueller.mark@example.com','BN','Georgia','Stoltenbergview','24302 Osinski Hill',11,'93311-9079'),(12,'Prof. Brayan Carter','+17549126776','mueller.mark@example.com','BN','Georgia','Stoltenbergview','24302 Osinski Hill',12,'93311-9079'),(13,'Prof. Brayan Carter','+17549126776','mueller.mark@example.com','BN','Georgia','Stoltenbergview','24302 Osinski Hill',13,'93311-9079'),(14,'Prof. Brayan Carter','+17549126776','mueller.mark@example.com','BN','Georgia','Stoltenbergview','24302 Osinski Hill',14,'93311-9079'),(15,'Roscoe Fahey','+16503760167','ryan.jarret@example.com','RU','New York','Boyletown','58277 Mabel Valleys',15,'55850-9592'),(16,'Roscoe Fahey','+16503760167','ryan.jarret@example.com','RU','New York','Boyletown','58277 Mabel Valleys',16,'55850-9592'),(17,'Retta Ruecker','+19563174509','cali.schneider@example.net','PW','Arizona','Bonniehaven','83712 Tromp Rue',17,'00339'),(18,'Retta Ruecker','+19563174509','cali.schneider@example.net','PW','Arizona','Bonniehaven','83712 Tromp Rue',18,'00339'),(19,'Cordia Yundt','+12814754832','customer@botble.com','MV','Kentucky','Lake Kellymouth','5917 Jessyca Pass Apt. 885',19,'35116-9024'),(20,'Cordia Yundt','+12814754832','customer@botble.com','MV','Kentucky','Lake Kellymouth','5917 Jessyca Pass Apt. 885',20,'35116-9024'),(21,'Cordia Yundt','+12814754832','customer@botble.com','MV','Kentucky','Lake Kellymouth','5917 Jessyca Pass Apt. 885',21,'35116-9024'),(22,'Cordia Yundt','+12814754832','customer@botble.com','MV','Kentucky','Lake Kellymouth','5917 Jessyca Pass Apt. 885',22,'35116-9024'),(23,'Roscoe Fahey','+16503760167','ryan.jarret@example.com','RU','New York','Boyletown','58277 Mabel Valleys',23,'55850-9592'),(24,'Roscoe Fahey','+16503760167','ryan.jarret@example.com','RU','New York','Boyletown','58277 Mabel Valleys',24,'55850-9592'),(25,'Roscoe Fahey','+16503760167','ryan.jarret@example.com','RU','New York','Boyletown','58277 Mabel Valleys',25,'55850-9592'),(26,'Jazmyn Welch','+12397347316','mdouglas@example.net','KW','Minnesota','Prohaskaville','64871 Moen Circle Suite 517',26,'28026'),(27,'Jazmyn Welch','+12397347316','mdouglas@example.net','KW','Minnesota','Prohaskaville','64871 Moen Circle Suite 517',27,'28026'),(28,'Jazmyn Welch','+12397347316','mdouglas@example.net','KW','Minnesota','Prohaskaville','64871 Moen Circle Suite 517',28,'28026'),(29,'Jazmyn Welch','+12397347316','mdouglas@example.net','KW','Minnesota','Prohaskaville','64871 Moen Circle Suite 517',29,'28026'),(30,'Jazmyn Welch','+12397347316','mdouglas@example.net','KW','Minnesota','Prohaskaville','64871 Moen Circle Suite 517',30,'28026'),(31,'Jazmyn Welch','+12397347316','mdouglas@example.net','KW','Minnesota','Prohaskaville','64871 Moen Circle Suite 517',31,'28026'),(32,'Jazmyn Welch','+12397347316','mdouglas@example.net','KW','Minnesota','Prohaskaville','64871 Moen Circle Suite 517',32,'28026'),(33,'Cordia Yundt','+12814754832','customer@botble.com','MV','Kentucky','Lake Kellymouth','5917 Jessyca Pass Apt. 885',33,'35116-9024'),(34,'Cordia Yundt','+12814754832','customer@botble.com','MV','Kentucky','Lake Kellymouth','5917 Jessyca Pass Apt. 885',34,'35116-9024'),(35,'Cordia Yundt','+12814754832','customer@botble.com','MV','Kentucky','Lake Kellymouth','5917 Jessyca Pass Apt. 885',35,'35116-9024'),(36,'Cordia Yundt','+12814754832','customer@botble.com','MV','Kentucky','Lake Kellymouth','5917 Jessyca Pass Apt. 885',36,'35116-9024'),(37,'Jazmyn Welch','+12397347316','mdouglas@example.net','KW','Minnesota','Prohaskaville','64871 Moen Circle Suite 517',37,'28026'),(38,'Jazmyn Welch','+12397347316','mdouglas@example.net','KW','Minnesota','Prohaskaville','64871 Moen Circle Suite 517',38,'28026'),(39,'Jazmyn Welch','+12397347316','mdouglas@example.net','KW','Minnesota','Prohaskaville','64871 Moen Circle Suite 517',39,'28026'),(40,'Cordelia Huel','+14347723261','xnader@example.org','MC','Iowa','Port Elissaport','63568 Kaley Highway Suite 607',40,'66220'),(41,'Cordelia Huel','+14347723261','xnader@example.org','MC','Iowa','Port Elissaport','63568 Kaley Highway Suite 607',41,'66220'),(42,'Cordelia Huel','+14347723261','xnader@example.org','MC','Iowa','Port Elissaport','63568 Kaley Highway Suite 607',42,'66220'),(43,'Jazmyn Welch','+12397347316','mdouglas@example.net','KW','Minnesota','Prohaskaville','64871 Moen Circle Suite 517',43,'28026'),(44,'Jazmyn Welch','+12397347316','mdouglas@example.net','KW','Minnesota','Prohaskaville','64871 Moen Circle Suite 517',44,'28026');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2022-05-15 21:25:43','2022-05-15 21:25:43'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2022-05-15 21:25:43','2022-05-15 21:25:43'),(3,'confirm_payment','Payment was confirmed (amount $1,670.90) by %user_name%',0,1,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(6,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2022-05-17 13:25:43','2022-05-17 13:25:43'),(7,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2022-05-17 13:25:43','2022-05-17 13:25:43'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2022-05-05 21:25:43','2022-05-05 21:25:43'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2022-05-05 21:25:43','2022-05-05 21:25:43'),(11,'confirm_payment','Payment was confirmed (amount $1,618.20) by %user_name%',0,3,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(12,'create_shipment','Created shipment for order',0,3,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2022-05-14 13:25:43','2022-05-14 13:25:43'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2022-05-14 13:25:43','2022-05-14 13:25:43'),(15,'confirm_payment','Payment was confirmed (amount $1,152.80) by %user_name%',0,4,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(17,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2022-05-08 05:25:43','2022-05-08 05:25:43'),(18,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2022-05-08 05:25:43','2022-05-08 05:25:43'),(19,'confirm_payment','Payment was confirmed (amount $3,065.90) by %user_name%',0,5,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(20,'create_shipment','Created shipment for order',0,5,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(21,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2022-05-10 09:25:43','2022-05-10 09:25:43'),(22,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2022-05-10 09:25:43','2022-05-10 09:25:43'),(23,'confirm_payment','Payment was confirmed (amount $3,999.00) by %user_name%',0,6,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(24,'create_shipment','Created shipment for order',0,6,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(25,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2022-05-19 09:25:43','2022-05-19 09:25:43'),(26,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2022-05-19 09:25:43','2022-05-19 09:25:43'),(27,'create_shipment','Created shipment for order',0,7,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(28,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2022-05-06 17:25:44','2022-05-06 17:25:44'),(29,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2022-05-06 17:25:44','2022-05-06 17:25:44'),(30,'confirm_payment','Payment was confirmed (amount $2,684.30) by %user_name%',0,8,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(31,'create_shipment','Created shipment for order',0,8,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(32,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2022-05-08 03:25:44','2022-05-08 03:25:44'),(33,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2022-05-08 03:25:44','2022-05-08 03:25:44'),(34,'create_shipment','Created shipment for order',0,9,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(35,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2022-05-16 21:25:44','2022-05-16 21:25:44'),(36,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2022-05-16 21:25:44','2022-05-16 21:25:44'),(37,'confirm_payment','Payment was confirmed (amount $248.78) by %user_name%',0,10,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(38,'create_shipment','Created shipment for order',0,10,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(39,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(40,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2022-05-16 21:25:44','2022-05-16 21:25:44'),(41,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2022-05-16 21:25:44','2022-05-16 21:25:44'),(42,'create_shipment','Created shipment for order',0,11,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(43,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(44,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2022-05-11 13:25:44','2022-05-11 13:25:44'),(45,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2022-05-11 13:25:44','2022-05-11 13:25:44'),(46,'create_shipment','Created shipment for order',0,12,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(47,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(48,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2022-05-19 15:25:44','2022-05-19 15:25:44'),(49,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2022-05-19 15:25:44','2022-05-19 15:25:44'),(50,'create_shipment','Created shipment for order',0,13,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(51,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(52,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2022-05-17 03:25:44','2022-05-17 03:25:44'),(53,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2022-05-17 03:25:44','2022-05-17 03:25:44'),(54,'create_shipment','Created shipment for order',0,14,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(55,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2022-05-19 17:25:44','2022-05-19 17:25:44'),(56,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2022-05-19 17:25:44','2022-05-19 17:25:44'),(57,'confirm_payment','Payment was confirmed (amount $1,509.90) by %user_name%',0,15,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(58,'create_shipment','Created shipment for order',0,15,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(59,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2022-05-18 13:25:44','2022-05-18 13:25:44'),(60,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2022-05-18 13:25:44','2022-05-18 13:25:44'),(61,'confirm_payment','Payment was confirmed (amount $620.40) by %user_name%',0,16,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(62,'create_shipment','Created shipment for order',0,16,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(63,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2022-05-13 07:25:44','2022-05-13 07:25:44'),(64,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2022-05-13 07:25:44','2022-05-13 07:25:44'),(65,'create_shipment','Created shipment for order',0,17,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(66,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2022-05-17 15:25:44','2022-05-17 15:25:44'),(67,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2022-05-17 15:25:44','2022-05-17 15:25:44'),(68,'confirm_payment','Payment was confirmed (amount $3,673.50) by %user_name%',0,18,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(69,'create_shipment','Created shipment for order',0,18,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(70,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2022-05-13 21:25:44','2022-05-13 21:25:44'),(71,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2022-05-13 21:25:44','2022-05-13 21:25:44'),(72,'confirm_payment','Payment was confirmed (amount $1,246.30) by %user_name%',0,19,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(73,'create_shipment','Created shipment for order',0,19,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(74,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(75,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2022-05-14 21:25:44','2022-05-14 21:25:44'),(76,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2022-05-14 21:25:44','2022-05-14 21:25:44'),(77,'create_shipment','Created shipment for order',0,20,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(78,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2022-05-16 07:25:44','2022-05-16 07:25:44'),(79,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2022-05-16 07:25:44','2022-05-16 07:25:44'),(80,'confirm_payment','Payment was confirmed (amount $4,758.50) by %user_name%',0,21,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(81,'create_shipment','Created shipment for order',0,21,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(82,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,21,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(83,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2022-05-16 07:25:44','2022-05-16 07:25:44'),(84,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2022-05-16 07:25:44','2022-05-16 07:25:44'),(85,'confirm_payment','Payment was confirmed (amount $1,771.10) by %user_name%',0,22,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(86,'create_shipment','Created shipment for order',0,22,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(87,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(88,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2022-05-13 09:25:44','2022-05-13 09:25:44'),(89,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2022-05-13 09:25:44','2022-05-13 09:25:44'),(90,'confirm_payment','Payment was confirmed (amount $2,678.30) by %user_name%',0,23,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(91,'create_shipment','Created shipment for order',0,23,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(92,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2022-05-16 17:25:44','2022-05-16 17:25:44'),(93,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2022-05-16 17:25:44','2022-05-16 17:25:44'),(94,'confirm_payment','Payment was confirmed (amount $1,670.90) by %user_name%',0,24,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(95,'create_shipment','Created shipment for order',0,24,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(96,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2022-05-13 09:25:44','2022-05-13 09:25:44'),(97,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2022-05-13 09:25:44','2022-05-13 09:25:44'),(98,'confirm_payment','Payment was confirmed (amount $3,248.80) by %user_name%',0,25,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(99,'create_shipment','Created shipment for order',0,25,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(100,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2022-05-20 03:25:44','2022-05-20 03:25:44'),(101,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2022-05-20 03:25:44','2022-05-20 03:25:44'),(102,'confirm_payment','Payment was confirmed (amount $1,174.80) by %user_name%',0,26,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(103,'create_shipment','Created shipment for order',0,26,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(104,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2022-05-20 03:25:44','2022-05-20 03:25:44'),(105,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2022-05-20 03:25:44','2022-05-20 03:25:44'),(106,'confirm_payment','Payment was confirmed (amount $1,624.40) by %user_name%',0,27,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(107,'create_shipment','Created shipment for order',0,27,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(108,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2022-05-17 21:25:44','2022-05-17 21:25:44'),(109,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2022-05-17 21:25:44','2022-05-17 21:25:44'),(110,'confirm_payment','Payment was confirmed (amount $1,853.80) by %user_name%',0,28,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(111,'create_shipment','Created shipment for order',0,28,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(112,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2022-05-15 13:25:44','2022-05-15 13:25:44'),(113,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2022-05-15 13:25:44','2022-05-15 13:25:44'),(114,'confirm_payment','Payment was confirmed (amount $1,315.60) by %user_name%',0,29,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(115,'create_shipment','Created shipment for order',0,29,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(116,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2022-05-16 21:25:44','2022-05-16 21:25:44'),(117,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2022-05-16 21:25:44','2022-05-16 21:25:44'),(118,'confirm_payment','Payment was confirmed (amount $1,049.40) by %user_name%',0,30,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(119,'create_shipment','Created shipment for order',0,30,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(120,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(121,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2022-05-18 13:25:44','2022-05-18 13:25:44'),(122,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2022-05-18 13:25:44','2022-05-18 13:25:44'),(123,'create_shipment','Created shipment for order',0,31,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(124,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2022-05-17 09:25:44','2022-05-17 09:25:44'),(125,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2022-05-17 09:25:44','2022-05-17 09:25:44'),(126,'confirm_payment','Payment was confirmed (amount $1,255.80) by %user_name%',0,32,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(127,'create_shipment','Created shipment for order',0,32,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(128,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(129,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2022-05-18 21:25:44','2022-05-18 21:25:44'),(130,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2022-05-18 21:25:44','2022-05-18 21:25:44'),(131,'confirm_payment','Payment was confirmed (amount $559.90) by %user_name%',0,33,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(132,'create_shipment','Created shipment for order',0,33,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(133,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(134,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2022-05-18 21:25:44','2022-05-18 21:25:44'),(135,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2022-05-18 21:25:44','2022-05-18 21:25:44'),(136,'confirm_payment','Payment was confirmed (amount $3,248.80) by %user_name%',0,34,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(137,'create_shipment','Created shipment for order',0,34,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(138,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2022-05-19 15:25:44','2022-05-19 15:25:44'),(139,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2022-05-19 15:25:44','2022-05-19 15:25:44'),(140,'create_shipment','Created shipment for order',0,35,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(141,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(142,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2022-05-18 09:25:44','2022-05-18 09:25:44'),(143,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2022-05-18 09:25:44','2022-05-18 09:25:44'),(144,'create_shipment','Created shipment for order',0,36,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(145,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2022-05-18 13:25:44','2022-05-18 13:25:44'),(146,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2022-05-18 13:25:44','2022-05-18 13:25:44'),(147,'create_shipment','Created shipment for order',0,37,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(148,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2022-05-18 05:25:44','2022-05-18 05:25:44'),(149,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2022-05-18 05:25:44','2022-05-18 05:25:44'),(150,'create_shipment','Created shipment for order',0,38,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(151,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2022-05-19 05:25:44','2022-05-19 05:25:44'),(152,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2022-05-19 05:25:44','2022-05-19 05:25:44'),(153,'confirm_payment','Payment was confirmed (amount $2,123.10) by %user_name%',0,39,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(154,'create_shipment','Created shipment for order',0,39,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(155,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(156,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2022-05-18 09:25:45','2022-05-18 09:25:45'),(157,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2022-05-18 09:25:45','2022-05-18 09:25:45'),(158,'create_shipment','Created shipment for order',0,40,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(159,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(160,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2022-05-18 15:25:45','2022-05-18 15:25:45'),(161,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2022-05-18 15:25:45','2022-05-18 15:25:45'),(162,'confirm_payment','Payment was confirmed (amount $2,200.80) by %user_name%',0,41,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(163,'create_shipment','Created shipment for order',0,41,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(164,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(165,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2022-05-19 21:25:45','2022-05-19 21:25:45'),(166,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2022-05-19 21:25:45','2022-05-19 21:25:45'),(167,'confirm_payment','Payment was confirmed (amount $6,529.00) by %user_name%',0,42,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(168,'create_shipment','Created shipment for order',0,42,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(169,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2022-05-20 09:25:45','2022-05-20 09:25:45'),(170,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2022-05-20 09:25:45','2022-05-20 09:25:45'),(171,'confirm_payment','Payment was confirmed (amount $2,152.30) by %user_name%',0,43,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(172,'create_shipment','Created shipment for order',0,43,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(173,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2022-05-20 03:25:45','2022-05-20 03:25:45'),(174,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2022-05-20 03:25:45','2022-05-20 03:25:45'),(175,'confirm_payment','Payment was confirmed (amount $1,100.40) by %user_name%',0,44,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(176,'create_shipment','Created shipment for order',0,44,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(177,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,44,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(178,'update_status','Order confirmed by %user_name%',0,1,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(179,'update_status','Order confirmed by %user_name%',0,10,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(180,'update_status','Order confirmed by %user_name%',0,19,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(181,'update_status','Order confirmed by %user_name%',0,21,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(182,'update_status','Order confirmed by %user_name%',0,22,NULL,'2022-05-20 21:25:46','2022-05-20 21:25:46'),(183,'update_status','Order confirmed by %user_name%',0,30,NULL,'2022-05-20 21:25:46','2022-05-20 21:25:46'),(184,'update_status','Order confirmed by %user_name%',0,32,NULL,'2022-05-20 21:25:46','2022-05-20 21:25:46'),(185,'update_status','Order confirmed by %user_name%',0,33,NULL,'2022-05-20 21:25:46','2022-05-20 21:25:46'),(186,'update_status','Order confirmed by %user_name%',0,39,NULL,'2022-05-20 21:25:46','2022-05-20 21:25:46'),(187,'update_status','Order confirmed by %user_name%',0,41,NULL,'2022-05-20 21:25:46','2022-05-20 21:25:46'),(188,'update_status','Order confirmed by %user_name%',0,44,NULL,'2022-05-20 21:25:47','2022-05-20 21:25:47');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,539.00,53.90,'[]',51,'EPSION Plaster Printer',1767.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(2,2,3,564.00,56.40,'[]',55,'B&O Play Mini Bluetooth Speaker',2109.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(3,3,3,522.00,52.20,'[]',76,'Baxter Care Hair Kit For Bearded Mens',1689.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(4,4,1,1048.00,104.80,'[]',69,'NYX Beauty Couton Pallete Makeup 12',827.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(5,5,3,989.00,98.90,'[]',73,'NYX Beauty Couton Pallete Makeup 12',1668.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(6,6,3,719.00,71.90,'[]',37,'Smart Watch External',2265.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(7,6,3,571.00,57.10,'[]',62,'Apple MacBook Air Retina 12-Inch Laptop',1833.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(8,7,2,598.00,59.80,'[]',63,'Samsung Gear VR Virtual Reality Headset',1102.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(9,7,1,598.00,59.80,'[]',66,'Samsung Gear VR Virtual Reality Headset',551.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(10,8,3,719.00,71.90,'[]',36,'Smart Watch External',2265.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(11,8,1,414.00,41.40,'[]',38,'Nikon HD camera',776.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(12,9,3,564.00,56.40,'[]',55,'B&O Play Mini Bluetooth Speaker',2109.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(13,10,3,80.25,8.03,'[]',25,'Dual Camera 20MP',1635.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(14,11,2,524.00,52.40,'[]',43,'Samsung Smart Phone',1568.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(15,11,3,1011.00,101.10,'[]',68,'Aveeno Moisturizing Body Shower 450ml',1842.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(16,12,1,522.00,52.20,'[]',75,'Baxter Care Hair Kit For Bearded Mens',563.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(17,13,2,20.00,2.00,'[]',28,'Beat Headphone',1636.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(18,13,3,598.00,59.80,'[]',65,'Samsung Gear VR Virtual Reality Headset',1653.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(19,14,1,1133.00,113.30,'[]',47,'Herschel Leather Duffle Bag In Brown Color',855.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(20,15,2,719.00,71.90,'[]',36,'Smart Watch External',1510.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(21,16,1,564.00,56.40,'[]',56,'B&O Play Mini Bluetooth Speaker',703.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(22,17,1,719.00,71.90,'[]',35,'Smart Watch External',755.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(23,17,3,520.00,52.00,'[]',59,'Apple MacBook Air Retina 13.3-Inch Laptop',1647.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(24,18,3,1185.00,118.50,'[]',42,'Smart Televisions',2163.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(25,19,1,1133.00,113.30,'[]',47,'Herschel Leather Duffle Bag In Brown Color',855.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(26,20,1,1048.00,104.80,'[]',70,'NYX Beauty Couton Pallete Makeup 12',827.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(27,20,3,1048.00,104.80,'[]',71,'NYX Beauty Couton Pallete Makeup 12',2481.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(28,20,3,522.00,52.20,'[]',75,'Baxter Care Hair Kit For Bearded Mens',1689.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(29,21,3,524.00,52.40,'[]',43,'Samsung Smart Phone',2352.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(30,21,3,1011.00,101.10,'[]',68,'Aveeno Moisturizing Body Shower 450ml',1842.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(31,22,1,520.00,52.00,'[]',60,'Apple MacBook Air Retina 13.3-Inch Laptop',549.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(32,22,2,571.00,57.10,'[]',62,'Apple MacBook Air Retina 12-Inch Laptop',1222.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(33,23,2,524.00,52.40,'[]',45,'Samsung Smart Phone',1568.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(34,23,3,509.00,50.90,'[]',54,'Sound Intone I65 Earphone White Version',2094.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(35,24,3,539.00,53.90,'[]',51,'EPSION Plaster Printer',1767.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(36,25,3,1048.00,104.80,'[]',70,'NYX Beauty Couton Pallete Makeup 12',2481.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(37,26,1,548.00,54.80,'[]',40,'Audio Equipment',724.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(38,26,1,520.00,52.00,'[]',59,'Apple MacBook Air Retina 13.3-Inch Laptop',549.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(39,27,3,524.00,52.40,'[]',45,'Samsung Smart Phone',2352.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(40,28,3,598.00,59.80,'[]',66,'Samsung Gear VR Virtual Reality Headset',1653.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(41,29,1,598.00,59.80,'[]',64,'Samsung Gear VR Virtual Reality Headset',551.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(42,29,1,598.00,59.80,'[]',66,'Samsung Gear VR Virtual Reality Headset',551.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(43,30,1,954.00,95.40,'[]',74,'MVMTH Classical Leather Watch In Black',725.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(44,31,2,40.50,4.05,'[]',27,'Smart Watches',1642.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(45,32,2,598.00,59.80,'[]',63,'Samsung Gear VR Virtual Reality Headset',1102.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(46,33,1,509.00,50.90,'[]',54,'Sound Intone I65 Earphone White Version',698.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(47,34,3,1048.00,104.80,'[]',71,'NYX Beauty Couton Pallete Makeup 12',2481.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(48,35,2,548.00,54.80,'[]',39,'Audio Equipment',1448.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(49,35,2,539.00,53.90,'[]',51,'EPSION Plaster Printer',1178.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(50,36,1,989.00,98.90,'[]',72,'NYX Beauty Couton Pallete Makeup 12',556.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(51,37,2,719.00,71.90,'[]',36,'Smart Watch External',1510.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(52,38,3,564.00,56.40,'[]',55,'B&O Play Mini Bluetooth Speaker',2109.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(53,39,2,1011.00,101.10,'[]',68,'Aveeno Moisturizing Body Shower 450ml',1228.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(54,40,2,719.00,71.90,'[]',33,'Smart Watch External',1510.00,0,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(55,41,2,1048.00,104.80,'[]',70,'NYX Beauty Couton Pallete Makeup 12',1654.00,0,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(56,42,3,584.00,58.40,'[]',32,'Red & Black Headphone',1725.00,0,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(57,42,3,719.00,71.90,'[]',33,'Smart Watch External',2265.00,0,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(58,42,1,719.00,71.90,'[]',36,'Smart Watch External',755.00,0,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(59,42,3,548.00,54.80,'[]',39,'Audio Equipment',2172.00,0,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(60,43,1,584.00,58.40,'[]',32,'Red & Black Headphone',575.00,0,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(61,43,2,719.00,71.90,'[]',36,'Smart Watch External',1510.00,0,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(62,44,2,524.00,52.40,'[]',45,'Samsung Smart Phone',1568.00,0,'2022-05-20 21:25:45','2022-05-20 21:25:45');
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '1',
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,4,'1','default','completed',1670.90,53.90,0.00,NULL,NULL,0.00,1617.00,1,NULL,1,'rorLwoBBz0PFHiLf41pRr8UM8t9jp',1,'2022-05-15 21:25:43','2022-05-20 21:25:43',2),(2,4,'1','default','pending',1748.40,56.40,0.00,NULL,NULL,0.00,1692.00,1,NULL,1,'kcIgZjREc8IqGoeOu41jRysj0hB7d',2,'2022-05-17 13:25:43','2022-05-20 21:25:43',1),(3,4,'1','default','pending',1618.20,52.20,0.00,NULL,NULL,0.00,1566.00,1,NULL,1,'VaKveSTTv9ak3EjZkeeLuMFjIfuFg',3,'2022-05-05 21:25:43','2022-05-20 21:25:43',4),(4,5,'1','default','pending',1152.80,104.80,0.00,NULL,NULL,0.00,1048.00,1,NULL,1,'sTgULLMZ6XhyXukgVmXFShisVvInd',4,'2022-05-14 13:25:43','2022-05-20 21:25:43',4),(5,5,'1','default','pending',3065.90,98.90,0.00,NULL,NULL,0.00,2967.00,1,NULL,1,'wubBjnkjgftayEYEur2ANcdcDzPMT',5,'2022-05-08 05:25:43','2022-05-20 21:25:43',3),(6,7,'1','default','pending',3999.00,129.00,0.00,NULL,NULL,0.00,3870.00,1,NULL,1,'kaFUjmNlzSctiV4Jc3Hk1VUmWNqgH',6,'2022-05-10 09:25:43','2022-05-20 21:25:43',2),(7,7,'1','default','pending',1913.60,119.60,0.00,NULL,NULL,0.00,1794.00,1,NULL,1,'M0GNuplErOV4jRKbglqQggcF6plDG',7,'2022-05-19 09:25:43','2022-05-20 21:25:43',1),(8,4,'1','default','pending',2684.30,113.30,0.00,NULL,NULL,0.00,2571.00,1,NULL,1,'DlemR1JzluAxm2bBS4cVBq6tlSvjA',8,'2022-05-06 17:25:44','2022-05-20 21:25:44',2),(9,4,'1','default','pending',1748.40,56.40,0.00,NULL,NULL,0.00,1692.00,1,NULL,1,'btwaBVtrM4IxnMztgYV0p4EaRVIQT',9,'2022-05-08 03:25:44','2022-05-20 21:25:44',1),(10,5,'1','default','completed',248.78,8.03,0.00,NULL,NULL,0.00,240.75,1,NULL,1,'vu6mMq2SwQDJv1b4X9ZzzBt3RyYeU',10,'2022-05-16 21:25:44','2022-05-20 21:25:44',1),(11,5,'1','default','completed',4234.50,153.50,0.00,NULL,NULL,0.00,4081.00,1,NULL,1,'aKWIDSxwxoJFKgFwDPwKzYUWsJAnb',11,'2022-05-16 21:25:44','2022-05-20 21:25:44',3),(12,5,'1','default','completed',574.20,52.20,0.00,NULL,NULL,0.00,522.00,1,NULL,1,'D9FcETlLc3FjSvuz4DfzpDu19prVW',12,'2022-05-11 13:25:44','2022-05-20 21:25:44',4),(13,5,'1','default','completed',1895.80,61.80,0.00,NULL,NULL,0.00,1834.00,1,NULL,1,'cqQbwW0zzANoigwpFBlur1ZXsPudp',13,'2022-05-19 15:25:44','2022-05-20 21:25:44',1),(14,5,'1','default','pending',1246.30,113.30,0.00,NULL,NULL,0.00,1133.00,1,NULL,1,'uN0chYZGsH5mIirOSYzxBYSkds33H',14,'2022-05-17 03:25:44','2022-05-20 21:25:44',2),(15,9,'1','default','pending',1509.90,71.90,0.00,NULL,NULL,0.00,1438.00,1,NULL,1,'MQQL6yKjI2dPmytJZxdU4xxdSKHVy',15,'2022-05-19 17:25:44','2022-05-20 21:25:44',2),(16,9,'1','default','pending',620.40,56.40,0.00,NULL,NULL,0.00,564.00,1,NULL,1,'2Im3mHWrwSbgLJJ5v3OPBTEmQaaB9',16,'2022-05-18 13:25:44','2022-05-20 21:25:44',1),(17,7,'1','default','pending',2402.90,123.90,0.00,NULL,NULL,0.00,2279.00,1,NULL,1,'ypCb4Iqf8w6SoniwlCVpDMZMvd9pB',17,'2022-05-13 07:25:44','2022-05-20 21:25:44',2),(18,7,'1','default','pending',3673.50,118.50,0.00,NULL,NULL,0.00,3555.00,1,NULL,1,'yZ2bX7a44yQL64KpTmB8OnNtOQJtv',18,'2022-05-17 15:25:44','2022-05-20 21:25:44',3),(19,1,'1','default','completed',1246.30,113.30,0.00,NULL,NULL,0.00,1133.00,1,NULL,1,'S4c3pEiOyMLazjQb3q8YZt6FA4Ki3',19,'2022-05-13 21:25:44','2022-05-20 21:25:44',2),(20,1,'1','default','pending',6019.80,261.80,0.00,NULL,NULL,0.00,5758.00,1,NULL,1,'rk7pySVYISxL5dEBjwTBofhkncCNo',20,'2022-05-14 21:25:44','2022-05-20 21:25:44',4),(21,1,'1','default','completed',4758.50,153.50,0.00,NULL,NULL,0.00,4605.00,1,NULL,1,'g7sJenUtAxz8C9GgoqI0cNUhPvBZn',21,'2022-05-16 07:25:44','2022-05-20 21:25:44',3),(22,1,'1','default','completed',1771.10,109.10,0.00,NULL,NULL,0.00,1662.00,1,NULL,1,'jb7pJnc5qNn4XNPxGQdcVsBPPW8I8',22,'2022-05-16 07:25:44','2022-05-20 21:25:44',2),(23,9,'1','default','pending',2678.30,103.30,0.00,NULL,NULL,0.00,2575.00,1,NULL,1,'h3mzVk7JhZT7VAmDNlKuvLNXyTEq3',23,'2022-05-13 09:25:44','2022-05-20 21:25:44',3),(24,9,'1','default','pending',1670.90,53.90,0.00,NULL,NULL,0.00,1617.00,1,NULL,1,'XxmLWNkcaT4gGvEuRFG2EvIMuNC8K',24,'2022-05-16 17:25:44','2022-05-20 21:25:44',2),(25,9,'1','default','pending',3248.80,104.80,0.00,NULL,NULL,0.00,3144.00,1,NULL,1,'8UJ0mc75JLuc1YNviTwmv131IcVzt',25,'2022-05-13 09:25:44','2022-05-20 21:25:44',4),(26,8,'1','default','pending',1174.80,106.80,0.00,NULL,NULL,0.00,1068.00,1,NULL,1,'QEx54cblJ6A6fKZxlnTUSCPQA3N1H',26,'2022-05-20 03:25:44','2022-05-20 21:25:44',2),(27,8,'1','default','pending',1624.40,52.40,0.00,NULL,NULL,0.00,1572.00,1,NULL,1,'LWU0Su1uxgyWmtpUtCBa7xPWwrFmJ',27,'2022-05-20 03:25:44','2022-05-20 21:25:44',3),(28,8,'1','default','pending',1853.80,59.80,0.00,NULL,NULL,0.00,1794.00,1,NULL,1,'CP0vrzwSwkYx3i8REdmOBThknIPvh',28,'2022-05-17 21:25:44','2022-05-20 21:25:44',1),(29,8,'1','default','pending',1315.60,119.60,0.00,NULL,NULL,0.00,1196.00,1,NULL,1,'lURnQIwVkV8ujD63QBS6PB4eDJd6V',29,'2022-05-15 13:25:44','2022-05-20 21:25:44',1),(30,8,'1','default','completed',1049.40,95.40,0.00,NULL,NULL,0.00,954.00,1,NULL,1,'5gDnJ6NV6o7hWMTBgySiD4XQfz8DH',30,'2022-05-16 21:25:44','2022-05-20 21:25:44',2),(31,8,'1','default','pending',85.05,4.05,0.00,NULL,NULL,0.00,81.00,1,NULL,1,'zwIhDxTVxTXkHjxMBAfmzq1miMt4H',31,'2022-05-18 13:25:44','2022-05-20 21:25:44',4),(32,8,'1','default','completed',1255.80,59.80,0.00,NULL,NULL,0.00,1196.00,1,NULL,1,'bwgHrGIhkjwCScgBRk4Oa94mLmNEm',32,'2022-05-17 09:25:44','2022-05-20 21:25:44',1),(33,1,'1','default','completed',559.90,50.90,0.00,NULL,NULL,0.00,509.00,1,NULL,1,'JlTwTaC5V5lO2vlKmXr60E6gtqtI4',33,'2022-05-18 21:25:44','2022-05-20 21:25:44',3),(34,1,'1','default','pending',3248.80,104.80,0.00,NULL,NULL,0.00,3144.00,1,NULL,1,'37zK9owQvn8urvlt11VvHVrRI9j6H',34,'2022-05-18 21:25:44','2022-05-20 21:25:44',4),(35,1,'1','default','completed',2282.70,108.70,0.00,NULL,NULL,0.00,2174.00,1,NULL,1,'XEqlycPP9L9W6Zdj30e7WLEeOQkPR',35,'2022-05-19 15:25:44','2022-05-20 21:25:44',2),(36,1,'1','default','pending',1087.90,98.90,0.00,NULL,NULL,0.00,989.00,1,NULL,1,'whT5PiWnbMt4agDryLZXcJl3lvJR4',36,'2022-05-18 09:25:44','2022-05-20 21:25:44',3),(37,8,'1','default','pending',1509.90,71.90,0.00,NULL,NULL,0.00,1438.00,1,NULL,1,'oEO2srvJHT2pjXUdobrMOQyby5NrF',37,'2022-05-18 13:25:44','2022-05-20 21:25:44',2),(38,8,'1','default','pending',1748.40,56.40,0.00,NULL,NULL,0.00,1692.00,1,NULL,1,'KdbIC1uck9LMDMRlqthBHpPosGz2U',38,'2022-05-18 05:25:44','2022-05-20 21:25:44',1),(39,8,'1','default','completed',2123.10,101.10,0.00,NULL,NULL,0.00,2022.00,1,NULL,1,'18bDPDZFrKfHe40lGfRPuTR724mBR',39,'2022-05-19 05:25:44','2022-05-20 21:25:44',3),(40,4,'1','default','completed',1509.90,71.90,0.00,NULL,NULL,0.00,1438.00,1,NULL,1,'RnYHYGX7wNFg13GOCN3ID6sIc5VsM',40,'2022-05-18 09:25:45','2022-05-20 21:25:45',2),(41,4,'1','default','completed',2200.80,104.80,0.00,NULL,NULL,0.00,2096.00,1,NULL,1,'AxHGkTJdthwMzcxcdjSi6s7rnurP3',41,'2022-05-18 15:25:45','2022-05-20 21:25:45',4),(42,4,'1','default','pending',6529.00,257.00,0.00,NULL,NULL,0.00,6272.00,1,NULL,1,'W5Hvq3tlKR7FdDXcggsSQZXeO4KmY',42,'2022-05-19 21:25:45','2022-05-20 21:25:45',2),(43,8,'1','default','pending',2152.30,130.30,0.00,NULL,NULL,0.00,2022.00,1,NULL,1,'RPjrkVDU8uKfO9XT8WhSEqF3J0P7F',43,'2022-05-20 09:25:45','2022-05-20 21:25:45',2),(44,8,'1','default','completed',1100.40,52.40,0.00,NULL,NULL,0.00,1048.00,1,NULL,1,'qUyJbTCE2J4dQSujRQTJeS7hrfXRE',44,'2022-05-20 03:25:45','2022-05-20 21:25:45',3);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2022-05-20 21:25:00','2022-05-20 21:25:00',0),(2,'Size','size','text',1,1,1,'published',1,'2022-05-20 21:25:00','2022-05-20 21:25:00',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2022-05-20 21:25:00','2022-05-20 21:25:00'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2022-05-20 21:25:00','2022-05-20 21:25:00'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2022-05-20 21:25:00','2022-05-20 21:25:00'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2022-05-20 21:25:00','2022-05-20 21:25:00'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2022-05-20 21:25:00','2022-05-20 21:25:00'),(6,2,'S','s',NULL,NULL,1,1,'published','2022-05-20 21:25:00','2022-05-20 21:25:00'),(7,2,'M','m',NULL,NULL,0,2,'published','2022-05-20 21:25:00','2022-05-20 21:25:00'),(8,2,'L','l',NULL,NULL,0,3,'published','2022-05-20 21:25:00','2022-05-20 21:25:00'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2022-05-20 21:25:00','2022-05-20 21:25:00'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2022-05-20 21:25:00','2022-05-20 21:25:00');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(8,'Headphones',3,NULL,'published',4,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(9,'Videos games',3,NULL,'published',5,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(15,'Batteries',12,NULL,'published',2,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(20,'Laptop',18,NULL,'published',1,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(21,'Monitors',18,NULL,'published',2,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(23,'Networking',17,NULL,'published',1,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(27,'Accessories',23,NULL,'published',3,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2022-05-20 21:24:18','2022-05-20 21:24:18'),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2022-05-20 21:24:19','2022-05-20 21:24:19'),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2022-05-20 21:24:19','2022-05-20 21:24:19'),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2022-05-20 21:24:19','2022-05-20 21:24:19');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Khuyến mãi hấp dẫn',NULL),('vi',2,'Điện tử',NULL),('vi',3,'Điện tử tiêu dùng',NULL),('vi',4,'Thiết bị nghe nhìn',NULL),('vi',5,'TV & Videos',NULL),('vi',6,'Camera, Photos & Videos',NULL),('vi',7,'Điện thoại di động & Phụ kiện',NULL),('vi',8,'Tai nghe',NULL),('vi',9,'Trò chơi video',NULL),('vi',10,'Loa không dây',NULL),('vi',11,'Điện tử văn phòng',NULL),('vi',12,'Phụ kiện & Phụ tùng',NULL),('vi',13,'Digital Cables',NULL),('vi',14,'Audio & Video Cables',NULL),('vi',15,'Pin',NULL),('vi',16,'Quần áo',NULL),('vi',17,'Máy tính',NULL),('vi',18,'Máy tính & Công nghệ',NULL),('vi',19,'Máy tính & Máy tính bảng',NULL),('vi',20,'Máy tính xách tay',NULL),('vi',21,'Màn hình',NULL),('vi',22,'Linh kiện Máy tính',NULL),('vi',23,'Mạng máy tính',NULL),('vi',24,'Thiết bị lưu trữ',NULL),('vi',25,'Máy tính xách tay chơi game',NULL),('vi',26,'Thiết bị bảo mật',NULL),('vi',27,'Phụ kiện',NULL),('vi',28,'Đồ dùng làm bếp',NULL),('vi',29,'Sức khỏe & làm đẹp',NULL),('vi',30,'Trang sức & Đồng hồ',NULL),('vi',31,'Đồ chơi công nghệ',NULL),('vi',32,'Điện thoại',NULL),('vi',33,'Mẹ và bé',NULL),('vi',34,'Thể thao & ngoài trời',NULL),('vi',35,'Sách & Văn phòng',NULL),('vi',36,'Ô tô & Xe máy',NULL),('vi',37,'Cải tiến nhà cửa',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,9,1),(2,6,1),(3,15,1),(4,19,1),(5,37,2),(6,21,2),(7,17,2),(8,28,2),(9,32,3),(10,19,3),(11,2,3),(12,35,3),(13,31,4),(14,5,4),(15,33,4),(16,1,5),(17,30,5),(18,20,5),(19,24,5),(20,2,6),(21,5,6),(22,23,6),(23,31,6),(24,3,7),(25,29,7),(26,18,7),(27,25,7),(28,9,8),(29,36,8),(30,17,8),(31,22,8),(32,1,9),(33,21,9),(34,12,9),(35,31,9),(36,1,10),(37,13,10),(38,7,10),(39,20,10),(40,27,11),(41,34,11),(42,30,11),(43,22,11),(44,22,12),(45,16,12),(46,36,12),(47,33,12),(48,30,13),(49,13,13),(50,14,13),(51,28,13),(52,26,14),(53,10,14),(54,21,14),(55,13,15),(56,30,15),(57,24,15),(58,32,15),(59,22,16),(60,23,16),(61,33,16),(62,18,16),(63,1,17),(64,4,17),(65,35,17),(66,31,17),(67,12,18),(68,4,18),(69,21,18),(70,36,18),(71,17,19),(72,10,19),(73,26,19),(74,19,19),(75,14,20),(76,6,20),(77,1,20),(78,26,20),(79,14,21),(80,7,21),(81,29,21),(82,31,21),(83,30,22),(84,33,22),(85,10,22),(86,21,22),(87,30,23),(88,22,23),(89,4,23),(90,31,23);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2,1),(2,3,2),(3,2,3),(4,3,4),(5,3,5),(6,3,6),(7,3,7),(8,3,8),(9,2,9),(10,1,10),(11,3,11),(12,2,12),(13,3,13),(14,3,14),(15,3,15),(16,2,16),(17,2,17),(18,3,18),(19,3,19),(20,2,20),(21,1,21),(22,1,22),(23,2,23);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2022-05-20 21:24:19','2022-05-20 21:24:19',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2022-05-20 21:24:19','2022-05-20 21:24:19',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2022-05-20 21:24:19','2022-05-20 21:24:19',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,13),(2,1,2),(3,1,7),(4,1,12),(5,1,3),(6,1,16),(7,2,14),(8,2,3),(9,2,13),(10,2,5),(11,2,1),(12,2,18),(13,2,16),(14,3,10),(15,3,18),(16,3,9),(17,3,4),(18,3,12),(19,3,6),(20,4,19),(21,4,16),(22,4,18),(23,4,10),(24,4,9),(25,4,3),(26,4,2),(27,5,10),(28,5,18),(29,5,17),(30,5,20),(31,5,15),(32,5,3),(33,6,18),(34,6,14),(35,6,10),(36,6,3),(37,6,7),(38,6,9),(39,7,5),(40,7,8),(41,7,18),(42,7,9),(43,7,11),(44,7,15),(45,8,11),(46,8,20),(47,8,6),(48,8,5),(49,8,10),(50,8,16),(51,9,17),(52,9,8),(53,9,20),(54,9,6),(55,9,11),(56,9,10),(57,9,2),(58,10,17),(59,10,2),(60,10,4),(61,10,7),(62,10,18),(63,10,20),(64,11,20),(65,11,18),(66,11,15),(67,11,6),(68,11,19),(69,11,5),(70,12,1),(71,12,19),(72,12,10),(73,12,5),(74,12,7),(75,12,4),(76,12,20),(77,13,16),(78,13,9),(79,13,15),(80,13,20),(81,13,5),(82,14,12),(83,14,19),(84,14,8),(85,14,11),(86,14,10),(87,14,7),(88,14,20),(89,15,1),(90,15,14),(91,15,10),(92,15,3),(93,15,16),(94,15,12),(95,16,10),(96,16,20),(97,16,9),(98,16,13),(99,16,15),(100,16,14),(101,17,11),(102,17,14),(103,17,16),(104,17,2),(105,17,8),(106,17,18),(107,18,9),(108,18,3),(109,18,16),(110,18,6),(111,18,19),(112,18,17),(113,19,8),(114,19,10),(115,19,4),(116,19,5),(117,19,2),(118,19,11),(119,20,16),(120,20,6),(121,20,2),(122,20,13),(123,20,15),(124,20,19),(125,21,12),(126,21,8),(127,21,10),(128,21,6),(129,21,15),(130,21,4),(131,22,18),(132,22,12),(133,22,5),(134,22,9),(135,22,19),(136,22,6),(137,22,14),(138,23,4),(139,23,18),(140,23,9),(141,23,14),(142,23,11);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,6),(1,9),(1,12),(1,18),(2,15),(2,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2022-05-20 21:24:19','2022-05-20 21:24:19'),(2,'New','#00c9a7','published','2022-05-20 21:24:19','2022-05-20 21:24:19'),(3,'Sale','#fe9931','published','2022-05-20 21:24:19','2022-05-20 21:24:19');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,5),(1,6),(2,1),(2,6),(3,1),(3,5),(4,1),(4,3),(5,1),(5,6),(6,1),(6,3),(7,2),(7,6),(8,3),(8,5),(8,6),(9,2),(9,5),(10,5),(10,6),(11,2),(11,3),(11,4),(12,1),(13,2),(13,5),(13,6),(14,2),(14,4),(15,1),(15,4),(16,3),(16,6),(17,1),(17,2),(17,6),(18,1),(18,2),(18,5),(19,4),(19,5),(19,6),(20,2),(20,4),(21,1),(21,4),(22,3),(22,5),(23,2),(23,3),(23,4);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2022-05-20 21:25:06','2022-05-20 21:25:06'),(2,'Mobile',NULL,'published','2022-05-20 21:25:06','2022-05-20 21:25:06'),(3,'Iphone',NULL,'published','2022-05-20 21:25:06','2022-05-20 21:25:06'),(4,'Printer',NULL,'published','2022-05-20 21:25:06','2022-05-20 21:25:06'),(5,'Office',NULL,'published','2022-05-20 21:25:06','2022-05-20 21:25:06'),(6,'IT',NULL,'published','2022-05-20 21:25:06','2022-05-20 21:25:06');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
INSERT INTO `ec_product_tags_translations` VALUES ('vi',1,'Electronic'),('vi',2,'Mobile'),('vi',3,'Iphone'),('vi',4,'Printer'),('vi',5,'Office'),('vi',6,'IT');
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(2,6,1),(3,4,2),(4,6,2),(5,2,3),(6,9,3),(7,2,4),(8,6,4),(9,5,5),(10,9,5),(11,3,6),(12,6,6),(13,4,7),(14,10,7),(15,1,8),(16,6,8),(17,4,9),(18,10,9),(19,3,10),(20,6,10),(21,3,11),(22,9,11),(23,4,12),(24,9,12),(25,1,13),(26,10,13),(27,2,14),(28,6,14),(29,3,15),(30,8,15),(31,3,16),(32,10,16),(33,1,17),(34,8,17),(35,1,18),(36,10,18),(37,1,19),(38,10,19),(39,2,20),(40,10,20),(41,2,21),(42,10,21),(43,4,22),(44,6,22),(45,4,23),(46,9,23),(47,5,24),(48,6,24),(49,3,25),(50,8,25),(51,4,26),(52,6,26),(53,5,27),(54,7,27),(55,1,28),(56,7,28),(57,3,29),(58,7,29),(59,3,30),(60,10,30),(61,5,31),(62,9,31),(63,5,32),(64,7,32),(65,2,33),(66,8,33),(67,1,34),(68,6,34),(69,1,35),(70,7,35),(71,2,36),(72,10,36),(73,3,37),(74,7,37),(75,5,38),(76,7,38),(77,3,39),(78,6,39),(79,3,40),(80,7,40),(81,4,41),(82,10,41),(83,4,42),(84,6,42),(85,4,43),(86,10,43),(87,3,44),(88,7,44),(89,2,45),(90,8,45),(91,1,46),(92,6,46),(93,2,47),(94,7,47),(95,5,48),(96,7,48),(97,5,49),(98,6,49),(99,2,50),(100,10,50),(101,3,51),(102,8,51),(103,2,52),(104,6,52),(105,1,53),(106,10,53),(107,2,54),(108,6,54),(109,4,55),(110,9,55);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,1,0),(4,27,2,1),(5,28,3,1),(6,29,3,0),(7,30,3,0),(8,31,4,1),(9,32,4,0),(10,33,5,1),(11,34,5,0),(12,35,5,0),(13,36,5,0),(14,37,5,0),(15,38,6,1),(16,39,7,1),(17,40,7,0),(18,41,7,0),(19,42,8,1),(20,43,9,1),(21,44,9,0),(22,45,9,0),(23,46,10,1),(24,47,10,0),(25,48,11,1),(26,49,11,0),(27,50,11,0),(28,51,12,1),(29,52,13,1),(30,53,13,0),(31,54,13,0),(32,55,14,1),(33,56,14,0),(34,57,14,0),(35,58,15,1),(36,59,15,0),(37,60,15,0),(38,61,16,1),(39,62,16,0),(40,63,17,1),(41,64,17,0),(42,65,17,0),(43,66,17,0),(44,67,18,1),(45,68,18,0),(46,69,19,1),(47,70,19,0),(48,71,19,0),(49,72,20,1),(50,73,20,0),(51,74,21,1),(52,75,22,1),(53,76,22,0),(54,77,23,1),(55,78,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` int unsigned DEFAULT NULL,
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` int DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-149-A0',0,14,0,1,1,2,0,0,80.25,NULL,NULL,NULL,14.00,12.00,10.00,545.00,1,29419,'2022-05-20 21:24:56','2022-05-20 21:25:43','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-104-A0',0,13,0,1,1,1,0,0,40.5,NULL,NULL,NULL,20.00,14.00,10.00,821.00,1,25569,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-153-A0',0,14,0,1,1,2,0,0,20,NULL,NULL,NULL,10.00,15.00,12.00,818.00,1,131514,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(4,'Red & Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-131-A0',0,12,0,1,1,2,0,0,584,449.68,NULL,NULL,16.00,18.00,13.00,575.00,1,110766,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(5,'Smart Watch External','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-116-A0',0,10,0,1,1,4,0,0,719,NULL,NULL,NULL,18.00,19.00,16.00,755.00,1,106957,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-189-A0',0,17,0,1,1,7,0,0,414,NULL,NULL,NULL,10.00,13.00,14.00,776.00,1,193734,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-129-A0',0,16,0,1,1,6,0,0,548,NULL,NULL,NULL,11.00,14.00,15.00,724.00,1,157395,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-100-A0',0,10,0,1,1,1,0,0,1185,876.9,NULL,NULL,15.00,17.00,13.00,721.00,1,115253,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(9,'Samsung Smart Phone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-168-A0',0,18,0,1,1,6,0,0,524,NULL,NULL,NULL,17.00,15.00,19.00,784.00,1,139108,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-105-A0',0,14,0,1,0,7,0,0,1133,NULL,NULL,NULL,19.00,12.00,11.00,855.00,1,118225,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-151-A0',0,16,0,1,0,7,0,0,1296,NULL,NULL,NULL,16.00,15.00,20.00,672.00,1,146420,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-140-A0',0,10,0,1,0,1,0,0,539,485.1,NULL,NULL,17.00,13.00,17.00,589.00,1,69954,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(13,'Sound Intone I65 Earphone White Version','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-131-A0',0,16,0,1,0,5,0,0,509,NULL,NULL,NULL,13.00,10.00,19.00,698.00,1,120551,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(14,'B&O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-130-A0',0,10,0,1,0,7,0,0,564,NULL,NULL,NULL,14.00,20.00,12.00,703.00,1,83861,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-132-A0',0,16,0,1,0,7,0,0,520,NULL,NULL,NULL,17.00,15.00,20.00,549.00,1,128349,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-132-A0',0,14,0,1,0,7,0,0,571,473.93,NULL,NULL,12.00,11.00,14.00,611.00,1,153419,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(17,'Samsung Gear VR Virtual Reality Headset','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-184-A0',0,14,0,1,0,2,0,0,598,NULL,NULL,NULL,14.00,17.00,16.00,551.00,1,153142,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-164-A0',0,18,0,1,0,3,0,0,1011,NULL,NULL,NULL,10.00,15.00,18.00,614.00,1,64156,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-190-A0',0,16,0,1,0,6,0,0,1048,NULL,NULL,NULL,10.00,14.00,17.00,827.00,1,148247,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-191-A0',0,19,0,1,0,1,0,0,989,840.65,NULL,NULL,17.00,17.00,17.00,556.00,1,118438,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(21,'MVMTH Classical Leather Watch In Black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-155-A0',0,10,0,1,0,3,0,0,954,NULL,NULL,NULL,18.00,18.00,16.00,725.00,1,134520,'2022-05-20 21:24:57','2022-05-20 21:25:43','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-176-A0',0,12,0,1,0,4,0,0,522,NULL,NULL,NULL,17.00,10.00,15.00,563.00,1,52014,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-171-A0',0,16,0,1,0,5,0,0,516,NULL,NULL,NULL,12.00,11.00,10.00,712.00,1,30270,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(24,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-149-A0',0,14,0,1,0,2,1,0,80.25,NULL,NULL,NULL,14.00,12.00,10.00,545.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(25,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-149-A0-A1',0,14,0,1,0,2,1,0,80.25,NULL,NULL,NULL,14.00,12.00,10.00,545.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(26,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-149-A0-A2',0,14,0,1,0,2,1,0,80.25,NULL,NULL,NULL,14.00,12.00,10.00,545.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-104-A0',0,13,0,1,0,1,1,0,40.5,NULL,NULL,NULL,20.00,14.00,10.00,821.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(28,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-153-A0',0,14,0,1,0,2,1,0,20,NULL,NULL,NULL,10.00,15.00,12.00,818.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(29,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-153-A0-A1',0,14,0,1,0,2,1,0,20,NULL,NULL,NULL,10.00,15.00,12.00,818.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(30,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-153-A0-A2',0,14,0,1,0,2,1,0,20,NULL,NULL,NULL,10.00,15.00,12.00,818.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(31,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-131-A0',0,12,0,1,0,2,1,0,584,449.68,NULL,NULL,16.00,18.00,13.00,575.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(32,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','SW-131-A0-A1',0,12,0,1,0,2,1,0,584,473.04,NULL,NULL,16.00,18.00,13.00,575.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(33,'Smart Watch External',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-116-A0',0,10,0,1,0,4,1,0,719,NULL,NULL,NULL,18.00,19.00,16.00,755.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(34,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','SW-116-A0-A1',0,10,0,1,0,4,1,0,719,NULL,NULL,NULL,18.00,19.00,16.00,755.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(35,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','SW-116-A0-A2',0,10,0,1,0,4,1,0,719,NULL,NULL,NULL,18.00,19.00,16.00,755.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(36,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-3.jpg\"]','SW-116-A0-A3',0,10,0,1,0,4,1,0,719,NULL,NULL,NULL,18.00,19.00,16.00,755.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(37,'Smart Watch External',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-116-A0-A4',0,10,0,1,0,4,1,0,719,NULL,NULL,NULL,18.00,19.00,16.00,755.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(38,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-189-A0',0,17,0,1,0,7,1,0,414,NULL,NULL,NULL,10.00,13.00,14.00,776.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(39,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-129-A0',0,16,0,1,0,6,1,0,548,NULL,NULL,NULL,11.00,14.00,15.00,724.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(40,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-129-A0-A1',0,16,0,1,0,6,1,0,548,NULL,NULL,NULL,11.00,14.00,15.00,724.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(41,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-129-A0-A2',0,16,0,1,0,6,1,0,548,NULL,NULL,NULL,11.00,14.00,15.00,724.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(42,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-100-A0',0,10,0,1,0,1,1,0,1185,876.9,NULL,NULL,15.00,17.00,13.00,721.00,NULL,0,'2022-05-20 21:24:58','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(43,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-168-A0',0,18,0,1,0,6,1,0,524,NULL,NULL,NULL,17.00,15.00,19.00,784.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(44,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','SW-168-A0-A1',0,18,0,1,0,6,1,0,524,NULL,NULL,NULL,17.00,15.00,19.00,784.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(45,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9-2.jpg\"]','SW-168-A0-A2',0,18,0,1,0,6,1,0,524,NULL,NULL,NULL,17.00,15.00,19.00,784.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(46,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-105-A0',0,14,0,1,0,7,1,0,1133,NULL,NULL,NULL,19.00,12.00,11.00,855.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(47,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','SW-105-A0-A1',0,14,0,1,0,7,1,0,1133,NULL,NULL,NULL,19.00,12.00,11.00,855.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(48,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-151-A0',0,16,0,1,0,7,1,0,1296,NULL,NULL,NULL,16.00,15.00,20.00,672.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(49,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','SW-151-A0-A1',0,16,0,1,0,7,1,0,1296,NULL,NULL,NULL,16.00,15.00,20.00,672.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(50,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-2.jpg\"]','SW-151-A0-A2',0,16,0,1,0,7,1,0,1296,NULL,NULL,NULL,16.00,15.00,20.00,672.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(51,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-140-A0',0,10,0,1,0,1,1,0,539,485.1,NULL,NULL,17.00,13.00,17.00,589.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(52,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-131-A0',0,16,0,1,0,5,1,0,509,NULL,NULL,NULL,13.00,10.00,19.00,698.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(53,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','SW-131-A0-A1',0,16,0,1,0,5,1,0,509,NULL,NULL,NULL,13.00,10.00,19.00,698.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(54,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-131-A0-A2',0,16,0,1,0,5,1,0,509,NULL,NULL,NULL,13.00,10.00,19.00,698.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(55,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-130-A0',0,10,0,1,0,7,1,0,564,NULL,NULL,NULL,14.00,20.00,12.00,703.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(56,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-130-A0-A1',0,10,0,1,0,7,1,0,564,NULL,NULL,NULL,14.00,20.00,12.00,703.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(57,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-130-A0-A2',0,10,0,1,0,7,1,0,564,NULL,NULL,NULL,14.00,20.00,12.00,703.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(58,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-132-A0',0,16,0,1,0,7,1,0,520,NULL,NULL,NULL,17.00,15.00,20.00,549.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(59,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','SW-132-A0-A1',0,16,0,1,0,7,1,0,520,NULL,NULL,NULL,17.00,15.00,20.00,549.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(60,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-132-A0-A2',0,16,0,1,0,7,1,0,520,NULL,NULL,NULL,17.00,15.00,20.00,549.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(61,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-132-A0',0,14,0,1,0,7,1,0,571,473.93,NULL,NULL,12.00,11.00,14.00,611.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(62,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-132-A0-A1',0,14,0,1,0,7,1,0,571,405.41,NULL,NULL,12.00,11.00,14.00,611.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(63,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-184-A0',0,14,0,1,0,2,1,0,598,NULL,NULL,NULL,14.00,17.00,16.00,551.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(64,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','SW-184-A0-A1',0,14,0,1,0,2,1,0,598,NULL,NULL,NULL,14.00,17.00,16.00,551.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(65,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17-2.jpg\"]','SW-184-A0-A2',0,14,0,1,0,2,1,0,598,NULL,NULL,NULL,14.00,17.00,16.00,551.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(66,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17-3.jpg\"]','SW-184-A0-A3',0,14,0,1,0,2,1,0,598,NULL,NULL,NULL,14.00,17.00,16.00,551.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(67,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-164-A0',0,18,0,1,0,3,1,0,1011,NULL,NULL,NULL,10.00,15.00,18.00,614.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(68,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','SW-164-A0-A1',0,18,0,1,0,3,1,0,1011,NULL,NULL,NULL,10.00,15.00,18.00,614.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(69,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-190-A0',0,16,0,1,0,6,1,0,1048,NULL,NULL,NULL,10.00,14.00,17.00,827.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(70,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','SW-190-A0-A1',0,16,0,1,0,6,1,0,1048,NULL,NULL,NULL,10.00,14.00,17.00,827.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(71,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-2.jpg\"]','SW-190-A0-A2',0,16,0,1,0,6,1,0,1048,NULL,NULL,NULL,10.00,14.00,17.00,827.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(72,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-191-A0',0,19,0,1,0,1,1,0,989,840.65,NULL,NULL,17.00,17.00,17.00,556.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(73,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','SW-191-A0-A1',0,19,0,1,0,1,1,0,989,702.19,NULL,NULL,17.00,17.00,17.00,556.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(74,'MVMTH Classical Leather Watch In Black',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-155-A0',0,10,0,1,0,3,1,0,954,NULL,NULL,NULL,18.00,18.00,16.00,725.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(75,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-176-A0',0,12,0,1,0,4,1,0,522,NULL,NULL,NULL,17.00,10.00,15.00,563.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(76,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','SW-176-A0-A1',0,12,0,1,0,4,1,0,522,NULL,NULL,NULL,17.00,10.00,15.00,563.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(77,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-171-A0',0,16,0,1,0,5,1,0,516,NULL,NULL,NULL,12.00,11.00,10.00,712.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(78,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','SW-171-A0-A1',0,16,0,1,0,5,1,0,516,NULL,NULL,NULL,12.00,11.00,10.00,712.00,NULL,0,'2022-05-20 21:24:59','2022-05-20 21:25:43','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Dual Camera 20MP',NULL,NULL),('vi',2,'Smart Watches',NULL,NULL),('vi',3,'Beat Headphone',NULL,NULL),('vi',4,'Red & Black Headphone',NULL,NULL),('vi',5,'Smart Watch External',NULL,NULL),('vi',6,'Nikon HD camera',NULL,NULL),('vi',7,'Audio Equipment',NULL,NULL),('vi',8,'Smart Televisions',NULL,NULL),('vi',9,'Samsung Smart Phone',NULL,NULL),('vi',10,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',11,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',12,'EPSION Plaster Printer',NULL,NULL),('vi',13,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',14,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',15,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',16,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',17,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',18,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',19,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',20,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',21,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',22,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',23,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',24,'Dual Camera 20MP',NULL,NULL),('vi',25,'Dual Camera 20MP',NULL,NULL),('vi',26,'Dual Camera 20MP',NULL,NULL),('vi',27,'Smart Watches',NULL,NULL),('vi',28,'Beat Headphone',NULL,NULL),('vi',29,'Beat Headphone',NULL,NULL),('vi',30,'Beat Headphone',NULL,NULL),('vi',31,'Red & Black Headphone',NULL,NULL),('vi',32,'Red & Black Headphone',NULL,NULL),('vi',33,'Smart Watch External',NULL,NULL),('vi',34,'Smart Watch External',NULL,NULL),('vi',35,'Smart Watch External',NULL,NULL),('vi',36,'Smart Watch External',NULL,NULL),('vi',37,'Smart Watch External',NULL,NULL),('vi',38,'Nikon HD camera',NULL,NULL),('vi',39,'Audio Equipment',NULL,NULL),('vi',40,'Audio Equipment',NULL,NULL),('vi',41,'Audio Equipment',NULL,NULL),('vi',42,'Smart Televisions',NULL,NULL),('vi',43,'Samsung Smart Phone',NULL,NULL),('vi',44,'Samsung Smart Phone',NULL,NULL),('vi',45,'Samsung Smart Phone',NULL,NULL),('vi',46,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',47,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',48,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',49,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',50,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',51,'EPSION Plaster Printer',NULL,NULL),('vi',52,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',53,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',54,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',55,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',56,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',57,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',58,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',59,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',60,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',61,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',62,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',63,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',64,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',65,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',66,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',67,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',68,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',69,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',70,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',71,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',72,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',73,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',74,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',75,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',76,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',77,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',78,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,2,10,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/9.jpg\"]'),(2,2,6,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(3,4,12,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/18.jpg\"]'),(4,8,9,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/14.jpg\"]'),(5,2,10,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(6,10,11,5.00,'Best ecommerce CMS online store!','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(7,7,1,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(8,10,2,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(9,6,17,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(10,3,7,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(11,7,17,5.00,'Good app, good backup service and support. Good documentation.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/22.jpg\"]'),(12,8,2,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\"]'),(13,5,21,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/21.jpg\"]'),(14,5,5,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/21.jpg\"]'),(15,4,1,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/10.jpg\"]'),(16,7,14,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(17,1,17,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(18,5,17,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(19,3,11,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/8.jpg\"]'),(20,1,23,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\"]'),(21,1,19,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/8.jpg\"]'),(22,10,14,3.00,'Good app, good backup service and support. Good documentation.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(23,1,22,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/11.jpg\"]'),(24,7,21,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(25,6,11,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/22.jpg\"]'),(26,6,3,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\"]'),(27,3,16,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(28,1,14,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(29,1,4,2.00,'Good app, good backup service and support. Good documentation.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/23.jpg\"]'),(30,2,15,1.00,'Good app, good backup service and support. Good documentation.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(31,1,9,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\"]'),(32,5,1,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(33,4,23,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(34,2,3,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(35,7,9,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(36,10,23,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(37,3,6,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(38,4,15,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(39,8,23,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\"]'),(40,2,16,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/11.jpg\"]'),(41,7,3,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\"]'),(42,1,23,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/11.jpg\"]'),(43,10,11,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(44,10,9,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/16.jpg\"]'),(45,2,19,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(46,1,8,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\"]'),(47,7,6,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\"]'),(48,5,9,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/19.jpg\"]'),(49,8,4,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\"]'),(50,1,22,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/18.jpg\"]'),(51,1,19,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\"]'),(52,4,7,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/20.jpg\"]'),(53,10,21,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(54,9,7,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\"]'),(55,5,20,2.00,'Good app, good backup service and support. Good documentation.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(56,5,18,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/12.jpg\"]'),(57,3,8,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\"]'),(58,5,22,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\"]'),(59,4,10,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/18.jpg\"]'),(60,5,9,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(61,3,9,3.00,'Best ecommerce CMS online store!','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/17.jpg\"]'),(62,3,10,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\"]'),(63,5,20,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(64,10,17,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(65,4,13,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\"]'),(66,10,5,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(67,9,3,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(68,4,12,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(69,1,5,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\"]'),(70,7,5,5.00,'Best ecommerce CMS online store!','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\"]'),(71,5,10,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(72,6,12,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(73,5,1,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\"]'),(74,8,17,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/22.jpg\"]'),(75,5,2,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/13.jpg\"]'),(76,4,17,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(77,7,17,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\"]'),(78,2,18,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),(79,5,2,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\"]'),(80,8,11,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/18.jpg\"]'),(81,3,13,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/20.jpg\"]'),(82,1,10,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(83,9,14,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\"]'),(84,8,19,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),(85,10,1,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/20.jpg\"]'),(86,7,9,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(87,3,22,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\"]'),(88,3,2,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),(89,2,12,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\"]'),(90,3,13,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\"]'),(91,10,8,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/20.jpg\"]'),(92,2,16,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/12.jpg\"]'),(93,9,10,5.00,'Clean & perfect source code','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/22.jpg\"]'),(94,9,7,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(95,8,18,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/18.jpg\"]'),(96,6,10,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(97,8,10,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/10.jpg\"]'),(98,2,19,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(99,1,12,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\",\"products\\/17.jpg\"]'),(100,8,10,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-05-20 21:25:06','2022-05-20 21:25:06','[\"products\\/2.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2022-05-15 21:25:43','2022-05-15 21:25:43'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2022-05-19 05:25:43','2022-05-20 21:25:43'),(3,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,1,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(4,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2022-05-17 13:25:43','2022-05-17 13:25:43'),(5,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2022-05-19 05:25:43','2022-05-20 21:25:43'),(6,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2022-05-05 21:25:43','2022-05-05 21:25:43'),(7,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2022-05-19 05:25:43','2022-05-20 21:25:43'),(8,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2022-05-14 13:25:43','2022-05-14 13:25:43'),(9,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2022-05-19 07:25:43','2022-05-20 21:25:43'),(10,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2022-05-08 05:25:43','2022-05-08 05:25:43'),(11,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2022-05-19 07:25:43','2022-05-20 21:25:43'),(12,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2022-05-10 09:25:43','2022-05-10 09:25:43'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2022-05-19 09:25:43','2022-05-20 21:25:43'),(14,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2022-05-19 09:25:43','2022-05-19 09:25:43'),(15,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2022-05-19 09:25:43','2022-05-20 21:25:43'),(16,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2022-05-06 17:25:44','2022-05-06 17:25:44'),(17,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2022-05-19 11:25:44','2022-05-20 21:25:44'),(18,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2022-05-08 03:25:44','2022-05-08 03:25:44'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2022-05-19 11:25:44','2022-05-20 21:25:44'),(20,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2022-05-16 21:25:44','2022-05-16 21:25:44'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2022-05-19 13:25:44','2022-05-20 21:25:44'),(22,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,10,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(23,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2022-05-16 21:25:44','2022-05-16 21:25:44'),(24,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2022-05-19 13:25:44','2022-05-20 21:25:44'),(25,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,11,11,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(26,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,11,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(27,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2022-05-11 13:25:44','2022-05-11 13:25:44'),(28,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2022-05-19 13:25:44','2022-05-20 21:25:44'),(29,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,12,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(30,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2022-05-19 15:25:44','2022-05-19 15:25:44'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2022-05-19 15:25:44','2022-05-20 21:25:44'),(32,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,13,13,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(33,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,13,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(34,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2022-05-17 03:25:44','2022-05-17 03:25:44'),(35,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2022-05-19 15:25:44','2022-05-20 21:25:44'),(36,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2022-05-19 17:25:44','2022-05-19 17:25:44'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2022-05-19 17:25:44','2022-05-20 21:25:44'),(38,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2022-05-18 13:25:44','2022-05-18 13:25:44'),(39,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2022-05-19 17:25:44','2022-05-20 21:25:44'),(40,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2022-05-13 07:25:44','2022-05-13 07:25:44'),(41,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2022-05-19 19:25:44','2022-05-20 21:25:44'),(42,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2022-05-17 15:25:44','2022-05-17 15:25:44'),(43,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2022-05-19 19:25:44','2022-05-20 21:25:44'),(44,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2022-05-13 21:25:44','2022-05-13 21:25:44'),(45,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2022-05-19 21:25:44','2022-05-20 21:25:44'),(46,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,19,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(47,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2022-05-14 21:25:44','2022-05-14 21:25:44'),(48,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2022-05-19 21:25:44','2022-05-20 21:25:44'),(49,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2022-05-16 07:25:44','2022-05-16 07:25:44'),(50,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2022-05-19 23:25:44','2022-05-20 21:25:44'),(51,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,21,21,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(52,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2022-05-16 07:25:44','2022-05-16 07:25:44'),(53,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2022-05-19 23:25:44','2022-05-20 21:25:44'),(54,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,22,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(55,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2022-05-13 09:25:44','2022-05-13 09:25:44'),(56,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2022-05-20 01:25:44','2022-05-20 21:25:44'),(57,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2022-05-16 17:25:44','2022-05-16 17:25:44'),(58,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2022-05-20 01:25:44','2022-05-20 21:25:44'),(59,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2022-05-13 09:25:44','2022-05-13 09:25:44'),(60,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2022-05-20 01:25:44','2022-05-20 21:25:44'),(61,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2022-05-20 03:25:44','2022-05-20 03:25:44'),(62,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2022-05-20 03:25:44','2022-05-20 21:25:44'),(63,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2022-05-20 03:25:44','2022-05-20 03:25:44'),(64,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2022-05-20 03:25:44','2022-05-20 21:25:44'),(65,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2022-05-17 21:25:44','2022-05-17 21:25:44'),(66,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2022-05-20 03:25:44','2022-05-20 21:25:44'),(67,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2022-05-15 13:25:44','2022-05-15 13:25:44'),(68,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2022-05-20 05:25:44','2022-05-20 21:25:44'),(69,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2022-05-16 21:25:44','2022-05-16 21:25:44'),(70,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2022-05-20 05:25:44','2022-05-20 21:25:44'),(71,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,30,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(72,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2022-05-18 13:25:44','2022-05-18 13:25:44'),(73,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2022-05-20 07:25:44','2022-05-20 21:25:44'),(74,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2022-05-17 09:25:44','2022-05-17 09:25:44'),(75,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2022-05-20 07:25:44','2022-05-20 21:25:44'),(76,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,32,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(77,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2022-05-18 21:25:44','2022-05-18 21:25:44'),(78,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2022-05-20 09:25:44','2022-05-20 21:25:44'),(79,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,33,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(80,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2022-05-18 21:25:44','2022-05-18 21:25:44'),(81,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2022-05-20 09:25:44','2022-05-20 21:25:44'),(82,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2022-05-19 15:25:44','2022-05-19 15:25:44'),(83,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2022-05-20 11:25:44','2022-05-20 21:25:44'),(84,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,35,35,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(85,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,35,'2022-05-20 21:25:44','2022-05-20 21:25:44'),(86,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2022-05-18 09:25:44','2022-05-18 09:25:44'),(87,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,36,'2022-05-20 11:25:44','2022-05-20 21:25:44'),(88,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2022-05-18 13:25:44','2022-05-18 13:25:44'),(89,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,37,'2022-05-20 13:25:44','2022-05-20 21:25:44'),(90,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2022-05-18 05:25:44','2022-05-18 05:25:44'),(91,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,38,'2022-05-20 13:25:44','2022-05-20 21:25:44'),(92,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2022-05-19 05:25:44','2022-05-19 05:25:44'),(93,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,39,'2022-05-20 13:25:44','2022-05-20 21:25:44'),(94,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,39,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(95,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2022-05-18 09:25:45','2022-05-18 09:25:45'),(96,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,40,'2022-05-20 15:25:45','2022-05-20 21:25:45'),(97,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,40,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(98,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2022-05-18 15:25:45','2022-05-18 15:25:45'),(99,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,41,'2022-05-20 15:25:45','2022-05-20 21:25:45'),(100,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,41,'2022-05-20 21:25:45','2022-05-20 21:25:45'),(101,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2022-05-19 21:25:45','2022-05-19 21:25:45'),(102,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,42,'2022-05-20 17:25:45','2022-05-20 21:25:45'),(103,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2022-05-20 09:25:45','2022-05-20 09:25:45'),(104,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,43,43,'2022-05-20 19:25:45','2022-05-20 21:25:45'),(105,'create_from_order','Shipping was created from order %order_id%',0,44,44,'2022-05-20 03:25:45','2022-05-20 03:25:45'),(106,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,44,44,'2022-05-20 19:25:45','2022-05-20 21:25:45'),(107,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,44,44,'2022-05-20 21:25:45','2022-05-20 21:25:45');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,1767.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43','JJD0063532254','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-29 04:25:43','2022-05-21 04:25:43'),(2,2,NULL,2109.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43','JJD0074696884','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-29 04:25:43',NULL),(3,3,NULL,1689.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43','JJD0049951385','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-22 04:25:43',NULL),(4,4,NULL,827.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43','JJD0023846248','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-27 04:25:43',NULL),(5,5,NULL,1668.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43','JJD0012851439','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-24 04:25:43',NULL),(6,6,NULL,4098.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43','JJD004908866','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-23 04:25:43',NULL),(7,7,NULL,1653.00,NULL,'','approved',1913.60,'pending','pending',0.00,0,'2022-05-20 21:25:43','2022-05-20 21:25:43','JJD0042470505','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-22 04:25:43',NULL),(8,8,NULL,3041.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0029757044','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-25 04:25:44',NULL),(9,9,NULL,2109.00,NULL,'','approved',1748.40,'pending','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0053505668','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-25 04:25:44',NULL),(10,10,NULL,1635.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0068188876','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-27 04:25:44','2022-05-21 04:25:44'),(11,11,NULL,3410.00,NULL,'','delivered',4234.50,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0048633627','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-25 04:25:44','2022-05-21 04:25:44'),(12,12,NULL,563.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD008313628','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-24 04:25:44','2022-05-21 04:25:44'),(13,13,NULL,3289.00,NULL,'','delivered',1895.80,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD006238310','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-25 04:25:44','2022-05-21 04:25:44'),(14,14,NULL,855.00,NULL,'','approved',1246.30,'pending','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0093996549','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-30 04:25:44',NULL),(15,15,NULL,1510.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD006255592','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-27 04:25:44',NULL),(16,16,NULL,703.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0079600366','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-22 04:25:44',NULL),(17,17,NULL,2402.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0068475543','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-29 04:25:44',NULL),(18,18,NULL,2163.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0086831656','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-27 04:25:44',NULL),(19,19,NULL,855.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0084937779','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-24 04:25:44','2022-05-21 04:25:44'),(20,20,NULL,4997.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0087327605','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-25 04:25:44',NULL),(21,21,NULL,4194.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0039299860','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-30 04:25:44','2022-05-21 04:25:44'),(22,22,NULL,1771.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0065131048','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-30 04:25:44','2022-05-21 04:25:44'),(23,23,NULL,3662.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0037736345','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-28 04:25:44',NULL),(24,24,NULL,1767.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0056390496','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-27 04:25:44',NULL),(25,25,NULL,2481.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0022893187','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-22 04:25:44',NULL),(26,26,NULL,1273.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD005532836','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-22 04:25:44',NULL),(27,27,NULL,2352.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0019245222','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-29 04:25:44',NULL),(28,28,NULL,1653.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0066478934','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-26 04:25:44',NULL),(29,29,NULL,1102.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD001251707','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-29 04:25:44',NULL),(30,30,NULL,725.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD009093367','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-29 04:25:44','2022-05-21 04:25:44'),(31,31,NULL,1642.00,NULL,'','approved',85.05,'pending','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0065199756','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-30 04:25:44',NULL),(32,32,NULL,1102.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0035193068','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-27 04:25:44','2022-05-21 04:25:44'),(33,33,NULL,698.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0020287054','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-23 04:25:44','2022-05-21 04:25:44'),(34,34,NULL,2481.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0078320345','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-23 04:25:44',NULL),(35,35,NULL,2626.00,NULL,'','delivered',2282.70,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0090481052','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-27 04:25:44','2022-05-21 04:25:44'),(36,36,NULL,556.00,NULL,'','approved',1087.90,'pending','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD002336715','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-31 04:25:44',NULL),(37,37,NULL,1510.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0083957198','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-28 04:25:44',NULL),(38,38,NULL,2109.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0029876726','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-23 04:25:44',NULL),(39,39,NULL,1228.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:44','2022-05-20 21:25:44','JJD0075867916','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-28 04:25:44','2022-05-21 04:25:44'),(40,40,NULL,1510.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:45','2022-05-20 21:25:45','JJD0067249890','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-24 04:25:45','2022-05-21 04:25:45'),(41,41,NULL,1654.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:45','2022-05-20 21:25:45','JJD005707375','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-27 04:25:45','2022-05-21 04:25:45'),(42,42,NULL,6917.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:45','2022-05-20 21:25:45','JJD0024654260','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-28 04:25:45',NULL),(43,43,NULL,2085.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:45','2022-05-20 21:25:45','JJD0063654679','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-25 04:25:45',NULL),(44,44,NULL,1568.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-05-20 21:25:45','2022-05-20 21:25:45','JJD0021332471','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-27 04:25:45','2022-05-21 04:25:45');
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2022-05-20 21:25:07','2022-05-20 21:25:07');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Delivery',1,'base_on_price',0.00,NULL,0.00,'2022-05-20 21:25:07','2022-05-20 21:25:07');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2022-05-20 21:25:28','2022-05-20 21:25:28');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2022-05-20 21:25:06','2022-05-20 21:25:06'),(2,'None',0.000000,2,'published','2022-05-20 21:25:06','2022-05-20 21:25:06');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2022-05-20 21:25:27','2022-05-20 21:25:27'),(2,'PAYMENT',1,'published','2022-05-20 21:25:27','2022-05-20 21:25:27'),(3,'ORDER & RETURNS',2,'published','2022-05-20 21:25:27','2022-05-20 21:25:27');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
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
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2022-05-20 21:25:27','2022-05-20 21:25:27'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2022-05-20 21:25:27','2022-05-20 21:25:27'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2022-05-20 21:25:27','2022-05-20 21:25:27'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2022-05-20 21:25:27','2022-05-20 21:25:27'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2022-05-20 21:25:27','2022-05-20 21:25:27'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2022-05-20 21:25:27','2022-05-20 21:25:27'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2022-05-20 21:25:27','2022-05-20 21:25:27'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2022-05-20 21:25:27','2022-05-20 21:25:27'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2022-05-20 21:25:27','2022-05-20 21:25:27'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2022-05-20 21:25:27','2022-05-20 21:25:27');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
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
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','c79808511ebeef4a5386c0b2f02fe88c',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'vi','c79808511ebeef4a5386c0b2f02fe88c',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','eb32b2be39a0108abf45f3b7a61ab70d',1,'Botble\\Menu\\Models\\MenuLocation'),(4,'en_US','7479ea959970103d3396f05e0ebeaaef',1,'Botble\\Menu\\Models\\Menu'),(5,'en_US','59d1f8529337db58d25c9e2806230b57',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','5344b0f62ab0fcbc578e3fd0ff572c12',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','f6761ddd183011b522cf701c867f740e',4,'Botble\\Menu\\Models\\Menu'),(8,'vi','6430004a4c2b2e7cd7b302e7dd1d7b0c',2,'Botble\\Menu\\Models\\MenuLocation'),(9,'vi','7479ea959970103d3396f05e0ebeaaef',5,'Botble\\Menu\\Models\\Menu'),(10,'vi','59d1f8529337db58d25c9e2806230b57',6,'Botble\\Menu\\Models\\Menu'),(11,'vi','5344b0f62ab0fcbc578e3fd0ff572c12',7,'Botble\\Menu\\Models\\Menu'),(12,'vi','f6761ddd183011b522cf701c867f740e',8,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta_backup`
--

DROP TABLE IF EXISTS `language_meta_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta_backup` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta_backup`
--

LOCK TABLES `language_meta_backup` WRITE;
/*!40000 ALTER TABLE `language_meta_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `language_meta_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1',1,'image/jpeg',2200,'brands/1.jpg','[]','2022-05-20 21:24:12','2022-05-20 21:24:12',NULL),(2,0,'2',1,'image/jpeg',2685,'brands/2.jpg','[]','2022-05-20 21:24:13','2022-05-20 21:24:13',NULL),(3,0,'3',1,'image/jpeg',2311,'brands/3.jpg','[]','2022-05-20 21:24:13','2022-05-20 21:24:13',NULL),(4,0,'4',1,'image/jpeg',2374,'brands/4.jpg','[]','2022-05-20 21:24:13','2022-05-20 21:24:13',NULL),(5,0,'5',1,'image/jpeg',1927,'brands/5.jpg','[]','2022-05-20 21:24:13','2022-05-20 21:24:13',NULL),(6,0,'6',1,'image/jpeg',2519,'brands/6.jpg','[]','2022-05-20 21:24:14','2022-05-20 21:24:14',NULL),(7,0,'7',1,'image/jpeg',3043,'brands/7.jpg','[]','2022-05-20 21:24:14','2022-05-20 21:24:14',NULL),(8,0,'1',2,'image/jpeg',5173,'product-categories/1.jpg','[]','2022-05-20 21:24:14','2022-05-20 21:24:14',NULL),(9,0,'2',2,'image/jpeg',7355,'product-categories/2.jpg','[]','2022-05-20 21:24:15','2022-05-20 21:24:15',NULL),(10,0,'3',2,'image/jpeg',4427,'product-categories/3.jpg','[]','2022-05-20 21:24:15','2022-05-20 21:24:15',NULL),(11,0,'4',2,'image/jpeg',2963,'product-categories/4.jpg','[]','2022-05-20 21:24:15','2022-05-20 21:24:15',NULL),(12,0,'5',2,'image/jpeg',5016,'product-categories/5.jpg','[]','2022-05-20 21:24:16','2022-05-20 21:24:16',NULL),(13,0,'6',2,'image/jpeg',4101,'product-categories/6.jpg','[]','2022-05-20 21:24:16','2022-05-20 21:24:16',NULL),(14,0,'7',2,'image/jpeg',2576,'product-categories/7.jpg','[]','2022-05-20 21:24:16','2022-05-20 21:24:16',NULL),(15,0,'8',2,'image/jpeg',4670,'product-categories/8.jpg','[]','2022-05-20 21:24:17','2022-05-20 21:24:17',NULL),(16,0,'1',3,'image/jpeg',4911,'products/1.jpg','[]','2022-05-20 21:24:20','2022-05-20 21:24:20',NULL),(17,0,'10-1',3,'image/jpeg',120755,'products/10-1.jpg','[]','2022-05-20 21:24:20','2022-05-20 21:24:20',NULL),(18,0,'10-2',3,'image/jpeg',148563,'products/10-2.jpg','[]','2022-05-20 21:24:21','2022-05-20 21:24:21',NULL),(19,0,'10',3,'image/jpeg',11176,'products/10.jpg','[]','2022-05-20 21:24:22','2022-05-20 21:24:22',NULL),(20,0,'11-1',3,'image/jpeg',13706,'products/11-1.jpg','[]','2022-05-20 21:24:22','2022-05-20 21:24:22',NULL),(21,0,'11-2',3,'image/jpeg',16809,'products/11-2.jpg','[]','2022-05-20 21:24:22','2022-05-20 21:24:22',NULL),(22,0,'11-3',3,'image/jpeg',23991,'products/11-3.jpg','[]','2022-05-20 21:24:22','2022-05-20 21:24:22',NULL),(23,0,'11',3,'image/jpeg',8234,'products/11.jpg','[]','2022-05-20 21:24:23','2022-05-20 21:24:23',NULL),(24,0,'12-1',3,'image/jpeg',47775,'products/12-1.jpg','[]','2022-05-20 21:24:23','2022-05-20 21:24:23',NULL),(25,0,'12-2',3,'image/jpeg',52722,'products/12-2.jpg','[]','2022-05-20 21:24:24','2022-05-20 21:24:24',NULL),(26,0,'12-3',3,'image/jpeg',57295,'products/12-3.jpg','[]','2022-05-20 21:24:25','2022-05-20 21:24:25',NULL),(27,0,'12',3,'image/jpeg',9642,'products/12.jpg','[]','2022-05-20 21:24:26','2022-05-20 21:24:26',NULL),(28,0,'13-1',3,'image/jpeg',7494,'products/13-1.jpg','[]','2022-05-20 21:24:26','2022-05-20 21:24:26',NULL),(29,0,'13',3,'image/jpeg',7266,'products/13.jpg','[]','2022-05-20 21:24:26','2022-05-20 21:24:26',NULL),(30,0,'14',3,'image/jpeg',6626,'products/14.jpg','[]','2022-05-20 21:24:26','2022-05-20 21:24:26',NULL),(31,0,'15-1',3,'image/jpeg',9014,'products/15-1.jpg','[]','2022-05-20 21:24:27','2022-05-20 21:24:27',NULL),(32,0,'15',3,'image/jpeg',6629,'products/15.jpg','[]','2022-05-20 21:24:27','2022-05-20 21:24:27',NULL),(33,0,'16',3,'image/jpeg',8558,'products/16.jpg','[]','2022-05-20 21:24:27','2022-05-20 21:24:27',NULL),(34,0,'17-1',3,'image/jpeg',63248,'products/17-1.jpg','[]','2022-05-20 21:24:27','2022-05-20 21:24:27',NULL),(35,0,'17-2',3,'image/jpeg',71404,'products/17-2.jpg','[]','2022-05-20 21:24:28','2022-05-20 21:24:28',NULL),(36,0,'17-3',3,'image/jpeg',58949,'products/17-3.jpg','[]','2022-05-20 21:24:28','2022-05-20 21:24:28',NULL),(37,0,'17',3,'image/jpeg',7050,'products/17.jpg','[]','2022-05-20 21:24:29','2022-05-20 21:24:29',NULL),(38,0,'18-1',3,'image/jpeg',527022,'products/18-1.jpg','[]','2022-05-20 21:24:29','2022-05-20 21:24:29',NULL),(39,0,'18-2',3,'image/jpeg',43849,'products/18-2.jpg','[]','2022-05-20 21:24:30','2022-05-20 21:24:30',NULL),(40,0,'18-3',3,'image/jpeg',63876,'products/18-3.jpg','[]','2022-05-20 21:24:30','2022-05-20 21:24:30',NULL),(41,0,'18',3,'image/jpeg',61587,'products/18.jpg','[]','2022-05-20 21:24:31','2022-05-20 21:24:31',NULL),(42,0,'19-1',3,'image/jpeg',23166,'products/19-1.jpg','[]','2022-05-20 21:24:31','2022-05-20 21:24:31',NULL),(43,0,'19-2',3,'image/jpeg',12306,'products/19-2.jpg','[]','2022-05-20 21:24:31','2022-05-20 21:24:31',NULL),(44,0,'19-3',3,'image/jpeg',51458,'products/19-3.jpg','[]','2022-05-20 21:24:32','2022-05-20 21:24:32',NULL),(45,0,'19',3,'image/jpeg',227872,'products/19.jpg','[]','2022-05-20 21:24:32','2022-05-20 21:24:32',NULL),(46,0,'2-1',3,'image/jpeg',85522,'products/2-1.jpg','[]','2022-05-20 21:24:32','2022-05-20 21:24:32',NULL),(47,0,'2-2',3,'image/jpeg',122423,'products/2-2.jpg','[]','2022-05-20 21:24:33','2022-05-20 21:24:33',NULL),(48,0,'2-3',3,'image/jpeg',61996,'products/2-3.jpg','[]','2022-05-20 21:24:34','2022-05-20 21:24:34',NULL),(49,0,'2',3,'image/jpeg',10832,'products/2.jpg','[]','2022-05-20 21:24:35','2022-05-20 21:24:35',NULL),(50,0,'20-1',3,'image/jpeg',108013,'products/20-1.jpg','[]','2022-05-20 21:24:35','2022-05-20 21:24:35',NULL),(51,0,'20-2',3,'image/jpeg',107598,'products/20-2.jpg','[]','2022-05-20 21:24:36','2022-05-20 21:24:36',NULL),(52,0,'20-3',3,'image/jpeg',31959,'products/20-3.jpg','[]','2022-05-20 21:24:37','2022-05-20 21:24:37',NULL),(53,0,'20',3,'image/jpeg',12798,'products/20.jpg','[]','2022-05-20 21:24:37','2022-05-20 21:24:37',NULL),(54,0,'21-1',3,'image/jpeg',92022,'products/21-1.jpg','[]','2022-05-20 21:24:37','2022-05-20 21:24:37',NULL),(55,0,'21-2',3,'image/jpeg',73796,'products/21-2.jpg','[]','2022-05-20 21:24:38','2022-05-20 21:24:38',NULL),(56,0,'21',3,'image/jpeg',72410,'products/21.jpg','[]','2022-05-20 21:24:39','2022-05-20 21:24:39',NULL),(57,0,'22-1',3,'image/jpeg',50174,'products/22-1.jpg','[]','2022-05-20 21:24:40','2022-05-20 21:24:40',NULL),(58,0,'22-2',3,'image/jpeg',63267,'products/22-2.jpg','[]','2022-05-20 21:24:40','2022-05-20 21:24:40',NULL),(59,0,'22-3',3,'image/jpeg',125017,'products/22-3.jpg','[]','2022-05-20 21:24:41','2022-05-20 21:24:41',NULL),(60,0,'22',3,'image/jpeg',88636,'products/22.jpg','[]','2022-05-20 21:24:41','2022-05-20 21:24:41',NULL),(61,0,'23-1',3,'image/jpeg',64117,'products/23-1.jpg','[]','2022-05-20 21:24:42','2022-05-20 21:24:42',NULL),(62,0,'23-2',3,'image/jpeg',96786,'products/23-2.jpg','[]','2022-05-20 21:24:42','2022-05-20 21:24:42',NULL),(63,0,'23-3',3,'image/jpeg',46477,'products/23-3.jpg','[]','2022-05-20 21:24:43','2022-05-20 21:24:43',NULL),(64,0,'23',3,'image/jpeg',68142,'products/23.jpg','[]','2022-05-20 21:24:43','2022-05-20 21:24:43',NULL),(65,0,'3',3,'image/jpeg',8388,'products/3.jpg','[]','2022-05-20 21:24:44','2022-05-20 21:24:44',NULL),(66,0,'4-1',3,'image/jpeg',39071,'products/4-1.jpg','[]','2022-05-20 21:24:44','2022-05-20 21:24:44',NULL),(67,0,'4-2',3,'image/jpeg',35982,'products/4-2.jpg','[]','2022-05-20 21:24:45','2022-05-20 21:24:45',NULL),(68,0,'4-3',3,'image/jpeg',62867,'products/4-3.jpg','[]','2022-05-20 21:24:45','2022-05-20 21:24:45',NULL),(69,0,'4',3,'image/jpeg',5547,'products/4.jpg','[]','2022-05-20 21:24:46','2022-05-20 21:24:46',NULL),(70,0,'5-1',3,'image/jpeg',72383,'products/5-1.jpg','[]','2022-05-20 21:24:47','2022-05-20 21:24:47',NULL),(71,0,'5-2',3,'image/jpeg',108591,'products/5-2.jpg','[]','2022-05-20 21:24:47','2022-05-20 21:24:47',NULL),(72,0,'5-3',3,'image/jpeg',63741,'products/5-3.jpg','[]','2022-05-20 21:24:48','2022-05-20 21:24:48',NULL),(73,0,'5',3,'image/jpeg',98052,'products/5.jpg','[]','2022-05-20 21:24:48','2022-05-20 21:24:48',NULL),(74,0,'6',3,'image/jpeg',10944,'products/6.jpg','[]','2022-05-20 21:24:49','2022-05-20 21:24:49',NULL),(75,0,'7',3,'image/jpeg',10160,'products/7.jpg','[]','2022-05-20 21:24:50','2022-05-20 21:24:50',NULL),(76,0,'8-1',3,'image/jpeg',9986,'products/8-1.jpg','[]','2022-05-20 21:24:50','2022-05-20 21:24:50',NULL),(77,0,'8-2',3,'image/jpeg',8132,'products/8-2.jpg','[]','2022-05-20 21:24:51','2022-05-20 21:24:51',NULL),(78,0,'8-3',3,'image/jpeg',7867,'products/8-3.jpg','[]','2022-05-20 21:24:51','2022-05-20 21:24:51',NULL),(79,0,'8',3,'image/jpeg',10459,'products/8.jpg','[]','2022-05-20 21:24:51','2022-05-20 21:24:51',NULL),(80,0,'9-1',3,'image/jpeg',623616,'products/9-1.jpg','[]','2022-05-20 21:24:51','2022-05-20 21:24:51',NULL),(81,0,'9-2',3,'image/jpeg',647454,'products/9-2.jpg','[]','2022-05-20 21:24:52','2022-05-20 21:24:52',NULL),(82,0,'9',3,'image/jpeg',16733,'products/9.jpg','[]','2022-05-20 21:24:53','2022-05-20 21:24:53',NULL),(83,0,'1',4,'image/jpeg',11752,'customers/1.jpg','[]','2022-05-20 21:25:00','2022-05-20 21:25:00',NULL),(84,0,'10',4,'image/jpeg',27814,'customers/10.jpg','[]','2022-05-20 21:25:00','2022-05-20 21:25:00',NULL),(85,0,'2',4,'image/jpeg',19005,'customers/2.jpg','[]','2022-05-20 21:25:00','2022-05-20 21:25:00',NULL),(86,0,'3',4,'image/jpeg',20400,'customers/3.jpg','[]','2022-05-20 21:25:01','2022-05-20 21:25:01',NULL),(87,0,'4',4,'image/jpeg',26819,'customers/4.jpg','[]','2022-05-20 21:25:01','2022-05-20 21:25:01',NULL),(88,0,'5',4,'image/jpeg',14367,'customers/5.jpg','[]','2022-05-20 21:25:01','2022-05-20 21:25:01',NULL),(89,0,'6',4,'image/jpeg',12367,'customers/6.jpg','[]','2022-05-20 21:25:02','2022-05-20 21:25:02',NULL),(90,0,'7',4,'image/jpeg',20652,'customers/7.jpg','[]','2022-05-20 21:25:02','2022-05-20 21:25:02',NULL),(91,0,'8',4,'image/jpeg',21164,'customers/8.jpg','[]','2022-05-20 21:25:02','2022-05-20 21:25:02',NULL),(92,0,'9',4,'image/jpeg',6084,'customers/9.jpg','[]','2022-05-20 21:25:03','2022-05-20 21:25:03',NULL),(93,0,'1',5,'image/jpeg',532819,'news/1.jpg','[]','2022-05-20 21:25:08','2022-05-20 21:25:08',NULL),(94,0,'10',5,'image/jpeg',342651,'news/10.jpg','[]','2022-05-20 21:25:08','2022-05-20 21:25:08',NULL),(95,0,'11',5,'image/jpeg',296740,'news/11.jpg','[]','2022-05-20 21:25:10','2022-05-20 21:25:10',NULL),(96,0,'2',5,'image/jpeg',553729,'news/2.jpg','[]','2022-05-20 21:25:10','2022-05-20 21:25:10',NULL),(97,0,'3',5,'image/jpeg',522223,'news/3.jpg','[]','2022-05-20 21:25:11','2022-05-20 21:25:11',NULL),(98,0,'4',5,'image/jpeg',910908,'news/4.jpg','[]','2022-05-20 21:25:12','2022-05-20 21:25:12',NULL),(99,0,'5',5,'image/jpeg',666561,'news/5.jpg','[]','2022-05-20 21:25:13','2022-05-20 21:25:13',NULL),(100,0,'6',5,'image/jpeg',431929,'news/6.jpg','[]','2022-05-20 21:25:14','2022-05-20 21:25:14',NULL),(101,0,'7',5,'image/jpeg',568268,'news/7.jpg','[]','2022-05-20 21:25:14','2022-05-20 21:25:14',NULL),(102,0,'8',5,'image/jpeg',351088,'news/8.jpg','[]','2022-05-20 21:25:15','2022-05-20 21:25:15',NULL),(103,0,'9',5,'image/jpeg',353751,'news/9.jpg','[]','2022-05-20 21:25:15','2022-05-20 21:25:15',NULL),(104,0,'1-lg',6,'image/jpeg',66405,'sliders/1-lg.jpg','[]','2022-05-20 21:25:19','2022-05-20 21:25:19',NULL),(105,0,'1-md',6,'image/jpeg',40964,'sliders/1-md.jpg','[]','2022-05-20 21:25:20','2022-05-20 21:25:20',NULL),(106,0,'1-sm',6,'image/jpeg',40964,'sliders/1-sm.jpg','[]','2022-05-20 21:25:20','2022-05-20 21:25:20',NULL),(107,0,'2-lg',6,'image/jpeg',37835,'sliders/2-lg.jpg','[]','2022-05-20 21:25:20','2022-05-20 21:25:20',NULL),(108,0,'2-md',6,'image/jpeg',31875,'sliders/2-md.jpg','[]','2022-05-20 21:25:21','2022-05-20 21:25:21',NULL),(109,0,'2-sm',6,'image/jpeg',31875,'sliders/2-sm.jpg','[]','2022-05-20 21:25:21','2022-05-20 21:25:21',NULL),(110,0,'3-lg',6,'image/jpeg',40072,'sliders/3-lg.jpg','[]','2022-05-20 21:25:22','2022-05-20 21:25:22',NULL),(111,0,'3-md',6,'image/jpeg',32107,'sliders/3-md.jpg','[]','2022-05-20 21:25:22','2022-05-20 21:25:22',NULL),(112,0,'3-sm',6,'image/jpeg',32107,'sliders/3-sm.jpg','[]','2022-05-20 21:25:23','2022-05-20 21:25:23',NULL),(113,0,'1',7,'image/jpeg',56015,'promotion/1.jpg','[]','2022-05-20 21:25:24','2022-05-20 21:25:24',NULL),(114,0,'2',7,'image/jpeg',39964,'promotion/2.jpg','[]','2022-05-20 21:25:25','2022-05-20 21:25:25',NULL),(115,0,'3',7,'image/jpeg',71948,'promotion/3.jpg','[]','2022-05-20 21:25:25','2022-05-20 21:25:25',NULL),(116,0,'4',7,'image/jpeg',94590,'promotion/4.jpg','[]','2022-05-20 21:25:25','2022-05-20 21:25:25',NULL),(117,0,'5',7,'image/jpeg',96153,'promotion/5.jpg','[]','2022-05-20 21:25:25','2022-05-20 21:25:25',NULL),(118,0,'6',7,'image/jpeg',160910,'promotion/6.jpg','[]','2022-05-20 21:25:25','2022-05-20 21:25:25',NULL),(119,0,'7',7,'image/jpeg',59044,'promotion/7.jpg','[]','2022-05-20 21:25:26','2022-05-20 21:25:26',NULL),(120,0,'8',7,'image/jpeg',39964,'promotion/8.jpg','[]','2022-05-20 21:25:26','2022-05-20 21:25:26',NULL),(121,0,'9',7,'image/jpeg',54865,'promotion/9.jpg','[]','2022-05-20 21:25:26','2022-05-20 21:25:26',NULL),(122,0,'app',8,'image/png',88771,'general/app.png','[]','2022-05-20 21:25:29','2022-05-20 21:25:29',NULL),(123,0,'coming-soon',8,'image/jpeg',83359,'general/coming-soon.jpg','[]','2022-05-20 21:25:30','2022-05-20 21:25:30',NULL),(124,0,'favicon',8,'image/png',5147,'general/favicon.png','[]','2022-05-20 21:25:30','2022-05-20 21:25:30',NULL),(125,0,'logo-dark',8,'image/png',906,'general/logo-dark.png','[]','2022-05-20 21:25:30','2022-05-20 21:25:30',NULL),(126,0,'logo-light',8,'image/png',1430,'general/logo-light.png','[]','2022-05-20 21:25:30','2022-05-20 21:25:30',NULL),(127,0,'logo',8,'image/png',892,'general/logo.png','[]','2022-05-20 21:25:31','2022-05-20 21:25:31',NULL),(128,0,'newsletter',8,'image/jpeg',25569,'general/newsletter.jpg','[]','2022-05-20 21:25:31','2022-05-20 21:25:31',NULL),(129,0,'payment-method-1',8,'image/jpeg',976,'general/payment-method-1.jpg','[]','2022-05-20 21:25:31','2022-05-20 21:25:31',NULL),(130,0,'payment-method-2',8,'image/jpeg',1122,'general/payment-method-2.jpg','[]','2022-05-20 21:25:31','2022-05-20 21:25:31',NULL),(131,0,'payment-method-3',8,'image/jpeg',1040,'general/payment-method-3.jpg','[]','2022-05-20 21:25:31','2022-05-20 21:25:31',NULL),(132,0,'payment-method-4',8,'image/jpeg',722,'general/payment-method-4.jpg','[]','2022-05-20 21:25:32','2022-05-20 21:25:32',NULL),(133,0,'payment-method-5',8,'image/jpeg',773,'general/payment-method-5.jpg','[]','2022-05-20 21:25:32','2022-05-20 21:25:32',NULL),(134,0,'1',9,'image/png',11920,'stores/1.png','[]','2022-05-20 21:25:35','2022-05-20 21:25:35',NULL),(135,0,'10',9,'image/png',6583,'stores/10.png','[]','2022-05-20 21:25:36','2022-05-20 21:25:36',NULL),(136,0,'11',9,'image/png',6934,'stores/11.png','[]','2022-05-20 21:25:36','2022-05-20 21:25:36',NULL),(137,0,'12',9,'image/png',7396,'stores/12.png','[]','2022-05-20 21:25:36','2022-05-20 21:25:36',NULL),(138,0,'13',9,'image/png',5881,'stores/13.png','[]','2022-05-20 21:25:37','2022-05-20 21:25:37',NULL),(139,0,'14',9,'image/png',7188,'stores/14.png','[]','2022-05-20 21:25:37','2022-05-20 21:25:37',NULL),(140,0,'15',9,'image/png',7142,'stores/15.png','[]','2022-05-20 21:25:37','2022-05-20 21:25:37',NULL),(141,0,'16',9,'image/png',4659,'stores/16.png','[]','2022-05-20 21:25:38','2022-05-20 21:25:38',NULL),(142,0,'17',9,'image/png',6781,'stores/17.png','[]','2022-05-20 21:25:38','2022-05-20 21:25:38',NULL),(143,0,'2',9,'image/png',12300,'stores/2.png','[]','2022-05-20 21:25:38','2022-05-20 21:25:38',NULL),(144,0,'3',9,'image/png',10778,'stores/3.png','[]','2022-05-20 21:25:38','2022-05-20 21:25:38',NULL),(145,0,'4',9,'image/png',10771,'stores/4.png','[]','2022-05-20 21:25:39','2022-05-20 21:25:39',NULL),(146,0,'5',9,'image/png',13041,'stores/5.png','[]','2022-05-20 21:25:40','2022-05-20 21:25:40',NULL),(147,0,'6',9,'image/png',14006,'stores/6.png','[]','2022-05-20 21:25:40','2022-05-20 21:25:40',NULL),(148,0,'7',9,'image/png',5978,'stores/7.png','[]','2022-05-20 21:25:41','2022-05-20 21:25:41',NULL),(149,0,'8',9,'image/png',6586,'stores/8.png','[]','2022-05-20 21:25:41','2022-05-20 21:25:41',NULL),(150,0,'9',9,'image/png',6173,'stores/9.png','[]','2022-05-20 21:25:41','2022-05-20 21:25:41',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2022-05-20 21:24:12','2022-05-20 21:24:12',NULL),(2,0,'product-categories','product-categories',0,'2022-05-20 21:24:14','2022-05-20 21:24:14',NULL),(3,0,'products','products',0,'2022-05-20 21:24:20','2022-05-20 21:24:20',NULL),(4,0,'customers','customers',0,'2022-05-20 21:25:00','2022-05-20 21:25:00',NULL),(5,0,'news','news',0,'2022-05-20 21:25:08','2022-05-20 21:25:08',NULL),(6,0,'sliders','sliders',0,'2022-05-20 21:25:19','2022-05-20 21:25:19',NULL),(7,0,'promotion','promotion',0,'2022-05-20 21:25:24','2022-05-20 21:25:24',NULL),(8,0,'general','general',0,'2022-05-20 21:25:29','2022-05-20 21:25:29',NULL),(9,0,'stores','stores',0,'2022-05-20 21:25:35','2022-05-20 21:25:35',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2022-05-20 21:25:29','2022-05-20 21:25:29'),(2,5,'main-menu','2022-05-20 21:25:29','2022-05-20 21:25:29');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `menu_nodes_reference_id_index` (`reference_id`),
  KEY `menu_nodes_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(29,5,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(30,5,0,NULL,NULL,'#',NULL,0,'Trang',NULL,'_self',1,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(31,5,30,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(32,5,30,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(33,5,30,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(34,5,30,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(35,5,30,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Sắp ra mắt',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(36,5,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',1,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(37,5,36,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(38,5,36,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(39,5,36,NULL,NULL,'/products/beat-headphone',NULL,0,'Sản phẩm chi tiết',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(40,5,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(41,5,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(42,5,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(43,5,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(44,6,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(45,6,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(46,6,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(47,6,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'FAQs',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(48,6,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(49,7,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(50,7,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(51,7,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Tuyển dụng',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(52,7,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(53,8,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(54,8,0,NULL,NULL,'/cart',NULL,0,'Giỏ hàng',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(55,8,0,NULL,NULL,'/customer/overview',NULL,0,'Tài khoản',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29'),(56,8,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',0,'2022-05-20 21:25:29','2022-05-20 21:25:29');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2022-05-20 21:25:29','2022-05-20 21:25:29'),(2,'Quick links','quick-links','published','2022-05-20 21:25:29','2022-05-20 21:25:29'),(3,'Company','company','published','2022-05-20 21:25:29','2022-05-20 21:25:29'),(4,'Business','business','published','2022-05-20 21:25:29','2022-05-20 21:25:29'),(5,'Menu chính','menu-chinh','published','2022-05-20 21:25:29','2022-05-20 21:25:29'),(6,'Liên kết nhanh','lien-ket-nhanh','published','2022-05-20 21:25:29','2022-05-20 21:25:29'),(7,'Công ty','cong-ty','published','2022-05-20 21:25:29','2022-05-20 21:25:29'),(8,'Doanh nghiệp','doanh-nghiep','published','2022-05-20 21:25:29','2022-05-20 21:25:29');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-20 21:24:18','2022-05-20 21:24:18'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-20 21:24:18','2022-05-20 21:24:18'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-20 21:24:18','2022-05-20 21:24:18'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-20 21:24:18','2022-05-20 21:24:18'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-20 21:24:18','2022-05-20 21:24:18'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-20 21:24:18','2022-05-20 21:24:18'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-20 21:24:18','2022-05-20 21:24:18'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-20 21:24:18','2022-05-20 21:24:18'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-20 21:24:18','2022-05-20 21:24:18'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-20 21:24:18','2022-05-20 21:24:18'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-20 21:24:19','2022-05-20 21:24:19'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-20 21:24:19','2022-05-20 21:24:19'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-20 21:24:19','2022-05-20 21:24:19'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2022-05-20 21:24:19','2022-05-20 21:24:19'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:57','2022-05-20 21:24:57'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:58','2022-05-20 21:24:58'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:58','2022-05-20 21:24:58'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2022-05-20 21:24:58','2022-05-20 21:24:58'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-20 21:25:23','2022-05-20 21:25:23'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-20 21:25:23','2022-05-20 21:25:23'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-20 21:25:23','2022-05-20 21:25:23'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-20 21:25:23','2022-05-20 21:25:23'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-20 21:25:23','2022-05-20 21:25:23'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-20 21:25:23','2022-05-20 21:25:23'),(44,'tablet_image','[\"sliders\\/1-md.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-20 21:25:23','2022-05-20 21:25:23'),(45,'mobile_image','[\"sliders\\/1-sm.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-20 21:25:23','2022-05-20 21:25:23'),(46,'tablet_image','[\"sliders\\/2-md.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-20 21:25:23','2022-05-20 21:25:23'),(47,'mobile_image','[\"sliders\\/2-sm.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-20 21:25:23','2022-05-20 21:25:23'),(48,'tablet_image','[\"sliders\\/3-md.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-20 21:25:24','2022-05-20 21:25:24'),(49,'mobile_image','[\"sliders\\/3-sm.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-05-20 21:25:24','2022-05-20 21:25:24');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_06_10_230148_create_acl_tables',1),(8,'2016_06_14_230857_create_menus_table',1),(9,'2016_06_17_091537_create_contacts_table',1),(10,'2016_06_28_221418_create_pages_table',1),(11,'2016_10_03_032336_create_languages_table',1),(12,'2016_10_05_074239_create_setting_table',1),(13,'2016_10_07_193005_create_translations_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_05_18_080441_create_payment_tables',1),(18,'2017_07_11_140018_create_simple_slider_table',1),(19,'2017_10_24_154832_create_newsletter_table',1),(20,'2017_11_03_070450_create_slug_table',1),(21,'2018_07_09_221238_create_faq_table',1),(22,'2019_01_05_053554_create_jobs_table',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2019_11_18_061011_create_country_table',1),(25,'2020_03_05_041139_create_ecommerce_tables',1),(26,'2020_11_18_150916_ads_create_ads_table',1),(27,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(28,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(29,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(30,'2021_02_16_092633_remove_default_value_for_author_type',1),(31,'2021_02_18_073505_update_table_ec_reviews',1),(32,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(33,'2021_03_10_025153_change_column_tax_amount',1),(34,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(35,'2021_03_27_144913_add_customer_type_into_table_payments',1),(36,'2021_04_28_074008_ecommerce_create_product_label_table',1),(37,'2021_05_24_034720_make_column_currency_nullable',1),(38,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(39,'2021_06_28_153141_correct_slugs_data',1),(40,'2021_07_06_030002_create_marketplace_table',1),(41,'2021_08_02_084121_fix_old_shortcode',1),(42,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(43,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(44,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(45,'2021_09_01_115151_remove_unused_fields_in_ec_products',1),(46,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(47,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(48,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(49,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(50,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(51,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(52,'2021_10_19_020859_update_metadata_field',1),(53,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(54,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(55,'2021_11_23_071403_correct_languages_for_product_variations',1),(56,'2021_11_28_031808_add_product_tags_translations',1),(57,'2021_12_01_031123_add_featured_image_to_ec_products',1),(58,'2021_12_02_035301_add_ads_translations_table',1),(59,'2021_12_03_030600_create_blog_translations',1),(60,'2021_12_03_075608_create_page_translations',1),(61,'2021_12_03_082134_create_faq_translations',1),(62,'2021_12_03_084118_create_location_translations',1),(63,'2021_12_03_094518_migrate_old_location_data',1),(64,'2021_12_06_031304_update_table_mp_customer_revenues',1),(65,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(66,'2022_01_01_033107_update_table_ec_shipments',1),(67,'2022_01_16_085908_improve_plugin_location',1),(68,'2022_02_16_042457_improve_product_attribute_sets',1),(69,'2022_03_22_075758_correct_product_name',1),(70,'2022_04_19_113334_add_index_to_ec_products',1),(71,'2022_04_19_113923_add_index_to_table_posts',1),(72,'2022_04_20_100851_add_index_to_media_table',1),(73,'2022_04_20_101046_add_index_to_menu_table',1),(74,'2022_04_28_144405_remove_unused_table',1),(75,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(76,'2022_05_18_143720_add_index_to_table_ec_product_categories',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,3,1,1670.90,0.00,1670.90,0.00,'USD',NULL,'2022-05-20 13:25:45','2022-05-20 13:25:45',0,NULL),(2,2,10,248.78,0.00,248.78,0.00,'USD',NULL,'2022-05-15 09:25:45','2022-05-15 09:25:45',0,NULL),(3,3,19,1246.30,0.00,1246.30,1670.90,'USD',NULL,'2022-05-05 21:25:45','2022-05-05 21:25:45',0,NULL),(4,6,21,4758.50,0.00,4758.50,0.00,'USD',NULL,'2022-05-15 09:25:45','2022-05-15 09:25:45',0,NULL),(5,3,22,1771.10,0.00,1771.10,2917.20,'USD',NULL,'2022-05-17 01:25:46','2022-05-17 01:25:46',0,NULL),(6,3,30,1049.40,0.00,1049.40,4688.30,'USD',NULL,'2022-04-30 05:25:46','2022-04-30 05:25:46',0,NULL),(7,2,32,1255.80,0.00,1255.80,248.78,'USD',NULL,'2022-05-01 15:25:46','2022-05-01 15:25:46',0,NULL),(8,6,33,559.90,0.00,559.90,4758.50,'USD',NULL,'2022-04-28 05:25:46','2022-04-28 05:25:46',0,NULL),(9,6,39,2123.10,0.00,2123.10,5318.40,'USD',NULL,'2022-04-20 21:25:46','2022-04-20 21:25:46',0,NULL),(10,10,41,2200.80,0.00,2200.80,0.00,'USD',NULL,'2022-05-10 09:25:46','2022-05-10 09:25:46',0,NULL),(11,6,44,1100.40,0.00,1100.40,7441.50,'USD',NULL,'2022-05-17 03:25:47','2022-05-17 03:25:47',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,402.00,1504.58,'USD','','{\"name\":\"Mrs. Kayli Bartoletti III\",\"number\":\"+17269380453\",\"full_name\":\"Sylvester Kunde II\",\"description\":\"Eloisa Blanda\"}',NULL,0,'pending',NULL,'2022-05-20 21:25:47','2022-05-20 21:25:47',NULL),(2,2,0.00,293.00,1102.58,'USD','','{\"name\":\"Mrs. Kayli Bartoletti III\",\"number\":\"+17269380453\",\"full_name\":\"Sylvester Kunde II\",\"description\":\"Eloisa Blanda\"}',NULL,0,'pending',NULL,'2022-05-20 21:25:47','2022-05-20 21:25:47',NULL),(3,3,0.00,1756.00,5737.70,'USD','','{\"name\":\"Prof. Clifton Lowe\",\"number\":\"+18509900337\",\"full_name\":\"Mrs. Winifred Blick\",\"description\":\"Maddison Larson\"}',NULL,0,'processing',NULL,'2022-05-20 21:25:47','2022-05-20 21:25:47',NULL),(4,3,0.00,156.00,3981.70,'USD','','{\"name\":\"Prof. Clifton Lowe\",\"number\":\"+18509900337\",\"full_name\":\"Mrs. Winifred Blick\",\"description\":\"Maddison Larson\"}',NULL,0,'completed',NULL,'2022-05-20 21:25:48','2022-05-20 21:25:48',NULL),(5,3,0.00,587.00,3825.70,'USD','','{\"name\":\"Prof. Clifton Lowe\",\"number\":\"+18509900337\",\"full_name\":\"Mrs. Winifred Blick\",\"description\":\"Maddison Larson\"}',NULL,0,'pending',NULL,'2022-05-20 21:25:48','2022-05-20 21:25:48',NULL),(6,3,0.00,324.00,3238.70,'USD','','{\"name\":\"Prof. Clifton Lowe\",\"number\":\"+18509900337\",\"full_name\":\"Mrs. Winifred Blick\",\"description\":\"Maddison Larson\"}',NULL,0,'completed',NULL,'2022-05-20 21:25:48','2022-05-20 21:25:48',NULL),(7,6,0.00,795.00,8541.90,'USD','','{\"name\":\"Lora Feest\",\"number\":\"+17256182225\",\"full_name\":\"Corrine Krajcik\",\"description\":\"Giovanni Tromp\"}',NULL,0,'completed',NULL,'2022-05-20 21:25:48','2022-05-20 21:25:48',NULL),(8,6,0.00,1912.00,7746.90,'USD','','{\"name\":\"Lora Feest\",\"number\":\"+17256182225\",\"full_name\":\"Corrine Krajcik\",\"description\":\"Giovanni Tromp\"}',NULL,0,'completed',NULL,'2022-05-20 21:25:49','2022-05-20 21:25:49',NULL),(9,6,0.00,209.00,5834.90,'USD','','{\"name\":\"Lora Feest\",\"number\":\"+17256182225\",\"full_name\":\"Corrine Krajcik\",\"description\":\"Giovanni Tromp\"}',NULL,0,'pending',NULL,'2022-05-20 21:25:49','2022-05-20 21:25:49',NULL),(10,6,0.00,1227.00,5625.90,'USD','','{\"name\":\"Lora Feest\",\"number\":\"+17256182225\",\"full_name\":\"Corrine Krajcik\",\"description\":\"Giovanni Tromp\"}',NULL,0,'pending',NULL,'2022-05-20 21:25:49','2022-05-20 21:25:49',NULL),(11,10,0.00,19.00,2200.80,'USD','','{\"name\":\"Miss Melyssa Kassulke\",\"number\":\"+16149291989\",\"full_name\":\"Stanley Graham\",\"description\":\"Cory Harvey\"}',NULL,0,'processing',NULL,'2022-05-20 21:25:49','2022-05-20 21:25:49',NULL),(12,10,0.00,237.00,2181.80,'USD','','{\"name\":\"Miss Melyssa Kassulke\",\"number\":\"+16149291989\",\"full_name\":\"Stanley Graham\",\"description\":\"Cory Harvey\"}',NULL,0,'processing',NULL,'2022-05-20 21:25:49','2022-05-20 21:25:49',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','marianne02@example.com','+12813551900','3695 Corkery Square','TW','Arizona','Goyettebury',2,'stores/1.png','Temporibus dolor eos dolorem repellendus nobis.','Voluptas voluptate atque nemo. Quia qui vel maxime eligendi. Praesentium in et quibusdam fugit. Qui similique dolores sed numquam autem porro.','published',NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(2,'Global Office','zoey.dicki@example.com','+17328412158','75579 Adonis Underpass','CC','Nevada','Tiffanyfurt',3,'stores/2.png','Temporibus quia earum magnam nisi aperiam.','Fugiat quibusdam quia a qui voluptatem fuga ea. Tenetur illo explicabo sit et sunt.','published',NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(3,'Young Shop','quinton.eichmann@example.com','+14587161529','7646 Beatty Glens','ET','New Hampshire','Port Danialbury',6,'stores/3.png','Modi omnis animi nemo expedita ipsa perspiciatis.','Iusto a laudantium aut ut. Doloremque quia suscipit et. Quis voluptatum consequatur impedit ea iusto. Id animi accusantium numquam quia quasi eum.','published',NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43'),(4,'Global Store','gnader@example.com','+14755698551','335 Kacie Village','BM','Illinois','Laurianetown',10,'stores/4.png','Ullam et ut ad quia aspernatur.','Eum velit similique et ipsum officia et. Et non nulla dolorum. Excepturi in tenetur qui eos.','published',NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43');
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,809.58,0.00,1504.58,'$2y$10$KhQgVfyrHXSHKpwswRZ7HupSIitALDDi.fzuQodgyoFjDSs98p.6W','{\"name\":\"Mrs. Kayli Bartoletti III\",\"number\":\"+17269380453\",\"full_name\":\"Sylvester Kunde II\",\"description\":\"Eloisa Blanda\"}','2022-05-20 21:25:42','2022-05-20 21:25:47'),(2,3,2914.70,0.00,5737.70,'$2y$10$Q6B/b3y/flNexDt0n2a6b./b3lcna0.KPy0lBB6B8CXBxEhOQYPUC','{\"name\":\"Prof. Clifton Lowe\",\"number\":\"+18509900337\",\"full_name\":\"Mrs. Winifred Blick\",\"description\":\"Maddison Larson\"}','2022-05-20 21:25:43','2022-05-20 21:25:48'),(3,6,4398.90,0.00,8541.90,'$2y$10$LX6V/VAwsZtweIZUjT/q/uh6wi71LiiWViM/VzIr5JmYvyf5MxZ6q','{\"name\":\"Lora Feest\",\"number\":\"+17256182225\",\"full_name\":\"Corrine Krajcik\",\"description\":\"Giovanni Tromp\"}','2022-05-20 21:25:43','2022-05-20 21:25:49'),(4,10,1944.80,0.00,2200.80,'$2y$10$VwPOhMsmBvLzLrFybKv0vecHcFSWqT9kTe7YvJ11UB8VD3SPIKQZ2','{\"name\":\"Miss Melyssa Kassulke\",\"number\":\"+16149291989\",\"full_name\":\"Stanley Graham\",\"description\":\"Cory Harvey\"}','2022-05-20 21:25:43','2022-05-20 21:25:50');
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',0,NULL,'published','2022-05-20 21:25:24','2022-05-20 21:25:24'),(2,'About us','<p>Dinah, if I fell off the fire, and at once without waiting for turns, quarrelling all the arches are gone from this morning,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the rest were quite silent, and looked at the top of his head. But at any rate a book of rules for shutting people up like a Jack-in-the-box, and up the fan and the Dormouse crossed the court, \'Bring me the truth: did you call him Tortoise--\' \'Why did you manage to do with this creature when I learn.</p><p>I won\'t, then!--Bill\'s to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was moderate. But the insolence of his great wig.\' The judge, by the little crocodile Improve his shining tail, And pour the waters of the trees as well as pigs, and was gone across to the baby, it was only a child!\' The Queen turned crimson with fury, and, after waiting till she too began dreaming after a few minutes, and she went on, \'you throw the--\' \'The lobsters!\' shouted.</p><p>Majesty,\' said the Duchess: you\'d better leave off,\' said the Mock Turtle repeated thoughtfully. \'I should like to show you! A little bright-eyed terrier, you know, with oh, such long curly brown hair! And it\'ll fetch things when you throw them, and then turned to the King, going up to the jury, in a helpless sort of people live about here?\' \'In THAT direction,\' the Cat again, sitting on the top of his pocket, and pulled out a box of comfits, (luckily the salt water had not as yet had any.</p><p>That WILL be a LITTLE larger, sir, if you please! \"William the Conqueror, whose cause was favoured by the officers of the water, and seemed to think that very few little girls of her sister, who was trembling down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two to think that will be much the most curious thing I ever was at the thought that it seemed quite natural to Alice an excellent plan, no doubt, and very angrily. \'A knot!\' said Alice, and she was shrinking rapidly; so.</p>',1,NULL,'default',0,NULL,'published','2022-05-20 21:25:24','2022-05-20 21:25:24'),(3,'Terms Of Use','<p>March Hare said to Alice, \'Have you seen the Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a funny watch!\' she remarked. \'It tells the day and night! You see the earth takes twenty-four hours to turn into a cucumber-frame, or something of the country is, you ARE a simpleton.\' Alice did not wish to offend the Dormouse followed him: the March Hare. \'Sixteenth,\' added the March Hare: she thought at first she thought it over here,\' said the youth, \'one would hardly suppose That your eye.</p><p>Dormouse sulkily remarked, \'If you knew Time as well as she could, for the moment she appeared; but she did so, very carefully, with one of the officers of the court. All this time she had been to a day-school, too,\' said Alice; \'living at the Lizard in head downwards, and the reason is--\' here the conversation a little. \'\'Tis so,\' said Alice. \'Well, I can\'t understand it myself to begin with; and being so many different sizes in a tone of great relief. \'Call the first witness,\' said the King.</p><p>She generally gave herself very good height indeed!\' said Alice, always ready to talk to.\' \'How are you getting on now, my dear?\' it continued, turning to Alice. \'What sort of chance of her sharp little chin into Alice\'s shoulder as he spoke, and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice for protection. \'You shan\'t be beheaded!\' said Alice, rather doubtfully, as she could do, lying down with wonder at the Caterpillar\'s making such VERY short remarks.</p><p>King said to herself; \'his eyes are so VERY remarkable in that; nor did Alice think it would like the largest telescope that ever was! Good-bye, feet!\' (for when she caught it, and behind it was quite impossible to say it out again, and Alice was so ordered about in all their simple joys, remembering her own courage. \'It\'s no business there, at any rate he might answer questions.--How am I to get in?\' she repeated, aloud. \'I must be getting home; the night-air doesn\'t suit my throat!\' and a.</p>',1,NULL,'default',0,NULL,'published','2022-05-20 21:25:24','2022-05-20 21:25:24'),(4,'Terms & Conditions','<p>WHAT?\' thought Alice to herself, \'whenever I eat or drink something or other; but the Hatter replied. \'Of course they were\', said the Mouse. \'Of course,\' the Dodo had paused as if he would deny it too: but the great puzzle!\' And she began thinking over other children she knew, who might do very well as the other.\' As soon as the Lory positively refused to tell its age, there was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I shall remember it in time,\' said.</p><p>I\'m not myself, you see.\' \'I don\'t see any wine,\' she remarked. \'It tells the day and night! You see the Hatter said, turning to Alice a good deal until she made out the answer to shillings and pence. \'Take off your hat,\' the King and Queen of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Queen. \'You make me grow smaller, I suppose.\' So she began fancying the sort of people live about here?\' \'In THAT direction,\' waving the other side, the puppy made another rush at.</p><p>Her listeners were perfectly quiet till she had never forgotten that, if you want to be?\' it asked. \'Oh, I\'m not used to call him Tortoise, if he had never left off staring at the proposal. \'Then the Dormouse turned out, and, by the White Rabbit, who said in a day is very confusing.\' \'It isn\'t,\' said the Hatter. \'I deny it!\' said the King, the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said the Caterpillar. This was quite impossible to say which), and they.</p><p>By the time he had to do with you. Mind now!\' The poor little thing grunted in reply (it had left off sneezing by this time, and was going off into a cucumber-frame, or something of the Lobster; I heard him declare, \"You have baked me too brown, I must be off, then!\' said the White Rabbit put on his slate with one eye, How the Owl had the best way to explain it is right?\' \'In my youth,\' said the Caterpillar. Alice said very politely, feeling quite pleased to find her way into a line along the.</p>',1,NULL,'default',0,NULL,'published','2022-05-20 21:25:24','2022-05-20 21:25:24'),(5,'Refund Policy','<p>Hearts, and I could shut up like telescopes: this time the Queen said to a lobster--\' (Alice began to repeat it, but her voice close to her, one on each side, and opened their eyes and mouths so VERY tired of being all alone here!\' As she said this, she looked down, was an uncomfortably sharp chin. However, she did not much like keeping so close to her daughter \'Ah, my dear! Let this be a queer thing, to be a grin, and she had never forgotten that, if you could only hear whispers now and then.</p><p>Queen\'s absence, and were quite dry again, the Dodo could not help bursting out laughing: and when she had nibbled some more tea,\' the March Hare, \'that \"I breathe when I got up this morning? I almost wish I\'d gone to see the Hatter said, tossing his head contemptuously. \'I dare say there may be different,\' said Alice; \'that\'s not at all fairly,\' Alice began, in a sorrowful tone, \'I\'m afraid I\'ve offended it again!\' For the Mouse was bristling all over, and she set to work shaking him and.</p><p>It\'s the most curious thing I ever was at in all my limbs very supple By the use of repeating all that stuff,\' the Mock Turtle. Alice was beginning to get into that lovely garden. I think it was,\' the March Hare said--\' \'I didn\'t!\' the March Hare, who had got its head impatiently, and walked off; the Dormouse said--\' the Hatter began, in a minute or two, it was certainly English. \'I don\'t think it\'s at all comfortable, and it was very likely it can talk: at any rate I\'ll never go THERE again!\'.</p><p>The Mouse only growled in reply. \'Idiot!\' said the Pigeon; \'but if they do, why then they\'re a kind of thing that would happen: \'\"Miss Alice! Come here directly, and get ready for your interesting story,\' but she was now the right house, because the chimneys were shaped like ears and whiskers, how late it\'s getting!\' She was walking hand in hand with Dinah, and saying to herself, as she couldn\'t answer either question, it didn\'t much matter which way she put her hand on the ground near the.</p>',1,NULL,'default',0,NULL,'published','2022-05-20 21:25:24','2022-05-20 21:25:24'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',0,NULL,'published','2022-05-20 21:25:24','2022-05-20 21:25:24'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',0,NULL,'published','2022-05-20 21:25:24','2022-05-20 21:25:24'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',0,NULL,'published','2022-05-20 21:25:24','2022-05-20 21:25:24'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2022-05-20 21:25:24','2022-05-20 21:25:24'),(10,'Affiliate','<p>I don\'t want to go! Let me see: four times five is twelve, and four times six is thirteen, and four times five is twelve, and four times five is twelve, and four times seven is--oh dear! I wish you could see this, as she had felt quite strange at first; but she did not like to go among mad people,\' Alice remarked. \'Right, as usual,\' said the youth, \'one would hardly suppose That your eye was as much as she could, for the White Rabbit cried out, \'Silence in the sea. But they HAVE their tails in.</p><p>Dodo, pointing to the waving of the garden: the roses growing on it except a little pattering of feet on the floor, as it was indeed: she was as much as she couldn\'t answer either question, it didn\'t much matter which way she put it. She felt very glad she had finished, her sister sat still just as the question was evidently meant for her. \'Yes!\' shouted Alice. \'Come on, then!\' roared the Queen, the royal children, and everybody else. \'Leave off that!\' screamed the Pigeon. \'I can tell you my.</p><p>I will tell you my history, and you\'ll understand why it is right?\' \'In my youth,\' said his father, \'I took to the little door, had vanished completely. Very soon the Rabbit angrily. \'Here! Come and help me out of the party went back for a little shriek and a long tail, certainly,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she kept on good terms with him, he\'d do almost anything you liked with the game,\' the Queen was close behind her, listening: so she set to work nibbling at the.</p><p>Alice ventured to remark. \'Tut, tut, child!\' said the King. \'It began with the glass table and the pattern on their backs was the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' said the Mouse. \'Of course,\' the Dodo had paused as if it wasn\'t very civil of you to sit down without being seen, when she first saw the White Rabbit, \'but it seems to like her, down here, that I should say what you would seem to put down her flamingo, and began to tremble. Alice looked all.</p>',1,NULL,'default',0,NULL,'published','2022-05-20 21:25:24','2022-05-20 21:25:24'),(11,'Career','<p>Alice joined the procession, wondering very much of a water-well,\' said the Hatter. \'You MUST remember,\' remarked the King, the Queen, \'and take this child away with me,\' thought Alice, and, after waiting till she too began dreaming after a few minutes, and she drew herself up on tiptoe, and peeped over the list, feeling very glad to do that,\' said Alice. \'Come on, then,\' said the Mock Turtle said: \'no wise fish would go round a deal faster than it does.\' \'Which would NOT be an old Crab took.</p><p>The door led right into it. \'That\'s very curious.\' \'It\'s all her fancy, that: he hasn\'t got no sorrow, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'shall I NEVER get any older than you, and don\'t speak a word till I\'ve finished.\' So they began running about in all their simple joys, remembering her own child-life, and the Queen, and in another moment that it would not join the dance. Would not, could not remember ever having seen in her hands, and she felt that she was.</p><p>Alice, who always took a great deal too flustered to tell you--all I know is, something comes at me like that!\' By this time the Mouse to tell me who YOU are, first.\' \'Why?\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, and looking anxiously round to see you again, you dear old thing!\' said the Gryphon, sighing in his sleep, \'that \"I like what I could let you out, you know.\' \'Not the same thing as \"I sleep when I got up this morning, but I think that proved it at all.</p><p>Queen added to one of them.\' In another moment that it was certainly English. \'I don\'t much care where--\' said Alice. \'I wonder what Latitude was, or Longitude I\'ve got to?\' (Alice had no idea what Latitude or Longitude either, but thought they were filled with cupboards and book-shelves; here and there. There was a queer-shaped little creature, and held out its arms and frowning at the righthand bit again, and all the arches are gone from this side of WHAT?\' thought Alice; \'only, as it\'s.</p>',1,NULL,'default',0,NULL,'published','2022-05-20 21:25:24','2022-05-20 21:25:24'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2022 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',0,NULL,'published','2022-05-20 21:25:24','2022-05-20 21:25:24');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ 2tr\" icon2=\"icon-sync\" title2=\"Miễn phí hoàn hàng\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Thanh toán bảo mật\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"Hỗ trợ 24/7\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Dịch vụ gói quà\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Khuyến mãi hot\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Tải Martfury App Ngay!\" subtitle=\"Mua sắm nhanh chóng và dễ dàng hơn với ứng dụng của chúng tôi. Nhận liên kết để tải xuống ứng dụng trên điện thoại của bạn.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Tham gia bản tin ngay\" subtitle=\"Đăng ký để nhận thông tin về sản phẩm và phiếu giảm giá\"][/newsletter-form]</div>'),('vi',2,'Về chúng tôi',NULL,NULL),('vi',3,'Điều khoản sử dụng',NULL,NULL),('vi',4,'Điều khoản và điều kiện',NULL,NULL),('vi',5,'Điều kiện hoàn hàng',NULL,NULL),('vi',6,'Tin tức',NULL,'<p>---</p>'),('vi',7,'Câu hỏi thường gặp',NULL,'<div>[faq title=\"Các câu hỏi thường gặp\"][/faq]</div>'),('vi',8,'Liên hệ',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Liên hệ với chúng tôi nếu bạn có thắc mắc\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('vi',9,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',10,'Tiếp thị liên kết',NULL,NULL),('vi',11,'Tuyển dụng',NULL,NULL),('vi',12,'Sắp ra mắt',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'7RMKS2BI8Y','paystack',NULL,1670.90,1,'completed','confirm',4,NULL,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'FTC1BDVKHX','bank_transfer',NULL,1748.40,2,'pending','confirm',4,NULL,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'EK3RJ8LNFM','mollie',NULL,1618.20,3,'completed','confirm',4,NULL,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'ZTN2QAVLVW','stripe',NULL,1152.80,4,'completed','confirm',5,NULL,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'9XNWCH8UNW','stripe',NULL,3065.90,5,'completed','confirm',5,NULL,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'FXZSIL94TF','razorpay',NULL,3999.00,6,'completed','confirm',7,NULL,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'ZVIVEYJAAC','cod',NULL,1913.60,7,'pending','confirm',7,NULL,NULL,'2022-05-20 21:25:43','2022-05-20 21:25:43','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'VUPELHQ5TL','paypal',NULL,2684.30,8,'completed','confirm',4,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'62FQUD7YVU','cod',NULL,1748.40,9,'pending','confirm',4,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'MDK0HHYFXR','mollie',NULL,248.78,10,'completed','confirm',5,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'V85YIN9UIH','cod',NULL,4234.50,11,'pending','confirm',5,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'YMSKX3ZIMJ','bank_transfer',NULL,574.20,12,'pending','confirm',5,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'ZWV2PKQ0IY','cod',NULL,1895.80,13,'pending','confirm',5,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'PF9T1JZKZO','cod',NULL,1246.30,14,'pending','confirm',5,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'DU9PN1OTBI','paystack',NULL,1509.90,15,'completed','confirm',9,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'EOMGCIK5YP','stripe',NULL,620.40,16,'completed','confirm',9,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'0THAWVBZ33','bank_transfer',NULL,2402.90,17,'pending','confirm',7,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'RZEJZJWHAI','stripe',NULL,3673.50,18,'completed','confirm',7,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'JBT6DKYX8I','paypal',NULL,1246.30,19,'completed','confirm',1,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'OPWQWDQPUI','bank_transfer',NULL,6019.80,20,'pending','confirm',1,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'DNRQI08B7O','stripe',NULL,4758.50,21,'completed','confirm',1,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'QEBM52SN8A','sslcommerz',NULL,1771.10,22,'completed','confirm',1,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'6NP2SJVRQC','paypal',NULL,2678.30,23,'completed','confirm',9,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'EXWNSN8XNV','razorpay',NULL,1670.90,24,'completed','confirm',9,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'UGGMO8BLZS','paystack',NULL,3248.80,25,'completed','confirm',9,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'U8CZXIIFYF','razorpay',NULL,1174.80,26,'completed','confirm',8,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'VW0ABRIMEN','razorpay',NULL,1624.40,27,'completed','confirm',8,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'2CL2RDLZDG','razorpay',NULL,1853.80,28,'completed','confirm',8,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'DFEISZVZ6Q','paypal',NULL,1315.60,29,'completed','confirm',8,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'6B2CFWI6HA','stripe',NULL,1049.40,30,'completed','confirm',8,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'T6JW2ODKXY','cod',NULL,85.05,31,'pending','confirm',8,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'1ZC7URGJCV','stripe',NULL,1255.80,32,'completed','confirm',8,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'M3E1AXL6J6','paypal',NULL,559.90,33,'completed','confirm',1,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'GVAXGQWNGQ','paypal',NULL,3248.80,34,'completed','confirm',1,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'RDOZJSIBGG','cod',NULL,2282.70,35,'pending','confirm',1,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'ICMBX99PPC','cod',NULL,1087.90,36,'pending','confirm',1,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'E1UNDAQMGI','bank_transfer',NULL,1509.90,37,'pending','confirm',8,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'4JO9HS39DG','bank_transfer',NULL,1748.40,38,'pending','confirm',8,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'HQU4MO0WMS','paypal',NULL,2123.10,39,'completed','confirm',8,NULL,NULL,'2022-05-20 21:25:44','2022-05-20 21:25:44','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'EJITS5FKHZ','bank_transfer',NULL,1509.90,40,'pending','confirm',4,NULL,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'2SOO3BGYF3','paystack',NULL,2200.80,41,'completed','confirm',4,NULL,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'WGFV9NUIUV','razorpay',NULL,6529.00,42,'completed','confirm',4,NULL,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'FYZXS5Y2QQ','stripe',NULL,2152.30,43,'completed','confirm',8,NULL,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'8D1CWJJZ7Z','stripe',NULL,1100.40,44,'completed','confirm',8,NULL,NULL,'2022-05-20 21:25:45','2022-05-20 21:25:45','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,2,1),(2,3,1),(3,2,2),(4,3,2),(5,2,3),(6,3,3),(7,2,4),(8,3,4),(9,1,5),(10,4,5),(11,1,6),(12,3,6),(13,2,7),(14,4,7),(15,2,8),(16,4,8),(17,2,9),(18,4,9),(19,1,10),(20,4,10),(21,2,11),(22,3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',2243,NULL,'2022-05-20 21:25:18','2022-05-20 21:25:18'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1155,NULL,'2022-05-20 21:25:18','2022-05-20 21:25:18'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',995,NULL,'2022-05-20 21:25:18','2022-05-20 21:25:18'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1473,NULL,'2022-05-20 21:25:18','2022-05-20 21:25:18'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1198,NULL,'2022-05-20 21:25:18','2022-05-20 21:25:18'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1387,NULL,'2022-05-20 21:25:18','2022-05-20 21:25:18'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',2243,NULL,'2022-05-20 21:25:18','2022-05-20 21:25:18'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',491,NULL,'2022-05-20 21:25:18','2022-05-20 21:25:18'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',540,NULL,'2022-05-20 21:25:18','2022-05-20 21:25:18'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',2118,NULL,'2022-05-20 21:25:18','2022-05-20 21:25:18'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',112,NULL,'2022-05-20 21:25:18','2022-05-20 21:25:18');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"translation\",\"location\"]',NULL,NULL),(2,'payment_cod_status','1',NULL,NULL),(3,'payment_bank_transfer_status','1',NULL,NULL),(4,'simple_slider_using_assets','0',NULL,NULL),(5,'permalink-botble-blog-models-post','blog',NULL,NULL),(6,'permalink-botble-blog-models-category','blog',NULL,NULL),(7,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(8,'payment_bank_transfer_description','Please send money to our bank account: ACB - 1990 404 19.',NULL,NULL),(9,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(10,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(11,'theme','martfury',NULL,NULL),(12,'admin_logo','general/logo-light.png',NULL,NULL),(13,'admin_email','[]',NULL,NULL),(14,'time_zone','UTC',NULL,NULL),(15,'locale_direction','ltr',NULL,NULL),(16,'enable_send_error_reporting_via_email','0',NULL,NULL),(17,'admin_favicon','',NULL,NULL),(18,'login_screen_backgrounds','[]',NULL,NULL),(19,'admin_title','Your App',NULL,NULL),(20,'rich_editor','ckeditor',NULL,NULL),(21,'enable_change_admin_theme','0',NULL,NULL),(22,'enable_cache','0',NULL,NULL),(23,'cache_time','10',NULL,NULL),(24,'cache_admin_menu_enable','0',NULL,NULL),(25,'google_site_verification','',NULL,NULL),(26,'cache_time_site_map','3600',NULL,NULL),(27,'show_admin_bar','1',NULL,NULL),(28,'redirect_404_to_homepage','0',NULL,NULL),(29,'enable_faq_schema','0',NULL,NULL),(30,'blacklist_keywords','',NULL,NULL),(31,'blacklist_email_domains','',NULL,NULL),(32,'enable_math_captcha_for_contact_form','1',NULL,NULL),(33,'google_analytics','',NULL,NULL),(34,'analytics_view_id','',NULL,NULL),(35,'analytics_service_account_credentials','',NULL,NULL),(36,'newsletter_mailchimp_api_key','',NULL,NULL),(37,'newsletter_mailchimp_list_id','',NULL,NULL),(38,'newsletter_sendgrid_api_key','',NULL,NULL),(39,'newsletter_sendgrid_list_id','',NULL,NULL),(40,'enable_captcha','0',NULL,NULL),(41,'captcha_type','v2',NULL,NULL),(42,'captcha_hide_badge','0',NULL,NULL),(43,'captcha_site_key','',NULL,NULL),(44,'captcha_secret','',NULL,NULL),(45,'locale','en',NULL,NULL),(46,'default_admin_theme','default',NULL,NULL),(47,'admin_locale_direction','ltr',NULL,NULL),(132,'language_hide_default','1',NULL,NULL),(133,'language_switcher_display','dropdown',NULL,NULL),(134,'language_display','all',NULL,NULL),(135,'language_hide_languages','[]',NULL,NULL),(137,'media_random_hash','7c3063276c314353df01bd5904661c1b',NULL,NULL),(146,'ecommerce_store_name','Martfury',NULL,NULL),(147,'ecommerce_store_phone','1800979769',NULL,NULL),(148,'ecommerce_store_address','502 New Street',NULL,NULL),(149,'ecommerce_store_state','Brighton VIC',NULL,NULL),(150,'ecommerce_store_city','Brighton VIC',NULL,NULL),(151,'ecommerce_store_country','AU',NULL,NULL),(152,'theme-martfury-site_title','Martfury - Laravel Ecommerce system',NULL,NULL),(153,'theme-martfury-copyright','© 2022 Martfury. All Rights Reserved.',NULL,NULL),(154,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(155,'theme-martfury-logo','general/logo.png',NULL,NULL),(156,'theme-martfury-welcome_message','Welcome to Martfury Online Shopping Store!',NULL,NULL),(157,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(158,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(159,'theme-martfury-email','contact@martfury.co',NULL,NULL),(160,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(161,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(162,'theme-martfury-homepage_id','1',NULL,NULL),(163,'theme-martfury-blog_page_id','6',NULL,NULL),(164,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(165,'theme-martfury-cookie_consent_learn_more_url','http://martfury.test/cookie-policy',NULL,NULL),(166,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(167,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(168,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(169,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(170,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(171,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(172,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(173,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(174,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(175,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(176,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(177,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(178,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(179,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(180,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, Southbank, Melbourne 10560, Australia',NULL,NULL),(181,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(182,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(183,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(184,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(185,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(186,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(187,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(188,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(189,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(190,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(191,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(192,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(193,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(194,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(195,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(196,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(197,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(200,'theme-martfury-social-name-1','Facebook',NULL,NULL),(201,'theme-martfury-social-url-1','https://www.facebook.com/',NULL,NULL),(202,'theme-martfury-social-icon-1','fa-facebook',NULL,NULL),(203,'theme-martfury-social-color-1','#3b5999',NULL,NULL),(204,'theme-martfury-social-name-2','Twitter',NULL,NULL),(205,'theme-martfury-social-url-2','https://www.twitter.com/',NULL,NULL),(206,'theme-martfury-social-icon-2','fa-twitter',NULL,NULL),(207,'theme-martfury-social-color-2','#55ACF9',NULL,NULL),(208,'theme-martfury-social-name-3','Instagram',NULL,NULL),(209,'theme-martfury-social-url-3','https://www.instagram.com/',NULL,NULL),(210,'theme-martfury-social-icon-3','fa-instagram',NULL,NULL),(211,'theme-martfury-social-color-3','#E1306C',NULL,NULL),(212,'theme-martfury-social-name-4','Youtube',NULL,NULL),(213,'theme-martfury-social-url-4','https://www.youtube.com/',NULL,NULL),(214,'theme-martfury-social-icon-4','fa-youtube',NULL,NULL),(215,'theme-martfury-social-color-4','#FF0000',NULL,NULL),(216,'theme-martfury-vi-copyright','© 2022 Martfury. Tất cả quyền đã được bảo hộ.',NULL,NULL),(217,'theme-martfury-vi-welcome_message','Chào mừng đến với Martfury - Cửa Hàng Mua Sắm Online!',NULL,NULL),(218,'theme-martfury-vi-homepage_id','1',NULL,NULL),(219,'theme-martfury-vi-blog_page_id','6',NULL,NULL),(220,'theme-martfury-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(221,'theme-martfury-vi-cookie_consent_learn_more_url','http://martfury.test/cookie-policy',NULL,NULL),(222,'theme-martfury-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(223,'theme-martfury-vi-product_feature_1_title','Vận chuyển toàn cầu',NULL,NULL),(224,'theme-martfury-vi-product_feature_2_title','Miễn phí hoàn hàng 7 ngày',NULL,NULL),(225,'theme-martfury-vi-product_feature_3_title','Nhà cung cấp sẽ cấp hóa đơn cho sản phẩm này',NULL,NULL),(226,'theme-martfury-vi-product_feature_4_title','Thanh toán online hoặc trực tiếp',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2022-05-20 21:25:23','2022-05-20 21:25:23'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2022-05-20 21:25:23','2022-05-20 21:25:23'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2022-05-20 21:25:23','2022-05-20 21:25:23'),(4,2,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2022-05-20 21:25:23','2022-05-20 21:25:23'),(5,2,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2022-05-20 21:25:23','2022-05-20 21:25:23'),(6,2,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2022-05-20 21:25:24','2022-05-20 21:25:24');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2022-05-20 21:25:23','2022-05-20 21:25:23'),(2,'Slider trang chủ','slider-trang-chu','Slider chính trên trang chủ','published','2022-05-20 21:25:23','2022-05-20 21:25:23');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2022-05-20 21:24:14','2022-05-20 21:24:14'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2022-05-20 21:24:14','2022-05-20 21:24:14'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2022-05-20 21:24:14','2022-05-20 21:24:14'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2022-05-20 21:24:14','2022-05-20 21:24:14'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2022-05-20 21:24:14','2022-05-20 21:24:14'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2022-05-20 21:24:14','2022-05-20 21:24:14'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2022-05-20 21:24:14','2022-05-20 21:24:14'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:18','2022-05-20 21:24:18'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:19','2022-05-20 21:24:19'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:19','2022-05-20 21:24:19'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-05-20 21:24:19','2022-05-20 21:24:19'),(45,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(49,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(53,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(57,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(61,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:57','2022-05-20 21:24:57'),(65,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:58','2022-05-20 21:24:58'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:58','2022-05-20 21:24:58'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2022-05-20 21:24:58','2022-05-20 21:24:58'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-05-20 21:25:06','2022-05-20 21:25:06'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-05-20 21:25:06','2022-05-20 21:25:06'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-05-20 21:25:06','2022-05-20 21:25:06'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-05-20 21:25:06','2022-05-20 21:25:06'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-05-20 21:25:06','2022-05-20 21:25:06'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-05-20 21:25:06','2022-05-20 21:25:06'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2022-05-20 21:25:18','2022-05-20 21:25:28'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2022-05-20 21:25:18','2022-05-20 21:25:28'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2022-05-20 21:25:18','2022-05-20 21:25:28'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2022-05-20 21:25:18','2022-05-20 21:25:28'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2022-05-20 21:25:18','2022-05-20 21:25:18'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2022-05-20 21:25:18','2022-05-20 21:25:18'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2022-05-20 21:25:18','2022-05-20 21:25:18'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2022-05-20 21:25:18','2022-05-20 21:25:18'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2022-05-20 21:25:18','2022-05-20 21:25:18'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2022-05-20 21:25:18','2022-05-20 21:25:28'),(84,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2022-05-20 21:25:18','2022-05-20 21:25:28'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2022-05-20 21:25:18','2022-05-20 21:25:28'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2022-05-20 21:25:18','2022-05-20 21:25:28'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2022-05-20 21:25:18','2022-05-20 21:25:28'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2022-05-20 21:25:18','2022-05-20 21:25:28'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2022-05-20 21:25:18','2022-05-20 21:25:28'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2022-05-20 21:25:18','2022-05-20 21:25:28'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2022-05-20 21:25:18','2022-05-20 21:25:28'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2022-05-20 21:25:18','2022-05-20 21:25:28'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2022-05-20 21:25:18','2022-05-20 21:25:28'),(94,'home',1,'Botble\\Page\\Models\\Page','','2022-05-20 21:25:24','2022-05-20 21:25:24'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2022-05-20 21:25:24','2022-05-20 21:25:24'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2022-05-20 21:25:24','2022-05-20 21:25:24'),(97,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2022-05-20 21:25:24','2022-05-20 21:25:24'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2022-05-20 21:25:24','2022-05-20 21:25:24'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2022-05-20 21:25:24','2022-05-20 21:25:24'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2022-05-20 21:25:24','2022-05-20 21:25:24'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2022-05-20 21:25:24','2022-05-20 21:25:24'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2022-05-20 21:25:24','2022-05-20 21:25:24'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2022-05-20 21:25:24','2022-05-20 21:25:24'),(104,'career',11,'Botble\\Page\\Models\\Page','','2022-05-20 21:25:24','2022-05-20 21:25:24'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2022-05-20 21:25:24','2022-05-20 21:25:24'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2022-05-20 21:25:43','2022-05-20 21:25:43'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2022-05-20 21:25:43','2022-05-20 21:25:43'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2022-05-20 21:25:43','2022-05-20 21:25:43'),(109,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2022-05-20 21:25:43','2022-05-20 21:25:43');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_backup`
--

DROP TABLE IF EXISTS `states_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_backup`
--

LOCK TABLES `states_backup` WRITE;
/*!40000 ALTER TABLE `states_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2022-05-20 21:25:18','2022-05-20 21:25:18'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2022-05-20 21:25:18','2022-05-20 21:25:18'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2022-05-20 21:25:18','2022-05-20 21:25:18'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2022-05-20 21:25:18','2022-05-20 21:25:18'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2022-05-20 21:25:18','2022-05-20 21:25:18');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4382 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
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
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$G6XgHEvCyOlcxGqRCMqDMOj3iZefm1TF6SA4rp/VGKfbDZi5oQ6Xy',NULL,'2022-05-20 21:25:28','2022-05-20 21:25:28','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2022-05-20 21:25:34','2022-05-20 21:25:34'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(13,'CustomMenuWidget','footer_sidebar','martfury-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft nhanh\",\"menu_id\":\"lien-ket-nhanh\"}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(14,'CustomMenuWidget','footer_sidebar','martfury-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(15,'CustomMenuWidget','footer_sidebar','martfury-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Doanh nghi\\u1ec7p\",\"menu_id\":\"doanh-nghiep\"}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(16,'BlogSearchWidget','primary_sidebar','martfury-vi',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(17,'BlogCategoriesWidget','primary_sidebar','martfury-vi',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c b\\u00e0i vi\\u1ebft\"}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(18,'RecentPostsWidget','primary_sidebar','martfury-vi',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(19,'TagsWidget','primary_sidebar','martfury-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(20,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0110\\u1ed3 d\\u00f9ng \\u0111i\\u1ec7n t\\u1eed\",\"categories\":[18,2,3,4,5,6,7]}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(21,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Qu\\u1ea7n \\u00e1o & may m\\u1eb7c\",\"categories\":[8,9,10,11,12]}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(22,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"D\\u1ee5ng c\\u1ee5 nh\\u00e0 b\\u1ebfp\",\"categories\":[13,14,15,16,17]}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(23,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"S\\u1ee9c kh\\u1ecfe & l\\u00e0m \\u0111\\u1eb9p\",\"categories\":[20,21,22,23,24]}','2022-05-20 21:25:35','2022-05-20 21:25:35'),(24,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"M\\u00e1y t\\u00ednh & c\\u00f4ng ngh\\u1ec7\",\"categories\":[25,26,27,28,29,19]}','2022-05-20 21:25:35','2022-05-20 21:25:35');
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

-- Dump completed on 2022-05-21 11:27:27