-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: publify_dev
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.12.04.1

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
-- Table structure for table `articles_tags`
--

DROP TABLE IF EXISTS `articles_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles_tags` (
  `article_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_tags`
--

LOCK TABLES `articles_tags` WRITE;
/*!40000 ALTER TABLE `articles_tags` DISABLE KEYS */;
INSERT INTO `articles_tags` VALUES (3,1),(3,2),(3,3),(3,4),(5,5),(5,1),(5,2);
/*!40000 ALTER TABLE `articles_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8_unicode_ci,
  `base_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'---\nblog_name: ! \'Fitting Room \'\nlimit_article_display: 3\nstatuses_in_timeline: true\ndate_format: ! \'%d %B %Y\'\ntime_format: ! \'%I:%M%p\'\ncustom_url_shortener: \'\'\nlimit_rss_display: 10\nhide_extended_on_rss: false\nfeedburner_url: \'\'\nblog_subtitle: Welcome to the Fitting Room Blog! <br>The social community providing\n  feedback on clothing, outfits, and accessories in your closet and on the rack.\nlang: en_US\nallow_signup: 0\nemail_from: newsletter@blog.thefittingroomapp.com\nadmin_display_elements: 10\ntheme: fr_redesigned\nuse_meta_keyword: false\nmeta_keywords: \'\'\nmeta_description: \'\'\nrss_description: false\nrss_description_text: <hr /><p><small>Original article writen by %author% and published\n  on <a href=\'%blog_url%\'>%blog_name%</a> | <a href=\'%permalink_url%\'>direct link\n  to this article</a> | If you are reading this article elsewhere than <a href=\'%blog_url%\'>%blog_name%</a>,\n  it has been illegally reproduced and without proper authorization.</small></p>\nunindex_categories: false\nunindex_tags: false\nrobots: ! \"User-agent: *\\r\\nAllow: /\\r\\nDisallow: /admin\\r\\n\"\ndofollowify: false\nuse_canonical_url: false\ngoogle_analytics: \'\'\ngoogle_verification: \'\'\ncustom_tracking_field: \'\'\n','http://127.0.0.1:3000');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_categories_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'General',1,'general',NULL,NULL,NULL),(2,'Women\'s Fashion',2,'women-s-fashion','woman, fashion','',NULL),(3,'Men\'s Fashion',3,'men-s-fashion','man, fashion, men','',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorizations`
--

DROP TABLE IF EXISTS `categorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorizations`
--

LOCK TABLES `categorizations` WRITE;
/*!40000 ALTER TABLE `categorizations` DISABLE KEYS */;
INSERT INTO `categorizations` VALUES (1,1,1,NULL),(2,3,1,NULL),(3,NULL,1,NULL),(4,NULL,1,NULL),(5,NULL,1,NULL),(6,NULL,1,NULL),(7,NULL,2,NULL),(8,NULL,1,NULL),(9,NULL,2,NULL),(10,NULL,1,NULL),(11,5,1,NULL),(12,NULL,2,NULL),(13,6,2,NULL);
/*!40000 ALTER TABLE `categorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `extended` text COLLATE utf8_unicode_ci,
  `excerpt` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_filter_id` int(11) DEFAULT NULL,
  `whiteboard` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `allow_pings` tinyint(1) DEFAULT NULL,
  `allow_comments` tinyint(1) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `post_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'read',
  PRIMARY KEY (`id`),
  KEY `index_contents_on_published` (`published`),
  KEY `index_contents_on_text_filter_id` (`text_filter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (2,'Page','about',NULL,'This is an example of a Publify page. You can edit this to write information about yourself or your site so readers know who you are. You can create as many pages as this one as you like and manage all of your content inside Publify.',NULL,NULL,'2013-11-12 14:11:13','2013-11-12 14:11:13',1,NULL,NULL,NULL,NULL,'about',0,NULL,NULL,NULL,NULL,NULL,'--- {}\n','read'),(3,'Article','Welcome to the Fitting Room Blog!','admin','<img src=\"http://sphotos-e.ak.fbcdn.net/hphotos-ak-prn2/1385757_205455092969003_1193360923_n.jpg\" alt=\"Find it in the Appstore\" />','','','2013-11-12 14:15:00','2013-11-12 15:05:10',1,'welcome-to-the-fitting-room-blog','5d3f52ab-a35a-4ffd-974d-531eec96f266',1,'--- \n...\n',NULL,1,0,1,'2013-11-12 14:15:00','published',NULL,'---\npassword: \'\'\n','read'),(5,'Article','Fitting Room Mission','admin','<blockquote>Not sure what to wear? Can\'t decide on what style to buy? </blockquote>\r\n<p>FittingRoom answers those questions for you with the power of collective feedback.<p>\r\n<br>\r\n<strong>Description</strong>\r\n<br>\r\nWith FittingRoom you can:\r\n\r\n<ul>\r\n	<li>Snap a picture of your clothing, outfit, or accessory</li>\r\n\r','\r\n\r\n\r\n\r\n	<li>Ask a question to our community</li>\r\n\r\n	<li>Get notified when the community provides advice</li>\r\n\r\n	<li>Help others by providing advice</li>\r\n\r\n	<li>Follow people whose style you enjoy</li>\r\n</ul>\r\n\r\n\r\n\r\nFittingRoom can not only help you decide on what to purchase or wear, but also can help you discover new styles through other users.','','2013-11-12 15:08:52','2013-11-13 14:07:34',1,'fitting-room-mission','03d53eef-f140-4370-b36d-f78a66d65276',1,'--- \n...\n',NULL,1,0,1,'2013-11-12 15:08:00','published',NULL,'---\npassword: \'\'\n','read'),(6,'Article','Don\'t know what works for you?','admin','<p class=\"subtitle\">Taking the guesswork out of deciding what to wear....</p>\r\n\r\n<img src=\"http://sphotos-g.ak.fbcdn.net/hphotos-ak-prn2/1377247_201026700078509_1821881582_n.jpg\" alt=\"in doubt?\" />','','','2013-11-13 14:03:50','2013-12-04 18:27:11',1,'don-t-know-what-works-for-you','bf5ca52b-cebb-4b82-ab04-6e82009bf0b0',1,'--- \n...\n',NULL,1,0,1,'2013-11-13 14:03:00','published',NULL,'---\npassword: \'\'\n','read'),(7,'Article','Why?','admin','<p class=\"subtitle\">All the fun of shopping buddies...all the honesty of a mother-in-law.How nice sdlfkjaslk,....</p>\r\n<img src=\"http://sphotos-c.ak.fbcdn.net/hphotos-ak-prn2/1381319_201778583336654_1899141930_n.jpg\" alt=\"why\" />','','','2013-11-13 14:20:10','2013-12-04 18:26:44',1,'why','15c636e4-d9b9-4be2-b2f2-2d912c196bbd',1,'--- \n...\n',NULL,1,0,1,'2013-11-13 14:20:00','published',NULL,'---\npassword: \'\'\n','read'),(8,'Page','SHOPPING',NULL,'<strong>SHOPPING</strong>',NULL,NULL,'2013-11-28 09:39:37','2013-11-28 09:39:37',1,NULL,NULL,1,NULL,'shopping',0,NULL,NULL,'2013-11-28 09:39:37',NULL,NULL,'--- {}\n','read'),(9,'Article','Milano - Feragamo ','admin','<p class=\"subtitle\">Lorem iopsdfakj kasdjfhaksjhdf sdifhskdjfhs tksjdhfkjha</p>\r\n<img src=\"http://media.vogue.com/files/filecheck/2013/02/05/treasure-and-bond-cfda-vogue-fashion-fund-03_182039731804.jpg_article_gallery_slideshow_v2.jpg\" alt=\"CLOTHES\" />','','','2013-11-29 13:27:25','2013-12-04 18:26:13',1,'sdfasdf','94835b23-60bf-4550-8576-0d9eae0a7845',1,'--- \n...\n',NULL,1,0,1,'2013-11-29 13:27:00','published',NULL,'---\npassword: \'\'\n','read'),(10,'Article','How to style ? - DIY','admin','<p class=\"subtitle\">asdf  sdkfjh saksajd hfklsdjahflks lsdkfjlsajkhfkjsdhfklsdjahf</p>\r\n<img src=\"http://isharafashion.com/slid/12.jpg\" alt=\"asd\" />','','','2013-11-29 13:37:39','2013-12-04 18:25:49',1,'post','0bde3482-42fa-4506-9373-b411bff6d462',1,'--- \n...\n',NULL,1,0,1,'2013-11-29 13:37:00','published',NULL,'---\npassword: \'\'\n','read'),(11,'Article','Fashion Show-New York','admin','<p class=\"subtitle\">asdkfjhasd fklsjdhfklajshfd klsajdhfkl asjgh kasaklsjdfhkasdjhgkajshdglks</p>\r\n<img src=\"http://edanafashion.files.wordpress.com/2013/09/kaviar-gauche-autumn_winter-2012-runway-show-mercedes-benz-berlin-fashion-week_0451.jpg\" alt=\"fashion show\" />','','','2013-12-03 14:58:42','2013-12-04 18:00:47',1,'fashion-show-new-york','7ce9983e-06fe-4eab-9ece-614464b33bb8',1,'--- \n...\n',NULL,1,0,1,'2013-12-03 14:58:00','published',NULL,'---\npassword: \'\'\n','read'),(12,'Article','Red dresses for all styles','admin','<p class=\"subtitle\"><em>Red dresses for everyone</em></p>\r\n<img src=\"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQENlR5cFoYy3IR48A2QirOnfU3HJCMp6WtV2TcX17dqgq6vx2D\" alt=\"dev\" />\r\n<a href=\"http://vdgfgfdg\">','','','2013-12-04 13:17:07','2013-12-05 15:14:49',1,'red-dresses-for-all-styles','a942ae79-0c9b-458b-b2a6-b5599b1d6d05',1,'--- \n...\n',NULL,1,0,1,'2013-12-04 13:17:00','published',NULL,'---\npassword: \'\'\n','read'),(13,'Article','Shadowy make-up','admin','<p class=\"subtitle\"> Eye make-up </p>\r\n<img src=\"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSEdg54VaAwT5DNy3caVbEvH8E2APQXSmLHybjxDAjkraYvu-yXYg\" alt=\"eyes\" />','','','2013-12-04 13:29:11','2013-12-04 17:59:54',1,'dfa','186d9fe0-23b7-4bf6-b023-8d723152faaa',1,'--- \n...\n',NULL,1,0,1,'2013-12-04 13:29:00','published',NULL,'---\npassword: \'\'\n','read'),(14,'Article','Vogue Style for fall','admin','<p class=\"subtitle\"> lslad kasjdhf aslasdkfj sldkfjalskdjflasdkjflaksjdflkjasfjsldkfjlaskdjfl;akjsdflkjaslfdkjlasdjflkasjflksajdllajksdf klas dflaskjdfh askld flaksjdfh aklfjdshakdf laksjd fklajshfkljahs dkfjhaksldjfh aklsdfjh alksdjh</p>\r\n<img src=\"http://www.gotceleb.com/wp-content/uploads/celebrities/karolina-kurkova/8211-2010-2011-fashion-show-elie-saab-haute-couture-fall-winter/karolina-kurkova-2010-2011-fashion-show-elie-saab-haute-couture-fallwinter-12-2200x1465.jpg\" alt=\"vogue\" />\r\n<br />','','','2013-12-05 14:20:31','2013-12-05 16:04:02',1,'vogue-style-for-fall','80051a44-5bdf-4444-b3e7-1c4a71598c2e',1,'--- \n...\n',NULL,1,0,1,'2013-12-05 14:20:00','published',NULL,'---\npassword: \'\'\n','read'),(15,'Article','Draft article 15','admin','<p class=\"subtitle\">sdf</p>','','','2013-12-10 15:59:26','2013-12-10 15:59:56',1,'draft-article-15','40b1641e-0270-4b13-bff5-14f7c5d32184',1,'--- \n...\n',NULL,0,0,1,NULL,'draft',NULL,'---\npassword: \'\'\n','read');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `excerpt` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_filter_id` int(11) DEFAULT NULL,
  `whiteboard` text COLLATE utf8_unicode_ci,
  `article_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `published_at` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_confirmed` tinyint(1) DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_feedback_on_article_id` (`article_id`),
  KEY `index_feedback_on_text_filter_id` (`text_filter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Comment',NULL,'df','sdfdfsd',NULL,'2013-11-18 10:08:16','2013-11-18 10:08:16',NULL,'ce55481b-5b7d-45a2-8b44-80e63f438ec6',NULL,NULL,7,'sdfd','http://sdfsd','127.0.0.1',NULL,1,NULL,'presumed_ham',0,'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/30.0.1599.114 Chrome/30.0.1599.114 Safari/537.36'),(2,'Comment',NULL,'dsvv','vs',NULL,'2013-11-18 10:08:34','2013-11-18 10:08:34',NULL,'ace5b43c-07e2-4a2f-8a2a-a3e192daa0f7',NULL,NULL,7,'dsvvd','','127.0.0.1',NULL,1,NULL,'presumed_ham',0,'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/30.0.1599.114 Chrome/30.0.1599.114 Safari/537.36'),(3,'Comment',NULL,'sd','sdfasf',NULL,'2013-11-29 14:48:28','2013-11-29 14:48:28',1,'503b0927-a243-4e9b-b2e3-5bae73b8f46a',NULL,NULL,9,'sdf','http://sdf','127.0.0.1',NULL,1,NULL,'ham',1,'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/30.0.1599.114 Chrome/30.0.1599.114 Safari/537.36'),(4,'Comment',NULL,'cris','dfasf',NULL,'2013-12-05 14:07:17','2013-12-05 14:07:17',NULL,'d957dce5-28a7-45d0-9cfa-48d6577a8b6b',NULL,NULL,13,'asdf','http://sdfsadf','127.0.0.1',NULL,1,NULL,'presumed_ham',0,'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/30.0.1599.114 Chrome/30.0.1599.114 Safari/537.36'),(5,'Comment',NULL,'sdf','sdf',NULL,'2013-12-05 15:36:37','2013-12-05 15:36:37',NULL,'87f7c94c-89e5-48cc-9da7-d45b2d5e0365',NULL,NULL,12,'sdfasdf','http://asdf','127.0.0.1',NULL,1,NULL,'presumed_ham',0,'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/30.0.1599.114 Chrome/30.0.1599.114 Safari/537.36'),(6,'Comment',NULL,'v','hkkhkhkhk',NULL,'2013-12-06 10:57:25','2013-12-06 10:57:25',NULL,'7f66772b-b2f2-45bb-b695-a72bc4cb544e',NULL,NULL,12,'kj','http://j','127.0.0.1',NULL,1,NULL,'presumed_ham',0,'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/30.0.1599.114 Chrome/30.0.1599.114 Safari/537.36'),(7,'Comment',NULL,'daf','sdsfsg',NULL,'2013-12-10 13:10:14','2013-12-10 13:10:14',NULL,'f24110f7-04e9-4894-9f97-bcfd669ec605',NULL,NULL,13,'fs','http://sf','127.0.0.1',NULL,1,NULL,'presumed_ham',0,'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/30.0.1599.114 Chrome/30.0.1599.114 Safari/537.36'),(8,'Comment',NULL,'fgd','dfdhfj',NULL,'2013-12-10 13:10:24','2013-12-10 13:10:24',NULL,'d95d0980-e3fe-4b0f-9830-64ce4d2066ad',NULL,NULL,13,'gd','http://gfd','127.0.0.1',NULL,1,NULL,'presumed_ham',0,'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/30.0.1599.114 Chrome/30.0.1599.114 Safari/537.36');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_caches`
--

DROP TABLE IF EXISTS `page_caches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_caches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_caches_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_caches`
--

LOCK TABLES `page_caches` WRITE;
/*!40000 ALTER TABLE `page_caches` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_caches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pings`
--

DROP TABLE IF EXISTS `pings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pings_on_article_id` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pings`
--

LOCK TABLES `pings` WRITE;
/*!40000 ALTER TABLE `pings` DISABLE KEYS */;
/*!40000 ALTER TABLE `pings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_types`
--

DROP TABLE IF EXISTS `post_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_types`
--

LOCK TABLES `post_types` WRITE;
/*!40000 ALTER TABLE `post_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nicename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modules` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'admin','Publify administrator','---\n- :dashboard\n- :articles\n- :notes\n- :pages\n- :feedback\n- :media\n- :themes\n- :sidebar\n- :profile\n- :users\n- :settings\n- :seo\n'),(2,'publisher','Blog publisher','---\n- :dashboard\n- :articles\n- :notes\n- :pages\n- :feedback\n- :media\n- :profile\n'),(3,'contributor','Contributor','---\n- :dashboard\n- :profile\n');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_rights`
--

DROP TABLE IF EXISTS `profiles_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_rights` (
  `profile_id` int(11) DEFAULT NULL,
  `right_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_rights`
--

LOCK TABLES `profiles_rights` WRITE;
/*!40000 ALTER TABLE `profiles_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirections`
--

DROP TABLE IF EXISTS `redirections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redirections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) DEFAULT NULL,
  `redirect_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirections`
--

LOCK TABLES `redirections` WRITE;
/*!40000 ALTER TABLE `redirections` DISABLE KEYS */;
INSERT INTO `redirections` VALUES (2,3,2),(3,5,3),(4,6,4),(5,7,5),(6,9,6),(7,10,7),(8,11,8),(9,12,9),(10,13,10),(11,14,11);
/*!40000 ALTER TABLE `redirections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirects`
--

DROP TABLE IF EXISTS `redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirects`
--

LOCK TABLES `redirects` WRITE;
/*!40000 ALTER TABLE `redirects` DISABLE KEYS */;
INSERT INTO `redirects` VALUES (2,'eygoS9','http://127.0.0.1:3000/2013/11/12/welcome-to-the-fitting-room-blog',NULL,'2013-11-12 14:17:59','2013-11-12 14:17:59'),(3,'qKqFAw','http://127.0.0.1:3000/2013/11/12/fitting-room-mission',NULL,'2013-11-12 15:11:03','2013-11-12 15:11:03'),(4,'AkHcX8','http://127.0.0.1:3000/2013/11/13/don-t-know-what-works-for-you',NULL,'2013-11-13 14:04:37','2013-11-13 14:04:37'),(5,'Esi328','http://127.0.0.1:3000/2013/11/13/why',NULL,'2013-11-13 14:20:47','2013-11-13 14:20:47'),(6,'Hz2FDm','http://127.0.0.1:3000/2013/11/29/sdfasdf',NULL,'2013-11-29 13:27:36','2013-11-29 13:27:36'),(7,'BtJEVN','http://127.0.0.1:3000/2013/11/29/post',NULL,'2013-11-29 13:37:50','2013-11-29 13:37:50'),(8,'q2pXFa','http://127.0.0.1:3000/2013/12/03/fashion-show-new-york',NULL,'2013-12-03 14:59:26','2013-12-03 14:59:26'),(9,'0QR3Ji','http://127.0.0.1:3000/2013/12/04/red-dresses-for-all-styles',NULL,'2013-12-04 13:17:09','2013-12-04 13:17:09'),(10,'gHzmLq','http://127.0.0.1:3000/2013/12/04/dfa',NULL,'2013-12-04 13:30:39','2013-12-04 13:30:39'),(11,'eQYOP8','http://127.0.0.1:3000/2013/12/05/vogue-style-for-fall',NULL,'2013-12-05 14:21:49','2013-12-05 14:21:49');
/*!40000 ALTER TABLE `redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` int(11) DEFAULT NULL,
  `upload` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `itunes_metadata` tinyint(1) DEFAULT NULL,
  `itunes_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itunes_subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itunes_duration` int(11) DEFAULT NULL,
  `itunes_summary` text COLLATE utf8_unicode_ci,
  `itunes_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itunes_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itunes_explicit` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('100'),('101'),('102'),('103'),('104'),('105'),('106'),('107'),('108'),('109'),('110'),('111'),('112'),('113'),('114'),('92'),('93'),('94'),('95'),('96'),('97'),('98'),('99');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidebars`
--

DROP TABLE IF EXISTS `sidebars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sidebars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active_position` int(11) DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci,
  `staged_position` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidebars`
--

LOCK TABLES `sidebars` WRITE;
/*!40000 ALTER TABLE `sidebars` DISABLE KEYS */;
INSERT INTO `sidebars` VALUES (1,1,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nmaximum_pages: \'100\'\n',0,'PageSidebar'),(3,3,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntitle: Archives\nshow_count: true\ncount: \'12\'\n',NULL,'ArchivesSidebar'),(4,0,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntitle: Connect\nbody: \'\'\n',NULL,'StaticSidebar'),(6,4,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntitle: Popular posts\ncount: \'4\'\n',NULL,'PopularSidebar'),(7,5,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntitle: Filter Posts\n',NULL,'SearchSidebar'),(8,6,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntitle: Search\n',NULL,'LivesearchSidebar'),(9,7,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncount: true\n',NULL,'AuthorsSidebar'),(10,2,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ncount: true\nempty: true\n',NULL,'CategorySidebar');
/*!40000 ALTER TABLE `sidebars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitealizer`
--

DROP TABLE IF EXISTS `sitealizer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitealizer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitealizer`
--

LOCK TABLES `sitealizer` WRITE;
/*!40000 ALTER TABLE `sitealizer` DISABLE KEYS */;
/*!40000 ALTER TABLE `sitealizer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'fitting-room','2013-11-12 15:04:31','2013-11-12 15:04:31','fitting room'),(2,'app','2013-11-12 15:04:31','2013-11-12 15:04:31','app'),(3,'fitting','2013-11-12 15:05:00','2013-11-12 15:05:00','fitting'),(4,'appstore','2013-11-12 15:05:00','2013-11-12 15:05:00','appstore'),(5,'description','2013-11-12 15:10:52','2013-11-12 15:10:52','description');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text_filters`
--

DROP TABLE IF EXISTS `text_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `text_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `markup` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filters` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text_filters`
--

LOCK TABLES `text_filters` WRITE;
/*!40000 ALTER TABLE `text_filters` DISABLE KEYS */;
INSERT INTO `text_filters` VALUES (1,'none','None','none','--- []\n','--- {}\n'),(2,'markdown','Markdown','markdown','--- []\n','--- {}\n'),(3,'smartypants','SmartyPants','none','---\n- :smartypants\n','--- {}\n'),(4,'markdown smartypants','Markdown with SmartyPants','markdown','---\n- :smartypants\n','--- {}\n'),(5,'textile','Textile','textile','--- []\n','--- {}\n');
/*!40000 ALTER TABLE `text_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triggers`
--

DROP TABLE IF EXISTS `triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `triggers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pending_item_id` int(11) DEFAULT NULL,
  `pending_item_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `due_at` datetime DEFAULT NULL,
  `trigger_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triggers`
--

LOCK TABLES `triggers` WRITE;
/*!40000 ALTER TABLE `triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci,
  `name` text COLLATE utf8_unicode_ci,
  `notify_via_email` tinyint(1) DEFAULT NULL,
  `notify_on_new_articles` tinyint(1) DEFAULT NULL,
  `notify_on_comments` tinyint(1) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token_expires_at` datetime DEFAULT NULL,
  `text_filter_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1',
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'active',
  `last_connection` datetime DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `resource_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','db15f0bcdf8785a2445a158c570802ec5b5cc5a0','icmarinescu23@gmail.com','admin',NULL,NULL,NULL,1,'926cc306edf0b0964158d583dadd299e7d20ff3f','2013-12-27 10:32:15','1','active','2013-12-13 11:27:58','---\nnickname: Publify Admin\n',NULL);
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

-- Dump completed on 2013-12-17 15:54:44
