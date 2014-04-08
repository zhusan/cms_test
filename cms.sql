-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: cms_development
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `alchemy_attachments`
--

DROP TABLE IF EXISTS `alchemy_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `cached_tag_list` text COLLATE utf8_unicode_ci,
  `file_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_attachments_on_file_uid` (`file_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_attachments`
--

LOCK TABLES `alchemy_attachments` WRITE;
/*!40000 ALTER TABLE `alchemy_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_cells`
--

DROP TABLE IF EXISTS `alchemy_cells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_cells` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_cells`
--

LOCK TABLES `alchemy_cells` WRITE;
/*!40000 ALTER TABLE `alchemy_cells` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_cells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_contents`
--

DROP TABLE IF EXISTS `alchemy_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `essence_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `essence_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_contents_on_element_id_and_position` (`element_id`,`position`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_contents`
--

LOCK TABLES `alchemy_contents` WRITE;
/*!40000 ALTER TABLE `alchemy_contents` DISABLE KEYS */;
INSERT INTO `alchemy_contents` VALUES (1,'headline','Alchemy::EssenceText',1,1,1,'2014-04-02 10:07:44','2014-04-02 10:07:44',1,1),(2,'picture','Alchemy::EssencePicture',1,1,1,'2014-04-02 10:07:44','2014-04-02 10:07:44',1,1),(3,'text','Alchemy::EssenceRichtext',1,1,1,'2014-04-02 10:07:44','2014-04-02 10:07:44',1,1),(4,'headline','Alchemy::EssenceText',2,2,1,'2014-04-03 07:26:14','2014-04-03 07:26:14',1,1),(5,'picture','Alchemy::EssencePicture',2,2,1,'2014-04-03 07:26:14','2014-04-03 07:26:14',1,1),(6,'text','Alchemy::EssenceRichtext',2,2,1,'2014-04-03 07:26:14','2014-04-03 07:26:14',1,1),(10,'headline','Alchemy::EssenceText',4,4,1,'2014-04-03 07:40:12','2014-04-03 07:40:12',1,1),(11,'picture','Alchemy::EssencePicture',4,4,1,'2014-04-03 07:40:12','2014-04-03 07:40:12',1,1),(12,'text','Alchemy::EssenceRichtext',4,4,1,'2014-04-03 07:40:12','2014-04-03 07:40:12',1,1);
/*!40000 ALTER TABLE `alchemy_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_elements`
--

DROP TABLE IF EXISTS `alchemy_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `public` tinyint(1) DEFAULT '1',
  `folded` tinyint(1) DEFAULT '0',
  `unique` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `cell_id` int(11) DEFAULT NULL,
  `cached_tag_list` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_elements_on_page_id_and_position` (`page_id`,`position`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_elements`
--

LOCK TABLES `alchemy_elements` WRITE;
/*!40000 ALTER TABLE `alchemy_elements` DISABLE KEYS */;
INSERT INTO `alchemy_elements` VALUES (1,'article',1,3,1,0,1,'2014-04-02 10:07:44','2014-04-02 10:07:44',1,1,NULL,NULL),(2,'article',1,5,1,0,1,'2014-04-03 07:26:14','2014-04-03 07:26:14',1,1,NULL,NULL),(4,'article',1,7,1,0,1,'2014-04-03 07:40:12','2014-04-03 07:40:12',1,1,NULL,NULL);
/*!40000 ALTER TABLE `alchemy_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_elements_alchemy_pages`
--

DROP TABLE IF EXISTS `alchemy_elements_alchemy_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_elements_alchemy_pages` (
  `element_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_elements_alchemy_pages`
--

LOCK TABLES `alchemy_elements_alchemy_pages` WRITE;
/*!40000 ALTER TABLE `alchemy_elements_alchemy_pages` DISABLE KEYS */;
INSERT INTO `alchemy_elements_alchemy_pages` VALUES (1,3),(2,5),(4,7);
/*!40000 ALTER TABLE `alchemy_elements_alchemy_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_booleans`
--

DROP TABLE IF EXISTS `alchemy_essence_booleans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_booleans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_essence_booleans_on_value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_booleans`
--

LOCK TABLES `alchemy_essence_booleans` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_booleans` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_booleans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_dates`
--

DROP TABLE IF EXISTS `alchemy_essence_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_dates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_dates`
--

LOCK TABLES `alchemy_essence_dates` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_dates` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_files`
--

DROP TABLE IF EXISTS `alchemy_essence_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_files`
--

LOCK TABLES `alchemy_essence_files` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_htmls`
--

DROP TABLE IF EXISTS `alchemy_essence_htmls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_htmls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` text COLLATE utf8_unicode_ci,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_htmls`
--

LOCK TABLES `alchemy_essence_htmls` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_htmls` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_htmls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_links`
--

DROP TABLE IF EXISTS `alchemy_essence_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_links`
--

LOCK TABLES `alchemy_essence_links` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_pictures`
--

DROP TABLE IF EXISTS `alchemy_essence_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture_id` int(11) DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `crop_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crop_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `render_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_pictures`
--

LOCK TABLES `alchemy_essence_pictures` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_pictures` DISABLE KEYS */;
INSERT INTO `alchemy_essence_pictures` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2014-04-02 10:07:44','2014-04-02 10:07:44','','',NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2014-04-03 07:26:14','2014-04-03 07:26:14','','',NULL),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2014-04-03 07:40:12','2014-04-03 07:40:12','','',NULL);
/*!40000 ALTER TABLE `alchemy_essence_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_richtexts`
--

DROP TABLE IF EXISTS `alchemy_essence_richtexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_richtexts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8_unicode_ci,
  `stripped_body` text COLLATE utf8_unicode_ci,
  `public` tinyint(1) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_richtexts`
--

LOCK TABLES `alchemy_essence_richtexts` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_richtexts` DISABLE KEYS */;
INSERT INTO `alchemy_essence_richtexts` VALUES (1,'<p><strong>How to get started.</strong></p><p>First of all you should read about Alchemy and its architecture in the <a class=\"external\" href=\"http://guides.alchemy-cms.com/edge/alchemy_approach.html\" target=\"_blank\" data-link-target=\"blank\">guidelines</a>.</p><p>The most important things to know about Alchemy are elements and page layouts.</p><p><span style=\"text-decoration: underline;\"><strong>Elements:</strong></span></p><p>With Alchemy you can split pages into content parts, elements. These elements can be defined out of several base content types: essences. The basic essences are:</p><ul><li>EssenceText - <em>A single line of text</em></li><li>EssenceRichtext - <em>A TinyMCE powered formatted text block</em></li><li>EssencePicture - <em>A reference to an image</em></li><li>EssenceHtml - <em>HTML embed code</em></li><li>EssenceSelect - <em>A selection of values</em></li><li>EssenceBoolean - <em>A checkbox</em></li></ul><p>Elements get defined in a YAML file <strong>config/alchemy/elements.yml</strong></p><p><a class=\"external\" href=\"http://guides.alchemy-cms.com/edge/elements.html\" target=\"_blank\" data-link-target=\"blank\">Read more about elements and how to define them in the guidelines.</a></p><p><span style=\"text-decoration: underline;\"><strong>Page types:</strong></span></p><p>You can define several types of pages, called page layouts. You can assign elements to page layouts and control how elements and the page of a certain layout behave.</p><p>Page layouts get defined in a YAML file <strong>config/alchemy/page_layouts.yml</strong></p><p><a class=\"external\" href=\"http://guides.alchemy-cms.com/edge/page_layouts.html\" target=\"_blank\" data-link-target=\"blank\">Read more about defining page layouts in the guidelines.</a></p>','How to get started.First of all you should read about Alchemy and its architecture in the guidelines.The most important things to know about Alchemy are elements and page layouts.Elements:With Alchemy you can split pages into content parts, elements. These elements can be defined out of several base content types: essences. The basic essences are:EssenceText - A single line of textEssenceRichtext - A TinyMCE powered formatted text blockEssencePicture - A reference to an imageEssenceHtml - HTML embed codeEssenceSelect - A selection of valuesEssenceBoolean - A checkboxElements get defined in a YAML file config/alchemy/elements.ymlRead more about elements and how to define them in the guidelines.Page types:You can define several types of pages, called page layouts. You can assign elements to page layouts and control how elements and the page of a certain layout behave.Page layouts get defined in a YAML file config/alchemy/page_layouts.ymlRead more about defining page layouts in the guidelines.',NULL,1,1,'2014-04-02 10:07:44','2014-04-02 10:07:44'),(2,'<p><strong>How to get started.</strong></p><p>First of all you should read about Alchemy and its architecture in the <a class=\"external\" href=\"http://guides.alchemy-cms.com/edge/alchemy_approach.html\" target=\"_blank\" data-link-target=\"blank\">guidelines</a>.</p><p>The most important things to know about Alchemy are elements and page layouts.</p><p><span style=\"text-decoration: underline;\"><strong>Elements:</strong></span></p><p>With Alchemy you can split pages into content parts, elements. These elements can be defined out of several base content types: essences. The basic essences are:</p><ul><li>EssenceText - <em>A single line of text</em></li><li>EssenceRichtext - <em>A TinyMCE powered formatted text block</em></li><li>EssencePicture - <em>A reference to an image</em></li><li>EssenceHtml - <em>HTML embed code</em></li><li>EssenceSelect - <em>A selection of values</em></li><li>EssenceBoolean - <em>A checkbox</em></li></ul><p>Elements get defined in a YAML file <strong>config/alchemy/elements.yml</strong></p><p><a class=\"external\" href=\"http://guides.alchemy-cms.com/edge/elements.html\" target=\"_blank\" data-link-target=\"blank\">Read more about elements and how to define them in the guidelines.</a></p><p><span style=\"text-decoration: underline;\"><strong>Page types:</strong></span></p><p>You can define several types of pages, called page layouts. You can assign elements to page layouts and control how elements and the page of a certain layout behave.</p><p>Page layouts get defined in a YAML file <strong>config/alchemy/page_layouts.yml</strong></p><p><a class=\"external\" href=\"http://guides.alchemy-cms.com/edge/page_layouts.html\" target=\"_blank\" data-link-target=\"blank\">Read more about defining page layouts in the guidelines.</a></p>','How to get started.First of all you should read about Alchemy and its architecture in the guidelines.The most important things to know about Alchemy are elements and page layouts.Elements:With Alchemy you can split pages into content parts, elements. These elements can be defined out of several base content types: essences. The basic essences are:EssenceText - A single line of textEssenceRichtext - A TinyMCE powered formatted text blockEssencePicture - A reference to an imageEssenceHtml - HTML embed codeEssenceSelect - A selection of valuesEssenceBoolean - A checkboxElements get defined in a YAML file config/alchemy/elements.ymlRead more about elements and how to define them in the guidelines.Page types:You can define several types of pages, called page layouts. You can assign elements to page layouts and control how elements and the page of a certain layout behave.Page layouts get defined in a YAML file config/alchemy/page_layouts.ymlRead more about defining page layouts in the guidelines.',NULL,1,1,'2014-04-03 07:26:14','2014-04-03 07:26:14'),(4,'<p><strong>How to get started.</strong></p><p>First of all you should read about Alchemy and its architecture in the <a class=\"external\" href=\"http://guides.alchemy-cms.com/edge/alchemy_approach.html\" target=\"_blank\" data-link-target=\"blank\">guidelines</a>.</p><p>The most important things to know about Alchemy are elements and page layouts.</p><p><span style=\"text-decoration: underline;\"><strong>Elements:</strong></span></p><p>With Alchemy you can split pages into content parts, elements. These elements can be defined out of several base content types: essences. The basic essences are:</p><ul><li>EssenceText - <em>A single line of text</em></li><li>EssenceRichtext - <em>A TinyMCE powered formatted text block</em></li><li>EssencePicture - <em>A reference to an image</em></li><li>EssenceHtml - <em>HTML embed code</em></li><li>EssenceSelect - <em>A selection of values</em></li><li>EssenceBoolean - <em>A checkbox</em></li></ul><p>Elements get defined in a YAML file <strong>config/alchemy/elements.yml</strong></p><p><a class=\"external\" href=\"http://guides.alchemy-cms.com/edge/elements.html\" target=\"_blank\" data-link-target=\"blank\">Read more about elements and how to define them in the guidelines.</a></p><p><span style=\"text-decoration: underline;\"><strong>Page types:</strong></span></p><p>You can define several types of pages, called page layouts. You can assign elements to page layouts and control how elements and the page of a certain layout behave.</p><p>Page layouts get defined in a YAML file <strong>config/alchemy/page_layouts.yml</strong></p><p><a class=\"external\" href=\"http://guides.alchemy-cms.com/edge/page_layouts.html\" target=\"_blank\" data-link-target=\"blank\">Read more about defining page layouts in the guidelines.</a></p>','How to get started.First of all you should read about Alchemy and its architecture in the guidelines.The most important things to know about Alchemy are elements and page layouts.Elements:With Alchemy you can split pages into content parts, elements. These elements can be defined out of several base content types: essences. The basic essences are:EssenceText - A single line of textEssenceRichtext - A TinyMCE powered formatted text blockEssencePicture - A reference to an imageEssenceHtml - HTML embed codeEssenceSelect - A selection of valuesEssenceBoolean - A checkboxElements get defined in a YAML file config/alchemy/elements.ymlRead more about elements and how to define them in the guidelines.Page types:You can define several types of pages, called page layouts. You can assign elements to page layouts and control how elements and the page of a certain layout behave.Page layouts get defined in a YAML file config/alchemy/page_layouts.ymlRead more about defining page layouts in the guidelines.',NULL,1,1,'2014-04-03 07:40:12','2014-04-03 07:40:12');
/*!40000 ALTER TABLE `alchemy_essence_richtexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_selects`
--

DROP TABLE IF EXISTS `alchemy_essence_selects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_selects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_essence_selects_on_value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_selects`
--

LOCK TABLES `alchemy_essence_selects` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_selects` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_selects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_spree_products`
--

DROP TABLE IF EXISTS `alchemy_essence_spree_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_spree_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spree_product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_essence_spree_products_on_spree_product_id` (`spree_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_spree_products`
--

LOCK TABLES `alchemy_essence_spree_products` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_spree_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_spree_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_spree_taxons`
--

DROP TABLE IF EXISTS `alchemy_essence_spree_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_spree_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxon_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_essence_spree_taxons_on_taxon_id` (`taxon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_spree_taxons`
--

LOCK TABLES `alchemy_essence_spree_taxons` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_spree_taxons` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_spree_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_texts`
--

DROP TABLE IF EXISTS `alchemy_essence_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_texts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public` tinyint(1) DEFAULT '0',
  `link_target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_texts`
--

LOCK TABLES `alchemy_essence_texts` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_texts` DISABLE KEYS */;
INSERT INTO `alchemy_essence_texts` VALUES (1,'Welcome to your first Alchemy CMS page',NULL,NULL,NULL,0,NULL,1,1,'2014-04-02 10:07:44','2014-04-02 10:07:44'),(2,'Welcome to your first Alchemy CMS page',NULL,NULL,NULL,0,NULL,1,1,'2014-04-03 07:26:14','2014-04-03 07:26:14'),(4,'Welcome to your first Alchemy CMS page',NULL,NULL,NULL,0,NULL,1,1,'2014-04-03 07:40:12','2014-04-03 07:40:12');
/*!40000 ALTER TABLE `alchemy_essence_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_folded_pages`
--

DROP TABLE IF EXISTS `alchemy_folded_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_folded_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `folded` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_folded_pages`
--

LOCK TABLES `alchemy_folded_pages` WRITE;
/*!40000 ALTER TABLE `alchemy_folded_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_folded_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_languages`
--

DROP TABLE IF EXISTS `alchemy_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frontpage_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'intro',
  `public` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `default` tinyint(1) DEFAULT '0',
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_languages_on_language_code_and_country_code` (`language_code`,`country_code`),
  KEY `index_alchemy_languages_on_language_code` (`language_code`),
  KEY `index_alchemy_languages_on_site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_languages`
--

LOCK TABLES `alchemy_languages` WRITE;
/*!40000 ALTER TABLE `alchemy_languages` DISABLE KEYS */;
INSERT INTO `alchemy_languages` VALUES (1,'English','en','Index','index',1,'2014-04-02 09:31:34','2014-04-03 06:54:13',NULL,NULL,1,'en',1),(2,'English','en','Index','index',1,'2014-04-02 09:49:33','2014-04-02 09:49:33',NULL,NULL,1,'',2);
/*!40000 ALTER TABLE `alchemy_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_legacy_page_urls`
--

DROP TABLE IF EXISTS `alchemy_legacy_page_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_legacy_page_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urlname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_legacy_page_urls_on_urlname` (`urlname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_legacy_page_urls`
--

LOCK TABLES `alchemy_legacy_page_urls` WRITE;
/*!40000 ALTER TABLE `alchemy_legacy_page_urls` DISABLE KEYS */;
INSERT INTO `alchemy_legacy_page_urls` VALUES (1,'test',5,'2014-04-03 07:26:40','2014-04-03 07:26:40');
/*!40000 ALTER TABLE `alchemy_legacy_page_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_pages`
--

DROP TABLE IF EXISTS `alchemy_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_root` tinyint(1) DEFAULT NULL,
  `page_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `public` tinyint(1) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `locked_by` int(11) DEFAULT NULL,
  `restricted` tinyint(1) DEFAULT '0',
  `robot_index` tinyint(1) DEFAULT '1',
  `robot_follow` tinyint(1) DEFAULT '1',
  `sitemap` tinyint(1) DEFAULT '1',
  `layoutpage` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `cached_tag_list` text COLLATE utf8_unicode_ci,
  `published_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pages_on_language_id` (`language_id`),
  KEY `index_pages_on_parent_id_and_lft` (`parent_id`,`lft`),
  KEY `index_pages_on_urlname` (`urlname`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_pages`
--

LOCK TABLES `alchemy_pages` WRITE;
/*!40000 ALTER TABLE `alchemy_pages` DISABLE KEYS */;
INSERT INTO `alchemy_pages` VALUES (1,'Root',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,10,NULL,0,0,0,0,NULL,0,1,1,1,0,'2014-04-02 09:31:35','2014-04-02 09:31:35',NULL,NULL,NULL,NULL,NULL),(3,'Index','index','Index','en-en',1,'bootstrap','','',2,7,1,1,1,1,0,NULL,0,0,0,1,0,'2014-04-02 10:07:44','2014-04-03 07:57:43',1,1,1,NULL,'2014-04-03 08:03:22'),(4,'Layoutroot for English','',NULL,'en-en',NULL,NULL,NULL,NULL,8,9,1,1,0,0,0,NULL,0,1,1,1,1,'2014-04-03 03:29:32','2014-04-03 03:29:32',1,1,1,NULL,NULL),(5,'test','testu','test','en-en',NULL,'index','','',3,4,3,2,1,1,1,1,0,1,1,1,0,'2014-04-03 07:26:14','2014-04-03 07:27:48',1,1,1,NULL,NULL),(7,'asd','asd','asd','en-en',NULL,'test_layout','','',5,6,3,2,1,1,1,1,0,1,1,1,0,'2014-04-03 07:40:12','2014-04-03 07:41:55',1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `alchemy_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_pictures`
--

DROP TABLE IF EXISTS `alchemy_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_width` int(11) DEFAULT NULL,
  `image_file_height` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `upload_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cached_tag_list` text COLLATE utf8_unicode_ci,
  `image_file_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_pictures`
--

LOCK TABLES `alchemy_pictures` WRITE;
/*!40000 ALTER TABLE `alchemy_pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_sites`
--

DROP TABLE IF EXISTS `alchemy_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `public` tinyint(1) DEFAULT '0',
  `aliases` text COLLATE utf8_unicode_ci,
  `redirect_to_primary_host` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alchemy_sites_public_hosts_idx` (`host`,`public`),
  KEY `index_alchemy_sites_on_host` (`host`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_sites`
--

LOCK TABLES `alchemy_sites` WRITE;
/*!40000 ALTER TABLE `alchemy_sites` DISABLE KEYS */;
INSERT INTO `alchemy_sites` VALUES (1,'*','Default Site','2014-04-02 09:31:34','2014-04-02 09:54:14',1,'',0);
/*!40000 ALTER TABLE `alchemy_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_users`
--

DROP TABLE IF EXISTS `alchemy_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password_salt` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `cached_tag_list` text COLLATE utf8_unicode_ci,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `alchemy_roles` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'member',
  `spree_api_key` varchar(48) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_alchemy_users_on_email` (`email`),
  UNIQUE KEY `index_alchemy_users_on_login` (`login`),
  UNIQUE KEY `index_alchemy_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_alchemy_users_on_alchemy_roles` (`alchemy_roles`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_users`
--

LOCK TABLES `alchemy_users` WRITE;
/*!40000 ALTER TABLE `alchemy_users` DISABLE KEYS */;
INSERT INTO `alchemy_users` VALUES (1,'zhu','san','zhusan','3@zhusan.net','male','en','$2a$10$wY/mLmIdnvN.MWL5j56Dj.jS5zJZr/F6izCdtCr7C71mDvJLGty1S','',4,0,'2014-04-03 09:21:22','2014-04-03 06:15:55','2014-04-03 03:29:03','192.168.1.152','192.168.1.152','2014-04-02 09:32:10','2014-04-03 06:32:03',NULL,1,'',NULL,NULL,' admin',NULL,NULL,NULL);
/*!40000 ALTER TABLE `alchemy_users` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20140324051238'),('20140324051239'),('20140324051240'),('20140324051241'),('20140324051242'),('20140324052025'),('20140324052026'),('20140402083243'),('20140402083244'),('20140402083245'),('20140402091753'),('20140402091754'),('20140402091755'),('20140402091756'),('20140402091757'),('20140402091758'),('20140402091759'),('20140402091760'),('20140402091761'),('20140402091762'),('20140402091763'),('20140402091764'),('20140402091765'),('20140402091766'),('20140402091767'),('20140402091768'),('20140402091769'),('20140402091770'),('20140402091771'),('20140402091772'),('20140402091773'),('20140402091774'),('20140402091775'),('20140402091776'),('20140402091777'),('20140402091778'),('20140402091779'),('20140402091780'),('20140402091781'),('20140402091782'),('20140402091783'),('20140402091784'),('20140402091785'),('20140402091786'),('20140402091787'),('20140402091788'),('20140402091789'),('20140402091790'),('20140402091791'),('20140402091792'),('20140402091793'),('20140402091794'),('20140402091795'),('20140402091796'),('20140402091797'),('20140402091798'),('20140402091799'),('20140402091800'),('20140402091801'),('20140402091802'),('20140402091803'),('20140402091804'),('20140402091805'),('20140402091806'),('20140402091807'),('20140402091808'),('20140402091809'),('20140402091810'),('20140402091811'),('20140402091812'),('20140402091813'),('20140402091814'),('20140402091815'),('20140402091816'),('20140402091817'),('20140402091818'),('20140402091819'),('20140402091820'),('20140402091821'),('20140402091822'),('20140402091823'),('20140402091824'),('20140402091825'),('20140402091826'),('20140402091827'),('20140402091828'),('20140402091829'),('20140402091830'),('20140402091831'),('20140402091832'),('20140402091833'),('20140402091834'),('20140402091835'),('20140402091836'),('20140402091837'),('20140402091838'),('20140402091839'),('20140402091840'),('20140402091841'),('20140402091842'),('20140402091843'),('20140402091844'),('20140402091845'),('20140402091846'),('20140402091847'),('20140402091848'),('20140402091849'),('20140402091850'),('20140402091851'),('20140402091852'),('20140402091853'),('20140402091854'),('20140402091855'),('20140402091856'),('20140402091857'),('20140402091858'),('20140402091859'),('20140402091860'),('20140402091861'),('20140402091862'),('20140402091863'),('20140402091864'),('20140402091865'),('20140402091866'),('20140402091867'),('20140402091868'),('20140402091869'),('20140402091870'),('20140402091871'),('20140402091872'),('20140402091873'),('20140402091874'),('20140402091875'),('20140402091876'),('20140402091877'),('20140402091878'),('20140402091879'),('20140402091880'),('20140402091881'),('20140402091882'),('20140402091883'),('20140402091884'),('20140402091885'),('20140402091886'),('20140402091887'),('20140402091888'),('20140402091889'),('20140402091890'),('20140402091891'),('20140402091892');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_addresses`
--

DROP TABLE IF EXISTS `spree_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_firstname` (`firstname`),
  KEY `index_addresses_on_lastname` (`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_addresses`
--

LOCK TABLES `spree_addresses` WRITE;
/*!40000 ALTER TABLE `spree_addresses` DISABLE KEYS */;
INSERT INTO `spree_addresses` VALUES (1,'Travon','Howe','255 Green Brook','Apt. 410','Brekkemouth','16804','367-342-5478 x317',NULL,NULL,NULL,48,49,'2014-04-02 09:29:53','2014-04-02 09:29:53'),(2,'Norma','Becker','4121 Shields Common','Apt. 930','East Vivienneshire','16804','(663)540-1487 x56613',NULL,NULL,NULL,48,49,'2014-04-02 09:29:53','2014-04-02 09:29:53');
/*!40000 ALTER TABLE `spree_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_adjustments`
--

DROP TABLE IF EXISTS `spree_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjustable_id` int(11) DEFAULT NULL,
  `adjustable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `eligible` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `included` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_adjustments_on_order_id` (`adjustable_id`),
  KEY `index_spree_adjustments_on_source_type_and_source_id` (`source_type`,`source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_adjustments`
--

LOCK TABLES `spree_adjustments` WRITE;
/*!40000 ALTER TABLE `spree_adjustments` DISABLE KEYS */;
INSERT INTO `spree_adjustments` VALUES (1,1,'Spree::TaxRate',1,'Spree::LineItem','0.80','North America 5.0%',NULL,1,'2014-04-02 09:29:54','2014-04-02 09:29:54','open',1,0),(2,1,'Spree::TaxRate',2,'Spree::LineItem','1.15','North America 5.0%',NULL,1,'2014-04-02 09:29:54','2014-04-02 09:29:54','open',2,0),(3,1,'Spree::TaxRate',1,'Spree::Order','0.84','Tax',1,1,'2014-04-02 09:29:55','2014-04-02 09:29:55','open',NULL,0),(4,1,'Spree::TaxRate',2,'Spree::Order','1.21','Tax',1,1,'2014-04-02 09:29:55','2014-04-02 09:29:55','open',NULL,0);
/*!40000 ALTER TABLE `spree_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_assets`
--

DROP TABLE IF EXISTS `spree_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewable_id` int(11) DEFAULT NULL,
  `viewable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_width` int(11) DEFAULT NULL,
  `attachment_height` int(11) DEFAULT NULL,
  `attachment_file_size` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `attachment_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_updated_at` datetime DEFAULT NULL,
  `alt` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_assets_on_viewable_id` (`viewable_id`),
  KEY `index_assets_on_viewable_type_and_type` (`viewable_type`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_assets`
--

LOCK TABLES `spree_assets` WRITE;
/*!40000 ALTER TABLE `spree_assets` DISABLE KEYS */;
INSERT INTO `spree_assets` VALUES (1,17,'Spree::Variant',240,240,44463,1,'image/png','ror_baseball_jersey_red.png','Spree::Image','2014-04-02 09:29:27',NULL,'2014-04-02 09:29:28','2014-04-02 09:29:28'),(2,17,'Spree::Variant',240,240,36895,2,'image/png','ror_baseball_jersey_back_red.png','Spree::Image','2014-04-02 09:29:28',NULL,'2014-04-02 09:29:28','2014-04-02 09:29:28'),(3,18,'Spree::Variant',240,240,46277,1,'image/png','ror_baseball_jersey_blue.png','Spree::Image','2014-04-02 09:29:28',NULL,'2014-04-02 09:29:29','2014-04-02 09:29:29'),(4,18,'Spree::Variant',240,240,38424,2,'image/png','ror_baseball_jersey_back_blue.png','Spree::Image','2014-04-02 09:29:29',NULL,'2014-04-02 09:29:29','2014-04-02 09:29:29'),(5,19,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2014-04-02 09:29:30',NULL,'2014-04-02 09:29:30','2014-04-02 09:29:30'),(6,19,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2014-04-02 09:29:30',NULL,'2014-04-02 09:29:31','2014-04-02 09:29:31'),(7,20,'Spree::Variant',240,240,44463,1,'image/png','ror_baseball_jersey_red.png','Spree::Image','2014-04-02 09:29:31',NULL,'2014-04-02 09:29:31','2014-04-02 09:29:31'),(8,20,'Spree::Variant',240,240,36895,2,'image/png','ror_baseball_jersey_back_red.png','Spree::Image','2014-04-02 09:29:31',NULL,'2014-04-02 09:29:32','2014-04-02 09:29:32'),(9,21,'Spree::Variant',240,240,46277,1,'image/png','ror_baseball_jersey_blue.png','Spree::Image','2014-04-02 09:29:32',NULL,'2014-04-02 09:29:32','2014-04-02 09:29:32'),(10,21,'Spree::Variant',240,240,38424,2,'image/png','ror_baseball_jersey_back_blue.png','Spree::Image','2014-04-02 09:29:32',NULL,'2014-04-02 09:29:33','2014-04-02 09:29:33'),(11,22,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2014-04-02 09:29:33',NULL,'2014-04-02 09:29:33','2014-04-02 09:29:33'),(12,22,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2014-04-02 09:29:33',NULL,'2014-04-02 09:29:34','2014-04-02 09:29:34'),(13,23,'Spree::Variant',240,240,44463,1,'image/png','ror_baseball_jersey_red.png','Spree::Image','2014-04-02 09:29:34',NULL,'2014-04-02 09:29:35','2014-04-02 09:29:35'),(14,23,'Spree::Variant',240,240,36895,2,'image/png','ror_baseball_jersey_back_red.png','Spree::Image','2014-04-02 09:29:35',NULL,'2014-04-02 09:29:35','2014-04-02 09:29:35'),(15,24,'Spree::Variant',240,240,46277,1,'image/png','ror_baseball_jersey_blue.png','Spree::Image','2014-04-02 09:29:35',NULL,'2014-04-02 09:29:36','2014-04-02 09:29:36'),(16,24,'Spree::Variant',240,240,38424,2,'image/png','ror_baseball_jersey_back_blue.png','Spree::Image','2014-04-02 09:29:36',NULL,'2014-04-02 09:29:36','2014-04-02 09:29:36'),(17,25,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2014-04-02 09:29:36',NULL,'2014-04-02 09:29:37','2014-04-02 09:29:37'),(18,25,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2014-04-02 09:29:37',NULL,'2014-04-02 09:29:37','2014-04-02 09:29:37'),(19,26,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2014-04-02 09:29:37',NULL,'2014-04-02 09:29:38','2014-04-02 09:29:38'),(20,26,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2014-04-02 09:29:38',NULL,'2014-04-02 09:29:38','2014-04-02 09:29:38'),(21,1,'Spree::Variant',360,360,31490,1,'image/jpeg','ror_tote.jpeg','Spree::Image','2014-04-02 09:29:39',NULL,'2014-04-02 09:29:39','2014-04-02 09:29:39'),(22,1,'Spree::Variant',360,360,28620,2,'image/jpeg','ror_tote_back.jpeg','Spree::Image','2014-04-02 09:29:39',NULL,'2014-04-02 09:29:39','2014-04-02 09:29:39'),(23,2,'Spree::Variant',360,360,28230,1,'image/jpeg','ror_bag.jpeg','Spree::Image','2014-04-02 09:29:40',NULL,'2014-04-02 09:29:40','2014-04-02 09:29:40'),(24,3,'Spree::Variant',360,360,27626,1,'image/jpeg','ror_baseball.jpeg','Spree::Image','2014-04-02 09:29:40',NULL,'2014-04-02 09:29:41','2014-04-02 09:29:41'),(25,3,'Spree::Variant',360,360,23490,2,'image/jpeg','ror_baseball_back.jpeg','Spree::Image','2014-04-02 09:29:41',NULL,'2014-04-02 09:29:41','2014-04-02 09:29:41'),(26,4,'Spree::Variant',360,360,14083,1,'image/jpeg','ror_jr_spaghetti.jpeg','Spree::Image','2014-04-02 09:29:41',NULL,'2014-04-02 09:29:42','2014-04-02 09:29:42'),(27,13,'Spree::Variant',360,360,20026,1,'image/jpeg','ror_mug.jpeg','Spree::Image','2014-04-02 09:29:42',NULL,'2014-04-02 09:29:42','2014-04-02 09:29:42'),(28,13,'Spree::Variant',360,360,10929,2,'image/jpeg','ror_mug_back.jpeg','Spree::Image','2014-04-02 09:29:42',NULL,'2014-04-02 09:29:43','2014-04-02 09:29:43'),(29,5,'Spree::Variant',360,360,18252,1,'image/jpeg','ror_ringer.jpeg','Spree::Image','2014-04-02 09:29:43',NULL,'2014-04-02 09:29:43','2014-04-02 09:29:43'),(30,5,'Spree::Variant',360,360,13276,2,'image/jpeg','ror_ringer_back.jpeg','Spree::Image','2014-04-02 09:29:43',NULL,'2014-04-02 09:29:44','2014-04-02 09:29:44'),(31,14,'Spree::Variant',360,360,20714,1,'image/jpeg','ror_stein.jpeg','Spree::Image','2014-04-02 09:29:44',NULL,'2014-04-02 09:29:44','2014-04-02 09:29:44'),(32,14,'Spree::Variant',360,360,20619,2,'image/jpeg','ror_stein_back.jpeg','Spree::Image','2014-04-02 09:29:44',NULL,'2014-04-02 09:29:45','2014-04-02 09:29:45'),(33,7,'Spree::Variant',504,484,123779,1,'image/png','apache_baseball.png','Spree::Image','2014-04-02 09:29:45',NULL,'2014-04-02 09:29:46','2014-04-02 09:29:46'),(34,6,'Spree::Variant',495,477,138622,1,'image/png','ruby_baseball.png','Spree::Image','2014-04-02 09:29:46',NULL,'2014-04-02 09:29:46','2014-04-02 09:29:46'),(35,12,'Spree::Variant',480,480,38369,1,'image/jpeg','spree_bag.jpeg','Spree::Image','2014-04-02 09:29:47',NULL,'2014-04-02 09:29:47','2014-04-02 09:29:47'),(36,11,'Spree::Variant',480,480,44579,1,'image/jpeg','spree_tote_front.jpeg','Spree::Image','2014-04-02 09:29:47',NULL,'2014-04-02 09:29:48','2014-04-02 09:29:48'),(37,11,'Spree::Variant',480,480,16947,2,'image/jpeg','spree_tote_back.jpeg','Spree::Image','2014-04-02 09:29:48',NULL,'2014-04-02 09:29:48','2014-04-02 09:29:48'),(38,10,'Spree::Variant',480,480,17641,1,'image/jpeg','spree_ringer_t.jpeg','Spree::Image','2014-04-02 09:29:48',NULL,'2014-04-02 09:29:49','2014-04-02 09:29:49'),(39,10,'Spree::Variant',480,480,10514,2,'image/jpeg','spree_ringer_t_back.jpeg','Spree::Image','2014-04-02 09:29:49',NULL,'2014-04-02 09:29:49','2014-04-02 09:29:49'),(40,9,'Spree::Variant',480,480,5898,1,'image/jpeg','spree_spaghetti.jpeg','Spree::Image','2014-04-02 09:29:49',NULL,'2014-04-02 09:29:50','2014-04-02 09:29:50'),(41,8,'Spree::Variant',480,480,18012,1,'image/jpeg','spree_jersey.jpeg','Spree::Image','2014-04-02 09:29:50',NULL,'2014-04-02 09:29:50','2014-04-02 09:29:50'),(42,8,'Spree::Variant',480,480,17868,2,'image/jpeg','spree_jersey_back.jpeg','Spree::Image','2014-04-02 09:29:51',NULL,'2014-04-02 09:29:51','2014-04-02 09:29:51'),(43,15,'Spree::Variant',480,480,12999,1,'image/jpeg','spree_stein.jpeg','Spree::Image','2014-04-02 09:29:51',NULL,'2014-04-02 09:29:52','2014-04-02 09:29:52'),(44,15,'Spree::Variant',480,480,12687,2,'image/jpeg','spree_stein_back.jpeg','Spree::Image','2014-04-02 09:29:52',NULL,'2014-04-02 09:29:52','2014-04-02 09:29:52'),(45,16,'Spree::Variant',240,240,4148,1,'image/jpeg','spree_mug.jpeg','Spree::Image','2014-04-02 09:29:52',NULL,'2014-04-02 09:29:53','2014-04-02 09:29:53'),(46,16,'Spree::Variant',240,240,4428,2,'image/jpeg','spree_mug_back.jpeg','Spree::Image','2014-04-02 09:29:53',NULL,'2014-04-02 09:29:53','2014-04-02 09:29:53');
/*!40000 ALTER TABLE `spree_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_calculators`
--

DROP TABLE IF EXISTS `spree_calculators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_calculators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calculable_id` int(11) DEFAULT NULL,
  `calculable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `preferences` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_spree_calculators_on_id_and_type` (`id`,`type`),
  KEY `index_spree_calculators_on_calculable_id_and_calculable_type` (`calculable_id`,`calculable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_calculators`
--

LOCK TABLES `spree_calculators` WRITE;
/*!40000 ALTER TABLE `spree_calculators` DISABLE KEYS */;
INSERT INTO `spree_calculators` VALUES (1,'Spree::Calculator::Shipping::FlatRate',1,'Spree::ShippingMethod','2014-04-02 09:29:18','2014-04-02 09:29:18','---\n:amount: 5\n:currency: USD\n'),(2,'Spree::Calculator::Shipping::FlatRate',2,'Spree::ShippingMethod','2014-04-02 09:29:18','2014-04-02 09:29:18','---\n:amount: 10\n:currency: USD\n'),(3,'Spree::Calculator::Shipping::FlatRate',3,'Spree::ShippingMethod','2014-04-02 09:29:18','2014-04-02 09:29:18','---\n:amount: 15\n:currency: USD\n'),(4,'Spree::Calculator::Shipping::FlatRate',4,'Spree::ShippingMethod','2014-04-02 09:29:18','2014-04-02 09:29:18','---\n:amount: 5\n:currency: USD\n'),(5,'Spree::Calculator::Shipping::FlatRate',5,'Spree::ShippingMethod','2014-04-02 09:29:18','2014-04-02 09:29:18','---\n:amount: 8\n:currency: EUR\n'),(6,'Spree::Calculator::DefaultTax',1,'Spree::TaxRate','2014-04-02 09:29:18','2014-04-02 09:29:18','--- {}\n');
/*!40000 ALTER TABLE `spree_calculators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_configurations`
--

DROP TABLE IF EXISTS `spree_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_configurations_on_name_and_type` (`name`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_configurations`
--

LOCK TABLES `spree_configurations` WRITE;
/*!40000 ALTER TABLE `spree_configurations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_countries`
--

DROP TABLE IF EXISTS `spree_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  `states_required` tinyint(1) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_countries`
--

LOCK TABLES `spree_countries` WRITE;
/*!40000 ALTER TABLE `spree_countries` DISABLE KEYS */;
INSERT INTO `spree_countries` VALUES (1,'CHAD','TD','TCD','Chad',148,0,'2014-04-02 09:29:01'),(2,'FAROE ISLANDS','FO','FRO','Faroe Islands',234,0,'2014-04-02 09:29:01'),(3,'INDIA','IN','IND','India',356,1,'2014-04-02 09:29:01'),(4,'NICARAGUA','NI','NIC','Nicaragua',558,0,'2014-04-02 09:29:01'),(5,'SAINT LUCIA','LC','LCA','Saint Lucia',662,0,'2014-04-02 09:29:01'),(6,'FIJI','FJ','FJI','Fiji',242,0,'2014-04-02 09:29:01'),(7,'INDONESIA','ID','IDN','Indonesia',360,0,'2014-04-02 09:29:01'),(8,'NIGER','NE','NER','Niger',562,0,'2014-04-02 09:29:01'),(9,'SAINT PIERRE AND MIQUELON','PM','SPM','Saint Pierre and Miquelon',666,0,'2014-04-02 09:29:01'),(10,'FINLAND','FI','FIN','Finland',246,0,'2014-04-02 09:29:01'),(11,'NIGERIA','NG','NGA','Nigeria',566,1,'2014-04-02 09:29:01'),(12,'SAINT VINCENT AND THE GRENADINES','VC','VCT','Saint Vincent and the Grenadines',670,0,'2014-04-02 09:29:01'),(13,'FRANCE','FR','FRA','France',250,0,'2014-04-02 09:29:01'),(14,'IRAN, ISLAMIC REPUBLIC OF','IR','IRN','Iran, Islamic Republic of',364,0,'2014-04-02 09:29:01'),(15,'NIUE','NU','NIU','Niue',570,0,'2014-04-02 09:29:01'),(16,'SAMOA','WS','WSM','Samoa',882,0,'2014-04-02 09:29:01'),(17,'FRENCH GUIANA','GF','GUF','French Guiana',254,0,'2014-04-02 09:29:01'),(18,'IRAQ','IQ','IRQ','Iraq',368,1,'2014-04-02 09:29:01'),(19,'SAN MARINO','SM','SMR','San Marino',674,0,'2014-04-02 09:29:01'),(20,'IRELAND','IE','IRL','Ireland',372,0,'2014-04-02 09:29:02'),(21,'SAO TOME AND PRINCIPE','ST','STP','Sao Tome and Principe',678,0,'2014-04-02 09:29:02'),(22,'ISRAEL','IL','ISR','Israel',376,0,'2014-04-02 09:29:02'),(23,'SAUDI ARABIA','SA','SAU','Saudi Arabia',682,0,'2014-04-02 09:29:02'),(24,'ITALY','IT','ITA','Italy',380,0,'2014-04-02 09:29:02'),(25,'SENEGAL','SN','SEN','Senegal',686,0,'2014-04-02 09:29:02'),(26,'JAMAICA','JM','JAM','Jamaica',388,0,'2014-04-02 09:29:02'),(27,'JAPAN','JP','JPN','Japan',392,0,'2014-04-02 09:29:02'),(28,'JORDAN','JO','JOR','Jordan',400,0,'2014-04-02 09:29:02'),(29,'BELGIUM','BE','BEL','Belgium',56,0,'2014-04-02 09:29:02'),(30,'BELIZE','BZ','BLZ','Belize',84,0,'2014-04-02 09:29:02'),(31,'KAZAKHSTAN','KZ','KAZ','Kazakhstan',398,0,'2014-04-02 09:29:02'),(32,'UGANDA','UG','UGA','Uganda',800,0,'2014-04-02 09:29:02'),(33,'BENIN','BJ','BEN','Benin',204,0,'2014-04-02 09:29:02'),(34,'KENYA','KE','KEN','Kenya',404,0,'2014-04-02 09:29:02'),(35,'UKRAINE','UA','UKR','Ukraine',804,0,'2014-04-02 09:29:02'),(36,'BERMUDA','BM','BMU','Bermuda',60,0,'2014-04-02 09:29:02'),(37,'KIRIBATI','KI','KIR','Kiribati',296,0,'2014-04-02 09:29:02'),(38,'MEXICO','MX','MEX','Mexico',484,1,'2014-04-02 09:29:02'),(39,'UNITED ARAB EMIRATES','AE','ARE','United Arab Emirates',784,1,'2014-04-02 09:29:02'),(40,'BHUTAN','BT','BTN','Bhutan',64,0,'2014-04-02 09:29:02'),(41,'CUBA','CU','CUB','Cuba',192,0,'2014-04-02 09:29:02'),(42,'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','KP','PRK','North Korea',408,0,'2014-04-02 09:29:02'),(43,'MICRONESIA, FEDERATED STATES OF','FM','FSM','Micronesia, Federated States of',583,1,'2014-04-02 09:29:02'),(44,'UNITED KINGDOM','GB','GBR','United Kingdom',826,0,'2014-04-02 09:29:02'),(45,'BOLIVIA','BO','BOL','Bolivia',68,0,'2014-04-02 09:29:02'),(46,'CYPRUS','CY','CYP','Cyprus',196,0,'2014-04-02 09:29:02'),(47,'KOREA, REPUBLIC OF','KR','KOR','South Korea',410,0,'2014-04-02 09:29:02'),(48,'MOLDOVA, REPUBLIC OF','MD','MDA','Moldova, Republic of',498,0,'2014-04-02 09:29:02'),(49,'UNITED STATES','US','USA','United States',840,1,'2014-04-02 09:29:02'),(50,'BOSNIA AND HERZEGOVINA','BA','BIH','Bosnia and Herzegovina',70,0,'2014-04-02 09:29:02'),(51,'CZECH REPUBLIC','CZ','CZE','Czech Republic',203,0,'2014-04-02 09:29:02'),(52,'KUWAIT','KW','KWT','Kuwait',414,0,'2014-04-02 09:29:02'),(53,'MONACO','MC','MCO','Monaco',492,0,'2014-04-02 09:29:02'),(54,'URUGUAY','UY','URY','Uruguay',858,0,'2014-04-02 09:29:02'),(55,'BOTSWANA','BW','BWA','Botswana',72,0,'2014-04-02 09:29:02'),(56,'DENMARK','DK','DNK','Denmark',208,0,'2014-04-02 09:29:02'),(57,'GUADELOUPE','GP','GLP','Guadeloupe',312,0,'2014-04-02 09:29:02'),(58,'KYRGYZSTAN','KG','KGZ','Kyrgyzstan',417,0,'2014-04-02 09:29:02'),(59,'MONGOLIA','MN','MNG','Mongolia',496,0,'2014-04-02 09:29:02'),(60,'PHILIPPINES','PH','PHL','Philippines',608,0,'2014-04-02 09:29:02'),(61,'BRAZIL','BR','BRA','Brazil',76,1,'2014-04-02 09:29:02'),(62,'DJIBOUTI','DJ','DJI','Djibouti',262,0,'2014-04-02 09:29:02'),(63,'GUAM','GU','GUM','Guam',316,0,'2014-04-02 09:29:02'),(64,'LAO PEOPLE\'S DEMOCRATIC REPUBLIC','LA','LAO','Lao People\'s Democratic Republic',418,0,'2014-04-02 09:29:02'),(65,'MONTSERRAT','MS','MSR','Montserrat',500,0,'2014-04-02 09:29:02'),(66,'PITCAIRN','PN','PCN','Pitcairn',612,0,'2014-04-02 09:29:02'),(67,'UZBEKISTAN','UZ','UZB','Uzbekistan',860,0,'2014-04-02 09:29:02'),(68,'BRUNEI DARUSSALAM','BN','BRN','Brunei Darussalam',96,0,'2014-04-02 09:29:02'),(69,'DOMINICA','DM','DMA','Dominica',212,0,'2014-04-02 09:29:02'),(70,'GUATEMALA','GT','GTM','Guatemala',320,0,'2014-04-02 09:29:02'),(71,'MOROCCO','MA','MAR','Morocco',504,0,'2014-04-02 09:29:02'),(72,'POLAND','PL','POL','Poland',616,0,'2014-04-02 09:29:02'),(73,'VANUATU','VU','VUT','Vanuatu',548,0,'2014-04-02 09:29:02'),(74,'DOMINICAN REPUBLIC','DO','DOM','Dominican Republic',214,0,'2014-04-02 09:29:02'),(75,'MOZAMBIQUE','MZ','MOZ','Mozambique',508,0,'2014-04-02 09:29:02'),(76,'PORTUGAL','PT','PRT','Portugal',620,0,'2014-04-02 09:29:02'),(77,'SUDAN','SD','SDN','Sudan',736,1,'2014-04-02 09:29:02'),(78,'VENEZUELA','VE','VEN','Venezuela',862,1,'2014-04-02 09:29:02'),(79,'ECUADOR','EC','ECU','Ecuador',218,0,'2014-04-02 09:29:02'),(80,'GUINEA','GN','GIN','Guinea',324,0,'2014-04-02 09:29:02'),(81,'MYANMAR','MM','MMR','Myanmar',104,0,'2014-04-02 09:29:02'),(82,'PUERTO RICO','PR','PRI','Puerto Rico',630,0,'2014-04-02 09:29:02'),(83,'SURINAME','SR','SUR','Suriname',740,0,'2014-04-02 09:29:02'),(84,'VIET NAM','VN','VNM','Viet Nam',704,0,'2014-04-02 09:29:02'),(85,'EGYPT','EG','EGY','Egypt',818,0,'2014-04-02 09:29:02'),(86,'GUINEA-BISSAU','GW','GNB','Guinea-Bissau',624,0,'2014-04-02 09:29:02'),(87,'NAMIBIA','NA','NAM','Namibia',516,0,'2014-04-02 09:29:02'),(88,'QATAR','QA','QAT','Qatar',634,0,'2014-04-02 09:29:02'),(89,'SVALBARD AND JAN MAYEN','SJ','SJM','Svalbard and Jan Mayen',744,0,'2014-04-02 09:29:02'),(90,'EL SALVADOR','SV','SLV','El Salvador',222,0,'2014-04-02 09:29:02'),(91,'GUYANA','GY','GUY','Guyana',328,0,'2014-04-02 09:29:02'),(92,'REUNION','RE','REU','Reunion',638,0,'2014-04-02 09:29:02'),(93,'HAITI','HT','HTI','Haiti',332,0,'2014-04-02 09:29:02'),(94,'ROMANIA','RO','ROM','Romania',642,0,'2014-04-02 09:29:02'),(95,'SWAZILAND','SZ','SWZ','Swaziland',748,0,'2014-04-02 09:29:02'),(96,'HOLY SEE (VATICAN CITY STATE)','VA','VAT','Holy See (Vatican City State)',336,0,'2014-04-02 09:29:02'),(97,'RUSSIAN FEDERATION','RU','RUS','Russian Federation',643,1,'2014-04-02 09:29:02'),(98,'SWEDEN','SE','SWE','Sweden',752,0,'2014-04-02 09:29:02'),(99,'HONDURAS','HN','HND','Honduras',340,0,'2014-04-02 09:29:02'),(100,'RWANDA','RW','RWA','Rwanda',646,0,'2014-04-02 09:29:02'),(101,'SWITZERLAND','CH','CHE','Switzerland',756,0,'2014-04-02 09:29:02'),(102,'HONG KONG','HK','HKG','Hong Kong',344,0,'2014-04-02 09:29:02'),(103,'SYRIAN ARAB REPUBLIC','SY','SYR','Syrian Arab Republic',760,0,'2014-04-02 09:29:02'),(104,'TAIWAN, PROVINCE OF CHINA','TW','TWN','Taiwan',158,0,'2014-04-02 09:29:02'),(105,'TAJIKISTAN','TJ','TJK','Tajikistan',762,0,'2014-04-02 09:29:02'),(106,'TANZANIA, UNITED REPUBLIC OF','TZ','TZA','Tanzania, United Republic of',834,0,'2014-04-02 09:29:02'),(107,'ARMENIA','AM','ARM','Armenia',51,0,'2014-04-02 09:29:02'),(108,'ARUBA','AW','ABW','Aruba',533,0,'2014-04-02 09:29:02'),(109,'AUSTRALIA','AU','AUS','Australia',36,1,'2014-04-02 09:29:02'),(110,'THAILAND','TH','THA','Thailand',764,0,'2014-04-02 09:29:02'),(111,'AUSTRIA','AT','AUT','Austria',40,0,'2014-04-02 09:29:02'),(112,'MADAGASCAR','MG','MDG','Madagascar',450,0,'2014-04-02 09:29:02'),(113,'TOGO','TG','TGO','Togo',768,0,'2014-04-02 09:29:02'),(114,'AZERBAIJAN','AZ','AZE','Azerbaijan',31,0,'2014-04-02 09:29:02'),(115,'CHILE','CL','CHL','Chile',152,0,'2014-04-02 09:29:02'),(116,'MALAWI','MW','MWI','Malawi',454,0,'2014-04-02 09:29:02'),(117,'TOKELAU','TK','TKL','Tokelau',772,0,'2014-04-02 09:29:02'),(118,'BAHAMAS','BS','BHS','Bahamas',44,0,'2014-04-02 09:29:02'),(119,'CHINA','CN','CHN','China',156,0,'2014-04-02 09:29:02'),(120,'MALAYSIA','MY','MYS','Malaysia',458,0,'2014-04-02 09:29:02'),(121,'TONGA','TO','TON','Tonga',776,0,'2014-04-02 09:29:02'),(122,'BAHRAIN','BH','BHR','Bahrain',48,0,'2014-04-02 09:29:02'),(123,'COLOMBIA','CO','COL','Colombia',170,0,'2014-04-02 09:29:02'),(124,'MALDIVES','MV','MDV','Maldives',462,0,'2014-04-02 09:29:02'),(125,'TRINIDAD AND TOBAGO','TT','TTO','Trinidad and Tobago',780,0,'2014-04-02 09:29:02'),(126,'BANGLADESH','BD','BGD','Bangladesh',50,0,'2014-04-02 09:29:02'),(127,'COMOROS','KM','COM','Comoros',174,1,'2014-04-02 09:29:02'),(128,'FRENCH POLYNESIA','PF','PYF','French Polynesia',258,0,'2014-04-02 09:29:02'),(129,'MALI','ML','MLI','Mali',466,0,'2014-04-02 09:29:02'),(130,'NORFOLK ISLAND','NF','NFK','Norfolk Island',574,0,'2014-04-02 09:29:02'),(131,'TUNISIA','TN','TUN','Tunisia',788,0,'2014-04-02 09:29:02'),(132,'BARBADOS','BB','BRB','Barbados',52,0,'2014-04-02 09:29:02'),(133,'CONGO','CG','COG','Congo',178,0,'2014-04-02 09:29:02'),(134,'GABON','GA','GAB','Gabon',266,0,'2014-04-02 09:29:02'),(135,'MALTA','MT','MLT','Malta',470,0,'2014-04-02 09:29:02'),(136,'NORTHERN MARIANA ISLANDS','MP','MNP','Northern Mariana Islands',580,0,'2014-04-02 09:29:02'),(137,'TURKEY','TR','TUR','Turkey',792,0,'2014-04-02 09:29:02'),(138,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CD','COD','Congo, the Democratic Republic of the',180,0,'2014-04-02 09:29:02'),(139,'MARSHALL ISLANDS','MH','MHL','Marshall Islands',584,0,'2014-04-02 09:29:02'),(140,'NORWAY','NO','NOR','Norway',578,0,'2014-04-02 09:29:02'),(141,'TURKMENISTAN','TM','TKM','Turkmenistan',795,0,'2014-04-02 09:29:02'),(142,'BELARUS','BY','BLR','Belarus',112,0,'2014-04-02 09:29:02'),(143,'COOK ISLANDS','CK','COK','Cook Islands',184,0,'2014-04-02 09:29:02'),(144,'GAMBIA','GM','GMB','Gambia',270,0,'2014-04-02 09:29:02'),(145,'MARTINIQUE','MQ','MTQ','Martinique',474,0,'2014-04-02 09:29:02'),(146,'OMAN','OM','OMN','Oman',512,0,'2014-04-02 09:29:02'),(147,'SEYCHELLES','SC','SYC','Seychelles',690,0,'2014-04-02 09:29:02'),(148,'TURKS AND CAICOS ISLANDS','TC','TCA','Turks and Caicos Islands',796,0,'2014-04-02 09:29:02'),(149,'GEORGIA','GE','GEO','Georgia',268,0,'2014-04-02 09:29:02'),(150,'MAURITANIA','MR','MRT','Mauritania',478,0,'2014-04-02 09:29:02'),(151,'PAKISTAN','PK','PAK','Pakistan',586,1,'2014-04-02 09:29:02'),(152,'SIERRA LEONE','SL','SLE','Sierra Leone',694,0,'2014-04-02 09:29:02'),(153,'TUVALU','TV','TUV','Tuvalu',798,0,'2014-04-02 09:29:02'),(154,'COSTA RICA','CR','CRI','Costa Rica',188,0,'2014-04-02 09:29:02'),(155,'GERMANY','DE','DEU','Germany',276,0,'2014-04-02 09:29:02'),(156,'MAURITIUS','MU','MUS','Mauritius',480,0,'2014-04-02 09:29:02'),(157,'PALAU','PW','PLW','Palau',585,0,'2014-04-02 09:29:02'),(158,'COTE D\'IVOIRE','CI','CIV','Cote D\'Ivoire',384,0,'2014-04-02 09:29:02'),(159,'PANAMA','PA','PAN','Panama',591,0,'2014-04-02 09:29:02'),(160,'SINGAPORE','SG','SGP','Singapore',702,0,'2014-04-02 09:29:02'),(161,'CROATIA','HR','HRV','Croatia',191,0,'2014-04-02 09:29:02'),(162,'GHANA','GH','GHA','Ghana',288,0,'2014-04-02 09:29:02'),(163,'PAPUA NEW GUINEA','PG','PNG','Papua New Guinea',598,0,'2014-04-02 09:29:02'),(164,'SLOVAKIA','SK','SVK','Slovakia',703,0,'2014-04-02 09:29:02'),(165,'GIBRALTAR','GI','GIB','Gibraltar',292,0,'2014-04-02 09:29:02'),(166,'PARAGUAY','PY','PRY','Paraguay',600,0,'2014-04-02 09:29:02'),(167,'SLOVENIA','SI','SVN','Slovenia',705,0,'2014-04-02 09:29:02'),(168,'GREECE','GR','GRC','Greece',300,0,'2014-04-02 09:29:02'),(169,'PERU','PE','PER','Peru',604,0,'2014-04-02 09:29:02'),(170,'SOLOMON ISLANDS','SB','SLB','Solomon Islands',90,0,'2014-04-02 09:29:02'),(171,'GREENLAND','GL','GRL','Greenland',304,0,'2014-04-02 09:29:02'),(172,'SOMALIA','SO','SOM','Somalia',706,1,'2014-04-02 09:29:02'),(173,'GRENADA','GD','GRD','Grenada',308,0,'2014-04-02 09:29:02'),(174,'SOUTH AFRICA','ZA','ZAF','South Africa',710,0,'2014-04-02 09:29:02'),(175,'SPAIN','ES','ESP','Spain',724,0,'2014-04-02 09:29:02'),(176,'SRI LANKA','LK','LKA','Sri Lanka',144,0,'2014-04-02 09:29:02'),(177,'AFGHANISTAN','AF','AFG','Afghanistan',4,0,'2014-04-02 09:29:02'),(178,'ALBANIA','AL','ALB','Albania',8,0,'2014-04-02 09:29:02'),(179,'ALGERIA','DZ','DZA','Algeria',12,0,'2014-04-02 09:29:02'),(180,'LATVIA','LV','LVA','Latvia',428,0,'2014-04-02 09:29:02'),(181,'AMERICAN SAMOA','AS','ASM','American Samoa',16,0,'2014-04-02 09:29:02'),(182,'BULGARIA','BG','BGR','Bulgaria',100,0,'2014-04-02 09:29:02'),(183,'LEBANON','LB','LBN','Lebanon',422,0,'2014-04-02 09:29:02'),(184,'ANDORRA','AD','AND','Andorra',20,0,'2014-04-02 09:29:02'),(185,'BURKINA FASO','BF','BFA','Burkina Faso',854,0,'2014-04-02 09:29:02'),(186,'LESOTHO','LS','LSO','Lesotho',426,0,'2014-04-02 09:29:02'),(187,'ANGOLA','AO','AGO','Angola',24,0,'2014-04-02 09:29:02'),(188,'BURUNDI','BI','BDI','Burundi',108,0,'2014-04-02 09:29:02'),(189,'LIBERIA','LR','LBR','Liberia',430,0,'2014-04-02 09:29:02'),(190,'VIRGIN ISLANDS, BRITISH','VG','VGB','Virgin Islands, British',92,0,'2014-04-02 09:29:02'),(191,'ANGUILLA','AI','AIA','Anguilla',660,0,'2014-04-02 09:29:02'),(192,'CAMBODIA','KH','KHM','Cambodia',116,0,'2014-04-02 09:29:02'),(193,'EQUATORIAL GUINEA','GQ','GNQ','Equatorial Guinea',226,0,'2014-04-02 09:29:02'),(194,'LIBYAN ARAB JAMAHIRIYA','LY','LBY','Libyan Arab Jamahiriya',434,0,'2014-04-02 09:29:03'),(195,'NAURU','NR','NRU','Nauru',520,0,'2014-04-02 09:29:03'),(196,'VIRGIN ISLANDS, U.S.','VI','VIR','Virgin Islands, U.S.',850,0,'2014-04-02 09:29:03'),(197,'ANTIGUA AND BARBUDA','AG','ATG','Antigua and Barbuda',28,0,'2014-04-02 09:29:03'),(198,'CAMEROON','CM','CMR','Cameroon',120,0,'2014-04-02 09:29:03'),(199,'LIECHTENSTEIN','LI','LIE','Liechtenstein',438,0,'2014-04-02 09:29:03'),(200,'NEPAL','NP','NPL','Nepal',524,1,'2014-04-02 09:29:03'),(201,'WALLIS AND FUTUNA','WF','WLF','Wallis and Futuna',876,0,'2014-04-02 09:29:03'),(202,'WESTERN SAHARA','EH','ESH','Western Sahara',732,0,'2014-04-02 09:29:03'),(203,'ARGENTINA','AR','ARG','Argentina',32,0,'2014-04-02 09:29:03'),(204,'CANADA','CA','CAN','Canada',124,1,'2014-04-02 09:29:03'),(205,'ERITREA','ER','ERI','Eritrea',232,0,'2014-04-02 09:29:03'),(206,'LITHUANIA','LT','LTU','Lithuania',440,0,'2014-04-02 09:29:03'),(207,'NETHERLANDS','NL','NLD','Netherlands',528,0,'2014-04-02 09:29:03'),(208,'YEMEN','YE','YEM','Yemen',887,0,'2014-04-02 09:29:03'),(209,'CAPE VERDE','CV','CPV','Cape Verde',132,0,'2014-04-02 09:29:03'),(210,'ESTONIA','EE','EST','Estonia',233,0,'2014-04-02 09:29:03'),(211,'LUXEMBOURG','LU','LUX','Luxembourg',442,0,'2014-04-02 09:29:03'),(212,'NETHERLANDS ANTILLES','AN','ANT','Netherlands Antilles',530,0,'2014-04-02 09:29:03'),(213,'SAINT HELENA','SH','SHN','Saint Helena',654,0,'2014-04-02 09:29:03'),(214,'ZAMBIA','ZM','ZMB','Zambia',894,0,'2014-04-02 09:29:03'),(215,'CAYMAN ISLANDS','KY','CYM','Cayman Islands',136,0,'2014-04-02 09:29:03'),(216,'ETHIOPIA','ET','ETH','Ethiopia',231,1,'2014-04-02 09:29:03'),(217,'HUNGARY','HU','HUN','Hungary',348,0,'2014-04-02 09:29:03'),(218,'MACAO','MO','MAC','Macao',446,0,'2014-04-02 09:29:03'),(219,'NEW CALEDONIA','NC','NCL','New Caledonia',540,0,'2014-04-02 09:29:03'),(220,'ZIMBABWE','ZW','ZWE','Zimbabwe',716,0,'2014-04-02 09:29:03'),(221,'CENTRAL AFRICAN REPUBLIC','CF','CAF','Central African Republic',140,0,'2014-04-02 09:29:03'),(222,'FALKLAND ISLANDS (MALVINAS)','FK','FLK','Falkland Islands (Malvinas)',238,0,'2014-04-02 09:29:03'),(223,'ICELAND','IS','ISL','Iceland',352,0,'2014-04-02 09:29:03'),(224,'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MK','MKD','Macedonia',807,0,'2014-04-02 09:29:03'),(225,'NEW ZEALAND','NZ','NZL','New Zealand',554,0,'2014-04-02 09:29:03'),(226,'SAINT KITTS AND NEVIS','KN','KNA','Saint Kitts and Nevis',659,1,'2014-04-02 09:29:03'),(227,'SERBIA','RS','SRB','Serbia',999,0,'2014-04-02 09:29:03'),(228,'MONTENEGRO','ME','MNE','Montenegro',499,0,'2014-04-02 09:29:03');
/*!40000 ALTER TABLE `spree_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_credit_cards`
--

DROP TABLE IF EXISTS `spree_credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_credit_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_digits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `gateway_customer_profile_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway_payment_profile_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_credit_cards_on_user_id` (`user_id`),
  KEY `index_spree_credit_cards_on_payment_method_id` (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_credit_cards`
--

LOCK TABLES `spree_credit_cards` WRITE;
/*!40000 ALTER TABLE `spree_credit_cards` DISABLE KEYS */;
INSERT INTO `spree_credit_cards` VALUES (1,'12','2014','visa','1111',NULL,NULL,NULL,'BGS-1234',NULL,'2014-04-02 09:29:55','2014-04-02 09:29:55','Sean Schofield',NULL,NULL);
/*!40000 ALTER TABLE `spree_credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_gateways`
--

DROP TABLE IF EXISTS `spree_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'development',
  `server` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'test',
  `test_mode` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `preferences` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_gateways`
--

LOCK TABLES `spree_gateways` WRITE;
/*!40000 ALTER TABLE `spree_gateways` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_inventory_units`
--

DROP TABLE IF EXISTS `spree_inventory_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_inventory_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `return_authorization_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pending` tinyint(1) DEFAULT '1',
  `line_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_inventory_units_on_order_id` (`order_id`),
  KEY `index_inventory_units_on_shipment_id` (`shipment_id`),
  KEY `index_inventory_units_on_variant_id` (`variant_id`),
  KEY `index_spree_inventory_units_on_line_item_id` (`line_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_inventory_units`
--

LOCK TABLES `spree_inventory_units` WRITE;
/*!40000 ALTER TABLE `spree_inventory_units` DISABLE KEYS */;
INSERT INTO `spree_inventory_units` VALUES (1,'on_hand',1,1,1,NULL,'2014-04-02 09:29:54','2014-04-02 09:29:54',1,1),(2,'on_hand',2,2,2,NULL,'2014-04-02 09:29:54','2014-04-02 09:29:54',1,2);
/*!40000 ALTER TABLE `spree_inventory_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_line_items`
--

DROP TABLE IF EXISTS `spree_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost_price` decimal(8,2) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `adjustment_total` decimal(10,2) DEFAULT '0.00',
  `additional_tax_total` decimal(10,2) DEFAULT '0.00',
  `promo_total` decimal(10,2) DEFAULT '0.00',
  `included_tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pre_tax_amount` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_line_items_on_order_id` (`order_id`),
  KEY `index_spree_line_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_line_items`
--

LOCK TABLES `spree_line_items` WRITE;
/*!40000 ALTER TABLE `spree_line_items` DISABLE KEYS */;
INSERT INTO `spree_line_items` VALUES (1,1,1,1,'15.99','2014-04-02 09:29:54','2014-04-02 09:29:54','USD','17.00',1,'0.80','0.80','0.00','0.00',NULL),(2,2,2,1,'22.99','2014-04-02 09:29:54','2014-04-02 09:29:54','USD','21.00',1,'1.15','1.15','0.00','0.00',NULL),(3,1,3,1,'15.99','2014-04-02 09:34:41','2014-04-02 09:34:41','USD','17.00',1,'0.00','0.00','0.00','0.00',NULL);
/*!40000 ALTER TABLE `spree_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_log_entries`
--

DROP TABLE IF EXISTS `spree_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_log_entries`
--

LOCK TABLES `spree_log_entries` WRITE;
/*!40000 ALTER TABLE `spree_log_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types`
--

DROP TABLE IF EXISTS `spree_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types`
--

LOCK TABLES `spree_option_types` WRITE;
/*!40000 ALTER TABLE `spree_option_types` DISABLE KEYS */;
INSERT INTO `spree_option_types` VALUES (1,'tshirt-size','Size',1,'2014-04-02 09:29:21','2014-04-02 09:29:21'),(2,'tshirt-color','Color',2,'2014-04-02 09:29:21','2014-04-02 09:29:21');
/*!40000 ALTER TABLE `spree_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types_prototypes`
--

DROP TABLE IF EXISTS `spree_option_types_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types_prototypes`
--

LOCK TABLES `spree_option_types_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_option_types_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_option_types_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values`
--

DROP TABLE IF EXISTS `spree_option_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_option_values_on_option_type_id` (`option_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values`
--

LOCK TABLES `spree_option_values` WRITE;
/*!40000 ALTER TABLE `spree_option_values` DISABLE KEYS */;
INSERT INTO `spree_option_values` VALUES (1,1,'Small','S',1,'2014-04-02 09:29:21','2014-04-02 09:29:21'),(2,2,'Medium','M',1,'2014-04-02 09:29:21','2014-04-02 09:29:21'),(3,3,'Large','L',1,'2014-04-02 09:29:21','2014-04-02 09:29:21'),(4,4,'Extra Large','XL',1,'2014-04-02 09:29:21','2014-04-02 09:29:21'),(5,1,'Red','Red',2,'2014-04-02 09:29:21','2014-04-02 09:29:21'),(6,2,'Green','Green',2,'2014-04-02 09:29:21','2014-04-02 09:29:21'),(7,3,'Blue','Blue',2,'2014-04-02 09:29:21','2014-04-02 09:29:21');
/*!40000 ALTER TABLE `spree_option_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values_variants`
--

DROP TABLE IF EXISTS `spree_option_values_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values_variants` (
  `variant_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  KEY `index_option_values_variants_on_variant_id_and_option_value_id` (`variant_id`,`option_value_id`),
  KEY `index_spree_option_values_variants_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values_variants`
--

LOCK TABLES `spree_option_values_variants` WRITE;
/*!40000 ALTER TABLE `spree_option_values_variants` DISABLE KEYS */;
INSERT INTO `spree_option_values_variants` VALUES (17,1),(17,5),(18,1),(18,7),(19,1),(19,6),(20,2),(20,5),(21,2),(21,7),(22,2),(22,6),(23,3),(23,5),(24,3),(24,7),(25,3),(25,6),(26,4),(26,6);
/*!40000 ALTER TABLE `spree_option_values_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_orders`
--

DROP TABLE IF EXISTS `spree_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjustment_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `user_id` int(11) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `payment_total` decimal(10,2) DEFAULT '0.00',
  `shipping_method_id` int(11) DEFAULT NULL,
  `shipment_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special_instructions` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `shipment_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `additional_tax_total` decimal(10,2) DEFAULT '0.00',
  `promo_total` decimal(10,2) DEFAULT '0.00',
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'spree',
  `included_tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_count` int(11) DEFAULT '0',
  `approver_id` int(11) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `confirmation_delivered` tinyint(1) DEFAULT '0',
  `considered_risky` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_orders_on_number` (`number`),
  KEY `index_spree_orders_on_user_id` (`user_id`),
  KEY `index_spree_orders_on_completed_at` (`completed_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_orders`
--

LOCK TABLES `spree_orders` WRITE;
/*!40000 ALTER TABLE `spree_orders` DISABLE KEYS */;
INSERT INTO `spree_orders` VALUES (1,'R123456789','15.99','22.63','complete','1.64',NULL,'2014-04-01 09:29:54',2,1,'0.00',NULL,'pending','pending','spree@example.com',NULL,'2014-04-02 09:29:54','2014-04-02 09:29:55','USD',NULL,NULL,'5.00','0.80','0.00','spree','0.00',0,NULL,NULL,0,0),(2,'R987654321','22.99','30.35','complete','2.36',NULL,'2014-04-01 09:29:54',2,1,'0.00',NULL,'pending','pending','spree@example.com',NULL,'2014-04-02 09:29:54','2014-04-02 09:29:55','USD',NULL,NULL,'5.00','1.15','0.00','spree','0.00',0,NULL,NULL,0,0),(3,'R007204438','15.99','15.99','address','0.00',1,NULL,NULL,NULL,'0.00',NULL,NULL,NULL,'3@zhusan.net',NULL,'2014-04-02 09:34:41','2014-04-02 09:34:44','USD','192.168.1.152',1,'0.00','0.00','0.00','spree','0.00',1,NULL,NULL,0,0);
/*!40000 ALTER TABLE `spree_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_orders_promotions`
--

DROP TABLE IF EXISTS `spree_orders_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_orders_promotions` (
  `order_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_orders_promotions`
--

LOCK TABLES `spree_orders_promotions` WRITE;
/*!40000 ALTER TABLE `spree_orders_promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_orders_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payment_capture_events`
--

DROP TABLE IF EXISTS `spree_payment_capture_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payment_capture_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) DEFAULT '0.00',
  `payment_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_payment_capture_events_on_payment_id` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payment_capture_events`
--

LOCK TABLES `spree_payment_capture_events` WRITE;
/*!40000 ALTER TABLE `spree_payment_capture_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_payment_capture_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payment_methods`
--

DROP TABLE IF EXISTS `spree_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'development',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `display_on` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auto_capture` tinyint(1) DEFAULT NULL,
  `preferences` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_spree_payment_methods_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payment_methods`
--

LOCK TABLES `spree_payment_methods` WRITE;
/*!40000 ALTER TABLE `spree_payment_methods` DISABLE KEYS */;
INSERT INTO `spree_payment_methods` VALUES (1,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for development.',1,'development',NULL,'2014-04-02 09:29:17','2014-04-02 09:29:17',NULL,NULL,'---\n:server: test\n:test_mode: true\n'),(2,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for production.',1,'production',NULL,'2014-04-02 09:29:17','2014-04-02 09:29:17',NULL,NULL,'---\n:server: test\n:test_mode: true\n'),(3,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for staging.',1,'staging',NULL,'2014-04-02 09:29:17','2014-04-02 09:29:17',NULL,NULL,'---\n:server: test\n:test_mode: true\n'),(4,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway for test.',1,'test',NULL,'2014-04-02 09:29:17','2014-04-02 09:29:17',NULL,NULL,'---\n:server: test\n:test_mode: true\n'),(5,'Spree::PaymentMethod::Check','Check','Pay by check.',1,'development',NULL,'2014-04-02 09:29:17','2014-04-02 09:29:17',NULL,NULL,'--- {}\n');
/*!40000 ALTER TABLE `spree_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payments`
--

DROP TABLE IF EXISTS `spree_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avs_response` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvv_response_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvv_response_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uncaptured_amount` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `index_spree_payments_on_order_id` (`order_id`),
  KEY `index_spree_payments_on_payment_method_id` (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payments`
--

LOCK TABLES `spree_payments` WRITE;
/*!40000 ALTER TABLE `spree_payments` DISABLE KEYS */;
INSERT INTO `spree_payments` VALUES (1,'22.63',1,1,'Spree::CreditCard',1,'pending','12345',NULL,'2014-04-02 09:29:55','2014-04-02 09:29:55','Q7V37FAH',NULL,NULL,'22.63'),(2,'30.35',2,1,'Spree::CreditCard',1,'pending','12345',NULL,'2014-04-02 09:29:55','2014-04-02 09:29:55','TRF6BXKU',NULL,NULL,'30.35');
/*!40000 ALTER TABLE `spree_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_preferences`
--

DROP TABLE IF EXISTS `spree_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text COLLATE utf8_unicode_ci,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_preferences_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_preferences`
--

LOCK TABLES `spree_preferences` WRITE;
/*!40000 ALTER TABLE `spree_preferences` DISABLE KEYS */;
INSERT INTO `spree_preferences` VALUES (1,'--- 49\n...\n','spree/app_configuration/default_country_id','2014-04-02 09:29:03','2014-04-02 09:29:03'),(2,'--- USD\n...\n','spree/app_configuration/currency','2014-04-02 09:29:18','2014-04-02 09:29:20');
/*!40000 ALTER TABLE `spree_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prices`
--

DROP TABLE IF EXISTS `spree_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_prices_on_variant_id_and_currency` (`variant_id`,`currency`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prices`
--

LOCK TABLES `spree_prices` WRITE;
/*!40000 ALTER TABLE `spree_prices` DISABLE KEYS */;
INSERT INTO `spree_prices` VALUES (1,1,'15.99','USD',NULL),(2,1,'14.00','EUR',NULL),(3,2,'22.99','USD',NULL),(4,2,'19.00','EUR',NULL),(5,3,'19.99','USD',NULL),(6,3,'16.00','EUR',NULL),(7,4,'19.99','USD',NULL),(8,4,'16.00','EUR',NULL),(9,5,'19.99','USD',NULL),(10,5,'16.00','EUR',NULL),(11,6,'19.99','USD',NULL),(12,6,'16.00','EUR',NULL),(13,7,'19.99','USD',NULL),(14,7,'16.00','EUR',NULL),(15,8,'19.99','USD',NULL),(16,8,'16.00','EUR',NULL),(17,9,'19.99','USD',NULL),(18,9,'16.00','EUR',NULL),(19,10,'19.99','USD',NULL),(20,10,'16.00','EUR',NULL),(21,11,'15.99','USD',NULL),(22,11,'14.00','EUR',NULL),(23,12,'22.99','USD',NULL),(24,12,'19.00','EUR',NULL),(25,13,'13.99','USD',NULL),(26,13,'12.00','EUR',NULL),(27,14,'16.99','USD',NULL),(28,14,'14.00','EUR',NULL),(29,15,'16.99','USD',NULL),(30,15,'14.00','EUR',NULL),(31,16,'13.99','USD',NULL),(32,16,'12.00','EUR',NULL),(33,17,'19.99','USD',NULL),(34,18,'19.99','USD',NULL),(35,19,'19.99','USD',NULL),(36,20,'19.99','USD',NULL),(37,21,'19.99','USD',NULL),(38,22,'19.99','USD',NULL),(39,23,'19.99','USD',NULL),(40,24,'19.99','USD',NULL),(41,25,'19.99','USD',NULL),(42,26,'19.99','USD',NULL);
/*!40000 ALTER TABLE `spree_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_option_types`
--

DROP TABLE IF EXISTS `spree_product_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_option_types`
--

LOCK TABLES `spree_product_option_types` WRITE;
/*!40000 ALTER TABLE `spree_product_option_types` DISABLE KEYS */;
INSERT INTO `spree_product_option_types` VALUES (1,1,3,1,'2014-04-02 09:29:21','2014-04-02 09:29:21'),(2,2,3,2,'2014-04-02 09:29:21','2014-04-02 09:29:21'),(3,1,8,1,'2014-04-02 09:29:21','2014-04-02 09:29:21'),(4,2,8,2,'2014-04-02 09:29:21','2014-04-02 09:29:21');
/*!40000 ALTER TABLE `spree_product_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_properties`
--

DROP TABLE IF EXISTS `spree_product_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_product_properties_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_properties`
--

LOCK TABLES `spree_product_properties` WRITE;
/*!40000 ALTER TABLE `spree_product_properties` DISABLE KEYS */;
INSERT INTO `spree_product_properties` VALUES (1,'Wilson',3,1,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(2,'Wannabe Sports',3,2,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(3,'JK1002',3,3,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(4,'Baseball Jersey',3,4,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(5,'Long',3,5,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(6,'100% cotton',3,6,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(7,'Loose',3,7,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(8,'Men\'s',3,8,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(9,'Jerseys',4,1,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(10,'Resiliance',4,2,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(11,'TL174',4,3,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(12,'Jr. Spaghetti T',4,4,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(13,'None',4,5,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(14,'90% Cotton, 10% Nylon',4,6,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(15,'Form',4,7,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(16,'Women\'s',4,8,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(17,'Jerseys',5,1,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(18,'Conditioned',5,2,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(19,'TL9002',5,3,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(20,'Ringer T',5,4,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(21,'Short',5,5,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(22,'100% Vellum',5,6,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(23,'Loose',5,7,'2014-04-02 09:29:22','2014-04-02 09:29:22',0),(24,'Men\'s',5,8,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(25,'Tote',1,9,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(26,'15\" x 18\" x 6\"',1,10,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(27,'Canvas',1,11,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(28,'Messenger',2,9,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(29,'14 1/2\" x 12\" x 5\"',2,10,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(30,'600 Denier Polyester',2,11,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(31,'Mug',13,9,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(32,'4.5\" tall, 3.25\" dia.',13,10,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(33,'Stein',14,9,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(34,'6.75\" tall, 3.75\" dia. base, 3\" dia. rim',14,10,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(35,'Stein',15,9,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(36,'6.75\" tall, 3.75\" dia. base, 3\" dia. rim',15,10,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(37,'Mug',16,9,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(38,'4.5\" tall, 3.25\" dia.',16,10,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(39,'Tote',11,9,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(40,'15\" x 18\" x 6\"',11,10,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(41,'Messenger',12,9,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(42,'14 1/2\" x 12\" x 5\"',12,10,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(43,'Wilson',8,1,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(44,'Wannabe Sports',8,2,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(45,'JK1002',8,3,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(46,'Baseball Jersey',8,4,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(47,'Long',8,5,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(48,'100% cotton',8,6,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(49,'Loose',8,7,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(50,'Men\'s',8,8,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(51,'Jerseys',9,1,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(52,'Resiliance',9,2,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(53,'TL174',9,3,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(54,'Jr. Spaghetti T',9,4,'2014-04-02 09:29:23','2014-04-02 09:29:23',0),(55,'None',9,5,'2014-04-02 09:29:24','2014-04-02 09:29:24',0),(56,'90% Cotton, 10% Nylon',9,6,'2014-04-02 09:29:24','2014-04-02 09:29:24',0),(57,'Form',9,7,'2014-04-02 09:29:24','2014-04-02 09:29:24',0),(58,'Women\'s',9,8,'2014-04-02 09:29:24','2014-04-02 09:29:24',0),(59,'Jerseys',10,1,'2014-04-02 09:29:24','2014-04-02 09:29:24',0),(60,'Conditioned',10,2,'2014-04-02 09:29:24','2014-04-02 09:29:24',0),(61,'TL9002',10,3,'2014-04-02 09:29:24','2014-04-02 09:29:24',0),(62,'Ringer T',10,4,'2014-04-02 09:29:24','2014-04-02 09:29:24',0),(63,'Short',10,5,'2014-04-02 09:29:24','2014-04-02 09:29:24',0),(64,'100% Vellum',10,6,'2014-04-02 09:29:24','2014-04-02 09:29:24',0),(65,'Loose',10,7,'2014-04-02 09:29:24','2014-04-02 09:29:24',0),(66,'Men\'s',10,8,'2014-04-02 09:29:24','2014-04-02 09:29:24',0);
/*!40000 ALTER TABLE `spree_product_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products`
--

DROP TABLE IF EXISTS `spree_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `available_on` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permalink_idx_unique` (`slug`),
  KEY `index_spree_products_on_available_on` (`available_on`),
  KEY `index_spree_products_on_deleted_at` (`deleted_at`),
  KEY `index_spree_products_on_name` (`name`),
  KEY `index_spree_products_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products`
--

LOCK TABLES `spree_products` WRITE;
/*!40000 ALTER TABLE `spree_products` DISABLE KEYS */;
INSERT INTO `spree_products` VALUES (1,'Ruby on Rails Tote','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'ruby-on-rails-tote',NULL,NULL,1,1,'2014-04-02 09:29:19','2014-04-02 09:29:40'),(2,'Ruby on Rails Bag','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'ruby-on-rails-bag',NULL,NULL,1,1,'2014-04-02 09:29:19','2014-04-02 09:29:40'),(3,'Ruby on Rails Baseball Jersey','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'ruby-on-rails-baseball-jersey',NULL,NULL,1,1,'2014-04-02 09:29:19','2014-04-02 09:29:41'),(4,'Ruby on Rails Jr. Spaghetti','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'ruby-on-rails-jr-spaghetti',NULL,NULL,1,1,'2014-04-02 09:29:19','2014-04-02 09:29:42'),(5,'Ruby on Rails Ringer T-Shirt','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'ruby-on-rails-ringer-t-shirt',NULL,NULL,1,1,'2014-04-02 09:29:19','2014-04-02 09:29:44'),(6,'Ruby Baseball Jersey','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'ruby-baseball-jersey',NULL,NULL,1,1,'2014-04-02 09:29:19','2014-04-02 09:29:46'),(7,'Apache Baseball Jersey','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'apache-baseball-jersey',NULL,NULL,1,1,'2014-04-02 09:29:19','2014-04-02 09:29:46'),(8,'Spree Baseball Jersey','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'spree-baseball-jersey',NULL,NULL,1,1,'2014-04-02 09:29:20','2014-04-02 09:29:51'),(9,'Spree Jr. Spaghetti','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'spree-jr-spaghetti',NULL,NULL,1,1,'2014-04-02 09:29:20','2014-04-02 09:29:50'),(10,'Spree Ringer T-Shirt','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'spree-ringer-t-shirt',NULL,NULL,1,1,'2014-04-02 09:29:20','2014-04-02 09:29:49'),(11,'Spree Tote','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'spree-tote',NULL,NULL,1,1,'2014-04-02 09:29:20','2014-04-02 09:29:48'),(12,'Spree Bag','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'spree-bag',NULL,NULL,1,1,'2014-04-02 09:29:20','2014-04-02 09:29:47'),(13,'Ruby on Rails Mug','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'ruby-on-rails-mug',NULL,NULL,NULL,1,'2014-04-02 09:29:20','2014-04-02 09:29:43'),(14,'Ruby on Rails Stein','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'ruby-on-rails-stein',NULL,NULL,NULL,1,'2014-04-02 09:29:20','2014-04-02 09:29:45'),(15,'Spree Stein','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'spree-stein',NULL,NULL,NULL,1,'2014-04-02 09:29:20','2014-04-02 09:29:52'),(16,'Spree Mug','Sunt rem ipsum quasi quas quos voluptas vel qui. Quo qui excepturi fugiat. Esse minima voluptates ab quis. Libero impedit et sed et voluptatem ea. Maiores nisi quibusdam mollitia.','2014-04-02 09:29:18',NULL,'spree-mug',NULL,NULL,NULL,1,'2014-04-02 09:29:20','2014-04-02 09:29:53');
/*!40000 ALTER TABLE `spree_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_promotion_rules`
--

DROP TABLE IF EXISTS `spree_products_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_promotion_rules` (
  `product_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_products_promotion_rules_on_product_id` (`product_id`),
  KEY `index_products_promotion_rules_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_promotion_rules`
--

LOCK TABLES `spree_products_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_products_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_products_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_taxons`
--

DROP TABLE IF EXISTS `spree_products_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_taxons` (
  `product_id` int(11) DEFAULT NULL,
  `taxon_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_products_taxons_on_product_id` (`product_id`),
  KEY `index_spree_products_taxons_on_taxon_id` (`taxon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_taxons`
--

LOCK TABLES `spree_products_taxons` WRITE;
/*!40000 ALTER TABLE `spree_products_taxons` DISABLE KEYS */;
INSERT INTO `spree_products_taxons` VALUES (1,3,1,1),(2,3,2,2),(11,3,3,3),(12,3,4,4),(13,4,5,5),(14,4,6,6),(15,4,7,7),(16,4,8,8),(4,6,9,9),(9,6,10,10),(3,7,11,11),(5,7,12,12),(7,7,13,13),(6,7,14,14),(8,7,15,15),(10,7,16,16),(6,8,17,17),(7,9,18,18),(15,10,19,19),(16,10,20,20),(10,10,21,21),(8,10,22,22),(11,10,23,23),(12,10,24,24),(9,10,25,25),(1,11,26,26),(2,11,27,27),(13,11,28,28),(14,11,29,29),(3,11,30,30),(4,11,31,31),(5,11,32,32);
/*!40000 ALTER TABLE `spree_products_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_action_line_items`
--

DROP TABLE IF EXISTS `spree_promotion_action_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_action_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_action_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_action_line_items`
--

LOCK TABLES `spree_promotion_action_line_items` WRITE;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_actions`
--

DROP TABLE IF EXISTS `spree_promotion_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_promotion_actions_on_id_and_type` (`id`,`type`),
  KEY `index_spree_promotion_actions_on_promotion_id` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_actions`
--

LOCK TABLES `spree_promotion_actions` WRITE;
/*!40000 ALTER TABLE `spree_promotion_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules`
--

DROP TABLE IF EXISTS `spree_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferences` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_promotion_rules_on_product_group_id` (`product_group_id`),
  KEY `index_promotion_rules_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules`
--

LOCK TABLES `spree_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules_users`
--

DROP TABLE IF EXISTS `spree_promotion_rules_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules_users` (
  `user_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_promotion_rules_users_on_promotion_rule_id` (`promotion_rule_id`),
  KEY `index_promotion_rules_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules_users`
--

LOCK TABLES `spree_promotion_rules_users` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotions`
--

DROP TABLE IF EXISTS `spree_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `match_policy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'all',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advertise` tinyint(1) DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_promotions_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotions`
--

LOCK TABLES `spree_promotions` WRITE;
/*!40000 ALTER TABLE `spree_promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties`
--

DROP TABLE IF EXISTS `spree_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties`
--

LOCK TABLES `spree_properties` WRITE;
/*!40000 ALTER TABLE `spree_properties` DISABLE KEYS */;
INSERT INTO `spree_properties` VALUES (1,'Manufacturer','Manufacturer','2014-04-02 09:29:22','2014-04-02 09:29:22'),(2,'Brand','Brand','2014-04-02 09:29:22','2014-04-02 09:29:22'),(3,'Model','Model','2014-04-02 09:29:22','2014-04-02 09:29:22'),(4,'Shirt Type','Shirt Type','2014-04-02 09:29:22','2014-04-02 09:29:22'),(5,'Sleeve Type','Sleeve Type','2014-04-02 09:29:22','2014-04-02 09:29:22'),(6,'Made from','Made from','2014-04-02 09:29:22','2014-04-02 09:29:22'),(7,'Fit','Fit','2014-04-02 09:29:22','2014-04-02 09:29:22'),(8,'Gender','Gender','2014-04-02 09:29:22','2014-04-02 09:29:22'),(9,'Type','Type','2014-04-02 09:29:23','2014-04-02 09:29:23'),(10,'Size','Size','2014-04-02 09:29:23','2014-04-02 09:29:23'),(11,'Material','Material','2014-04-02 09:29:23','2014-04-02 09:29:23');
/*!40000 ALTER TABLE `spree_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties_prototypes`
--

DROP TABLE IF EXISTS `spree_properties_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties_prototypes`
--

LOCK TABLES `spree_properties_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_properties_prototypes` DISABLE KEYS */;
INSERT INTO `spree_properties_prototypes` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,11),(1,7),(1,8),(2,9),(2,10),(2,11),(3,10),(3,9);
/*!40000 ALTER TABLE `spree_properties_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prototypes`
--

DROP TABLE IF EXISTS `spree_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prototypes`
--

LOCK TABLES `spree_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_prototypes` DISABLE KEYS */;
INSERT INTO `spree_prototypes` VALUES (1,'Shirt','2014-04-02 09:29:24','2014-04-02 09:29:24'),(2,'Bag','2014-04-02 09:29:24','2014-04-02 09:29:24'),(3,'Mugs','2014-04-02 09:29:24','2014-04-02 09:29:24');
/*!40000 ALTER TABLE `spree_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_authorizations`
--

DROP TABLE IF EXISTS `spree_return_authorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_authorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_authorizations`
--

LOCK TABLES `spree_return_authorizations` WRITE;
/*!40000 ALTER TABLE `spree_return_authorizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_return_authorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles`
--

DROP TABLE IF EXISTS `spree_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles`
--

LOCK TABLES `spree_roles` WRITE;
/*!40000 ALTER TABLE `spree_roles` DISABLE KEYS */;
INSERT INTO `spree_roles` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `spree_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles_users`
--

DROP TABLE IF EXISTS `spree_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_spree_roles_users_on_role_id` (`role_id`),
  KEY `index_spree_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles_users`
--

LOCK TABLES `spree_roles_users` WRITE;
/*!40000 ALTER TABLE `spree_roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipments`
--

DROP TABLE IF EXISTS `spree_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  `adjustment_total` decimal(10,2) DEFAULT '0.00',
  `additional_tax_total` decimal(10,2) DEFAULT '0.00',
  `promo_total` decimal(10,2) DEFAULT '0.00',
  `included_tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pre_tax_amount` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shipments_on_number` (`number`),
  KEY `index_spree_shipments_on_order_id` (`order_id`),
  KEY `index_spree_shipments_on_stock_location_id` (`stock_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipments`
--

LOCK TABLES `spree_shipments` WRITE;
/*!40000 ALTER TABLE `spree_shipments` DISABLE KEYS */;
INSERT INTO `spree_shipments` VALUES (1,NULL,'H63465452726','5.00',NULL,1,NULL,'pending','2014-04-02 09:29:54','2014-04-02 09:29:55',1,'0.00','0.00','0.00','0.00',NULL),(2,NULL,'H67665328768','5.00',NULL,2,NULL,'pending','2014-04-02 09:29:54','2014-04-02 09:29:55',1,'0.00','0.00','0.00','0.00',NULL);
/*!40000 ALTER TABLE `spree_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_categories`
--

DROP TABLE IF EXISTS `spree_shipping_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_categories`
--

LOCK TABLES `spree_shipping_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_categories` VALUES (1,'Default','2014-04-02 09:28:27','2014-04-02 09:28:27'),(2,'Default','2014-04-02 09:29:17','2014-04-02 09:29:17');
/*!40000 ALTER TABLE `spree_shipping_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_method_categories`
--

DROP TABLE IF EXISTS `spree_shipping_method_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_method_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_category_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_spree_shipping_method_categories` (`shipping_category_id`,`shipping_method_id`),
  KEY `index_spree_shipping_method_categories_on_shipping_method_id` (`shipping_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_method_categories`
--

LOCK TABLES `spree_shipping_method_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_method_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_method_categories` VALUES (1,1,1,'2014-04-02 09:29:18','2014-04-02 09:29:18'),(2,2,1,'2014-04-02 09:29:18','2014-04-02 09:29:18'),(3,3,1,'2014-04-02 09:29:18','2014-04-02 09:29:18'),(4,4,1,'2014-04-02 09:29:18','2014-04-02 09:29:18'),(5,5,1,'2014-04-02 09:29:18','2014-04-02 09:29:18');
/*!40000 ALTER TABLE `spree_shipping_method_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods`
--

DROP TABLE IF EXISTS `spree_shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_on` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tracking_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods`
--

LOCK TABLES `spree_shipping_methods` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods` VALUES (1,'UPS Ground (USD)',NULL,NULL,'2014-04-02 09:29:18','2014-04-02 09:29:18',NULL,NULL,NULL),(2,'UPS Two Day (USD)',NULL,NULL,'2014-04-02 09:29:18','2014-04-02 09:29:18',NULL,NULL,NULL),(3,'UPS One Day (USD)',NULL,NULL,'2014-04-02 09:29:18','2014-04-02 09:29:18',NULL,NULL,NULL),(4,'UPS Ground (EU)',NULL,NULL,'2014-04-02 09:29:18','2014-04-02 09:29:18',NULL,NULL,NULL),(5,'UPS Ground (EUR)',NULL,NULL,'2014-04-02 09:29:18','2014-04-02 09:29:18',NULL,NULL,NULL);
/*!40000 ALTER TABLE `spree_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods_zones`
--

DROP TABLE IF EXISTS `spree_shipping_methods_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods_zones` (
  `shipping_method_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods_zones`
--

LOCK TABLES `spree_shipping_methods_zones` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods_zones` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods_zones` VALUES (1,2),(2,2),(3,2),(4,1),(5,1);
/*!40000 ALTER TABLE `spree_shipping_methods_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_rates`
--

DROP TABLE IF EXISTS `spree_shipping_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `selected` tinyint(1) DEFAULT '0',
  `cost` decimal(8,2) DEFAULT '0.00',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `spree_shipping_rates_join_index` (`shipment_id`,`shipping_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_rates`
--

LOCK TABLES `spree_shipping_rates` WRITE;
/*!40000 ALTER TABLE `spree_shipping_rates` DISABLE KEYS */;
INSERT INTO `spree_shipping_rates` VALUES (1,1,1,1,'5.00','2014-04-02 09:29:54','2014-04-02 09:29:54',NULL),(2,1,2,0,'10.00','2014-04-02 09:29:54','2014-04-02 09:29:54',NULL),(3,1,3,0,'15.00','2014-04-02 09:29:54','2014-04-02 09:29:54',NULL),(4,2,1,1,'5.00','2014-04-02 09:29:54','2014-04-02 09:29:54',NULL),(5,2,2,0,'10.00','2014-04-02 09:29:54','2014-04-02 09:29:54',NULL),(6,2,3,0,'15.00','2014-04-02 09:29:54','2014-04-02 09:29:54',NULL);
/*!40000 ALTER TABLE `spree_shipping_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_state_changes`
--

DROP TABLE IF EXISTS `spree_state_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_state_changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previous_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stateful_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stateful_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `next_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_state_changes`
--

LOCK TABLES `spree_state_changes` WRITE;
/*!40000 ALTER TABLE `spree_state_changes` DISABLE KEYS */;
INSERT INTO `spree_state_changes` VALUES (1,'payment',NULL,1,NULL,'Spree::Order','balance_due','2014-04-02 09:29:55','2014-04-02 09:29:55'),(2,'shipment',NULL,1,NULL,'Spree::Order','pending','2014-04-02 09:29:55','2014-04-02 09:29:55'),(3,'payment','balance_due',1,NULL,'Spree::Order','pending','2014-04-02 09:29:55','2014-04-02 09:29:55'),(4,'payment',NULL,2,NULL,'Spree::Order','balance_due','2014-04-02 09:29:55','2014-04-02 09:29:55'),(5,'shipment',NULL,2,NULL,'Spree::Order','pending','2014-04-02 09:29:55','2014-04-02 09:29:55'),(6,'payment','balance_due',2,NULL,'Spree::Order','pending','2014-04-02 09:29:55','2014-04-02 09:29:55'),(7,'order','cart',3,1,'Spree::Order','address','2014-04-02 09:34:44','2014-04-02 09:34:44');
/*!40000 ALTER TABLE `spree_state_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_states`
--

DROP TABLE IF EXISTS `spree_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_states`
--

LOCK TABLES `spree_states` WRITE;
/*!40000 ALTER TABLE `spree_states` DISABLE KEYS */;
INSERT INTO `spree_states` VALUES (1,'Michigan','MI',49,'2014-04-02 09:29:03'),(2,'South Dakota','SD',49,'2014-04-02 09:29:03'),(3,'Washington','WA',49,'2014-04-02 09:29:03'),(4,'Wisconsin','WI',49,'2014-04-02 09:29:03'),(5,'Arizona','AZ',49,'2014-04-02 09:29:03'),(6,'Illinois','IL',49,'2014-04-02 09:29:03'),(7,'New Hampshire','NH',49,'2014-04-02 09:29:03'),(8,'North Carolina','NC',49,'2014-04-02 09:29:03'),(9,'Kansas','KS',49,'2014-04-02 09:29:03'),(10,'Missouri','MO',49,'2014-04-02 09:29:03'),(11,'Arkansas','AR',49,'2014-04-02 09:29:03'),(12,'Nevada','NV',49,'2014-04-02 09:29:03'),(13,'District of Columbia','DC',49,'2014-04-02 09:29:03'),(14,'Idaho','ID',49,'2014-04-02 09:29:03'),(15,'Nebraska','NE',49,'2014-04-02 09:29:03'),(16,'Pennsylvania','PA',49,'2014-04-02 09:29:03'),(17,'Hawaii','HI',49,'2014-04-02 09:29:03'),(18,'Utah','UT',49,'2014-04-02 09:29:03'),(19,'Vermont','VT',49,'2014-04-02 09:29:03'),(20,'Delaware','DE',49,'2014-04-02 09:29:03'),(21,'Rhode Island','RI',49,'2014-04-02 09:29:03'),(22,'Oklahoma','OK',49,'2014-04-02 09:29:03'),(23,'Louisiana','LA',49,'2014-04-02 09:29:03'),(24,'Montana','MT',49,'2014-04-02 09:29:03'),(25,'Tennessee','TN',49,'2014-04-02 09:29:03'),(26,'Maryland','MD',49,'2014-04-02 09:29:03'),(27,'Florida','FL',49,'2014-04-02 09:29:03'),(28,'Virginia','VA',49,'2014-04-02 09:29:03'),(29,'Minnesota','MN',49,'2014-04-02 09:29:03'),(30,'New Jersey','NJ',49,'2014-04-02 09:29:03'),(31,'Ohio','OH',49,'2014-04-02 09:29:03'),(32,'California','CA',49,'2014-04-02 09:29:03'),(33,'North Dakota','ND',49,'2014-04-02 09:29:03'),(34,'Maine','ME',49,'2014-04-02 09:29:03'),(35,'Indiana','IN',49,'2014-04-02 09:29:03'),(36,'Texas','TX',49,'2014-04-02 09:29:03'),(37,'Oregon','OR',49,'2014-04-02 09:29:03'),(38,'Wyoming','WY',49,'2014-04-02 09:29:03'),(39,'Alabama','AL',49,'2014-04-02 09:29:03'),(40,'Iowa','IA',49,'2014-04-02 09:29:03'),(41,'Mississippi','MS',49,'2014-04-02 09:29:03'),(42,'Kentucky','KY',49,'2014-04-02 09:29:03'),(43,'New Mexico','NM',49,'2014-04-02 09:29:03'),(44,'Georgia','GA',49,'2014-04-02 09:29:03'),(45,'Colorado','CO',49,'2014-04-02 09:29:03'),(46,'Massachusetts','MA',49,'2014-04-02 09:29:03'),(47,'Connecticut','CT',49,'2014-04-02 09:29:03'),(48,'New York','NY',49,'2014-04-02 09:29:03'),(49,'South Carolina','SC',49,'2014-04-02 09:29:03'),(50,'Alaska','AK',49,'2014-04-02 09:29:03'),(51,'West Virginia','WV',49,'2014-04-02 09:29:03'),(52,'U.S. Armed Forces - Americas','AA',49,'2014-04-02 09:29:03'),(53,'U.S. Armed Forces - Europe','AE',49,'2014-04-02 09:29:03'),(54,'U.S. Armed Forces - Pacific','AP',49,'2014-04-02 09:29:03');
/*!40000 ALTER TABLE `spree_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_items`
--

DROP TABLE IF EXISTS `spree_stock_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_location_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `count_on_hand` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `backorderable` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_items_on_stock_location_id` (`stock_location_id`),
  KEY `stock_item_by_loc_and_var_id` (`stock_location_id`,`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_items`
--

LOCK TABLES `spree_stock_items` WRITE;
/*!40000 ALTER TABLE `spree_stock_items` DISABLE KEYS */;
INSERT INTO `spree_stock_items` VALUES (1,1,1,10,'2014-04-02 09:29:19','2014-04-02 09:29:25',1,NULL),(2,1,2,10,'2014-04-02 09:29:19','2014-04-02 09:29:26',1,NULL),(3,1,3,10,'2014-04-02 09:29:19','2014-04-02 09:29:26',1,NULL),(4,1,4,10,'2014-04-02 09:29:19','2014-04-02 09:29:26',1,NULL),(5,1,5,10,'2014-04-02 09:29:19','2014-04-02 09:29:26',1,NULL),(6,1,6,10,'2014-04-02 09:29:19','2014-04-02 09:29:26',1,NULL),(7,1,7,10,'2014-04-02 09:29:19','2014-04-02 09:29:26',1,NULL),(8,1,8,10,'2014-04-02 09:29:20','2014-04-02 09:29:26',1,NULL),(9,1,9,10,'2014-04-02 09:29:20','2014-04-02 09:29:26',1,NULL),(10,1,10,10,'2014-04-02 09:29:20','2014-04-02 09:29:26',1,NULL),(11,1,11,10,'2014-04-02 09:29:20','2014-04-02 09:29:26',1,NULL),(12,1,12,10,'2014-04-02 09:29:20','2014-04-02 09:29:26',1,NULL),(13,1,13,10,'2014-04-02 09:29:20','2014-04-02 09:29:26',1,NULL),(14,1,14,10,'2014-04-02 09:29:20','2014-04-02 09:29:26',1,NULL),(15,1,15,10,'2014-04-02 09:29:20','2014-04-02 09:29:26',1,NULL),(16,1,16,10,'2014-04-02 09:29:20','2014-04-02 09:29:26',1,NULL),(17,1,17,10,'2014-04-02 09:29:24','2014-04-02 09:29:26',1,NULL),(18,1,18,10,'2014-04-02 09:29:24','2014-04-02 09:29:26',1,NULL),(19,1,19,10,'2014-04-02 09:29:24','2014-04-02 09:29:26',1,NULL),(20,1,20,10,'2014-04-02 09:29:24','2014-04-02 09:29:26',1,NULL),(21,1,21,10,'2014-04-02 09:29:24','2014-04-02 09:29:26',1,NULL),(22,1,22,10,'2014-04-02 09:29:24','2014-04-02 09:29:26',1,NULL),(23,1,23,10,'2014-04-02 09:29:25','2014-04-02 09:29:26',1,NULL),(24,1,24,10,'2014-04-02 09:29:25','2014-04-02 09:29:26',1,NULL),(25,1,25,10,'2014-04-02 09:29:25','2014-04-02 09:29:27',1,NULL),(26,1,26,10,'2014-04-02 09:29:25','2014-04-02 09:29:27',1,NULL);
/*!40000 ALTER TABLE `spree_stock_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_locations`
--

DROP TABLE IF EXISTS `spree_stock_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `backorderable_default` tinyint(1) DEFAULT '0',
  `propagate_all_variants` tinyint(1) DEFAULT '1',
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_locations`
--

LOCK TABLES `spree_stock_locations` WRITE;
/*!40000 ALTER TABLE `spree_stock_locations` DISABLE KEYS */;
INSERT INTO `spree_stock_locations` VALUES (1,'default','2014-04-02 09:28:22','2014-04-02 09:29:25',NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,1,1,1,NULL);
/*!40000 ALTER TABLE `spree_stock_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_movements`
--

DROP TABLE IF EXISTS `spree_stock_movements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_movements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `originator_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_movements_on_stock_item_id` (`stock_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_movements`
--

LOCK TABLES `spree_stock_movements` WRITE;
/*!40000 ALTER TABLE `spree_stock_movements` DISABLE KEYS */;
INSERT INTO `spree_stock_movements` VALUES (1,1,10,NULL,'2014-04-02 09:29:25','2014-04-02 09:29:25',NULL,NULL),(2,2,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(3,3,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(4,4,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(5,5,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(6,6,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(7,7,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(8,8,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(9,9,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(10,10,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(11,11,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(12,12,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(13,13,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(14,14,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(15,15,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(16,16,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(17,17,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(18,18,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(19,19,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(20,20,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(21,21,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(22,22,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(23,23,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(24,24,10,NULL,'2014-04-02 09:29:26','2014-04-02 09:29:26',NULL,NULL),(25,25,10,NULL,'2014-04-02 09:29:27','2014-04-02 09:29:27',NULL,NULL),(26,26,10,NULL,'2014-04-02 09:29:27','2014-04-02 09:29:27',NULL,NULL);
/*!40000 ALTER TABLE `spree_stock_movements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_transfers`
--

DROP TABLE IF EXISTS `spree_stock_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_location_id` int(11) DEFAULT NULL,
  `destination_location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_transfers_on_number` (`number`),
  KEY `index_spree_stock_transfers_on_source_location_id` (`source_location_id`),
  KEY `index_spree_stock_transfers_on_destination_location_id` (`destination_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_transfers`
--

LOCK TABLES `spree_stock_transfers` WRITE;
/*!40000 ALTER TABLE `spree_stock_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_stock_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stores`
--

DROP TABLE IF EXISTS `spree_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_from_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stores_on_code` (`code`),
  KEY `index_spree_stores_on_default` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stores`
--

LOCK TABLES `spree_stores` WRITE;
/*!40000 ALTER TABLE `spree_stores` DISABLE KEYS */;
INSERT INTO `spree_stores` VALUES (1,'Spree Demo Site','demo.spreecommerce.com',NULL,NULL,NULL,'spree@example.com',NULL,'spree',1,'2014-04-02 09:28:30','2014-04-02 09:28:30');
/*!40000 ALTER TABLE `spree_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_categories`
--

DROP TABLE IF EXISTS `spree_tax_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_categories`
--

LOCK TABLES `spree_tax_categories` WRITE;
/*!40000 ALTER TABLE `spree_tax_categories` DISABLE KEYS */;
INSERT INTO `spree_tax_categories` VALUES (1,'Clothing',NULL,0,NULL,'2014-04-02 09:29:18','2014-04-02 09:29:18'),(2,'Food',NULL,0,NULL,'2014-04-02 09:29:18','2014-04-02 09:29:18');
/*!40000 ALTER TABLE `spree_tax_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_rates`
--

DROP TABLE IF EXISTS `spree_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(8,5) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `included_in_price` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_rate_in_label` tinyint(1) DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_rates`
--

LOCK TABLES `spree_tax_rates` WRITE;
/*!40000 ALTER TABLE `spree_tax_rates` DISABLE KEYS */;
INSERT INTO `spree_tax_rates` VALUES (1,'0.05000',2,1,0,'2014-04-02 09:29:18','2014-04-02 09:29:18','North America',1,NULL);
/*!40000 ALTER TABLE `spree_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxonomies`
--

DROP TABLE IF EXISTS `spree_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxonomies`
--

LOCK TABLES `spree_taxonomies` WRITE;
/*!40000 ALTER TABLE `spree_taxonomies` DISABLE KEYS */;
INSERT INTO `spree_taxonomies` VALUES (1,'Categories','2014-04-02 09:29:20','2014-04-02 09:29:53',0),(2,'Brand','2014-04-02 09:29:21','2014-04-02 09:29:53',0);
/*!40000 ALTER TABLE `spree_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxons`
--

DROP TABLE IF EXISTS `spree_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxonomy_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `icon_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taxons_on_parent_id` (`parent_id`),
  KEY `index_taxons_on_permalink` (`permalink`),
  KEY `index_taxons_on_taxonomy_id` (`taxonomy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxons`
--

LOCK TABLES `spree_taxons` WRITE;
/*!40000 ALTER TABLE `spree_taxons` DISABLE KEYS */;
INSERT INTO `spree_taxons` VALUES (1,NULL,0,'Categories','categories',1,1,12,NULL,NULL,NULL,NULL,NULL,'2014-04-02 09:29:20','2014-04-02 09:29:53',NULL,NULL,NULL,0),(2,NULL,0,'Brand','brand',2,13,22,NULL,NULL,NULL,NULL,NULL,'2014-04-02 09:29:21','2014-04-02 09:29:53',NULL,NULL,NULL,0),(3,1,1,'Bags','categories/bags',1,2,3,NULL,NULL,NULL,NULL,NULL,'2014-04-02 09:29:21','2014-04-02 09:29:48',NULL,NULL,NULL,1),(4,1,2,'Mugs','categories/mugs',1,4,5,NULL,NULL,NULL,NULL,NULL,'2014-04-02 09:29:21','2014-04-02 09:29:53',NULL,NULL,NULL,1),(5,1,0,'Clothing','categories/clothing',1,6,11,NULL,NULL,NULL,NULL,NULL,'2014-04-02 09:29:21','2014-04-02 09:29:51',NULL,NULL,NULL,1),(6,5,0,'Shirts','categories/clothing/shirts',1,7,8,NULL,NULL,NULL,NULL,NULL,'2014-04-02 09:29:21','2014-04-02 09:29:50',NULL,NULL,NULL,2),(7,5,0,'T-Shirts','categories/clothing/t-shirts',1,9,10,NULL,NULL,NULL,NULL,NULL,'2014-04-02 09:29:21','2014-04-02 09:29:51',NULL,NULL,NULL,2),(8,2,0,'Ruby','brand/ruby',2,14,15,NULL,NULL,NULL,NULL,NULL,'2014-04-02 09:29:21','2014-04-02 09:29:46',NULL,NULL,NULL,1),(9,2,0,'Apache','brand/apache',2,16,17,NULL,NULL,NULL,NULL,NULL,'2014-04-02 09:29:21','2014-04-02 09:29:46',NULL,NULL,NULL,1),(10,2,0,'Spree','brand/spree',2,18,19,NULL,NULL,NULL,NULL,NULL,'2014-04-02 09:29:21','2014-04-02 09:29:53',NULL,NULL,NULL,1),(11,2,0,'Rails','brand/rails',2,20,21,NULL,NULL,NULL,NULL,NULL,'2014-04-02 09:29:21','2014-04-02 09:29:45',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `spree_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tokenized_permissions`
--

DROP TABLE IF EXISTS `spree_tokenized_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tokenized_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissable_id` int(11) DEFAULT NULL,
  `permissable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokenized_name_and_type` (`permissable_id`,`permissable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tokenized_permissions`
--

LOCK TABLES `spree_tokenized_permissions` WRITE;
/*!40000 ALTER TABLE `spree_tokenized_permissions` DISABLE KEYS */;
INSERT INTO `spree_tokenized_permissions` VALUES (1,1,'Spree::Order','da2caac52fc04105','2014-04-02 09:29:54','2014-04-02 09:29:54'),(2,2,'Spree::Order','71114982dc0d22ac','2014-04-02 09:29:54','2014-04-02 09:29:54'),(3,3,'Spree::Order','de033945d640e854','2014-04-02 09:34:41','2014-04-02 09:34:41');
/*!40000 ALTER TABLE `spree_tokenized_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_trackers`
--

DROP TABLE IF EXISTS `spree_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `analytics_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_trackers`
--

LOCK TABLES `spree_trackers` WRITE;
/*!40000 ALTER TABLE `spree_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_users`
--

DROP TABLE IF EXISTS `spree_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perishable_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `authentication_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unlock_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `spree_api_key` varchar(48) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_users_on_spree_api_key` (`spree_api_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_users`
--

LOCK TABLES `spree_users` WRITE;
/*!40000 ALTER TABLE `spree_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_variants`
--

DROP TABLE IF EXISTS `spree_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `weight` decimal(8,2) DEFAULT '0.00',
  `height` decimal(8,2) DEFAULT NULL,
  `width` decimal(8,2) DEFAULT NULL,
  `depth` decimal(8,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `cost_price` decimal(8,2) DEFAULT NULL,
  `cost_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `track_inventory` tinyint(1) DEFAULT '1',
  `tax_category_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_variants_on_product_id` (`product_id`),
  KEY `index_spree_variants_on_sku` (`sku`),
  KEY `index_spree_variants_on_tax_category_id` (`tax_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_variants`
--

LOCK TABLES `spree_variants` WRITE;
/*!40000 ALTER TABLE `spree_variants` DISABLE KEYS */;
INSERT INTO `spree_variants` VALUES (1,'ROR-00011','0.00',NULL,NULL,NULL,NULL,1,1,'17.00','USD',1,1,NULL,'2014-04-02 09:29:40'),(2,'ROR-00012','0.00',NULL,NULL,NULL,NULL,1,2,'21.00','USD',1,1,NULL,'2014-04-02 09:29:40'),(3,'ROR-001','0.00',NULL,NULL,NULL,NULL,1,3,'17.00','USD',1,1,NULL,'2014-04-02 09:29:41'),(4,'ROR-00013','0.00',NULL,NULL,NULL,NULL,1,4,'17.00','USD',1,1,NULL,'2014-04-02 09:29:42'),(5,'ROR-00015','0.00',NULL,NULL,NULL,NULL,1,5,'17.00','USD',1,1,NULL,'2014-04-02 09:29:44'),(6,'RUB-00001','0.00',NULL,NULL,NULL,NULL,1,6,'17.00','USD',1,1,NULL,'2014-04-02 09:29:46'),(7,'APC-00001','0.00',NULL,NULL,NULL,NULL,1,7,'17.00','USD',1,1,NULL,'2014-04-02 09:29:46'),(8,'SPR-00001','0.00',NULL,NULL,NULL,NULL,1,8,'17.00','USD',1,1,NULL,'2014-04-02 09:29:51'),(9,'SPR-00013','0.00',NULL,NULL,NULL,NULL,1,9,'17.00','USD',1,1,NULL,'2014-04-02 09:29:50'),(10,'SPR-00015','0.00',NULL,NULL,NULL,NULL,1,10,'17.00','USD',1,1,NULL,'2014-04-02 09:29:49'),(11,'SPR-00011','0.00',NULL,NULL,NULL,NULL,1,11,'13.00','USD',1,1,NULL,'2014-04-02 09:29:48'),(12,'SPR-00012','0.00',NULL,NULL,NULL,NULL,1,12,'21.00','USD',1,1,NULL,'2014-04-02 09:29:47'),(13,'ROR-00014','0.00',NULL,NULL,NULL,NULL,1,13,'11.00','USD',1,1,NULL,'2014-04-02 09:29:43'),(14,'ROR-00016','0.00',NULL,NULL,NULL,NULL,1,14,'15.00','USD',1,1,NULL,'2014-04-02 09:29:45'),(15,'SPR-00016','0.00',NULL,NULL,NULL,NULL,1,15,'15.00','USD',1,1,NULL,'2014-04-02 09:29:52'),(16,'SPR-00014','0.00',NULL,NULL,NULL,NULL,1,16,'11.00','USD',1,1,NULL,'2014-04-02 09:29:53'),(17,'ROR-00001','0.00',NULL,NULL,NULL,NULL,0,3,'17.00','USD',1,1,NULL,'2014-04-02 09:29:28'),(18,'ROR-00002','0.00',NULL,NULL,NULL,NULL,0,3,'17.00','USD',2,1,NULL,'2014-04-02 09:29:29'),(19,'ROR-00003','0.00',NULL,NULL,NULL,NULL,0,3,'17.00','USD',3,1,NULL,'2014-04-02 09:29:31'),(20,'ROR-00004','0.00',NULL,NULL,NULL,NULL,0,3,'17.00','USD',4,1,NULL,'2014-04-02 09:29:32'),(21,'ROR-00005','0.00',NULL,NULL,NULL,NULL,0,3,'17.00','USD',5,1,NULL,'2014-04-02 09:29:33'),(22,'ROR-00006','0.00',NULL,NULL,NULL,NULL,0,3,'17.00','USD',6,1,NULL,'2014-04-02 09:29:34'),(23,'ROR-00007','0.00',NULL,NULL,NULL,NULL,0,3,'17.00','USD',7,1,NULL,'2014-04-02 09:29:35'),(24,'ROR-00008','0.00',NULL,NULL,NULL,NULL,0,3,'17.00','USD',8,1,NULL,'2014-04-02 09:29:36'),(25,'ROR-00009','0.00',NULL,NULL,NULL,NULL,0,3,'17.00','USD',9,1,NULL,'2014-04-02 09:29:37'),(26,'ROR-00012','0.00',NULL,NULL,NULL,NULL,0,3,'17.00','USD',10,1,NULL,'2014-04-02 09:29:38');
/*!40000 ALTER TABLE `spree_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zone_members`
--

DROP TABLE IF EXISTS `spree_zone_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zone_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zoneable_id` int(11) DEFAULT NULL,
  `zoneable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zone_members`
--

LOCK TABLES `spree_zone_members` WRITE;
/*!40000 ALTER TABLE `spree_zone_members` DISABLE KEYS */;
INSERT INTO `spree_zone_members` VALUES (1,72,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(2,10,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(3,76,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(4,94,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(5,155,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(6,13,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(7,164,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(8,217,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(9,167,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(10,20,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(11,111,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(12,175,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(13,24,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(14,29,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(15,98,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(16,180,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(17,182,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(18,44,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(19,206,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(20,46,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(21,211,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(22,135,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(23,56,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(24,207,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(25,210,'Spree::Country',1,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(26,49,'Spree::Country',2,'2014-04-02 09:29:04','2014-04-02 09:29:04'),(27,204,'Spree::Country',2,'2014-04-02 09:29:04','2014-04-02 09:29:04');
/*!40000 ALTER TABLE `spree_zone_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zones`
--

DROP TABLE IF EXISTS `spree_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_tax` tinyint(1) DEFAULT '0',
  `zone_members_count` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zones`
--

LOCK TABLES `spree_zones` WRITE;
/*!40000 ALTER TABLE `spree_zones` DISABLE KEYS */;
INSERT INTO `spree_zones` VALUES (1,'EU_VAT','Countries that make up the EU VAT zone.',0,25,'2014-04-02 09:29:03','2014-04-02 09:29:03'),(2,'North America','USA + Canada',0,2,'2014-04-02 09:29:04','2014-04-02 09:29:04');
/*!40000 ALTER TABLE `spree_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggings_idx` (`tag_id`,`taggable_id`,`taggable_type`,`context`,`tagger_id`,`tagger_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tags_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'test');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-04  9:46:20
