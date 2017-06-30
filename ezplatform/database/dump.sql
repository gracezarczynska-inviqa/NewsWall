-- MySQL dump 10.13  Distrib 5.7.18, for osx10.11 (x86_64)
--
-- Host: localhost    Database: newswall
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `ezapprove_items`
--

DROP TABLE IF EXISTS `ezapprove_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezapprove_items` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_process_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezapprove_items`
--

LOCK TABLES `ezapprove_items` WRITE;
/*!40000 ALTER TABLE `ezapprove_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezapprove_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbasket`
--

DROP TABLE IF EXISTS `ezbasket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbasket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezbasket_session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbasket`
--

LOCK TABLES `ezbasket` WRITE;
/*!40000 ALTER TABLE `ezbasket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbasket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbinaryfile`
--

DROP TABLE IF EXISTS `ezbinaryfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbinaryfile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `download_count` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbinaryfile`
--

LOCK TABLES `ezbinaryfile` WRITE;
/*!40000 ALTER TABLE `ezbinaryfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbinaryfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state`
--

DROP TABLE IF EXISTS `ezcobj_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state` (
  `default_language_id` bigint(20) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_identifier` (`group_id`,`identifier`),
  KEY `ezcobj_state_lmask` (`language_mask`),
  KEY `ezcobj_state_priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state`
--

LOCK TABLES `ezcobj_state` WRITE;
/*!40000 ALTER TABLE `ezcobj_state` DISABLE KEYS */;
INSERT INTO `ezcobj_state` VALUES (2,2,1,'not_locked',3,0),(2,2,2,'locked',3,1);
/*!40000 ALTER TABLE `ezcobj_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group`
--

DROP TABLE IF EXISTS `ezcobj_state_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group` (
  `default_language_id` bigint(20) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_group_identifier` (`identifier`),
  KEY `ezcobj_state_group_lmask` (`language_mask`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group`
--

LOCK TABLES `ezcobj_state_group` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group` VALUES (2,2,'ez_lock',3);
/*!40000 ALTER TABLE `ezcobj_state_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group_language`
--

DROP TABLE IF EXISTS `ezcobj_state_group_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group_language` (
  `contentobject_state_group_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  `real_language_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_state_group_id`,`real_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group_language`
--

LOCK TABLES `ezcobj_state_group_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group_language` VALUES (2,'',3,'Lock',2);
/*!40000 ALTER TABLE `ezcobj_state_group_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_language`
--

DROP TABLE IF EXISTS `ezcobj_state_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_language` (
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_state_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_language`
--

LOCK TABLES `ezcobj_state_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_language` VALUES (1,'',3,'Not locked'),(2,'',3,'Locked');
/*!40000 ALTER TABLE `ezcobj_state_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_link`
--

DROP TABLE IF EXISTS `ezcobj_state_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_link` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_id`,`contentobject_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_link`
--

LOCK TABLES `ezcobj_state_link` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_link` DISABLE KEYS */;
INSERT INTO `ezcobj_state_link` VALUES (1,1),(4,1),(10,1),(11,1),(12,1),(13,1),(14,1),(41,1),(42,1),(45,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1);
/*!40000 ALTER TABLE `ezcobj_state_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_group`
--

DROP TABLE IF EXISTS `ezcollab_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `depth` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_open` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) NOT NULL DEFAULT '0',
  `parent_group_id` int(11) NOT NULL DEFAULT '0',
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcollab_group_depth` (`depth`),
  KEY `ezcollab_group_path` (`path_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_group`
--

LOCK TABLES `ezcollab_group` WRITE;
/*!40000 ALTER TABLE `ezcollab_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item`
--

DROP TABLE IF EXISTS `ezcollab_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `type_identifier` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item`
--

LOCK TABLES `ezcollab_item` WRITE;
/*!40000 ALTER TABLE `ezcollab_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_group_link`
--

DROP TABLE IF EXISTS `ezcollab_item_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_group_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`collaboration_id`,`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_group_link`
--

LOCK TABLES `ezcollab_item_group_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_message_link`
--

DROP TABLE IF EXISTS `ezcollab_item_message_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_message_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL DEFAULT '0',
  `message_type` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_message_link`
--

LOCK TABLES `ezcollab_item_message_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_message_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_message_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_participant_link`
--

DROP TABLE IF EXISTS `ezcollab_item_participant_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_participant_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0',
  `participant_role` int(11) NOT NULL DEFAULT '1',
  `participant_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`collaboration_id`,`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_participant_link`
--

LOCK TABLES `ezcollab_item_participant_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_status`
--

DROP TABLE IF EXISTS `ezcollab_item_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_status` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`collaboration_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_status`
--

LOCK TABLES `ezcollab_item_status` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_notification_rule`
--

DROP TABLE IF EXISTS `ezcollab_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_notification_rule` (
  `collab_identifier` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_notification_rule`
--

LOCK TABLES `ezcollab_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezcollab_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_profile`
--

DROP TABLE IF EXISTS `ezcollab_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_profile` (
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_group` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_profile`
--

LOCK TABLES `ezcollab_profile` WRITE;
/*!40000 ALTER TABLE `ezcollab_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_simple_message`
--

DROP TABLE IF EXISTS `ezcollab_simple_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_simple_message` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` varchar(40) NOT NULL DEFAULT '',
  `modified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_simple_message`
--

LOCK TABLES `ezcollab_simple_message` WRITE;
/*!40000 ALTER TABLE `ezcollab_simple_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_simple_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment`
--

DROP TABLE IF EXISTS `ezcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` bigint(20) NOT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) DEFAULT NULL,
  `ip` varchar(100) NOT NULL,
  `contentobject_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `text` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_session_key_ip` (`user_id`,`session_key`,`ip`),
  KEY `content_parentcomment` (`contentobject_id`,`language_id`,`parent_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment`
--

LOCK TABLES `ezcomment` WRITE;
/*!40000 ALTER TABLE `ezcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_notification`
--

DROP TABLE IF EXISTS `ezcomment_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) NOT NULL,
  `language_id` bigint(20) NOT NULL,
  `send_time` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_notification`
--

LOCK TABLES `ezcomment_notification` WRITE;
/*!40000 ALTER TABLE `ezcomment_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_subscriber`
--

DROP TABLE IF EXISTS `ezcomment_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT '1',
  `hash_string` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_subscriber`
--

LOCK TABLES `ezcomment_subscriber` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscriber` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_subscription`
--

DROP TABLE IF EXISTS `ezcomment_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  `subscription_type` varchar(30) NOT NULL,
  `content_id` int(11) NOT NULL,
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `subscription_time` int(11) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT '1',
  `hash_string` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_subscription`
--

LOCK TABLES `ezcomment_subscription` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontent_language`
--

DROP TABLE IF EXISTS `ezcontent_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontent_language` (
  `disabled` int(11) NOT NULL DEFAULT '0',
  `id` bigint(20) NOT NULL DEFAULT '0',
  `locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcontent_language_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontent_language`
--

LOCK TABLES `ezcontent_language` WRITE;
/*!40000 ALTER TABLE `ezcontent_language` DISABLE KEYS */;
INSERT INTO `ezcontent_language` VALUES (0,2,'eng-GB','English (United Kingdom)');
/*!40000 ALTER TABLE `ezcontent_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowsebookmark`
--

DROP TABLE IF EXISTS `ezcontentbrowsebookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowsebookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowsebookmark_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowsebookmark`
--

LOCK TABLES `ezcontentbrowsebookmark` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowserecent`
--

DROP TABLE IF EXISTS `ezcontentbrowserecent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowserecent` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowserecent_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowserecent`
--

LOCK TABLES `ezcontentbrowserecent` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowserecent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowserecent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass`
--

DROP TABLE IF EXISTS `ezcontentclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass` (
  `always_available` int(11) NOT NULL DEFAULT '0',
  `contentobject_name` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `initial_language_id` bigint(20) NOT NULL DEFAULT '0',
  `is_container` int(11) NOT NULL DEFAULT '0',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `serialized_description_list` longtext,
  `serialized_name_list` longtext,
  `sort_field` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `url_alias_name` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_version` (`version`),
  KEY `ezcontentclass_identifier` (`identifier`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass`
--

LOCK TABLES `ezcontentclass` WRITE;
/*!40000 ALTER TABLE `ezcontentclass` DISABLE KEYS */;
INSERT INTO `ezcontentclass` VALUES (1,'<short_name|name>',1024392098,14,1,'folder',2,1,2,1448831672,14,'a3d405b81be900468eb153d774f4f0d2','b:0;','a:1:{s:6:\"eng-GB\";s:6:\"Folder\";}',1,1,NULL,0),(0,'<short_title|title>',1024392098,14,2,'article',2,1,2,1498732641,14,'c15b600eb9198b1924063b5a68758232','b:0;','a:1:{s:6:\"eng-GB\";s:7:\"Article\";}',1,1,'',0),(0,'<short_title|title>',1024392098,14,2,'article',2,1,2,1498749180,14,'c15b600eb9198b1924063b5a68758232','b:0;','a:1:{s:6:\"eng-GB\";s:7:\"Article\";}',1,1,'',1),(1,'<name>',1024392098,14,3,'user_group',2,1,3,1048494743,14,'25b4268cdcd01921b808a0d854b877ef',NULL,'a:2:{s:6:\"eng-GB\";s:10:\"User group\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<first_name> <last_name>',1024392098,14,4,'user',2,0,3,1082018364,14,'40faa822edc579b02c25f6bb7beec3ad',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"User\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<name>',1031484992,8,5,'image',2,0,3,1048494784,14,'f6df12aa74e36230eb675f364fccd25a',NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<name>',1052385472,14,12,'file',2,0,3,1052385669,14,'637d58bfddf164627bdfd265733280a0',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0);
/*!40000 ALTER TABLE `ezcontentclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_attribute`
--

DROP TABLE IF EXISTS `ezcontentclass_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_attribute` (
  `can_translate` int(11) DEFAULT '1',
  `category` varchar(25) NOT NULL DEFAULT '',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` double DEFAULT NULL,
  `data_float2` double DEFAULT NULL,
  `data_float3` double DEFAULT NULL,
  `data_float4` double DEFAULT NULL,
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(50) DEFAULT NULL,
  `data_text2` varchar(50) DEFAULT NULL,
  `data_text3` varchar(50) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `data_type_string` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `is_information_collector` int(11) NOT NULL DEFAULT '0',
  `is_required` int(11) NOT NULL DEFAULT '0',
  `is_searchable` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `serialized_data_text` longtext,
  `serialized_description_list` longtext,
  `serialized_name_list` longtext NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_attr_ccid` (`contentclass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_attribute`
--

LOCK TABLES `ezcontentclass_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',2,NULL,NULL,NULL,NULL,255,0,NULL,NULL,'New article',NULL,NULL,NULL,NULL,'ezstring',1,'title',0,1,1,1,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:5:\"Title\";}',0),(1,'',2,NULL,NULL,NULL,NULL,255,0,NULL,NULL,'New article',NULL,NULL,NULL,NULL,'ezstring',1,'title',0,1,1,1,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:5:\"Title\";}',1),(1,'',1,NULL,NULL,NULL,NULL,255,0,NULL,NULL,'Folder',NULL,NULL,NULL,NULL,'ezstring',4,'name',0,1,1,1,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:4:\"Name\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',6,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',7,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',8,'first_name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:10:\"First name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',9,'last_name',0,1,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Last name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(0,'',4,0,0,0,0,0,0,0,0,'','','','','','ezuser',12,'user_account',0,1,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"User account\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,150,0,0,0,'','','','',NULL,'ezstring',116,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,10,0,0,0,'','','','',NULL,'ezrichtext',117,'caption',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,10,0,0,0,'','','','',NULL,'ezimage',118,'image',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',1,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',119,'short_description',0,0,1,3,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:17:\"Short description\";}',0),(1,'',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',120,'teaser',0,1,1,4,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:6:\"Teaser\";}',0),(1,'',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',120,'teaser',0,1,1,4,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:6:\"Teaser\";}',1),(1,'content',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',121,'story',0,0,1,5,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:10:\"News Story\";}',0),(1,'content',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',121,'story',0,0,1,5,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:10:\"News Story\";}',1),(0,'',2,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'ezboolean',123,'enable_comments',0,0,0,6,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:15:\"Enable comments\";}',0),(0,'',2,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'ezboolean',123,'enable_comments',0,0,0,6,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:15:\"Enable comments\";}',1),(1,'',12,0,0,0,0,0,0,0,0,'New file','','','',NULL,'ezstring',146,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',12,0,0,0,0,10,0,0,0,'','','','',NULL,'ezrichtext',147,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',12,0,0,0,0,0,0,0,0,'','','','',NULL,'ezbinaryfile',148,'file',0,1,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,NULL,NULL,NULL,NULL,255,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',152,'short_title',0,0,1,2,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:11:\"Short title\";}',0),(1,'',2,NULL,NULL,NULL,NULL,255,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',152,'short_title',0,0,1,2,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:11:\"Short title\";}',1),(1,'',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezauthor',153,'author',0,0,0,3,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:6:\"Author\";}',0),(1,'',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezauthor',153,'author',0,0,0,3,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:6:\"Author\";}',1),(1,'',1,NULL,NULL,NULL,NULL,100,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring',155,'short_name',0,0,1,2,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:10:\"Short name\";}',0),(1,'',1,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext',156,'description',0,0,1,4,'N;','b:0;','a:1:{s:6:\"eng-GB\";s:11:\"Description\";}',0),(1,'',4,0,0,0,0,10,0,0,0,'','','','','','eztext',179,'signature',0,0,1,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Signature\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,0,0,0,0,10,0,0,0,'','','','','','ezimage',180,'image',0,0,0,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'content',2,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezselection><options><option id=\"0\" name=\"National\"/><option id=\"1\" name=\"Local\"/></options></ezselection>\n','ezselection',181,'category',0,0,1,8,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Category\";}',0),(1,'content',2,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezselection><options><option id=\"0\" name=\"National\"/><option id=\"1\" name=\"Local\"/></options></ezselection>\n','ezselection',181,'category',0,0,1,8,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Category\";}',1),(1,'content',2,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',183,'image',0,0,0,9,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Image\";}',0),(1,'content',2,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezimage',183,'image',0,0,0,9,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Image\";}',1);
/*!40000 ALTER TABLE `ezcontentclass_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_classgroup`
--

DROP TABLE IF EXISTS `ezcontentclass_classgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_classgroup` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_classgroup`
--

LOCK TABLES `ezcontentclass_classgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_classgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclass_classgroup` VALUES (1,0,1,'Content'),(2,0,1,'Content'),(2,1,1,'Content'),(3,0,2,'Users'),(4,0,2,'Users'),(5,0,3,'Media'),(12,0,3,'Media');
/*!40000 ALTER TABLE `ezcontentclass_classgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_name`
--

DROP TABLE IF EXISTS `ezcontentclass_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_name` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `language_locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_name`
--

LOCK TABLES `ezcontentclass_name` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_name` DISABLE KEYS */;
INSERT INTO `ezcontentclass_name` VALUES (1,0,2,'eng-GB','Folder'),(2,0,2,'eng-GB','Article'),(2,1,2,'eng-GB','Article'),(3,0,3,'eng-GB','User group'),(4,0,3,'eng-GB','User'),(5,0,3,'eng-GB','Image'),(12,0,3,'eng-GB','File');
/*!40000 ALTER TABLE `ezcontentclass_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclassgroup`
--

DROP TABLE IF EXISTS `ezcontentclassgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclassgroup` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclassgroup`
--

LOCK TABLES `ezcontentclassgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclassgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclassgroup` VALUES (1031216928,14,1,1033922106,14,'Content'),(1031216941,14,2,1033922113,14,'Users'),(1032009743,14,3,1033922120,14,'Media');
/*!40000 ALTER TABLE `ezcontentclassgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject`
--

DROP TABLE IF EXISTS `ezcontentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `current_version` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_language_id` bigint(20) NOT NULL DEFAULT '0',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) DEFAULT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcontentobject_remote_id` (`remote_id`),
  KEY `ezcontentobject_classid` (`contentclass_id`),
  KEY `ezcontentobject_currentversion` (`current_version`),
  KEY `ezcontentobject_lmask` (`language_mask`),
  KEY `ezcontentobject_owner` (`owner_id`),
  KEY `ezcontentobject_pub` (`published`),
  KEY `ezcontentobject_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject`
--

LOCK TABLES `ezcontentobject` WRITE;
/*!40000 ALTER TABLE `ezcontentobject` DISABLE KEYS */;
INSERT INTO `ezcontentobject` VALUES (1,9,1,2,3,1448889046,'eZ Platform',14,1448889046,'9459d3c29e15006e45197295722c7ade',1,1),(3,1,4,2,3,1033917596,'Users',14,1033917596,'f5c88a2209584891056f987fd965b0ba',2,1),(4,2,10,2,3,1072180405,'Anonymous User',14,1033920665,'faaeb9be3bd98ed09f606fc16d144eca',2,1),(3,1,11,2,3,1033920746,'Guest accounts',14,1033920746,'5f7f0bdb3381d6a461d8c29ff53d908f',2,1),(3,1,12,2,3,1033920775,'Administrator users',14,1033920775,'9b47a45624b023b1a76c73b74d704acf',2,1),(3,1,13,2,3,1033920794,'Editors',14,1033920794,'3c160cca19fb135f83bd02d911f04db2',2,1),(4,3,14,2,3,1301062024,'Administrator User',14,1033920830,'1bb4fe25487f05527efa8bfd394cecc7',2,1),(1,1,41,2,3,1060695457,'Media',14,1060695457,'a6e35cbcb7cd6ae4b691f3eee30cd262',3,1),(3,1,42,2,3,1072180330,'Anonymous Users',14,1072180330,'15b256dbea2ae72418ff5facc999e8f9',2,1),(1,1,45,2,3,1079684190,'Setup',14,1079684190,'241d538ce310074e602f29f49e44e938',4,1),(1,1,49,2,3,1080220197,'Images',14,1080220197,'e7ff633c6b8e0fd3531e74c6e712bead',3,1),(1,1,50,2,3,1080220220,'Files',14,1080220220,'732a5acd01b51a6fe6eab448ad4138a9',3,1),(1,1,51,2,3,1080220233,'Multimedia',14,1080220233,'09082deb98662a104f325aaa8c4933d3',3,1),(2,2,52,2,2,1498738516,'Article no.1',14,1498647640,'ae67040062226069c52f76a77a24e58d',1,1),(5,1,54,2,3,1498647834,'19441967_1585049778212889_5857698824653208083_o.jpg',14,1498647834,'6cc2fe7adb35a7dfb266f151fb5ec200',3,1),(5,1,55,2,3,1498647853,'Hehe.jpeg',14,1498647853,'36be643170ffcb6c9c96c329fb1e9c8f',3,1),(5,1,56,2,3,1498647872,'WB01-1-5.jpg',14,1498647872,'1a1be05ed25ca79323fa3e1b8e6f72c2',3,1),(2,1,57,2,2,1498647955,'Article no.2',14,1498647955,'80e9ca968f67d000c7d09ce4b7d4ae48',1,1),(2,1,58,2,2,1498739286,'Article no.3',14,1498739286,'38ca7e70581c490164c9452fc4ea5555',1,1),(2,1,59,2,2,1498739462,'Article 4',14,1498739462,'b3505871a4b72ac15aa5b2bf6541bfcd',1,1),(2,1,60,2,2,1498739575,'Article no.5',14,1498739575,'345b40a258d3402ca5352afcb834ec34',1,1);
/*!40000 ALTER TABLE `ezcontentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_attribute`
--

DROP TABLE IF EXISTS `ezcontentobject_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_attribute` (
  `attribute_original_id` int(11) DEFAULT '0',
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `data_float` double DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `data_type_string` varchar(50) DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(20) NOT NULL DEFAULT '',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `sort_key_int` int(11) NOT NULL DEFAULT '0',
  `sort_key_string` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentobject_attribute_co_id_ver_lang_code` (`contentobject_id`,`version`,`language_code`),
  KEY `ezcontentobject_attribute_language_code` (`language_code`),
  KEY `ezcontentobject_classattr_id` (`contentclassattribute_id`),
  KEY `sort_key_int` (`sort_key_int`),
  KEY `sort_key_string` (`sort_key_string`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_attribute`
--

LOCK TABLES `ezcontentobject_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,1,NULL,NULL,'Welcome to eZ Platform','ezstring',1,'eng-GB',3,0,'welcome to ez platform',9),(0,119,1,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>This is the clean install coming with eZ Platform. It’s a barebone setup of the platform, an excellent foundation to build upon if you want to build from scratch. For more ready to go base designs or demo sites, please check the documentation.</para></section>\n','ezrichtext',2,'eng-GB',3,0,'',9),(0,7,4,NULL,NULL,'Main group','ezstring',7,'eng-GB',3,0,'',1),(0,6,4,NULL,NULL,'Users','ezstring',8,'eng-GB',3,0,'',1),(0,8,10,0,0,'Anonymous','ezstring',19,'eng-GB',3,0,'anonymous',2),(0,9,10,0,0,'User','ezstring',20,'eng-GB',3,0,'user',2),(0,12,10,0,0,'','ezuser',21,'eng-GB',3,0,'',2),(0,6,11,0,0,'Guest accounts','ezstring',22,'eng-GB',3,0,'',1),(0,7,11,0,0,'','ezstring',23,'eng-GB',3,0,'',1),(0,6,12,0,0,'Administrator users','ezstring',24,'eng-GB',3,0,'',1),(0,7,12,0,0,'','ezstring',25,'eng-GB',3,0,'',1),(0,6,13,0,0,'Editors','ezstring',26,'eng-GB',3,0,'',1),(0,7,13,0,0,'','ezstring',27,'eng-GB',3,0,'',1),(0,8,14,0,0,'Administrator','ezstring',28,'eng-GB',3,0,'administrator',3),(0,9,14,0,0,'User','ezstring',29,'eng-GB',3,0,'user',3),(30,12,14,0,0,'','ezuser',30,'eng-GB',3,0,'',3),(0,4,41,0,0,'Media','ezstring',98,'eng-GB',3,0,'',1),(0,119,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',99,'eng-GB',3,0,'',1),(0,6,42,0,0,'Anonymous Users','ezstring',100,'eng-GB',3,0,'anonymous users',1),(0,7,42,0,0,'User group for the anonymous user','ezstring',101,'eng-GB',3,0,'user group for the anonymous user',1),(0,155,1,NULL,NULL,'eZ Platform','ezstring',102,'eng-GB',3,0,'ez platform',9),(0,155,41,0,0,'','ezstring',103,'eng-GB',3,0,'',1),(0,156,1,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><title ezxhtml:level=\"2\">Welcome to eZ Platform</title><para>Congratulations, you just installed eZ Platform. eZ Platform is the new generation Content Management Platform from eZ Systems and the eZ Community replacing eZ Publish, our previous software.</para><title ezxhtml:level=\"3\">Need some guidance?</title><para>Check out the following resources:</para><title ezxhtml:level=\"4\"><link xlink:href=\"ezurl://23\" xlink:show=\"none\">User Manual</link> for eZ Platform (and eZ Studio)</title><title ezxhtml:level=\"4\"><link xlink:href=\"ezurl://24\" xlink:show=\"none\">Technical doc</link> for eZ Platform (and eZ Publish Platform new stack)</title><title ezxhtml:level=\"4\"><link xlink:href=\"ezurl://25\" xlink:show=\"none\">eZ Platform</link> developer tutorial</title><title ezxhtml:level=\"4\"><link xlink:href=\"ezurl://26\" xlink:show=\"none\">Comparison guide</link> between eZ Platform and eZ Publish Platform</title><title ezxhtml:level=\"3\">Contribute to the project?</title><para>Join the community:</para><title ezxhtml:level=\"4\"><link xlink:href=\"ezurl://27\" xlink:show=\"none\">Github repositories</link> open to the public</title><title ezxhtml:level=\"4\">Register to the community on <link xlink:href=\"ezurl://28\" xlink:show=\"none\">share.ez.no</link>, the community site, to access forums, tutorials and blogs</title><title ezxhtml:level=\"4\">Join the conversation on <link xlink:href=\"ezurl://29\" xlink:show=\"none\">the eZ Community Slack</link></title><para>Good luck!</para></section>\n','ezrichtext',104,'eng-GB',3,0,'',9),(0,156,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',105,'eng-GB',3,0,'',1),(0,4,45,0,0,'Setup','ezstring',123,'eng-GB',3,0,'setup',1),(0,155,45,0,0,'','ezstring',124,'eng-GB',3,0,'',1),(0,119,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',125,'eng-GB',3,0,'',1),(0,156,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',126,'eng-GB',3,0,'',1),(0,4,49,0,0,'Images','ezstring',142,'eng-GB',3,0,'images',1),(0,155,49,0,0,'','ezstring',143,'eng-GB',3,0,'',1),(0,119,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',144,'eng-GB',3,0,'',1),(0,156,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',145,'eng-GB',3,0,'',1),(0,4,50,0,0,'Files','ezstring',147,'eng-GB',3,0,'files',1),(0,155,50,0,0,'','ezstring',148,'eng-GB',3,0,'',1),(0,119,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',149,'eng-GB',3,0,'',1),(0,156,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',150,'eng-GB',3,0,'',1),(0,4,51,0,0,'Multimedia','ezstring',152,'eng-GB',3,0,'multimedia',1),(0,155,51,0,0,'','ezstring',153,'eng-GB',3,0,'',1),(0,119,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',154,'eng-GB',3,0,'',1),(0,156,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',155,'eng-GB',3,0,'',1),(0,179,10,0,0,'','eztext',177,'eng-GB',3,0,'',2),(0,179,14,0,0,'','eztext',178,'eng-GB',3,0,'',3),(0,180,10,0,0,'','ezimage',179,'eng-GB',3,0,'',2),(0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'eng-GB',3,0,'',3),(0,1,52,NULL,NULL,'Article no.1','ezstring',181,'eng-GB',2,0,'article no.1',1),(0,1,52,NULL,NULL,'Article no.1','ezstring',181,'eng-GB',2,0,'article no.1',2),(0,152,52,NULL,NULL,'Article no.1','ezstring',182,'eng-GB',2,0,'article no.1',1),(0,152,52,NULL,NULL,'Article no.1','ezstring',182,'eng-GB',2,0,'article no.1',2),(0,153,52,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',183,'eng-GB',2,0,'',1),(0,153,52,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',183,'eng-GB',2,0,'',2),(0,120,52,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Tofu hexagon flannel VHS 3 wolf moon cred narwhal. Organic la croix four loko vexillologist. Lumbersexual master cleanse portland shaman live-edge. Keffiyeh fingerstache cornhole tote bag pok pok mumblecore, stumptown offal neutra PBR&amp;B listicle kombucha locavore.</para></section>\n','ezrichtext',184,'eng-GB',2,0,'',1),(0,120,52,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Tofu hexagon flannel VHS 3 wolf moon cred narwhal. Organic la croix four loko vexillologist. Lumbersexual master cleanse portland shaman live-edge. Keffiyeh fingerstache cornhole tote bag pok pok mumblecore, stumptown offal neutra PBR&amp;B listicle kombucha locavore.</para></section>\n','ezrichtext',184,'eng-GB',2,0,'',2),(0,121,52,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Typewriter portland viral squid cardigan art party hammock asymmetrical migas bitters. Authentic health goth fixie fam meh yuccie flexitarian. Stumptown you probably haven\'t heard of them chicharrones food truck locavore palo santo vexillologist normcore chia. Skateboard squid celiac street art mustache butcher. Marfa DIY flannel stumptown, vexillologist irony dreamcatcher heirloom cray tumblr selfies fashion axe trust fund. Cornhole shoreditch put a bird on it truffaut tousled live-edge cliche sriracha waistcoat everyday carry try-hard. Tattooed actually everyday carry mustache deep v, affogato pour-over next level before they sold out drinking vinegar pug fixie farm-to-table. Bitters blog glossier hexagon narwhal tousled. Tilde cliche drinking vinegar kinfolk master cleanse chartreuse keytar deep v tumblr poutine pabst next level pour-over cold-pressed. Mixtape mumblecore knausgaard, keffiyeh polaroid enamel pin hot chicken kale chips adaptogen master cleanse thundercats distillery. Pickled retro brunch keffiyeh umami helvetica. Fanny pack venmo activated charcoal, YOLO taxidermy retro hexagon bitters. Single-origin coffee enamel pin sriracha organic.v</para></section>\n','ezrichtext',185,'eng-GB',2,0,'',1),(0,121,52,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Typewriter portland viral squid cardigan art party hammock asymmetrical migas bitters. Authentic health goth fixie fam meh yuccie flexitarian. Stumptown you probably haven\'t heard of them chicharrones food truck locavore palo santo vexillologist normcore chia. Skateboard squid celiac street art mustache butcher. Marfa DIY flannel stumptown, vexillologist irony dreamcatcher heirloom cray tumblr selfies fashion axe trust fund. Cornhole shoreditch put a bird on it truffaut tousled live-edge cliche sriracha waistcoat everyday carry try-hard. Tattooed actually everyday carry mustache deep v, affogato pour-over next level before they sold out drinking vinegar pug fixie farm-to-table. Bitters blog glossier hexagon narwhal tousled. Tilde cliche drinking vinegar kinfolk master cleanse chartreuse keytar deep v tumblr poutine pabst next level pour-over cold-pressed. Mixtape mumblecore knausgaard, keffiyeh polaroid enamel pin hot chicken kale chips adaptogen master cleanse thundercats distillery. Pickled retro brunch keffiyeh umami helvetica. Fanny pack venmo activated charcoal, YOLO taxidermy retro hexagon bitters. Single-origin coffee enamel pin sriracha organic.v</para></section>\n','ezrichtext',185,'eng-GB',2,0,'',2),(0,123,52,NULL,0,NULL,'ezboolean',186,'eng-GB',2,0,'',1),(0,123,52,NULL,0,NULL,'ezboolean',186,'eng-GB',2,0,'',2),(0,181,52,NULL,NULL,'0','ezselection',188,'eng-GB',2,0,'0',1),(0,181,52,NULL,NULL,'0','ezselection',188,'eng-GB',2,0,'0',2),(0,116,54,NULL,NULL,'19441967_1585049778212889_5857698824653208083_o.jpg','ezstring',192,'eng-GB',3,0,'19441967_1585049778212889_5857698824653208083_o.jpg',1),(0,117,54,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',193,'eng-GB',3,0,'',1),(0,118,54,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"19441967_1585049778212889_5857698824653208083_o.jpg\"\n    suffix=\"jpg\" basename=\"19441967_1585049778212889_5857698824653208083_o\" dirpath=\"var/site/storage/images/4/9/1/0/194-1-eng-GB\" url=\"var/site/storage/images/4/9/1/0/194-1-eng-GB/19441967_1585049778212889_5857698824653208083_o.jpg\"\n    original_filename=\"19441967_1585049778212889_5857698824653208083_o.jpg\" mime_type=\"image/jpeg\" width=\"1400\"\n    height=\"1400\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1498647833\">\n  <original attribute_id=\"194\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1400\" Width=\"1400\" IsColor=\"1\"/>\n</ezimage>','ezimage',194,'eng-GB',3,0,'',1),(0,116,55,NULL,NULL,'Hehe.jpeg','ezstring',195,'eng-GB',3,0,'hehe.jpeg',1),(0,117,55,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',196,'eng-GB',3,0,'',1),(0,118,55,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Hehe.jpeg\"\n    suffix=\"jpeg\" basename=\"Hehe\" dirpath=\"var/site/storage/images/7/9/1/0/197-1-eng-GB\" url=\"var/site/storage/images/7/9/1/0/197-1-eng-GB/Hehe.jpeg\"\n    original_filename=\"Hehe.jpeg\" mime_type=\"image/png\" width=\"1600\"\n    height=\"1600\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1498647853\">\n  <original attribute_id=\"197\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1600\" Width=\"1600\" IsColor=\"1\"/>\n</ezimage>','ezimage',197,'eng-GB',3,0,'',1),(0,116,56,NULL,NULL,'WB01-1-5.jpg','ezstring',198,'eng-GB',3,0,'wb01-1-5.jpg',1),(0,117,56,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext',199,'eng-GB',3,0,'',1),(0,118,56,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"WB01-1-5.jpg\"\n    suffix=\"jpg\" basename=\"WB01-1-5\" dirpath=\"var/site/storage/images/0/0/2/0/200-1-eng-GB\" url=\"var/site/storage/images/0/0/2/0/200-1-eng-GB/WB01-1-5.jpg\"\n    original_filename=\"WB01-1-5.jpg\" mime_type=\"image/jpeg\" width=\"3000\"\n    height=\"1688\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1498647871\">\n  <original attribute_id=\"200\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1688\" Width=\"3000\" IsColor=\"1\"/>\n</ezimage>','ezimage',200,'eng-GB',3,0,'',1),(0,1,57,NULL,NULL,'Article no.2','ezstring',201,'eng-GB',2,0,'article no.2',1),(0,1,57,NULL,NULL,'Article no.2','ezstring',201,'eng-GB',2,0,'article no.2',2),(0,1,57,NULL,NULL,'Article no.2','ezstring',201,'eng-GB',2,0,'article no.2',3),(0,152,57,NULL,NULL,'Article no.2','ezstring',202,'eng-GB',2,0,'article no.2',1),(0,152,57,NULL,NULL,'Article no.2','ezstring',202,'eng-GB',2,0,'article no.2',2),(0,152,57,NULL,NULL,'Article no.2','ezstring',202,'eng-GB',2,0,'article no.2',3),(0,153,57,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',203,'eng-GB',2,0,'',1),(0,153,57,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',203,'eng-GB',2,0,'',2),(0,153,57,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',203,'eng-GB',2,0,'',3),(0,120,57,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Typewriter portland viral squid cardigan art party hammock asymmetrical migas bitters. Authentic health goth fixie fam meh yuccie flexitarian. Stumptown you probably haven\'t heard of them chicharrones food truck locavore palo santo vexillologist normcore chia. </para></section>\n','ezrichtext',204,'eng-GB',2,0,'',1),(0,120,57,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Typewriter portland viral squid cardigan art party hammock asymmetrical migas bitters. Authentic health goth fixie fam meh yuccie flexitarian. Stumptown you probably haven\'t heard of them chicharrones food truck locavore palo santo vexillologist normcore chia. </para></section>\n','ezrichtext',204,'eng-GB',2,0,'',2),(0,120,57,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Typewriter portland viral squid cardigan art party hammock asymmetrical migas bitters. Authentic health goth fixie fam meh yuccie flexitarian. Stumptown you probably haven\'t heard of them chicharrones food truck locavore palo santo vexillologist normcore chia. </para></section>\n','ezrichtext',204,'eng-GB',2,0,'',3),(0,121,57,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Mixtape godard jianbing pickled forage iceland asymmetrical locavore subway tile master cleanse sustainable ennui migas etsy venmo. DIY kickstarter squid neutra vegan fixie. Flannel hoodie aesthetic art party palo santo chillwave bushwick iPhone you probably haven\'t heard of them intelligentsia freegan pop-up franzen. Messenger bag man bun green juice, organic tacos normcore vaporware unicorn. Sartorial vinyl wolf you probably haven\'t heard of them. Squid iceland snackwave waistcoat truffaut vaporware coloring book vexillologist kinfolk. Seitan pinterest hot chicken poutine austin iPhone kogi shaman kitsch try-hard adaptogen. Palo santo pok pok blue bottle, ethical put a bird on it wolf banjo butcher before they sold out p</para></section>\n','ezrichtext',205,'eng-GB',2,0,'',1),(0,121,57,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Mixtape godard jianbing pickled forage iceland asymmetrical locavore subway tile master cleanse sustainable ennui migas etsy venmo. DIY kickstarter squid neutra vegan fixie. Flannel hoodie aesthetic art party palo santo chillwave bushwick iPhone you probably haven\'t heard of them intelligentsia freegan pop-up franzen. Messenger bag man bun green juice, organic tacos normcore vaporware unicorn. Sartorial vinyl wolf you probably haven\'t heard of them. Squid iceland snackwave waistcoat truffaut vaporware coloring book vexillologist kinfolk. Seitan pinterest hot chicken poutine austin iPhone kogi shaman kitsch try-hard adaptogen. Palo santo pok pok blue bottle, ethical put a bird on it wolf banjo butcher before they sold out p</para></section>\n','ezrichtext',205,'eng-GB',2,0,'',2),(0,121,57,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Mixtape godard jianbing pickled forage iceland asymmetrical locavore subway tile master cleanse sustainable ennui migas etsy venmo. DIY kickstarter squid neutra vegan fixie. Flannel hoodie aesthetic art party palo santo chillwave bushwick iPhone you probably haven\'t heard of them intelligentsia freegan pop-up franzen. Messenger bag man bun green juice, organic tacos normcore vaporware unicorn. Sartorial vinyl wolf you probably haven\'t heard of them. Squid iceland snackwave waistcoat truffaut vaporware coloring book vexillologist kinfolk. Seitan pinterest hot chicken poutine austin iPhone kogi shaman kitsch try-hard adaptogen. Palo santo pok pok blue bottle, ethical put a bird on it wolf banjo butcher before they sold out p</para></section>\n','ezrichtext',205,'eng-GB',2,0,'',3),(0,123,57,NULL,0,NULL,'ezboolean',206,'eng-GB',2,0,'',1),(0,123,57,NULL,0,NULL,'ezboolean',206,'eng-GB',2,0,'',2),(0,123,57,NULL,0,NULL,'ezboolean',206,'eng-GB',2,0,'',3),(0,181,57,NULL,NULL,'1','ezselection',208,'eng-GB',2,0,'1',1),(0,181,57,NULL,NULL,'1','ezselection',208,'eng-GB',2,0,'1',2),(0,181,57,NULL,NULL,'1','ezselection',208,'eng-GB',2,0,'1',3),(0,183,52,NULL,NULL,NULL,'ezimage',211,'eng-GB',2,0,'',1),(0,183,52,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"P1020714.jpg\"\n    suffix=\"jpg\" basename=\"P1020714\" dirpath=\"var/site/storage/images/1/1/2/0/211-2-eng-GB\" url=\"var/site/storage/images/1/1/2/0/211-2-eng-GB/P1020714.jpg\"\n    original_filename=\"P1020714.jpg\" mime_type=\"image/jpeg\" width=\"4000\"\n    height=\"3000\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1498738516\">\n  <original attribute_id=\"211\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"3000\" Width=\"4000\" IsColor=\"1\"/>\n</ezimage>','ezimage',211,'eng-GB',2,0,'',2),(0,183,57,NULL,NULL,NULL,'ezimage',212,'eng-GB',2,0,'',1),(0,183,57,NULL,NULL,NULL,'ezimage',212,'eng-GB',2,0,'',2),(0,183,57,NULL,NULL,NULL,'ezimage',212,'eng-GB',2,0,'',3),(0,1,58,NULL,NULL,'Article no.3','ezstring',213,'eng-GB',2,0,'article no.3',1),(0,152,58,NULL,NULL,'Article no.3','ezstring',214,'eng-GB',2,0,'article no.3',1),(0,153,58,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',215,'eng-GB',2,0,'',1),(0,120,58,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Mixtape godard jianbing pickled forage iceland asymmetrical locavore subway tile master cleanse sustainable ennui migas etsy venmo. DIY kickstarter squid neutra vegan fixie.</para></section>\n','ezrichtext',216,'eng-GB',2,0,'',1),(0,121,58,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Mixtape godard jianbing pickled forage iceland asymmetrical locavore subway tile master cleanse sustainable ennui migas etsy venmo. DIY kickstarter squid neutra vegan fixie. Flannel hoodie aesthetic art party palo santo chillwave bushwick iPhone you probably haven\'t heard of them intelligentsia freegan pop-up franzen. Messenger bag man bun green juice, organic tacos normcore vaporware unicorn. Sartorial vinyl wolf you probably haven\'t heard of them. Squid iceland snackwave waistcoat truffaut vaporware coloring book vexillologist kinfolk. Seitan pinterest hot chicken poutine austin iPhone kogi shaman kitsch try-hard adaptogen. Palo santo pok pok blue bottle, ethical put a bird on it wolf banjo butcher before they sold out p</para></section>\n','ezrichtext',217,'eng-GB',2,0,'',1),(0,123,58,NULL,0,NULL,'ezboolean',218,'eng-GB',2,0,'',1),(0,181,58,NULL,NULL,'0','ezselection',219,'eng-GB',2,0,'0',1),(0,183,58,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"P1020579_1.jpg\"\n    suffix=\"jpg\" basename=\"P1020579_1\" dirpath=\"var/site/storage/images/0/2/2/0/220-1-eng-GB\" url=\"var/site/storage/images/0/2/2/0/220-1-eng-GB/P1020579_1.jpg\"\n    original_filename=\"P1020579_1.jpg\" mime_type=\"image/jpeg\" width=\"4000\"\n    height=\"3000\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1498739285\">\n  <original attribute_id=\"220\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"3000\" Width=\"4000\" IsColor=\"1\"/>\n</ezimage>','ezimage',220,'eng-GB',2,0,'',1),(0,1,59,NULL,NULL,'Article 4','ezstring',221,'eng-GB',2,0,'article 4',1),(0,152,59,NULL,NULL,'Article 4','ezstring',222,'eng-GB',2,0,'article 4',1),(0,153,59,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',223,'eng-GB',2,0,'',1),(0,120,59,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Mixtape godard jianbing pickled forage iceland asymmetrical locavore subway tile master cleanse sustainable ennui migas etsy venmo.</para></section>\n','ezrichtext',224,'eng-GB',2,0,'',1),(0,121,59,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Mixtape godard jianbing pickled forage iceland asymmetrical locavore subway tile master cleanse sustainable ennui migas etsy venmo. DIY kickstarter squid neutra vegan fixie. Flannel hoodie aesthetic art party palo santo chillwave bushwick iPhone you probably haven\'t heard of them intelligentsia freegan pop-up franzen. Messenger bag man bun green juice, organic tacos normcore vaporware unicorn. Sartorial vinyl wolf you probably haven\'t heard of them. Squid iceland snackwave waistcoat truffaut vaporware coloring book vexillologist kinfolk. Seitan pinterest hot chicken poutine austin iPhone kogi shaman kitsch try-hard adaptogen. Palo santo pok pok blue bottle, ethical put a bird on it wolf banjo butcher before they sold out p</para></section>\n','ezrichtext',225,'eng-GB',2,0,'',1),(0,123,59,NULL,0,NULL,'ezboolean',226,'eng-GB',2,0,'',1),(0,181,59,NULL,NULL,'0','ezselection',227,'eng-GB',2,0,'0',1),(0,183,59,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"dog.jpg\"\n    suffix=\"jpg\" basename=\"dog\" dirpath=\"var/site/storage/images/8/2/2/0/228-1-eng-GB\" url=\"var/site/storage/images/8/2/2/0/228-1-eng-GB/dog.jpg\"\n    original_filename=\"dog.jpg\" mime_type=\"image/jpeg\" width=\"700\"\n    height=\"700\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1498739461\">\n  <original attribute_id=\"228\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"700\" Width=\"700\" IsColor=\"1\"/>\n</ezimage>','ezimage',228,'eng-GB',2,0,'',1),(0,1,60,NULL,NULL,'Article no.5','ezstring',229,'eng-GB',2,0,'article no.5',1),(0,152,60,NULL,NULL,'Article no.5','ezstring',230,'eng-GB',2,0,'article no.5',1),(0,153,60,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',231,'eng-GB',2,0,'',1),(0,120,60,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Seitan pinterest hot chicken poutine austin iPhone kogi shaman kitsch try-hard adaptogen. </para></section>\n','ezrichtext',232,'eng-GB',2,0,'',1),(0,121,60,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Mixtape godard jianbing pickled forage iceland asymmetrical locavore subway tile master cleanse sustainable ennui migas etsy venmo. DIY kickstarter squid neutra vegan fixie. Flannel hoodie aesthetic art party palo santo chillwave bushwick iPhone you probably haven\'t heard of them intelligentsia freegan pop-up franzen. Messenger bag man bun green juice, organic tacos normcore vaporware unicorn. Sartorial vinyl wolf you probably haven\'t heard of them. Squid iceland snackwave waistcoat truffaut vaporware coloring book vexillologist kinfolk. Seitan pinterest hot chicken poutine austin iPhone kogi shaman kitsch try-hard adaptogen. Palo santo pok pok blue bottle, ethical put a bird on it wolf banjo butcher before they sold out p</para></section>\n','ezrichtext',233,'eng-GB',2,0,'',1),(0,123,60,NULL,0,NULL,'ezboolean',234,'eng-GB',2,0,'',1),(0,181,60,NULL,NULL,'0','ezselection',235,'eng-GB',2,0,'0',1),(0,183,60,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"P1020009.jpg\"\n    suffix=\"jpg\" basename=\"P1020009\" dirpath=\"var/site/storage/images/6/3/2/0/236-1-eng-GB\" url=\"var/site/storage/images/6/3/2/0/236-1-eng-GB/P1020009.jpg\"\n    original_filename=\"P1020009.jpg\" mime_type=\"image/jpeg\" width=\"3000\"\n    height=\"4000\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1498739573\">\n  <original attribute_id=\"236\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"4000\" Width=\"3000\" IsColor=\"1\"/>\n</ezimage>','ezimage',236,'eng-GB',2,0,'',1);
/*!40000 ALTER TABLE `ezcontentobject_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_link`
--

DROP TABLE IF EXISTS `ezcontentobject_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_link` (
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_version` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relation_type` int(11) NOT NULL DEFAULT '1',
  `to_contentobject_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezco_link_from` (`from_contentobject_id`,`from_contentobject_version`,`contentclassattribute_id`),
  KEY `ezco_link_to_co_id` (`to_contentobject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_link`
--

LOCK TABLES `ezcontentobject_link` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_link` DISABLE KEYS */;
INSERT INTO `ezcontentobject_link` VALUES (154,57,1,1,8,55),(154,57,2,2,8,55),(154,57,3,3,8,55);
/*!40000 ALTER TABLE `ezcontentobject_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_name`
--

DROP TABLE IF EXISTS `ezcontentobject_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_name` (
  `content_translation` varchar(20) NOT NULL DEFAULT '',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `real_translation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`contentobject_id`,`content_version`,`content_translation`),
  KEY `ezcontentobject_name_cov_id` (`content_version`),
  KEY `ezcontentobject_name_lang_id` (`language_id`),
  KEY `ezcontentobject_name_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_name`
--

LOCK TABLES `ezcontentobject_name` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_name` DISABLE KEYS */;
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',9,1,2,'eZ Platform','eng-GB'),('eng-GB',1,4,3,'Users','eng-GB'),('eng-GB',2,10,3,'Anonymous User','eng-GB'),('eng-GB',1,11,3,'Guest accounts','eng-GB'),('eng-GB',1,12,3,'Administrator users','eng-GB'),('eng-GB',1,13,3,'Editors','eng-GB'),('eng-GB',3,14,3,'Administrator User','eng-GB'),('eng-GB',1,41,3,'Media','eng-GB'),('eng-GB',1,42,3,'Anonymous Users','eng-GB'),('eng-GB',1,45,3,'Setup','eng-GB'),('eng-GB',1,49,3,'Images','eng-GB'),('eng-GB',1,50,3,'Files','eng-GB'),('eng-GB',1,51,3,'Multimedia','eng-GB'),('eng-GB',1,52,2,'Article no.1','eng-GB'),('eng-GB',2,52,2,'Article no.1','eng-GB'),('eng-GB',1,54,2,'19441967_1585049778212889_5857698824653208083_o.jpg','eng-GB'),('eng-GB',1,55,2,'Hehe.jpeg','eng-GB'),('eng-GB',1,56,2,'WB01-1-5.jpg','eng-GB'),('eng-GB',1,57,2,'Article no.2','eng-GB'),('eng-GB',2,57,2,'Article no.2','eng-GB'),('eng-GB',3,57,2,'Article no.2','eng-GB'),('eng-GB',1,58,2,'Article no.3','eng-GB'),('eng-GB',1,59,2,'Article 4','eng-GB'),('eng-GB',1,60,2,'Article no.5','eng-GB');
/*!40000 ALTER TABLE `ezcontentobject_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_trash`
--

DROP TABLE IF EXISTS `ezcontentobject_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_trash` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`node_id`),
  KEY `ezcobj_trash_co_id` (`contentobject_id`),
  KEY `ezcobj_trash_depth` (`depth`),
  KEY `ezcobj_trash_modified_subnode` (`modified_subnode`),
  KEY `ezcobj_trash_p_node_id` (`parent_node_id`),
  KEY `ezcobj_trash_path` (`path_string`),
  KEY `ezcobj_trash_path_ident` (`path_identification_string`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_trash`
--

LOCK TABLES `ezcontentobject_trash` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_tree`
--

DROP TABLE IF EXISTS `ezcontentobject_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_tree` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_is_published` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`node_id`),
  KEY `ezcontentobject_tree_remote_id` (`remote_id`),
  KEY `ezcontentobject_tree_co_id` (`contentobject_id`),
  KEY `ezcontentobject_tree_depth` (`depth`),
  KEY `ezcontentobject_tree_p_node_id` (`parent_node_id`),
  KEY `ezcontentobject_tree_path` (`path_string`),
  KEY `ezcontentobject_tree_path_ident` (`path_identification_string`(50)),
  KEY `modified_subnode` (`modified_subnode`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_tree`
--

LOCK TABLES `ezcontentobject_tree` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_tree` DISABLE KEYS */;
INSERT INTO `ezcontentobject_tree` VALUES (0,1,1,0,0,0,1,1448999778,1,1,'','/1/',0,'629709ba256fe317c3ddcee35453a96a',1,1),(1,1,9,1,0,0,2,1301073466,2,1,'node_2','/1/2/',0,'f3e90596361e31d496d4026eb624c983',8,1),(4,1,1,1,0,0,5,1301062024,5,1,'users','/1/5/',0,'3f6d92f8044aed134f32153517850f5a',1,1),(11,1,1,2,0,0,12,1081860719,12,5,'users/guest_accounts','/1/5/12/',0,'602dcf84765e56b7f999eaafd3821dd3',1,1),(12,1,1,2,0,0,13,1301062024,13,5,'users/administrator_users','/1/5/13/',0,'769380b7aa94541679167eab817ca893',1,1),(13,1,1,2,0,0,14,1081860719,14,5,'users/editors','/1/5/14/',0,'f7dda2854fc68f7c8455d9cb14bd04a9',1,1),(14,1,3,3,0,0,15,1301062024,15,13,'users/administrator_users/administrator_user','/1/5/13/15/',0,'e5161a99f733200b9ed4e80f9c16187b',1,1),(41,1,1,1,0,0,43,1081860720,43,1,'media','/1/43/',0,'75c715a51699d2d309a924eca6a95145',9,1),(42,1,1,2,0,0,44,1081860719,44,5,'users/anonymous_users','/1/5/44/',0,'4fdf0072da953bb276c0c7e0141c5c9b',9,1),(10,1,2,3,0,0,45,1081860719,45,44,'users/anonymous_users/anonymous_user','/1/5/44/45/',0,'2cf8343bee7b482bab82b269d8fecd76',9,1),(45,1,1,1,0,0,48,1448833726,48,1,'setup2','/1/48/',0,'182ce1b5af0c09fa378557c462ba2617',9,1),(49,1,1,2,0,0,51,1081860720,51,43,'media/images','/1/43/51/',0,'1b26c0454b09bb49dfb1b9190ffd67cb',9,1),(50,1,1,2,0,0,52,1081860720,52,43,'media/files','/1/43/52/',0,'0b113a208f7890f9ad3c24444ff5988c',9,1),(51,1,1,2,0,0,53,1081860720,53,43,'media/multimedia','/1/43/53/',0,'4f18b82c75f10aad476cae5adf98c11f',9,1),(52,1,2,2,0,0,54,1498647640,54,2,'node_2/article_no_1','/1/2/54/',0,'26bfdbefd7ed3e37abbd8b60bd5331f3',1,1),(54,1,1,3,0,0,56,1498647834,56,51,'media/images/19441967_1585049778212889_5857698824653208083_o_jpg','/1/43/51/56/',0,'0e1aaddc86695a6c9d7f99f86cce423b',1,1),(55,1,1,3,0,0,57,1498647853,57,51,'media/images/hehe_jpeg','/1/43/51/57/',0,'db8f8c71c5c64762d92748ef902dd633',1,1),(56,1,1,3,0,0,58,1498647872,58,51,'media/images/wb01_1_5_jpg','/1/43/51/58/',0,'c290b711a25fd685f915ac367323ec16',1,1),(57,1,1,2,0,0,59,1498647955,59,2,'node_2/article_no_2','/1/2/59/',0,'063a29d618a256f87b7a1a06b8f0cc49',1,1),(58,1,1,2,0,0,60,1498739286,60,2,'node_2/article_no_3','/1/2/60/',0,'82a9fdf0a440c0dda693b0ee86dfc8ff',1,1),(59,1,1,2,0,0,61,1498739462,61,2,'node_2/article_4','/1/2/61/',0,'b9ae789dc022ca91836bd7ca0b51407b',1,1),(60,1,1,2,0,0,62,1498739575,62,2,'node_2/article_no_5','/1/2/62/',0,'0fead01a24c63424d1d9095e58f9ae45',1,1);
/*!40000 ALTER TABLE `ezcontentobject_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_version`
--

DROP TABLE IF EXISTS `ezcontentobject_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_version` (
  `contentobject_id` int(11) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_language_id` bigint(20) NOT NULL DEFAULT '0',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_event_pos` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcobj_version_creator_id` (`creator_id`),
  KEY `ezcobj_version_status` (`status`),
  KEY `idx_object_version_objver` (`contentobject_id`,`version`),
  KEY `ezcontobj_version_obj_status` (`contentobject_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=519 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_version`
--

LOCK TABLES `ezcontentobject_version` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_version` DISABLE KEYS */;
INSERT INTO `ezcontentobject_version` VALUES (4,0,14,4,2,3,0,1,0,1,1),(11,1033920737,14,439,2,3,1033920746,1,0,1,0),(12,1033920760,14,440,2,3,1033920775,1,0,1,0),(13,1033920786,14,441,2,3,1033920794,1,0,1,0),(41,1060695450,14,472,2,3,1060695457,1,0,1,0),(42,1072180278,14,473,2,3,1072180330,1,0,1,0),(10,1072180337,14,474,2,3,1072180405,1,0,2,0),(45,1079684084,14,477,2,3,1079684190,1,0,1,0),(49,1080220181,14,488,2,3,1080220197,1,0,1,0),(50,1080220211,14,489,2,3,1080220220,1,0,1,0),(51,1080220225,14,490,2,3,1080220233,1,0,1,0),(14,1301061783,14,499,2,3,1301062024,1,0,3,0),(1,1448889045,14,506,2,3,1448889046,1,0,9,0),(52,1498647636,14,507,2,2,1498738516,3,0,1,0),(54,1498647832,14,509,2,3,1498647834,1,0,1,0),(55,1498647852,14,510,2,3,1498647853,1,0,1,0),(56,1498647870,14,511,2,3,1498647872,1,0,1,0),(57,1498647953,14,512,2,2,1498647955,1,0,1,0),(52,1498738512,14,513,2,2,1498738516,1,0,2,0),(57,1498738676,14,514,2,2,1498738676,0,0,2,0),(57,1498739006,14,515,2,2,1498739006,0,0,3,0),(58,1498739282,14,516,2,2,1498739286,1,0,1,0),(59,1498739460,14,517,2,2,1498739462,1,0,1,0),(60,1498739570,14,518,2,2,1498739575,1,0,1,0);
/*!40000 ALTER TABLE `ezcontentobject_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcurrencydata`
--

DROP TABLE IF EXISTS `ezcurrencydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcurrencydata` (
  `auto_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `code` varchar(4) NOT NULL DEFAULT '',
  `custom_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) NOT NULL DEFAULT '',
  `rate_factor` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `status` int(11) NOT NULL DEFAULT '1',
  `symbol` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcurrencydata_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcurrencydata`
--

LOCK TABLES `ezcurrencydata` WRITE;
/*!40000 ALTER TABLE `ezcurrencydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcurrencydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdfsfile`
--

DROP TABLE IF EXISTS `ezdfsfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdfsfile` (
  `name` text NOT NULL,
  `name_trunk` text NOT NULL,
  `name_hash` varchar(34) NOT NULL DEFAULT '',
  `datatype` varchar(255) NOT NULL DEFAULT 'application/octet-stream',
  `scope` varchar(25) NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `expired` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name_hash`),
  KEY `ezdfsfile_name` (`name`(250)),
  KEY `ezdfsfile_name_trunk` (`name_trunk`(250)),
  KEY `ezdfsfile_mtime` (`mtime`),
  KEY `ezdfsfile_expired_name` (`expired`,`name`(250))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdfsfile`
--

LOCK TABLES `ezdfsfile` WRITE;
/*!40000 ALTER TABLE `ezdfsfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdfsfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountrule`
--

DROP TABLE IF EXISTS `ezdiscountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountrule`
--

LOCK TABLES `ezdiscountrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule`
--

DROP TABLE IF EXISTS `ezdiscountsubrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule` (
  `discount_percent` float DEFAULT NULL,
  `discountrule_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation` char(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule`
--

LOCK TABLES `ezdiscountsubrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule_value`
--

DROP TABLE IF EXISTS `ezdiscountsubrule_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule_value` (
  `discountsubrule_id` int(11) NOT NULL DEFAULT '0',
  `issection` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`discountsubrule_id`,`value`,`issection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule_value`
--

LOCK TABLES `ezdiscountsubrule_value` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumobjectvalue`
--

DROP TABLE IF EXISTS `ezenumobjectvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumobjectvalue` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumid` int(11) NOT NULL DEFAULT '0',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_attribute_version`,`enumid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumobjectvalue`
--

LOCK TABLES `ezenumobjectvalue` WRITE;
/*!40000 ALTER TABLE `ezenumobjectvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumobjectvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumvalue`
--

DROP TABLE IF EXISTS `ezenumvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumvalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`contentclass_attribute_id`,`contentclass_attribute_version`),
  KEY `ezenumvalue_co_cl_attr_id_co_class_att_ver` (`contentclass_attribute_id`,`contentclass_attribute_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumvalue`
--

LOCK TABLES `ezenumvalue` WRITE;
/*!40000 ALTER TABLE `ezenumvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezforgot_password`
--

DROP TABLE IF EXISTS `ezforgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezforgot_password` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezforgot_password_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezforgot_password`
--

LOCK TABLES `ezforgot_password` WRITE;
/*!40000 ALTER TABLE `ezforgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezforgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgeneral_digest_user_settings`
--

DROP TABLE IF EXISTS `ezgeneral_digest_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgeneral_digest_user_settings` (
  `day` varchar(255) NOT NULL DEFAULT '',
  `digest_type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_digest` int(11) NOT NULL DEFAULT '0',
  `time` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezgeneral_digest_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgeneral_digest_user_settings`
--

LOCK TABLES `ezgeneral_digest_user_settings` WRITE;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgmaplocation`
--

DROP TABLE IF EXISTS `ezgmaplocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgmaplocation` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_version` int(11) NOT NULL DEFAULT '0',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_version`),
  KEY `latitude_longitude_key` (`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgmaplocation`
--

LOCK TABLES `ezgmaplocation` WRITE;
/*!40000 ALTER TABLE `ezgmaplocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgmaplocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezimagefile`
--

DROP TABLE IF EXISTS `ezimagefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezimagefile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `filepath` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `ezimagefile_coid` (`contentobject_attribute_id`),
  KEY `ezimagefile_file` (`filepath`(200))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezimagefile`
--

LOCK TABLES `ezimagefile` WRITE;
/*!40000 ALTER TABLE `ezimagefile` DISABLE KEYS */;
INSERT INTO `ezimagefile` VALUES (194,'var/site/storage/images/4/9/1/0/194-1-eng-GB/19441967_1585049778212889_5857698824653208083_o.jpg',1),(197,'var/site/storage/images/7/9/1/0/197-1-eng-GB/Hehe.jpeg',2),(200,'var/site/storage/images/0/0/2/0/200-1-eng-GB/WB01-1-5.jpg',3),(211,'var/site/storage/images/1/1/2/0/211-2-eng-GB/P1020714.jpg',4),(220,'var/site/storage/images/0/2/2/0/220-1-eng-GB/P1020579_1.jpg',13),(228,'var/site/storage/images/8/2/2/0/228-1-eng-GB/dog.jpg',14),(236,'var/site/storage/images/6/3/2/0/236-1-eng-GB/P1020009.jpg',15);
/*!40000 ALTER TABLE `ezimagefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection`
--

DROP TABLE IF EXISTS `ezinfocollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) DEFAULT '0',
  `user_identifier` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_co_id_created` (`contentobject_id`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection`
--

LOCK TABLES `ezinfocollection` WRITE;
/*!40000 ALTER TABLE `ezinfocollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection_attribute`
--

DROP TABLE IF EXISTS `ezinfocollection_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection_attribute` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_id` int(11) DEFAULT NULL,
  `contentobject_id` int(11) DEFAULT NULL,
  `data_float` float DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `informationcollection_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_attr_cca_id` (`contentclass_attribute_id`),
  KEY `ezinfocollection_attr_co_id` (`contentobject_id`),
  KEY `ezinfocollection_attr_coa_id` (`contentobject_attribute_id`),
  KEY `ezinfocollection_attr_ic_id` (`informationcollection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection_attribute`
--

LOCK TABLES `ezinfocollection_attribute` WRITE;
/*!40000 ALTER TABLE `ezinfocollection_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group`
--

DROP TABLE IF EXISTS `ezisbn_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group` (
  `description` varchar(255) NOT NULL DEFAULT '',
  `group_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group`
--

LOCK TABLES `ezisbn_group` WRITE;
/*!40000 ALTER TABLE `ezisbn_group` DISABLE KEYS */;
INSERT INTO `ezisbn_group` VALUES ('English language',0,1),('English language',1,2),('French language',2,3),('German language',3,4),('Japan',4,5),('Russian Federation and former USSR',5,6),('Iran',600,7),('Kazakhstan',601,8),('Indonesia',602,9),('Saudi Arabia',603,10),('Vietnam',604,11),('Turkey',605,12),('Romania',606,13),('Mexico',607,14),('Macedonia',608,15),('Lithuania',609,16),('Thailand',611,17),('Peru',612,18),('Mauritius',613,19),('Lebanon',614,20),('Hungary',615,21),('Thailand',616,22),('Ukraine',617,23),('China, People\'s Republic',7,24),('Czech Republic and Slovakia',80,25),('India',81,26),('Norway',82,27),('Poland',83,28),('Spain',84,29),('Brazil',85,30),('Serbia and Montenegro',86,31),('Denmark',87,32),('Italy',88,33),('Korea, Republic',89,34),('Netherlands',90,35),('Sweden',91,36),('International NGO Publishers and EC Organizations',92,37),('India',93,38),('Netherlands',94,39),('Argentina',950,40),('Finland',951,41),('Finland',952,42),('Croatia',953,43),('Bulgaria',954,44),('Sri Lanka',955,45),('Chile',956,46),('Taiwan',957,47),('Colombia',958,48),('Cuba',959,49),('Greece',960,50),('Slovenia',961,51),('Hong Kong, China',962,52),('Hungary',963,53),('Iran',964,54),('Israel',965,55),('Ukraine',966,56),('Malaysia',967,57),('Mexico',968,58),('Pakistan',969,59),('Mexico',970,60),('Philippines',971,61),('Portugal',972,62),('Romania',973,63),('Thailand',974,64),('Turkey',975,65),('Caribbean Community',976,66),('Egypt',977,67),('Nigeria',978,68),('Indonesia',979,69),('Venezuela',980,70),('Singapore',981,71),('South Pacific',982,72),('Malaysia',983,73),('Bangladesh',984,74),('Belarus',985,75),('Taiwan',986,76),('Argentina',987,77),('Hong Kong, China',988,78),('Portugal',989,79),('Qatar',9927,80),('Albania',9928,81),('Guatemala',9929,82),('Costa Rica',9930,83),('Algeria',9931,84),('Lao People\'s Democratic Republic',9932,85),('Syria',9933,86),('Latvia',9934,87),('Iceland',9935,88),('Afghanistan',9936,89),('Nepal',9937,90),('Tunisia',9938,91),('Armenia',9939,92),('Montenegro',9940,93),('Georgia',9941,94),('Ecuador',9942,95),('Uzbekistan',9943,96),('Turkey',9944,97),('Dominican Republic',9945,98),('Korea, P.D.R.',9946,99),('Algeria',9947,100),('United Arab Emirates',9948,101),('Estonia',9949,102),('Palestine',9950,103),('Kosova',9951,104),('Azerbaijan',9952,105),('Lebanon',9953,106),('Morocco',9954,107),('Lithuania',9955,108),('Cameroon',9956,109),('Jordan',9957,110),('Bosnia and Herzegovina',9958,111),('Libya',9959,112),('Saudi Arabia',9960,113),('Algeria',9961,114),('Panama',9962,115),('Cyprus',9963,116),('Ghana',9964,117),('Kazakhstan',9965,118),('Kenya',9966,119),('Kyrgyz Republic',9967,120),('Costa Rica',9968,121),('Uganda',9970,122),('Singapore',9971,123),('Peru',9972,124),('Tunisia',9973,125),('Uruguay',9974,126),('Moldova',9975,127),('Tanzania',9976,128),('Costa Rica',9977,129),('Ecuador',9978,130),('Iceland',9979,131),('Papua New Guinea',9980,132),('Morocco',9981,133),('Zambia',9982,134),('Gambia',9983,135),('Latvia',9984,136),('Estonia',9985,137),('Lithuania',9986,138),('Tanzania',9987,139),('Ghana',9988,140),('Macedonia',9989,141),('Bahrain',99901,142),('Gabon',99902,143),('Mauritius',99903,144),('Netherlands Antilles and Aruba',99904,145),('Bolivia',99905,146),('Kuwait',99906,147),('Malawi',99908,148),('Malta',99909,149),('Sierra Leone',99910,150),('Lesotho',99911,151),('Botswana',99912,152),('Andorra',99913,153),('Suriname',99914,154),('Maldives',99915,155),('Namibia',99916,156),('Brunei Darussalam',99917,157),('Faroe Islands',99918,158),('Benin',99919,159),('Andorra',99920,160),('Qatar',99921,161),('Guatemala',99922,162),('El Salvador',99923,163),('Nicaragua',99924,164),('Paraguay',99925,165),('Honduras',99926,166),('Albania',99927,167),('Georgia',99928,168),('Mongolia',99929,169),('Armenia',99930,170),('Seychelles',99931,171),('Malta',99932,172),('Nepal',99933,173),('Dominican Republic',99934,174),('Haiti',99935,175),('Bhutan',99936,176),('Macau',99937,177),('Srpska, Republic of',99938,178),('Guatemala',99939,179),('Georgia',99940,180),('Armenia',99941,181),('Sudan',99942,182),('Albania',99943,183),('Ethiopia',99944,184),('Namibia',99945,185),('Nepal',99946,186),('Tajikistan',99947,187),('Eritrea',99948,188),('Mauritius',99949,189),('Cambodia',99950,190),('Congo',99951,191),('Mali',99952,192),('Paraguay',99953,193),('Bolivia',99954,194),('Srpska, Republic of',99955,195),('Albania',99956,196),('Malta',99957,197),('Bahrain',99958,198),('Luxembourg',99959,199),('Malawi',99960,200),('El Salvador',99961,201),('Mongolia',99962,202),('Cambodia',99963,203),('Nicaragua',99964,204),('Macau',99965,205),('Kuwait',99966,206),('Paraguay',99967,207),('Botswana',99968,208),('France',10,209);
/*!40000 ALTER TABLE `ezisbn_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group_range`
--

DROP TABLE IF EXISTS `ezisbn_group_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `group_from` varchar(32) NOT NULL DEFAULT '',
  `group_length` int(11) NOT NULL DEFAULT '0',
  `group_to` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group_range`
--

LOCK TABLES `ezisbn_group_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_group_range` DISABLE KEYS */;
INSERT INTO `ezisbn_group_range` VALUES (0,'0',1,'5',1,59999),(60000,'600',3,'649',2,64999),(70000,'7',1,'7',3,79999),(80000,'80',2,'94',4,94999),(95000,'950',3,'989',5,98999),(99000,'9900',4,'9989',6,99899),(99900,'99900',5,'99999',7,99999),(10000,'10',2,'10',8,10999);
/*!40000 ALTER TABLE `ezisbn_group_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_registrant_range`
--

DROP TABLE IF EXISTS `ezisbn_registrant_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_registrant_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn_group_id` int(11) NOT NULL DEFAULT '0',
  `registrant_from` varchar(32) NOT NULL DEFAULT '',
  `registrant_length` int(11) NOT NULL DEFAULT '0',
  `registrant_to` varchar(32) NOT NULL DEFAULT '',
  `to_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=927 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_registrant_range`
--

LOCK TABLES `ezisbn_registrant_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_registrant_range` DISABLE KEYS */;
INSERT INTO `ezisbn_registrant_range` VALUES (0,1,1,'00',2,'19',19999),(20000,2,1,'200',3,'699',69999),(70000,3,1,'7000',4,'8499',84999),(85000,4,1,'85000',5,'89999',89999),(90000,5,1,'900000',6,'949999',94999),(95000,6,1,'9500000',7,'9999999',99999),(0,7,2,'00',2,'09',9999),(10000,8,2,'100',3,'399',39999),(40000,9,2,'4000',4,'5499',54999),(55000,10,2,'55000',5,'86979',86979),(86980,11,2,'869800',6,'998999',99899),(99900,12,2,'9990000',7,'9999999',99999),(0,13,3,'00',2,'19',19999),(20000,14,3,'200',3,'349',34999),(35000,15,3,'35000',5,'39999',39999),(40000,16,3,'400',3,'699',69999),(70000,17,3,'7000',4,'8399',83999),(84000,18,3,'84000',5,'89999',89999),(90000,19,3,'900000',6,'949999',94999),(95000,20,3,'9500000',7,'9999999',99999),(0,21,4,'00',2,'02',2999),(3000,22,4,'030',3,'033',3399),(3400,23,4,'0340',4,'0369',3699),(3700,24,4,'03700',5,'03999',3999),(4000,25,4,'04',2,'19',19999),(20000,26,4,'200',3,'699',69999),(70000,27,4,'7000',4,'8499',84999),(85000,28,4,'85000',5,'89999',89999),(90000,29,4,'900000',6,'949999',94999),(95000,30,4,'9500000',7,'9539999',95399),(95400,31,4,'95400',5,'96999',96999),(97000,32,4,'9700000',7,'9899999',98999),(99000,33,4,'99000',5,'99499',99499),(99500,34,4,'99500',5,'99999',99999),(0,35,5,'00',2,'19',19999),(20000,36,5,'200',3,'699',69999),(70000,37,5,'7000',4,'8499',84999),(85000,38,5,'85000',5,'89999',89999),(90000,39,5,'900000',6,'949999',94999),(95000,40,5,'9500000',7,'9999999',99999),(0,41,6,'00',2,'19',19999),(20000,42,6,'200',3,'420',42099),(42100,43,6,'4210',4,'4299',42999),(43000,44,6,'430',3,'430',43099),(43100,45,6,'4310',4,'4399',43999),(44000,46,6,'440',3,'440',44099),(44100,47,6,'4410',4,'4499',44999),(45000,48,6,'450',3,'699',69999),(70000,49,6,'7000',4,'8499',84999),(85000,50,6,'85000',5,'89999',89999),(90000,51,6,'900000',6,'909999',90999),(91000,52,6,'91000',5,'91999',91999),(92000,53,6,'9200',4,'9299',92999),(93000,54,6,'93000',5,'94999',94999),(95000,55,6,'9500000',7,'9500999',95009),(95010,56,6,'9501',4,'9799',97999),(98000,57,6,'98000',5,'98999',98999),(99000,58,6,'9900000',7,'9909999',99099),(99100,59,6,'9910',4,'9999',99999),(0,60,7,'00',2,'09',9999),(10000,61,7,'100',3,'499',49999),(50000,62,7,'5000',4,'8999',89999),(90000,63,7,'90000',5,'99999',99999),(0,64,8,'00',2,'19',19999),(20000,65,8,'200',3,'699',69999),(70000,66,8,'7000',4,'7999',79999),(80000,67,8,'80000',5,'84999',84999),(85000,68,8,'85',2,'99',99999),(0,69,9,'00',2,'19',19999),(20000,70,9,'200',3,'799',79999),(80000,71,9,'8000',4,'9499',94999),(95000,72,9,'95000',5,'99999',99999),(0,73,10,'00',2,'04',4999),(5000,74,10,'05',2,'49',49999),(50000,75,10,'500',3,'799',79999),(80000,76,10,'8000',4,'8999',89999),(90000,77,10,'90000',5,'99999',99999),(0,78,11,'0',1,'4',49999),(50000,79,11,'50',2,'89',89999),(90000,80,11,'900',3,'979',97999),(98000,81,11,'9800',4,'9999',99999),(1000,82,12,'01',2,'09',9999),(10000,83,12,'100',3,'399',39999),(40000,84,12,'4000',4,'5999',59999),(60000,85,12,'60000',5,'89999',89999),(90000,86,12,'90',2,'99',99999),(0,87,13,'0',1,'0',9999),(10000,88,13,'10',2,'49',49999),(50000,89,13,'500',3,'799',79999),(80000,90,13,'8000',4,'9199',91999),(92000,91,13,'92000',5,'99999',99999),(0,92,14,'00',2,'39',39999),(40000,93,14,'400',3,'749',74999),(75000,94,14,'7500',4,'9499',94999),(95000,95,14,'95000',5,'99999',99999),(0,96,15,'0',1,'0',9999),(10000,97,15,'10',2,'19',19999),(20000,98,15,'200',3,'449',44999),(45000,99,15,'4500',4,'6499',64999),(65000,100,15,'65000',5,'69999',69999),(70000,101,15,'7',1,'9',99999),(0,102,16,'00',2,'39',39999),(40000,103,16,'400',3,'799',79999),(80000,104,16,'8000',4,'9499',94999),(95000,105,16,'95000',5,'99999',99999),(0,106,18,'00',2,'29',29999),(30000,107,18,'300',3,'399',39999),(40000,108,18,'4000',4,'4499',44999),(45000,109,18,'45000',5,'49999',49999),(50000,110,18,'50',2,'99',99999),(0,111,19,'0',1,'9',99999),(0,112,20,'00',2,'39',39999),(40000,113,20,'400',3,'799',79999),(80000,114,20,'8000',4,'9499',94999),(95000,115,20,'95000',5,'99999',99999),(0,116,21,'00',2,'09',9999),(10000,117,21,'100',3,'499',49999),(50000,118,21,'5000',4,'7999',79999),(80000,119,21,'80000',5,'89999',89999),(0,120,22,'00',2,'19',19999),(20000,121,22,'200',3,'699',69999),(70000,122,22,'7000',4,'8999',89999),(90000,123,22,'90000',5,'99999',99999),(0,124,23,'00',2,'49',49999),(50000,125,23,'500',3,'699',69999),(70000,126,23,'7000',4,'8999',89999),(90000,127,23,'90000',5,'99999',99999),(0,128,24,'00',2,'09',9999),(10000,129,24,'100',3,'499',49999),(50000,130,24,'5000',4,'7999',79999),(80000,131,24,'80000',5,'89999',89999),(90000,132,24,'900000',6,'999999',99999),(0,133,25,'00',2,'19',19999),(20000,134,25,'200',3,'699',69999),(70000,135,25,'7000',4,'8499',84999),(85000,136,25,'85000',5,'89999',89999),(90000,137,25,'900000',6,'999999',99999),(0,138,26,'00',2,'19',19999),(20000,139,26,'200',3,'699',69999),(70000,140,26,'7000',4,'8499',84999),(85000,141,26,'85000',5,'89999',89999),(90000,142,26,'900000',6,'999999',99999),(0,143,27,'00',2,'19',19999),(20000,144,27,'200',3,'699',69999),(70000,145,27,'7000',4,'8999',89999),(90000,146,27,'90000',5,'98999',98999),(99000,147,27,'990000',6,'999999',99999),(0,148,28,'00',2,'19',19999),(20000,149,28,'200',3,'599',59999),(60000,150,28,'60000',5,'69999',69999),(70000,151,28,'7000',4,'8499',84999),(85000,152,28,'85000',5,'89999',89999),(90000,153,28,'900000',6,'999999',99999),(0,154,29,'00',2,'14',14999),(15000,155,29,'15000',5,'19999',19999),(20000,156,29,'200',3,'699',69999),(70000,157,29,'7000',4,'8499',84999),(85000,158,29,'85000',5,'89999',89999),(90000,159,29,'9000',4,'9199',91999),(92000,160,29,'920000',6,'923999',92399),(92400,161,29,'92400',5,'92999',92999),(93000,162,29,'930000',6,'949999',94999),(95000,163,29,'95000',5,'96999',96999),(97000,164,29,'9700',4,'9999',99999),(0,165,30,'00',2,'19',19999),(20000,166,30,'200',3,'599',59999),(60000,167,30,'60000',5,'69999',69999),(70000,168,30,'7000',4,'8499',84999),(85000,169,30,'85000',5,'89999',89999),(90000,170,30,'900000',6,'979999',97999),(98000,171,30,'98000',5,'99999',99999),(0,172,31,'00',2,'29',29999),(30000,173,31,'300',3,'599',59999),(60000,174,31,'6000',4,'7999',79999),(80000,175,31,'80000',5,'89999',89999),(90000,176,31,'900000',6,'999999',99999),(0,177,32,'00',2,'29',29999),(40000,178,32,'400',3,'649',64999),(70000,179,32,'7000',4,'7999',79999),(85000,180,32,'85000',5,'94999',94999),(97000,181,32,'970000',6,'999999',99999),(0,182,33,'00',2,'19',19999),(20000,183,33,'200',3,'599',59999),(60000,184,33,'6000',4,'8499',84999),(85000,185,33,'85000',5,'89999',89999),(90000,186,33,'900000',6,'949999',94999),(95000,187,33,'95000',5,'99999',99999),(0,188,34,'00',2,'24',24999),(25000,189,34,'250',3,'549',54999),(55000,190,34,'5500',4,'8499',84999),(85000,191,34,'85000',5,'94999',94999),(95000,192,34,'950000',6,'969999',96999),(97000,193,34,'97000',5,'98999',98999),(99000,194,34,'990',3,'999',99999),(0,195,35,'00',2,'19',19999),(20000,196,35,'200',3,'499',49999),(50000,197,35,'5000',4,'6999',69999),(70000,198,35,'70000',5,'79999',79999),(80000,199,35,'800000',6,'849999',84999),(85000,200,35,'8500',4,'8999',89999),(90000,201,35,'90',2,'90',90999),(91000,202,35,'910000',6,'939999',93999),(94000,203,35,'94',2,'94',94999),(95000,204,35,'950000',6,'999999',99999),(0,205,36,'0',1,'1',19999),(20000,206,36,'20',2,'49',49999),(50000,207,36,'500',3,'649',64999),(70000,208,36,'7000',4,'7999',79999),(85000,209,36,'85000',5,'94999',94999),(97000,210,36,'970000',6,'999999',99999),(0,211,37,'0',1,'5',59999),(60000,212,37,'60',2,'79',79999),(80000,213,37,'800',3,'899',89999),(90000,214,37,'9000',4,'9499',94999),(95000,215,37,'95000',5,'98999',98999),(99000,216,37,'990000',6,'999999',99999),(0,217,38,'00',2,'09',9999),(10000,218,38,'100',3,'499',49999),(50000,219,38,'5000',4,'7999',79999),(80000,220,38,'80000',5,'94999',94999),(95000,221,38,'950000',6,'999999',99999),(0,222,39,'000',3,'599',59999),(60000,223,39,'6000',4,'8999',89999),(90000,224,39,'90000',5,'99999',99999),(0,225,40,'00',2,'49',49999),(50000,226,40,'500',3,'899',89999),(90000,227,40,'9000',4,'9899',98999),(99000,228,40,'99000',5,'99999',99999),(0,229,41,'0',1,'1',19999),(20000,230,41,'20',2,'54',54999),(55000,231,41,'550',3,'889',88999),(89000,232,41,'8900',4,'9499',94999),(95000,233,41,'95000',5,'99999',99999),(0,234,42,'00',2,'19',19999),(20000,235,42,'200',3,'499',49999),(50000,236,42,'5000',4,'5999',59999),(60000,237,42,'60',2,'65',65999),(66000,238,42,'6600',4,'6699',66999),(67000,239,42,'67000',5,'69999',69999),(70000,240,42,'7000',4,'7999',79999),(80000,241,42,'80',2,'94',94999),(95000,242,42,'9500',4,'9899',98999),(99000,243,42,'99000',5,'99999',99999),(0,244,43,'0',1,'0',9999),(10000,245,43,'10',2,'14',14999),(15000,246,43,'150',3,'549',54999),(55000,247,43,'55000',5,'59999',59999),(60000,248,43,'6000',4,'9499',94999),(95000,249,43,'95000',5,'99999',99999),(0,250,44,'00',2,'28',28999),(29000,251,44,'2900',4,'2999',29999),(30000,252,44,'300',3,'799',79999),(80000,253,44,'8000',4,'8999',89999),(90000,254,44,'90000',5,'92999',92999),(93000,255,44,'9300',4,'9999',99999),(0,256,45,'0000',4,'1999',19999),(20000,257,45,'20',2,'49',49999),(50000,258,45,'50000',5,'54999',54999),(55000,259,45,'550',3,'799',79999),(80000,260,45,'8000',4,'9499',94999),(95000,261,45,'95000',5,'99999',99999),(0,262,46,'00',2,'19',19999),(20000,263,46,'200',3,'699',69999),(70000,264,46,'7000',4,'9999',99999),(0,265,47,'00',2,'02',2999),(3000,266,47,'0300',4,'0499',4999),(5000,267,47,'05',2,'19',19999),(20000,268,47,'2000',4,'2099',20999),(21000,269,47,'21',2,'27',27999),(28000,270,47,'28000',5,'30999',30999),(31000,271,47,'31',2,'43',43999),(44000,272,47,'440',3,'819',81999),(82000,273,47,'8200',4,'9699',96999),(97000,274,47,'97000',5,'99999',99999),(0,275,48,'00',2,'56',56999),(57000,276,48,'57000',5,'59999',59999),(60000,277,48,'600',3,'799',79999),(80000,278,48,'8000',4,'9499',94999),(95000,279,48,'95000',5,'99999',99999),(0,280,49,'00',2,'19',19999),(20000,281,49,'200',3,'699',69999),(70000,282,49,'7000',4,'8499',84999),(85000,283,49,'85000',5,'99999',99999),(0,284,50,'00',2,'19',19999),(20000,285,50,'200',3,'659',65999),(66000,286,50,'6600',4,'6899',68999),(69000,287,50,'690',3,'699',69999),(70000,288,50,'7000',4,'8499',84999),(85000,289,50,'85000',5,'92999',92999),(93000,290,50,'93',2,'93',93999),(94000,291,50,'9400',4,'9799',97999),(98000,292,50,'98000',5,'99999',99999),(0,293,51,'00',2,'19',19999),(20000,294,51,'200',3,'599',59999),(60000,295,51,'6000',4,'8999',89999),(90000,296,51,'90000',5,'94999',94999),(0,297,52,'00',2,'19',19999),(20000,298,52,'200',3,'699',69999),(70000,299,52,'7000',4,'8499',84999),(85000,300,52,'85000',5,'86999',86999),(87000,301,52,'8700',4,'8999',89999),(90000,302,52,'900',3,'999',99999),(0,303,53,'00',2,'19',19999),(20000,304,53,'200',3,'699',69999),(70000,305,53,'7000',4,'8499',84999),(85000,306,53,'85000',5,'89999',89999),(90000,307,53,'9000',4,'9999',99999),(0,308,54,'00',2,'14',14999),(15000,309,54,'150',3,'249',24999),(25000,310,54,'2500',4,'2999',29999),(30000,311,54,'300',3,'549',54999),(55000,312,54,'5500',4,'8999',89999),(90000,313,54,'90000',5,'96999',96999),(97000,314,54,'970',3,'989',98999),(99000,315,54,'9900',4,'9999',99999),(0,316,55,'00',2,'19',19999),(20000,317,55,'200',3,'599',59999),(70000,318,55,'7000',4,'7999',79999),(90000,319,55,'90000',5,'99999',99999),(0,320,56,'00',2,'14',14999),(15000,321,56,'1500',4,'1699',16999),(17000,322,56,'170',3,'199',19999),(20000,323,56,'2000',4,'2999',29999),(30000,324,56,'300',3,'699',69999),(70000,325,56,'7000',4,'8999',89999),(90000,326,56,'90000',5,'99999',99999),(0,327,57,'00',2,'00',999),(1000,328,57,'0100',4,'0999',9999),(10000,329,57,'10000',5,'19999',19999),(30000,330,57,'300',3,'499',49999),(50000,331,57,'5000',4,'5999',59999),(60000,332,57,'60',2,'89',89999),(90000,333,57,'900',3,'989',98999),(99000,334,57,'9900',4,'9989',99899),(99900,335,57,'99900',5,'99999',99999),(1000,336,58,'01',2,'39',39999),(40000,337,58,'400',3,'499',49999),(50000,338,58,'5000',4,'7999',79999),(80000,339,58,'800',3,'899',89999),(90000,340,58,'9000',4,'9999',99999),(0,341,59,'0',1,'1',19999),(20000,342,59,'20',2,'39',39999),(40000,343,59,'400',3,'799',79999),(80000,344,59,'8000',4,'9999',99999),(1000,345,60,'01',2,'59',59999),(60000,346,60,'600',3,'899',89999),(90000,347,60,'9000',4,'9099',90999),(91000,348,60,'91000',5,'96999',96999),(97000,349,60,'9700',4,'9999',99999),(0,350,61,'000',3,'015',1599),(1600,351,61,'0160',4,'0199',1999),(2000,352,61,'02',2,'02',2999),(3000,353,61,'0300',4,'0599',5999),(6000,354,61,'06',2,'09',9999),(10000,355,61,'10',2,'49',49999),(50000,356,61,'500',3,'849',84999),(85000,357,61,'8500',4,'9099',90999),(91000,358,61,'91000',5,'98999',98999),(99000,359,61,'9900',4,'9999',99999),(0,360,62,'0',1,'1',19999),(20000,361,62,'20',2,'54',54999),(55000,362,62,'550',3,'799',79999),(80000,363,62,'8000',4,'9499',94999),(95000,364,62,'95000',5,'99999',99999),(0,365,63,'0',1,'0',9999),(10000,366,63,'100',3,'169',16999),(17000,367,63,'1700',4,'1999',19999),(20000,368,63,'20',2,'54',54999),(55000,369,63,'550',3,'759',75999),(76000,370,63,'7600',4,'8499',84999),(85000,371,63,'85000',5,'88999',88999),(89000,372,63,'8900',4,'9499',94999),(95000,373,63,'95000',5,'99999',99999),(0,374,64,'00',2,'19',19999),(20000,375,64,'200',3,'699',69999),(70000,376,64,'7000',4,'8499',84999),(85000,377,64,'85000',5,'89999',89999),(90000,378,64,'90000',5,'94999',94999),(95000,379,64,'9500',4,'9999',99999),(0,380,65,'00000',5,'01999',1999),(2000,381,65,'02',2,'24',24999),(25000,382,65,'250',3,'599',59999),(60000,383,65,'6000',4,'9199',91999),(92000,384,65,'92000',5,'98999',98999),(99000,385,65,'990',3,'999',99999),(0,386,66,'0',1,'3',39999),(40000,387,66,'40',2,'59',59999),(60000,388,66,'600',3,'799',79999),(80000,389,66,'8000',4,'9499',94999),(95000,390,66,'95000',5,'99999',99999),(0,391,67,'00',2,'19',19999),(20000,392,67,'200',3,'499',49999),(50000,393,67,'5000',4,'6999',69999),(70000,394,67,'700',3,'999',99999),(0,395,68,'000',3,'199',19999),(20000,396,68,'2000',4,'2999',29999),(30000,397,68,'30000',5,'79999',79999),(80000,398,68,'8000',4,'8999',89999),(90000,399,68,'900',3,'999',99999),(0,400,69,'000',3,'099',9999),(10000,401,69,'1000',4,'1499',14999),(15000,402,69,'15000',5,'19999',19999),(20000,403,69,'20',2,'29',29999),(30000,404,69,'3000',4,'3999',39999),(40000,405,69,'400',3,'799',79999),(80000,406,69,'8000',4,'9499',94999),(95000,407,69,'95000',5,'99999',99999),(0,408,70,'00',2,'19',19999),(20000,409,70,'200',3,'599',59999),(60000,410,70,'6000',4,'9999',99999),(0,411,71,'00',2,'11',11999),(12000,412,71,'1200',4,'1999',19999),(20000,413,71,'200',3,'289',28999),(29000,414,71,'2900',4,'9999',99999),(0,415,72,'00',2,'09',9999),(10000,416,72,'100',3,'699',69999),(70000,417,72,'70',2,'89',89999),(90000,418,72,'9000',4,'9799',97999),(98000,419,72,'98000',5,'99999',99999),(0,420,73,'00',2,'01',1999),(2000,421,73,'020',3,'199',19999),(20000,422,73,'2000',4,'3999',39999),(40000,423,73,'40000',5,'44999',44999),(45000,424,73,'45',2,'49',49999),(50000,425,73,'50',2,'79',79999),(80000,426,73,'800',3,'899',89999),(90000,427,73,'9000',4,'9899',98999),(99000,428,73,'99000',5,'99999',99999),(0,429,74,'00',2,'39',39999),(40000,430,74,'400',3,'799',79999),(80000,431,74,'8000',4,'8999',89999),(90000,432,74,'90000',5,'99999',99999),(0,433,75,'00',2,'39',39999),(40000,434,75,'400',3,'599',59999),(60000,435,75,'6000',4,'8999',89999),(90000,436,75,'90000',5,'99999',99999),(0,437,76,'00',2,'11',11999),(12000,438,76,'120',3,'559',55999),(56000,439,76,'5600',4,'7999',79999),(80000,440,76,'80000',5,'99999',99999),(0,441,77,'00',2,'09',9999),(10000,442,77,'1000',4,'1999',19999),(20000,443,77,'20000',5,'29999',29999),(30000,444,77,'30',2,'49',49999),(50000,445,77,'500',3,'899',89999),(90000,446,77,'9000',4,'9499',94999),(95000,447,77,'95000',5,'99999',99999),(0,448,78,'00',2,'14',14999),(15000,449,78,'15000',5,'16999',16999),(17000,450,78,'17000',5,'19999',19999),(20000,451,78,'200',3,'799',79999),(80000,452,78,'8000',4,'9699',96999),(97000,453,78,'97000',5,'99999',99999),(0,454,79,'0',1,'1',19999),(20000,455,79,'20',2,'54',54999),(55000,456,79,'550',3,'799',79999),(80000,457,79,'8000',4,'9499',94999),(95000,458,79,'95000',5,'99999',99999),(0,459,80,'00',2,'09',9999),(10000,460,80,'100',3,'399',39999),(40000,461,80,'4000',4,'4999',49999),(0,462,81,'00',2,'09',9999),(10000,463,81,'100',3,'399',39999),(40000,464,81,'4000',4,'4999',49999),(0,465,82,'0',1,'3',39999),(40000,466,82,'40',2,'54',54999),(55000,467,82,'550',3,'799',79999),(80000,468,82,'8000',4,'9999',99999),(0,469,83,'00',2,'49',49999),(50000,470,83,'500',3,'939',93999),(94000,471,83,'9400',4,'9999',99999),(0,472,84,'00',2,'29',29999),(30000,473,84,'300',3,'899',89999),(90000,474,84,'9000',4,'9999',99999),(0,475,85,'00',2,'39',39999),(40000,476,85,'400',3,'849',84999),(85000,477,85,'8500',4,'9999',99999),(0,478,86,'0',1,'0',9999),(10000,479,86,'10',2,'39',39999),(40000,480,86,'400',3,'899',89999),(90000,481,86,'9000',4,'9999',99999),(0,482,87,'0',1,'0',9999),(10000,483,87,'10',2,'49',49999),(50000,484,87,'500',3,'799',79999),(80000,485,87,'8000',4,'9999',99999),(0,486,88,'0',1,'0',9999),(10000,487,88,'10',2,'39',39999),(40000,488,88,'400',3,'899',89999),(90000,489,88,'9000',4,'9999',99999),(0,490,89,'0',1,'1',19999),(20000,491,89,'20',2,'39',39999),(40000,492,89,'400',3,'799',79999),(80000,493,89,'8000',4,'9999',99999),(0,494,90,'0',1,'2',29999),(30000,495,90,'30',2,'49',49999),(50000,496,90,'500',3,'799',79999),(80000,497,90,'8000',4,'9999',99999),(0,498,91,'00',2,'79',79999),(80000,499,91,'800',3,'949',94999),(95000,500,91,'9500',4,'9999',99999),(0,501,92,'0',1,'4',49999),(50000,502,92,'50',2,'79',79999),(80000,503,92,'800',3,'899',89999),(90000,504,92,'9000',4,'9999',99999),(0,505,93,'0',1,'1',19999),(20000,506,93,'20',2,'49',49999),(50000,507,93,'500',3,'899',89999),(90000,508,93,'9000',4,'9999',99999),(0,509,94,'0',1,'0',9999),(10000,510,94,'10',2,'39',39999),(40000,511,94,'400',3,'899',89999),(90000,512,94,'9000',4,'9999',99999),(0,513,95,'00',2,'89',89999),(90000,514,95,'900',3,'984',98499),(98500,515,95,'9850',4,'9999',99999),(0,516,96,'00',2,'29',29999),(30000,517,96,'300',3,'399',39999),(40000,518,96,'4000',4,'9999',99999),(0,519,97,'0000',4,'0999',9999),(10000,520,97,'100',3,'499',49999),(50000,521,97,'5000',4,'5999',59999),(60000,522,97,'60',2,'69',69999),(70000,523,97,'700',3,'799',79999),(80000,524,97,'80',2,'89',89999),(90000,525,97,'900',3,'999',99999),(0,526,98,'00',2,'00',999),(1000,527,98,'010',3,'079',7999),(8000,528,98,'08',2,'39',39999),(40000,529,98,'400',3,'569',56999),(57000,530,98,'57',2,'57',57999),(58000,531,98,'580',3,'849',84999),(85000,532,98,'8500',4,'9999',99999),(0,533,99,'0',1,'1',19999),(20000,534,99,'20',2,'39',39999),(40000,535,99,'400',3,'899',89999),(90000,536,99,'9000',4,'9999',99999),(0,537,100,'0',1,'1',19999),(20000,538,100,'20',2,'79',79999),(80000,539,100,'800',3,'999',99999),(0,540,101,'00',2,'39',39999),(40000,541,101,'400',3,'849',84999),(85000,542,101,'8500',4,'9999',99999),(0,543,102,'0',1,'0',9999),(10000,544,102,'10',2,'39',39999),(40000,545,102,'400',3,'899',89999),(90000,546,102,'9000',4,'9999',99999),(0,547,103,'00',2,'29',29999),(30000,548,103,'300',3,'849',84999),(85000,549,103,'8500',4,'9999',99999),(0,550,104,'00',2,'39',39999),(40000,551,104,'400',3,'849',84999),(85000,552,104,'8500',4,'9999',99999),(0,553,105,'0',1,'1',19999),(20000,554,105,'20',2,'39',39999),(40000,555,105,'400',3,'799',79999),(80000,556,105,'8000',4,'9999',99999),(0,557,106,'0',1,'0',9999),(10000,558,106,'10',2,'39',39999),(40000,559,106,'400',3,'599',59999),(60000,560,106,'60',2,'89',89999),(90000,561,106,'9000',4,'9999',99999),(0,562,107,'0',1,'1',19999),(20000,563,107,'20',2,'39',39999),(40000,564,107,'400',3,'799',79999),(80000,565,107,'8000',4,'9999',99999),(0,566,108,'00',2,'39',39999),(40000,567,108,'400',3,'929',92999),(93000,568,108,'9300',4,'9999',99999),(0,569,109,'0',1,'0',9999),(10000,570,109,'10',2,'39',39999),(40000,571,109,'400',3,'899',89999),(90000,572,109,'9000',4,'9999',99999),(0,573,110,'00',2,'39',39999),(40000,574,110,'400',3,'699',69999),(70000,575,110,'70',2,'84',84999),(85000,576,110,'8500',4,'8799',87999),(88000,577,110,'88',2,'99',99999),(0,578,111,'0',1,'0',9999),(10000,579,111,'10',2,'18',18999),(19000,580,111,'1900',4,'1999',19999),(20000,581,111,'20',2,'49',49999),(50000,582,111,'500',3,'899',89999),(90000,583,111,'9000',4,'9999',99999),(0,584,112,'0',1,'1',19999),(20000,585,112,'20',2,'79',79999),(80000,586,112,'800',3,'949',94999),(95000,587,112,'9500',4,'9999',99999),(0,588,113,'00',2,'59',59999),(60000,589,113,'600',3,'899',89999),(90000,590,113,'9000',4,'9999',99999),(0,591,114,'0',1,'2',29999),(30000,592,114,'30',2,'69',69999),(70000,593,114,'700',3,'949',94999),(95000,594,114,'9500',4,'9999',99999),(0,595,115,'00',2,'54',54999),(55000,596,115,'5500',4,'5599',55999),(56000,597,115,'56',2,'59',59999),(60000,598,115,'600',3,'849',84999),(85000,599,115,'8500',4,'9999',99999),(0,600,116,'0',1,'2',29999),(30000,601,116,'30',2,'54',54999),(55000,602,116,'550',3,'734',73499),(73500,603,116,'7350',4,'7499',74999),(75000,604,116,'7500',4,'9999',99999),(0,605,117,'0',1,'6',69999),(70000,606,117,'70',2,'94',94999),(95000,607,117,'950',3,'999',99999),(0,608,118,'00',2,'39',39999),(40000,609,118,'400',3,'899',89999),(90000,610,118,'9000',4,'9999',99999),(0,611,119,'000',3,'149',14999),(15000,612,119,'1500',4,'1999',19999),(20000,613,119,'20',2,'69',69999),(70000,614,119,'7000',4,'7499',74999),(75000,615,119,'750',3,'959',95999),(96000,616,119,'9600',4,'9999',99999),(0,617,120,'00',2,'39',39999),(40000,618,120,'400',3,'899',89999),(90000,619,120,'9000',4,'9999',99999),(0,620,121,'00',2,'49',49999),(50000,621,121,'500',3,'939',93999),(94000,622,121,'9400',4,'9999',99999),(0,623,122,'00',2,'39',39999),(40000,624,122,'400',3,'899',89999),(90000,625,122,'9000',4,'9999',99999),(0,626,123,'0',1,'5',59999),(60000,627,123,'60',2,'89',89999),(90000,628,123,'900',3,'989',98999),(99000,629,123,'9900',4,'9999',99999),(0,630,124,'00',2,'09',9999),(10000,631,124,'1',1,'1',19999),(20000,632,124,'200',3,'249',24999),(25000,633,124,'2500',4,'2999',29999),(30000,634,124,'30',2,'59',59999),(60000,635,124,'600',3,'899',89999),(90000,636,124,'9000',4,'9999',99999),(0,637,125,'00',2,'05',5999),(6000,638,125,'060',3,'089',8999),(9000,639,125,'0900',4,'0999',9999),(10000,640,125,'10',2,'69',69999),(70000,641,125,'700',3,'969',96999),(97000,642,125,'9700',4,'9999',99999),(0,643,126,'0',1,'2',29999),(30000,644,126,'30',2,'54',54999),(55000,645,126,'550',3,'749',74999),(75000,646,126,'7500',4,'9499',94999),(95000,647,126,'95',2,'99',99999),(0,648,127,'0',1,'0',9999),(10000,649,127,'100',3,'399',39999),(40000,650,127,'4000',4,'4499',44999),(45000,651,127,'45',2,'89',89999),(90000,652,127,'900',3,'949',94999),(95000,653,127,'9500',4,'9999',99999),(0,654,128,'0',1,'5',59999),(60000,655,128,'60',2,'89',89999),(90000,656,128,'900',3,'989',98999),(99000,657,128,'9900',4,'9999',99999),(0,658,129,'00',2,'89',89999),(90000,659,129,'900',3,'989',98999),(99000,660,129,'9900',4,'9999',99999),(0,661,130,'00',2,'29',29999),(30000,662,130,'300',3,'399',39999),(40000,663,130,'40',2,'94',94999),(95000,664,130,'950',3,'989',98999),(99000,665,130,'9900',4,'9999',99999),(0,666,131,'0',1,'4',49999),(50000,667,131,'50',2,'64',64999),(65000,668,131,'650',3,'659',65999),(66000,669,131,'66',2,'75',75999),(76000,670,131,'760',3,'899',89999),(90000,671,131,'9000',4,'9999',99999),(0,672,132,'0',1,'3',39999),(40000,673,132,'40',2,'89',89999),(90000,674,132,'900',3,'989',98999),(99000,675,132,'9900',4,'9999',99999),(0,676,133,'00',2,'09',9999),(10000,677,133,'100',3,'159',15999),(16000,678,133,'1600',4,'1999',19999),(20000,679,133,'20',2,'79',79999),(80000,680,133,'800',3,'949',94999),(95000,681,133,'9500',4,'9999',99999),(0,682,134,'00',2,'79',79999),(80000,683,134,'800',3,'989',98999),(99000,684,134,'9900',4,'9999',99999),(80000,685,135,'80',2,'94',94999),(95000,686,135,'950',3,'989',98999),(99000,687,135,'9900',4,'9999',99999),(0,688,136,'00',2,'49',49999),(50000,689,136,'500',3,'899',89999),(90000,690,136,'9000',4,'9999',99999),(0,691,137,'0',1,'4',49999),(50000,692,137,'50',2,'79',79999),(80000,693,137,'800',3,'899',89999),(90000,694,137,'9000',4,'9999',99999),(0,695,138,'00',2,'39',39999),(40000,696,138,'400',3,'899',89999),(90000,697,138,'9000',4,'9399',93999),(94000,698,138,'940',3,'969',96999),(97000,699,138,'97',2,'99',99999),(0,700,139,'00',2,'39',39999),(40000,701,139,'400',3,'879',87999),(88000,702,139,'8800',4,'9999',99999),(0,703,140,'0',1,'2',29999),(30000,704,140,'30',2,'54',54999),(55000,705,140,'550',3,'749',74999),(75000,706,140,'7500',4,'9999',99999),(0,707,141,'0',1,'0',9999),(10000,708,141,'100',3,'199',19999),(20000,709,141,'2000',4,'2999',29999),(30000,710,141,'30',2,'59',59999),(60000,711,141,'600',3,'949',94999),(95000,712,141,'9500',4,'9999',99999),(0,713,142,'00',2,'49',49999),(50000,714,142,'500',3,'799',79999),(80000,715,142,'80',2,'99',99999),(0,716,144,'0',1,'1',19999),(20000,717,144,'20',2,'89',89999),(90000,718,144,'900',3,'999',99999),(0,719,145,'0',1,'5',59999),(60000,720,145,'60',2,'89',89999),(90000,721,145,'900',3,'999',99999),(0,722,146,'0',1,'3',39999),(40000,723,146,'40',2,'79',79999),(80000,724,146,'800',3,'999',99999),(0,725,147,'0',1,'2',29999),(30000,726,147,'30',2,'59',59999),(60000,727,147,'600',3,'699',69999),(70000,728,147,'70',2,'89',89999),(90000,729,147,'90',2,'94',94999),(95000,730,147,'950',3,'999',99999),(0,731,148,'0',1,'0',9999),(10000,732,148,'10',2,'89',89999),(90000,733,148,'900',3,'999',99999),(0,734,149,'0',1,'3',39999),(40000,735,149,'40',2,'94',94999),(95000,736,149,'950',3,'999',99999),(0,737,150,'0',1,'2',29999),(30000,738,150,'30',2,'89',89999),(90000,739,150,'900',3,'999',99999),(0,740,151,'00',2,'59',59999),(60000,741,151,'600',3,'999',99999),(0,742,152,'0',1,'3',39999),(40000,743,152,'400',3,'599',59999),(60000,744,152,'60',2,'89',89999),(90000,745,152,'900',3,'999',99999),(0,746,153,'0',1,'2',29999),(30000,747,153,'30',2,'35',35999),(60000,748,153,'600',3,'604',60499),(0,749,154,'0',1,'4',49999),(50000,750,154,'50',2,'89',89999),(90000,751,154,'900',3,'999',99999),(0,752,155,'0',1,'4',49999),(50000,753,155,'50',2,'79',79999),(80000,754,155,'800',3,'999',99999),(0,755,156,'0',1,'2',29999),(30000,756,156,'30',2,'69',69999),(70000,757,156,'700',3,'999',99999),(0,758,157,'0',1,'2',29999),(30000,759,157,'30',2,'89',89999),(90000,760,157,'900',3,'999',99999),(0,761,158,'0',1,'3',39999),(40000,762,158,'40',2,'79',79999),(80000,763,158,'800',3,'999',99999),(0,764,159,'0',1,'2',29999),(30000,765,159,'300',3,'399',39999),(40000,766,159,'40',2,'69',69999),(90000,767,159,'900',3,'999',99999),(0,768,160,'0',1,'4',49999),(50000,769,160,'50',2,'89',89999),(90000,770,160,'900',3,'999',99999),(0,771,161,'0',1,'1',19999),(20000,772,161,'20',2,'69',69999),(70000,773,161,'700',3,'799',79999),(80000,774,161,'8',1,'8',89999),(90000,775,161,'90',2,'99',99999),(0,776,162,'0',1,'3',39999),(40000,777,162,'40',2,'69',69999),(70000,778,162,'700',3,'999',99999),(0,779,163,'0',1,'1',19999),(20000,780,163,'20',2,'79',79999),(80000,781,163,'800',3,'999',99999),(0,782,164,'0',1,'1',19999),(20000,783,164,'20',2,'79',79999),(80000,784,164,'800',3,'999',99999),(0,785,165,'0',1,'3',39999),(40000,786,165,'40',2,'79',79999),(80000,787,165,'800',3,'999',99999),(0,788,166,'0',1,'0',9999),(10000,789,166,'10',2,'59',59999),(60000,790,166,'600',3,'999',99999),(0,791,167,'0',1,'2',29999),(30000,792,167,'30',2,'59',59999),(60000,793,167,'600',3,'999',99999),(0,794,168,'0',1,'0',9999),(10000,795,168,'10',2,'79',79999),(80000,796,168,'800',3,'999',99999),(0,797,169,'0',1,'4',49999),(50000,798,169,'50',2,'79',79999),(80000,799,169,'800',3,'999',99999),(0,800,170,'0',1,'4',49999),(50000,801,170,'50',2,'79',79999),(80000,802,170,'800',3,'999',99999),(0,803,171,'0',1,'4',49999),(50000,804,171,'50',2,'79',79999),(80000,805,171,'800',3,'999',99999),(0,806,172,'0',1,'0',9999),(10000,807,172,'10',2,'59',59999),(60000,808,172,'600',3,'699',69999),(70000,809,172,'7',1,'7',79999),(80000,810,172,'80',2,'99',99999),(0,811,173,'0',1,'2',29999),(30000,812,173,'30',2,'59',59999),(60000,813,173,'600',3,'999',99999),(0,814,174,'0',1,'1',19999),(20000,815,174,'20',2,'79',79999),(80000,816,174,'800',3,'999',99999),(0,817,175,'0',1,'2',29999),(30000,818,175,'30',2,'59',59999),(60000,819,175,'600',3,'699',69999),(70000,820,175,'7',1,'8',89999),(90000,821,175,'90',2,'99',99999),(0,822,176,'0',1,'0',9999),(10000,823,176,'10',2,'59',59999),(60000,824,176,'600',3,'999',99999),(0,825,177,'0',1,'1',19999),(20000,826,177,'20',2,'59',59999),(60000,827,177,'600',3,'999',99999),(0,828,178,'0',1,'1',19999),(20000,829,178,'20',2,'59',59999),(60000,830,178,'600',3,'899',89999),(90000,831,178,'90',2,'99',99999),(0,832,179,'0',1,'5',59999),(60000,833,179,'60',2,'89',89999),(90000,834,179,'900',3,'999',99999),(0,835,180,'0',1,'0',9999),(10000,836,180,'10',2,'69',69999),(70000,837,180,'700',3,'999',99999),(0,838,181,'0',1,'2',29999),(30000,839,181,'30',2,'79',79999),(80000,840,181,'800',3,'999',99999),(0,841,182,'0',1,'4',49999),(50000,842,182,'50',2,'79',79999),(80000,843,182,'800',3,'999',99999),(0,844,183,'0',1,'2',29999),(30000,845,183,'30',2,'59',59999),(60000,846,183,'600',3,'999',99999),(0,847,184,'0',1,'4',49999),(50000,848,184,'50',2,'79',79999),(80000,849,184,'800',3,'999',99999),(0,850,185,'0',1,'5',59999),(60000,851,185,'60',2,'89',89999),(90000,852,185,'900',3,'999',99999),(0,853,186,'0',1,'2',29999),(30000,854,186,'30',2,'59',59999),(60000,855,186,'600',3,'999',99999),(0,856,187,'0',1,'2',29999),(30000,857,187,'30',2,'69',69999),(70000,858,187,'700',3,'999',99999),(0,859,188,'0',1,'4',49999),(50000,860,188,'50',2,'79',79999),(80000,861,188,'800',3,'999',99999),(0,862,189,'0',1,'1',19999),(20000,863,189,'20',2,'89',89999),(90000,864,189,'900',3,'999',99999),(0,865,190,'0',1,'4',49999),(50000,866,190,'50',2,'79',79999),(80000,867,190,'800',3,'999',99999),(0,868,192,'0',1,'4',49999),(50000,869,192,'50',2,'79',79999),(80000,870,192,'800',3,'999',99999),(0,871,193,'0',1,'2',29999),(30000,872,193,'30',2,'79',79999),(80000,873,193,'800',3,'939',93999),(94000,874,193,'94',2,'99',99999),(0,875,194,'0',1,'2',29999),(30000,876,194,'30',2,'69',69999),(70000,877,194,'700',3,'999',99999),(0,878,195,'0',1,'1',19999),(20000,879,195,'20',2,'59',59999),(60000,880,195,'600',3,'799',79999),(80000,881,195,'80',2,'89',89999),(90000,882,195,'90',2,'99',99999),(0,883,196,'00',2,'59',59999),(60000,884,196,'600',3,'859',85999),(86000,885,196,'86',2,'99',99999),(0,886,197,'0',1,'1',19999),(20000,887,197,'20',2,'79',79999),(80000,888,197,'800',3,'999',99999),(0,889,198,'0',1,'4',49999),(50000,890,198,'50',2,'94',94999),(95000,891,198,'950',3,'999',99999),(0,892,199,'0',1,'2',29999),(30000,893,199,'30',2,'59',59999),(60000,894,199,'600',3,'999',99999),(0,895,200,'0',1,'0',9999),(10000,896,200,'10',2,'94',94999),(95000,897,200,'950',3,'999',99999),(0,898,201,'0',1,'3',39999),(40000,899,201,'40',2,'89',89999),(90000,900,201,'900',3,'999',99999),(0,901,202,'0',1,'4',49999),(50000,902,202,'50',2,'79',79999),(80000,903,202,'800',3,'999',99999),(0,904,203,'00',2,'49',49999),(50000,905,203,'500',3,'999',99999),(0,906,204,'0',1,'1',19999),(20000,907,204,'20',2,'79',79999),(80000,908,204,'800',3,'999',99999),(0,909,205,'0',1,'3',39999),(40000,910,205,'40',2,'79',79999),(80000,911,205,'800',3,'999',99999),(0,912,206,'0',1,'2',29999),(30000,913,206,'30',2,'69',69999),(70000,914,206,'700',3,'799',79999),(0,915,207,'0',1,'1',19999),(20000,916,207,'20',2,'59',59999),(60000,917,207,'600',3,'899',89999),(0,918,208,'0',1,'3',39999),(40000,919,208,'400',3,'599',59999),(60000,920,208,'60',2,'89',89999),(90000,921,208,'900',3,'999',99999),(0,922,209,'00',2,'19',19999),(20000,923,209,'200',3,'699',69999),(70000,924,209,'7000',4,'8999',89999),(90000,925,209,'90000',5,'97599',97599),(97600,926,209,'976000',6,'999999',99999);
/*!40000 ALTER TABLE `ezisbn_registrant_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword`
--

DROP TABLE IF EXISTS `ezkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword` (
  `class_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezkeyword_keyword` (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword`
--

LOCK TABLES `ezkeyword` WRITE;
/*!40000 ALTER TABLE `ezkeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword_attribute_link`
--

DROP TABLE IF EXISTS `ezkeyword_attribute_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword_attribute_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  `objectattribute_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezkeyword_attr_link_kid_oaid` (`keyword_id`,`objectattribute_id`),
  KEY `ezkeyword_attr_link_oaid` (`objectattribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword_attribute_link`
--

LOCK TABLES `ezkeyword_attribute_link` WRITE;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_block`
--

DROP TABLE IF EXISTS `ezm_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_block` (
  `id` char(32) NOT NULL,
  `zone_id` char(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `overflow_id` char(32) DEFAULT NULL,
  `last_update` int(10) unsigned DEFAULT '0',
  `block_type` varchar(255) DEFAULT NULL,
  `fetch_params` longtext,
  `rotation_type` int(10) unsigned DEFAULT NULL,
  `rotation_interval` int(10) unsigned DEFAULT NULL,
  `is_removed` int(2) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezm_block__is_removed` (`is_removed`),
  KEY `ezm_block__node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_block`
--

LOCK TABLES `ezm_block` WRITE;
/*!40000 ALTER TABLE `ezm_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezm_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_pool`
--

DROP TABLE IF EXISTS `ezm_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_pool` (
  `block_id` char(32) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned DEFAULT '0',
  `ts_publication` int(11) DEFAULT '0',
  `ts_visible` int(10) unsigned DEFAULT '0',
  `ts_hidden` int(10) unsigned DEFAULT '0',
  `rotation_until` int(10) unsigned DEFAULT '0',
  `moved_to` char(32) DEFAULT NULL,
  PRIMARY KEY (`block_id`,`object_id`),
  KEY `ezm_pool__block_id__ts_publication__priority` (`block_id`,`ts_publication`,`priority`),
  KEY `ezm_pool__block_id__ts_visible` (`block_id`,`ts_visible`),
  KEY `ezm_pool__block_id__ts_hidden` (`block_id`,`ts_hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_pool`
--

LOCK TABLES `ezm_pool` WRITE;
/*!40000 ALTER TABLE `ezm_pool` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezm_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmedia`
--

DROP TABLE IF EXISTS `ezmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmedia` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `controls` varchar(50) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `has_controller` int(11) DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `is_autoplay` int(11) DEFAULT '0',
  `is_loop` int(11) DEFAULT '0',
  `mime_type` varchar(50) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `pluginspage` varchar(255) DEFAULT NULL,
  `quality` varchar(50) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmedia`
--

LOCK TABLES `ezmedia` WRITE;
/*!40000 ALTER TABLE `ezmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmessage`
--

DROP TABLE IF EXISTS `ezmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmessage` (
  `body` longtext,
  `destination_address` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_sent` int(11) NOT NULL DEFAULT '0',
  `send_method` varchar(50) NOT NULL DEFAULT '',
  `send_time` varchar(50) NOT NULL DEFAULT '',
  `send_weekday` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmessage`
--

LOCK TABLES `ezmessage` WRITE;
/*!40000 ALTER TABLE `ezmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmodule_run`
--

DROP TABLE IF EXISTS `ezmodule_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmodule_run` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_data` longtext,
  `module_name` varchar(255) DEFAULT NULL,
  `workflow_process_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezmodule_run_workflow_process_id_s` (`workflow_process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmodule_run`
--

LOCK TABLES `ezmodule_run` WRITE;
/*!40000 ALTER TABLE `ezmodule_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmodule_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmultipricedata`
--

DROP TABLE IF EXISTS `ezmultipricedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmultipricedata` (
  `contentobject_attr_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attr_version` int(11) NOT NULL DEFAULT '0',
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `ezmultipricedata_coa_id` (`contentobject_attr_id`),
  KEY `ezmultipricedata_coa_version` (`contentobject_attr_version`),
  KEY `ezmultipricedata_currency_code` (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmultipricedata`
--

LOCK TABLES `ezmultipricedata` WRITE;
/*!40000 ALTER TABLE `ezmultipricedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmultipricedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznode_assignment`
--

DROP TABLE IF EXISTS `eznode_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznode_assignment` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `from_node_id` int(11) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_main` int(11) NOT NULL DEFAULT '0',
  `op_code` int(11) NOT NULL DEFAULT '0',
  `parent_node` int(11) DEFAULT NULL,
  `parent_remote_id` varchar(100) NOT NULL DEFAULT '',
  `remote_id` varchar(100) NOT NULL DEFAULT '0',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `eznode_assignment_co_version` (`contentobject_version`),
  KEY `eznode_assignment_coid_cov` (`contentobject_id`,`contentobject_version`),
  KEY `eznode_assignment_is_main` (`is_main`),
  KEY `eznode_assignment_parent_node` (`parent_node`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznode_assignment`
--

LOCK TABLES `eznode_assignment` WRITE;
/*!40000 ALTER TABLE `eznode_assignment` DISABLE KEYS */;
INSERT INTO `eznode_assignment` VALUES (8,2,0,4,1,2,5,'','0',1,1,0,0),(42,1,0,5,1,2,5,'','0',9,1,0,0),(10,2,-1,6,1,2,44,'','0',9,1,0,0),(4,1,0,7,1,2,1,'','0',1,1,0,0),(12,1,0,8,1,2,5,'','0',1,1,0,0),(13,1,0,9,1,2,5,'','0',1,1,0,0),(41,1,0,11,1,2,1,'','0',1,1,0,0),(11,1,0,12,1,2,5,'','0',1,1,0,0),(45,1,-1,16,1,2,1,'','0',9,1,0,0),(49,1,0,27,1,2,43,'','0',9,1,0,0),(50,1,0,28,1,2,43,'','0',9,1,0,0),(51,1,0,29,1,2,43,'','0',9,1,0,0),(52,1,0,30,1,2,48,'','0',1,1,0,0),(56,1,0,34,1,2,1,'','0',2,0,0,0),(14,3,-1,38,1,2,13,'','0',1,1,0,0),(54,2,-1,39,1,2,58,'','0',1,1,0,0),(52,1,0,40,1,2,2,'26bfdbefd7ed3e37abbd8b60bd5331f3','0',1,1,0,0),(54,1,0,42,1,2,51,'0e1aaddc86695a6c9d7f99f86cce423b','0',1,1,0,0),(55,1,0,43,1,2,51,'db8f8c71c5c64762d92748ef902dd633','0',1,1,0,0),(56,1,0,44,1,2,51,'c290b711a25fd685f915ac367323ec16','0',1,1,0,0),(57,1,0,45,1,2,2,'063a29d618a256f87b7a1a06b8f0cc49','0',1,1,0,0),(58,1,0,46,1,2,2,'82a9fdf0a440c0dda693b0ee86dfc8ff','0',1,1,0,0),(59,1,0,47,1,2,2,'b9ae789dc022ca91836bd7ca0b51407b','0',1,1,0,0),(60,1,0,48,1,2,2,'0fead01a24c63424d1d9095e58f9ae45','0',1,1,0,0);
/*!40000 ALTER TABLE `eznode_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection`
--

DROP TABLE IF EXISTS `eznotificationcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection` (
  `data_subject` longtext NOT NULL,
  `data_text` longtext NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `handler` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transport` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection`
--

LOCK TABLES `eznotificationcollection` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection_item`
--

DROP TABLE IF EXISTS `eznotificationcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection_item` (
  `address` varchar(255) NOT NULL DEFAULT '',
  `collection_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection_item`
--

LOCK TABLES `eznotificationcollection_item` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationevent`
--

DROP TABLE IF EXISTS `eznotificationevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationevent` (
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_int4` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `data_text4` longtext NOT NULL,
  `event_type_string` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationevent`
--

LOCK TABLES `eznotificationevent` WRITE;
/*!40000 ALTER TABLE `eznotificationevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezoperation_memento`
--

DROP TABLE IF EXISTS `ezoperation_memento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezoperation_memento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main` int(11) NOT NULL DEFAULT '0',
  `main_key` varchar(32) NOT NULL DEFAULT '',
  `memento_data` longtext NOT NULL,
  `memento_key` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`memento_key`),
  KEY `ezoperation_memento_memento_key_main` (`memento_key`,`main`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezoperation_memento`
--

LOCK TABLES `ezoperation_memento` WRITE;
/*!40000 ALTER TABLE `ezoperation_memento` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezoperation_memento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder`
--

DROP TABLE IF EXISTS `ezorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder` (
  `account_identifier` varchar(100) NOT NULL DEFAULT 'default',
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text_1` longtext,
  `data_text_2` longtext,
  `email` varchar(150) DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ignore_vat` int(11) NOT NULL DEFAULT '0',
  `is_archived` int(11) NOT NULL DEFAULT '0',
  `is_temporary` int(11) NOT NULL DEFAULT '1',
  `order_nr` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) DEFAULT '0',
  `status_modified` int(11) DEFAULT '0',
  `status_modifier_id` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_is_archived` (`is_archived`),
  KEY `ezorder_is_tmp` (`is_temporary`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder`
--

LOCK TABLES `ezorder` WRITE;
/*!40000 ALTER TABLE `ezorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_item`
--

DROP TABLE IF EXISTS `ezorder_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_item` (
  `description` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_vat_inc` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `price` float DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `vat_value` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_item_order_id` (`order_id`),
  KEY `ezorder_item_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_item`
--

LOCK TABLES `ezorder_item` WRITE;
/*!40000 ALTER TABLE `ezorder_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_nr_incr`
--

DROP TABLE IF EXISTS `ezorder_nr_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_nr_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_nr_incr`
--

LOCK TABLES `ezorder_nr_incr` WRITE;
/*!40000 ALTER TABLE `ezorder_nr_incr` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_nr_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status`
--

DROP TABLE IF EXISTS `ezorder_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `status_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_active` (`is_active`),
  KEY `ezorder_status_name` (`name`),
  KEY `ezorder_status_sid` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status`
--

LOCK TABLES `ezorder_status` WRITE;
/*!40000 ALTER TABLE `ezorder_status` DISABLE KEYS */;
INSERT INTO `ezorder_status` VALUES (1,1,'Pending',1),(2,1,'Processing',2),(3,1,'Delivered',3);
/*!40000 ALTER TABLE `ezorder_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status_history`
--

DROP TABLE IF EXISTS `ezorder_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_history_mod` (`modified`),
  KEY `ezorder_status_history_oid` (`order_id`),
  KEY `ezorder_status_history_sid` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status_history`
--

LOCK TABLES `ezorder_status_history` WRITE;
/*!40000 ALTER TABLE `ezorder_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpackage`
--

DROP TABLE IF EXISTS `ezpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpackage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `install_date` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpackage`
--

LOCK TABLES `ezpackage` WRITE;
/*!40000 ALTER TABLE `ezpackage` DISABLE KEYS */;
INSERT INTO `ezpackage` VALUES (1,1301057838,'plain_site_data','1.0-1');
/*!40000 ALTER TABLE `ezpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpaymentobject`
--

DROP TABLE IF EXISTS `ezpaymentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpaymentobject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `payment_string` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `workflowprocess_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpaymentobject`
--

LOCK TABLES `ezpaymentobject` WRITE;
/*!40000 ALTER TABLE `ezpaymentobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpaymentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpdf_export`
--

DROP TABLE IF EXISTS `ezpdf_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpdf_export` (
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `export_classes` varchar(255) DEFAULT NULL,
  `export_structure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intro_text` longtext,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `pdf_filename` varchar(255) DEFAULT NULL,
  `show_frontpage` int(11) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sub_text` longtext,
  `title` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpdf_export`
--

LOCK TABLES `ezpdf_export` WRITE;
/*!40000 ALTER TABLE `ezpdf_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpdf_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpending_actions`
--

DROP TABLE IF EXISTS `ezpending_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpending_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL DEFAULT '',
  `created` int(11) DEFAULT NULL,
  `param` longtext,
  PRIMARY KEY (`id`),
  KEY `ezpending_actions_action` (`action`),
  KEY `ezpending_actions_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpending_actions`
--

LOCK TABLES `ezpending_actions` WRITE;
/*!40000 ALTER TABLE `ezpending_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpending_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy`
--

DROP TABLE IF EXISTS `ezpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `original_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_original_id` (`original_id`),
  KEY `ezpolicy_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy`
--

LOCK TABLES `ezpolicy` WRITE;
/*!40000 ALTER TABLE `ezpolicy` DISABLE KEYS */;
INSERT INTO `ezpolicy` VALUES ('*',317,'content',0,3),('login',319,'user',0,3),('read',328,'content',0,1),('login',331,'user',0,1),('*',332,'*',0,2),('read',333,'content',0,4);
/*!40000 ALTER TABLE `ezpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation`
--

DROP TABLE IF EXISTS `ezpolicy_limitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `policy_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `policy_id` (`policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation`
--

LOCK TABLES `ezpolicy_limitation` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation` VALUES (251,'Section',328),(252,'Section',329),(253,'SiteAccess',331),(254,'Class',333),(255,'Owner',333);
/*!40000 ALTER TABLE `ezpolicy_limitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation_value`
--

DROP TABLE IF EXISTS `ezpolicy_limitation_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_limitation_value_val` (`value`),
  KEY `ezpolicy_limit_value_limit_id` (`limitation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation_value`
--

LOCK TABLES `ezpolicy_limitation_value` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation_value` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation_value` VALUES (477,251,'1'),(478,252,'1'),(479,253,'1766001124'),(480,254,'4'),(481,255,'1');
/*!40000 ALTER TABLE `ezpolicy_limitation_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpreferences`
--

DROP TABLE IF EXISTS `ezpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `value` longtext,
  PRIMARY KEY (`id`),
  KEY `ezpreferences_name` (`name`),
  KEY `ezpreferences_user_id_idx` (`user_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpreferences`
--

LOCK TABLES `ezpreferences` WRITE;
/*!40000 ALTER TABLE `ezpreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authcode`
--

DROP TABLE IF EXISTS `ezprest_authcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authcode` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `authcode_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authcode`
--

LOCK TABLES `ezprest_authcode` WRITE;
/*!40000 ALTER TABLE `ezprest_authcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authorized_clients`
--

DROP TABLE IF EXISTS `ezprest_authorized_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authorized_clients` (
  `created` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rest_client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_user` (`rest_client_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authorized_clients`
--

LOCK TABLES `ezprest_authorized_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_authorized_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authorized_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_clients`
--

DROP TABLE IF EXISTS `ezprest_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_clients` (
  `client_id` varchar(200) DEFAULT NULL,
  `client_secret` varchar(200) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `description` longtext,
  `endpoint_uri` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `updated` int(11) NOT NULL DEFAULT '0',
  `version` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id_unique` (`client_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_clients`
--

LOCK TABLES `ezprest_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_token`
--

DROP TABLE IF EXISTS `ezprest_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_token` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `refresh_token` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_token`
--

LOCK TABLES `ezprest_token` WRITE;
/*!40000 ALTER TABLE `ezprest_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcategory`
--

DROP TABLE IF EXISTS `ezproductcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcategory`
--

LOCK TABLES `ezproductcategory` WRITE;
/*!40000 ALTER TABLE `ezproductcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection`
--

DROP TABLE IF EXISTS `ezproductcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection` (
  `created` int(11) DEFAULT NULL,
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection`
--

LOCK TABLES `ezproductcollection` WRITE;
/*!40000 ALTER TABLE `ezproductcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item`
--

DROP TABLE IF EXISTS `ezproductcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `discount` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_vat_inc` int(11) DEFAULT NULL,
  `item_count` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `price` float DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `vat_value` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_contentobject_id` (`contentobject_id`),
  KEY `ezproductcollection_item_productcollection_id` (`productcollection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item`
--

LOCK TABLES `ezproductcollection_item` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item_opt`
--

DROP TABLE IF EXISTS `ezproductcollection_item_opt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item_opt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `object_attribute_id` int(11) DEFAULT NULL,
  `option_item_id` int(11) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_opt_item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item_opt`
--

LOCK TABLES `ezproductcollection_item_opt` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpublishingqueueprocesses`
--

DROP TABLE IF EXISTS `ezpublishingqueueprocesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpublishingqueueprocesses` (
  `created` int(11) DEFAULT NULL,
  `ezcontentobject_version_id` int(11) NOT NULL DEFAULT '0',
  `finished` int(11) DEFAULT NULL,
  `pid` int(8) DEFAULT NULL,
  `started` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`ezcontentobject_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpublishingqueueprocesses`
--

LOCK TABLES `ezpublishingqueueprocesses` WRITE;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrole`
--

DROP TABLE IF EXISTS `ezrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` char(1) DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrole`
--

LOCK TABLES `ezrole` WRITE;
/*!40000 ALTER TABLE `ezrole` DISABLE KEYS */;
INSERT INTO `ezrole` VALUES (1,0,'Anonymous','',0),(2,0,'Administrator','0',0),(3,0,'Editor','',0),(4,0,'Member','',0);
/*!40000 ALTER TABLE `ezrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export`
--

DROP TABLE IF EXISTS `ezrss_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export` (
  `access_url` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `description` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `main_node_only` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `number_of_objects` int(11) NOT NULL DEFAULT '0',
  `rss_version` varchar(255) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export`
--

LOCK TABLES `ezrss_export` WRITE;
/*!40000 ALTER TABLE `ezrss_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export_item`
--

DROP TABLE IF EXISTS `ezrss_export_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export_item` (
  `category` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `enclosure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssexport_id` int(11) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `subnodes` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`),
  KEY `ezrss_export_rsseid` (`rssexport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export_item`
--

LOCK TABLES `ezrss_export_item` WRITE;
/*!40000 ALTER TABLE `ezrss_export_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_export_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_import`
--

DROP TABLE IF EXISTS `ezrss_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_import` (
  `active` int(11) DEFAULT NULL,
  `class_description` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `class_title` varchar(255) DEFAULT NULL,
  `class_url` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `destination_node_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `import_description` longtext NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `object_owner_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `url` longtext,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_import`
--

LOCK TABLES `ezrss_import` WRITE;
/*!40000 ALTER TABLE `ezrss_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezscheduled_script`
--

DROP TABLE IF EXISTS `ezscheduled_script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezscheduled_script` (
  `command` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_report_timestamp` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `process_id` int(11) NOT NULL DEFAULT '0',
  `progress` int(3) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezscheduled_script_timestamp` (`last_report_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezscheduled_script`
--

LOCK TABLES `ezscheduled_script` WRITE;
/*!40000 ALTER TABLE `ezscheduled_script` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezscheduled_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_object_word_link`
--

DROP TABLE IF EXISTS `ezsearch_object_word_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_object_word_link` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `frequency` float NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `integer_value` int(11) NOT NULL DEFAULT '0',
  `next_word_id` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `prev_word_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `word_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsearch_object_word_link_frequency` (`frequency`),
  KEY `ezsearch_object_word_link_identifier` (`identifier`),
  KEY `ezsearch_object_word_link_integer_value` (`integer_value`),
  KEY `ezsearch_object_word_link_object` (`contentobject_id`),
  KEY `ezsearch_object_word_link_word` (`word_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5874 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_object_word_link`
--

LOCK TABLES `ezsearch_object_word_link` WRITE;
/*!40000 ALTER TABLE `ezsearch_object_word_link` DISABLE KEYS */;
INSERT INTO `ezsearch_object_word_link` VALUES (4,1,1,0,4699,'name',0,970,0,0,1448889046,1,969),(4,1,1,0,4700,'name',0,971,1,969,1448889046,1,970),(4,1,1,0,4701,'name',0,972,2,970,1448889046,1,971),(4,1,1,0,4702,'name',0,973,3,971,1448889046,1,972),(119,1,1,0,4703,'short_description',0,974,4,972,1448889046,1,973),(119,1,1,0,4704,'short_description',0,975,5,973,1448889046,1,974),(119,1,1,0,4705,'short_description',0,976,6,974,1448889046,1,975),(119,1,1,0,4706,'short_description',0,977,7,975,1448889046,1,976),(119,1,1,0,4707,'short_description',0,978,8,976,1448889046,1,977),(119,1,1,0,4708,'short_description',0,979,9,977,1448889046,1,978),(119,1,1,0,4709,'short_description',0,971,10,978,1448889046,1,979),(119,1,1,0,4710,'short_description',0,972,11,979,1448889046,1,971),(119,1,1,0,4711,'short_description',0,980,12,971,1448889046,1,972),(119,1,1,0,4712,'short_description',0,981,13,972,1448889046,1,980),(119,1,1,0,4713,'short_description',0,982,14,980,1448889046,1,981),(119,1,1,0,4714,'short_description',0,983,15,981,1448889046,1,982),(119,1,1,0,4715,'short_description',0,984,16,982,1448889046,1,983),(119,1,1,0,4716,'short_description',0,985,17,983,1448889046,1,984),(119,1,1,0,4717,'short_description',0,975,18,984,1448889046,1,985),(119,1,1,0,4718,'short_description',0,972,19,985,1448889046,1,975),(119,1,1,0,4719,'short_description',0,986,20,975,1448889046,1,972),(119,1,1,0,4720,'short_description',0,987,21,972,1448889046,1,986),(119,1,1,0,4721,'short_description',0,988,22,986,1448889046,1,987),(119,1,1,0,4722,'short_description',0,970,23,987,1448889046,1,988),(119,1,1,0,4723,'short_description',0,989,24,988,1448889046,1,970),(119,1,1,0,4724,'short_description',0,990,25,970,1448889046,1,989),(119,1,1,0,4725,'short_description',0,991,26,989,1448889046,1,990),(119,1,1,0,4726,'short_description',0,992,27,990,1448889046,1,991),(119,1,1,0,4727,'short_description',0,993,28,991,1448889046,1,992),(119,1,1,0,4728,'short_description',0,970,29,992,1448889046,1,993),(119,1,1,0,4729,'short_description',0,989,30,993,1448889046,1,970),(119,1,1,0,4730,'short_description',0,994,31,970,1448889046,1,989),(119,1,1,0,4731,'short_description',0,995,32,989,1448889046,1,994),(119,1,1,0,4732,'short_description',0,996,33,994,1448889046,1,995),(119,1,1,0,4733,'short_description',0,997,34,995,1448889046,1,996),(119,1,1,0,4734,'short_description',0,998,35,996,1448889046,1,997),(119,1,1,0,4735,'short_description',0,970,36,997,1448889046,1,998),(119,1,1,0,4736,'short_description',0,999,37,998,1448889046,1,970),(119,1,1,0,4737,'short_description',0,1000,38,970,1448889046,1,999),(119,1,1,0,4738,'short_description',0,1001,39,999,1448889046,1,1000),(119,1,1,0,4739,'short_description',0,1002,40,1000,1448889046,1,1001),(119,1,1,0,4740,'short_description',0,1003,41,1001,1448889046,1,1002),(119,1,1,0,4741,'short_description',0,1004,42,1002,1448889046,1,1003),(119,1,1,0,4742,'short_description',0,1005,43,1003,1448889046,1,1004),(119,1,1,0,4743,'short_description',0,1006,44,1004,1448889046,1,1005),(119,1,1,0,4744,'short_description',0,975,45,1005,1448889046,1,1006),(119,1,1,0,4745,'short_description',0,1007,46,1006,1448889046,1,975),(119,1,1,0,4746,'short_description',0,971,47,975,1448889046,1,1007),(155,1,1,0,4747,'short_name',0,972,48,1007,1448889046,1,971),(155,1,1,0,4748,'short_name',0,969,49,971,1448889046,1,972),(156,1,1,0,4749,'description',0,970,50,972,1448889046,1,969),(156,1,1,0,4750,'description',0,971,51,969,1448889046,1,970),(156,1,1,0,4751,'description',0,972,52,970,1448889046,1,971),(156,1,1,0,4752,'description',0,1008,53,971,1448889046,1,972),(156,1,1,0,4753,'description',0,992,54,972,1448889046,1,1008),(156,1,1,0,4754,'description',0,1009,55,1008,1448889046,1,992),(156,1,1,0,4755,'description',0,1010,56,992,1448889046,1,1009),(156,1,1,0,4756,'description',0,971,57,1009,1448889046,1,1010),(156,1,1,0,4757,'description',0,972,58,1010,1448889046,1,971),(156,1,1,0,4758,'description',0,971,59,971,1448889046,1,972),(156,1,1,0,4759,'description',0,972,60,972,1448889046,1,971),(156,1,1,0,4760,'description',0,974,61,971,1448889046,1,972),(156,1,1,0,4761,'description',0,975,62,972,1448889046,1,974),(156,1,1,0,4762,'description',0,1011,63,974,1448889046,1,975),(156,1,1,0,4763,'description',0,1012,64,975,1448889046,1,1011),(156,1,1,0,4764,'description',0,1013,65,1011,1448889046,1,1012),(156,1,1,0,4765,'description',0,1014,66,1012,1448889046,1,1013),(156,1,1,0,4766,'description',0,972,67,1013,1448889046,1,1014),(156,1,1,0,4767,'description',0,994,68,1014,1448889046,1,972),(156,1,1,0,4768,'description',0,971,69,972,1448889046,1,994),(156,1,1,0,4769,'description',0,1015,70,994,1448889046,1,971),(156,1,1,0,4770,'description',0,1016,71,971,1448889046,1,1015),(156,1,1,0,4771,'description',0,975,72,1015,1448889046,1,1016),(156,1,1,0,4772,'description',0,971,73,1016,1448889046,1,975),(156,1,1,0,4773,'description',0,1017,74,975,1448889046,1,971),(156,1,1,0,4774,'description',0,1018,75,971,1448889046,1,1017),(156,1,1,0,4775,'description',0,971,76,1017,1448889046,1,1018),(156,1,1,0,4776,'description',0,1019,77,1018,1448889046,1,971),(156,1,1,0,4777,'description',0,1020,78,971,1448889046,1,1019),(156,1,1,0,4778,'description',0,1021,79,1019,1448889046,1,1020),(156,1,1,0,4779,'description',0,1022,80,1020,1448889046,1,1021),(156,1,1,0,4780,'description',0,1023,81,1021,1448889046,1,1022),(156,1,1,0,4781,'description',0,1024,82,1022,1448889046,1,1023),(156,1,1,0,4782,'description',0,1025,83,1023,1448889046,1,1024),(156,1,1,0,4783,'description',0,1006,84,1024,1448889046,1,1025),(156,1,1,0,4784,'description',0,1026,85,1025,1448889046,1,1006),(156,1,1,0,4785,'description',0,975,86,1006,1448889046,1,1026),(156,1,1,0,4786,'description',0,1027,87,1026,1448889046,1,975),(156,1,1,0,4787,'description',0,1028,88,975,1448889046,1,1027),(156,1,1,0,4788,'description',0,1029,89,1027,1448889046,1,1028),(156,1,1,0,4789,'description',0,1030,90,1028,1448889046,1,1029),(156,1,1,0,4790,'description',0,996,91,1029,1448889046,1,1030),(156,1,1,0,4791,'description',0,971,92,1030,1448889046,1,996),(156,1,1,0,4792,'description',0,972,93,996,1448889046,1,971),(156,1,1,0,4793,'description',0,1016,94,971,1448889046,1,972),(156,1,1,0,4794,'description',0,971,95,972,1448889046,1,1016),(156,1,1,0,4795,'description',0,1031,96,1016,1448889046,1,971),(156,1,1,0,4796,'description',0,1032,97,971,1448889046,1,1031),(156,1,1,0,4797,'description',0,1033,98,1031,1448889046,1,1032),(156,1,1,0,4798,'description',0,996,99,1032,1448889046,1,1033),(156,1,1,0,4799,'description',0,971,100,1033,1448889046,1,996),(156,1,1,0,4800,'description',0,972,101,996,1448889046,1,971),(156,1,1,0,4801,'description',0,1016,102,971,1448889046,1,972),(156,1,1,0,4802,'description',0,971,103,972,1448889046,1,1016),(156,1,1,0,4803,'description',0,1019,104,1016,1448889046,1,971),(156,1,1,0,4804,'description',0,972,105,971,1448889046,1,1019),(156,1,1,0,4805,'description',0,1011,106,1019,1448889046,1,972),(156,1,1,0,4806,'description',0,1034,107,972,1448889046,1,1011),(156,1,1,0,4807,'description',0,971,108,1011,1448889046,1,1034),(156,1,1,0,4808,'description',0,972,109,1034,1448889046,1,971),(156,1,1,0,4809,'description',0,1035,110,971,1448889046,1,972),(156,1,1,0,4810,'description',0,1036,111,972,1448889046,1,1035),(156,1,1,0,4811,'description',0,1037,112,1035,1448889046,1,1036),(156,1,1,0,4812,'description',0,1038,113,1036,1448889046,1,1037),(156,1,1,0,4813,'description',0,1039,114,1037,1448889046,1,1038),(156,1,1,0,4814,'description',0,971,115,1038,1448889046,1,1039),(156,1,1,0,4815,'description',0,972,116,1039,1448889046,1,971),(156,1,1,0,4816,'description',0,1016,117,971,1448889046,1,972),(156,1,1,0,4817,'description',0,971,118,972,1448889046,1,1016),(156,1,1,0,4818,'description',0,1019,119,1016,1448889046,1,971),(156,1,1,0,4819,'description',0,972,120,971,1448889046,1,1019),(156,1,1,0,4820,'description',0,1040,121,1019,1448889046,1,972),(156,1,1,0,4821,'description',0,970,122,972,1448889046,1,1040),(156,1,1,0,4822,'description',0,975,123,1040,1448889046,1,970),(156,1,1,0,4823,'description',0,1041,124,970,1448889046,1,975),(156,1,1,0,4824,'description',0,1042,125,975,1448889046,1,1041),(156,1,1,0,4825,'description',0,975,126,1041,1448889046,1,1042),(156,1,1,0,4826,'description',0,1017,127,1042,1448889046,1,975),(156,1,1,0,4827,'description',0,1043,128,975,1448889046,1,1017),(156,1,1,0,4828,'description',0,1044,129,1017,1448889046,1,1043),(156,1,1,0,4829,'description',0,1045,130,1043,1448889046,1,1044),(156,1,1,0,4830,'description',0,970,131,1044,1448889046,1,1045),(156,1,1,0,4831,'description',0,975,132,1045,1448889046,1,970),(156,1,1,0,4832,'description',0,1046,133,970,1448889046,1,975),(156,1,1,0,4833,'description',0,1047,134,975,1448889046,1,1046),(156,1,1,0,4834,'description',0,970,135,1046,1448889046,1,1047),(156,1,1,0,4835,'description',0,975,136,1047,1448889046,1,970),(156,1,1,0,4836,'description',0,1017,137,970,1448889046,1,975),(156,1,1,0,4837,'description',0,1048,138,975,1448889046,1,1017),(156,1,1,0,4838,'description',0,1049,139,1017,1448889046,1,1048),(156,1,1,0,4839,'description',0,971,140,1048,1448889046,1,1049),(156,1,1,0,4840,'description',0,1050,141,1049,1448889046,1,971),(156,1,1,0,4841,'description',0,975,142,971,1448889046,1,1050),(156,1,1,0,4842,'description',0,1017,143,1050,1448889046,1,975),(156,1,1,0,4843,'description',0,1051,144,975,1448889046,1,1017),(156,1,1,0,4844,'description',0,970,145,1017,1448889046,1,1051),(156,1,1,0,4845,'description',0,1052,146,1051,1448889046,1,970),(156,1,1,0,4846,'description',0,1053,147,970,1448889046,1,1052),(156,1,1,0,4847,'description',0,1054,148,1052,1448889046,1,1053),(156,1,1,0,4848,'description',0,1016,149,1053,1448889046,1,1054),(156,1,1,0,4849,'description',0,1055,150,1054,1448889046,1,1016),(156,1,1,0,4850,'description',0,1042,151,1016,1448889046,1,1055),(156,1,1,0,4851,'description',0,975,152,1055,1448889046,1,1042),(156,1,1,0,4852,'description',0,1056,153,1042,1448889046,1,975),(156,1,1,0,4853,'description',0,1048,154,975,1448889046,1,1056),(156,1,1,0,4854,'description',0,975,155,1056,1448889046,1,1048),(156,1,1,0,4855,'description',0,971,156,1048,1448889046,1,975),(156,1,1,0,4856,'description',0,1017,157,975,1448889046,1,971),(156,1,1,0,4857,'description',0,1057,158,971,1448889046,1,1017),(156,1,1,0,4858,'description',0,1058,159,1017,1448889046,1,1057),(156,1,1,0,4859,'description',0,1059,160,1057,1448889046,1,1058),(156,1,1,0,4860,'description',0,0,161,1058,1448889046,1,1059),(7,3,4,0,4861,'description',0,1061,0,0,1033917596,2,1060),(7,3,4,0,4862,'description',0,1062,1,1060,1033917596,2,1061),(6,3,4,0,4863,'name',0,0,2,1061,1033917596,2,1062),(8,4,10,0,4864,'first_name',0,1029,0,0,1033920665,2,1063),(9,4,10,0,4865,'last_name',0,0,1,1063,1033920665,2,1029),(6,3,11,0,4866,'name',0,1065,0,0,1033920746,2,1064),(6,3,11,0,4867,'name',0,0,1,1064,1033920746,2,1065),(6,3,12,0,4868,'name',0,1062,0,0,1033920775,2,1066),(6,3,12,0,4869,'name',0,0,1,1066,1033920775,2,1062),(6,3,13,0,4870,'name',0,0,0,0,1033920794,2,1067),(8,4,14,0,4871,'first_name',0,1029,0,0,1033920830,2,1066),(9,4,14,0,4872,'last_name',0,0,1,1066,1033920830,2,1029),(4,1,41,0,4873,'name',0,0,0,0,1060695457,3,1068),(6,3,42,0,4874,'name',0,1062,0,0,1072180330,2,1063),(6,3,42,0,4875,'name',0,1029,1,1063,1072180330,2,1062),(7,3,42,0,4876,'description',0,1061,2,1062,1072180330,2,1029),(7,3,42,0,4877,'description',0,996,3,1029,1072180330,2,1061),(7,3,42,0,4878,'description',0,975,4,1061,1072180330,2,996),(7,3,42,0,4879,'description',0,1063,5,996,1072180330,2,975),(7,3,42,0,4880,'description',0,1029,6,975,1072180330,2,1063),(7,3,42,0,4881,'description',0,0,7,1063,1072180330,2,1029),(4,1,45,0,4882,'name',0,0,0,0,1079684190,4,984),(4,1,49,0,4883,'name',0,0,0,0,1080220197,3,1069),(4,1,50,0,4884,'name',0,0,0,0,1080220220,3,1070),(4,1,51,0,4885,'name',0,0,0,0,1080220233,3,1071),(116,5,54,0,5105,'name',0,1235,0,0,1498647834,3,1234),(116,5,54,0,5106,'name',0,0,1,1234,1498647834,3,1235),(116,5,55,0,5107,'name',0,1237,0,0,1498647853,3,1236),(116,5,55,0,5108,'name',0,0,1,1236,1498647853,3,1237),(116,5,56,0,5109,'name',0,1073,0,0,1498647872,3,1238),(116,5,56,0,5110,'name',0,1239,1,1238,1498647872,3,1073),(116,5,56,0,5111,'name',0,1235,2,1073,1498647872,3,1239),(116,5,56,0,5112,'name',0,0,3,1239,1498647872,3,1235),(1,2,57,0,5113,'title',0,1050,0,0,1498647955,1,1072),(1,2,57,0,5114,'title',0,1240,1,1072,1498647955,1,1050),(1,2,57,0,5115,'title',0,1072,2,1050,1498647955,1,1240),(152,2,57,0,5116,'short_title',0,1050,3,1240,1498647955,1,1072),(152,2,57,0,5117,'short_title',0,1240,4,1072,1498647955,1,1050),(152,2,57,0,5118,'short_title',0,1111,5,1050,1498647955,1,1240),(120,2,57,0,5119,'teaser',0,1092,6,1240,1498647955,1,1111),(120,2,57,0,5120,'teaser',0,1112,7,1111,1498647955,1,1092),(120,2,57,0,5121,'teaser',0,1113,8,1092,1498647955,1,1112),(120,2,57,0,5122,'teaser',0,1114,9,1112,1498647955,1,1113),(120,2,57,0,5123,'teaser',0,1115,10,1113,1498647955,1,1114),(120,2,57,0,5124,'teaser',0,1116,11,1114,1498647955,1,1115),(120,2,57,0,5125,'teaser',0,1117,12,1115,1498647955,1,1116),(120,2,57,0,5126,'teaser',0,1118,13,1116,1498647955,1,1117),(120,2,57,0,5127,'teaser',0,1119,14,1117,1498647955,1,1118),(120,2,57,0,5128,'teaser',0,1120,15,1118,1498647955,1,1119),(120,2,57,0,5129,'teaser',0,1121,16,1119,1498647955,1,1120),(120,2,57,0,5130,'teaser',0,1122,17,1120,1498647955,1,1121),(120,2,57,0,5131,'teaser',0,1123,18,1121,1498647955,1,1122),(120,2,57,0,5132,'teaser',0,1124,19,1122,1498647955,1,1123),(120,2,57,0,5133,'teaser',0,1125,20,1123,1498647955,1,1124),(120,2,57,0,5134,'teaser',0,1126,21,1124,1498647955,1,1125),(120,2,57,0,5135,'teaser',0,1127,22,1125,1498647955,1,1126),(120,2,57,0,5136,'teaser',0,1128,23,1126,1498647955,1,1127),(120,2,57,0,5137,'teaser',0,1103,24,1127,1498647955,1,1128),(120,2,57,0,5138,'teaser',0,992,25,1128,1498647955,1,1103),(120,2,57,0,5139,'teaser',0,1129,26,1103,1498647955,1,992),(120,2,57,0,5140,'teaser',0,1130,27,992,1498647955,1,1129),(120,2,57,0,5141,'teaser',0,1131,28,1129,1498647955,1,1130),(120,2,57,0,5142,'teaser',0,1132,29,1130,1498647955,1,1131),(120,2,57,0,5143,'teaser',0,985,30,1131,1498647955,1,1132),(120,2,57,0,5144,'teaser',0,1133,31,1132,1498647955,1,985),(120,2,57,0,5145,'teaser',0,1134,32,985,1498647955,1,1133),(120,2,57,0,5146,'teaser',0,1135,33,1133,1498647955,1,1134),(120,2,57,0,5147,'teaser',0,1136,34,1134,1498647955,1,1135),(120,2,57,0,5148,'teaser',0,1110,35,1135,1498647955,1,1136),(120,2,57,0,5149,'teaser',0,1137,36,1136,1498647955,1,1110),(120,2,57,0,5150,'teaser',0,1138,37,1110,1498647955,1,1137),(120,2,57,0,5151,'teaser',0,1088,38,1137,1498647955,1,1138),(120,2,57,0,5152,'teaser',0,1139,39,1138,1498647955,1,1088),(120,2,57,0,5153,'teaser',0,1140,40,1088,1498647955,1,1139),(120,2,57,0,5154,'teaser',0,1197,41,1139,1498647955,1,1140),(121,2,57,0,5155,'story',0,1241,42,1140,1498647955,1,1197),(121,2,57,0,5156,'story',0,1242,43,1197,1498647955,1,1241),(121,2,57,0,5157,'story',0,1209,44,1241,1498647955,1,1242),(121,2,57,0,5158,'story',0,1243,45,1242,1498647955,1,1209),(121,2,57,0,5159,'story',0,1244,46,1209,1498647955,1,1243),(121,2,57,0,5160,'story',0,1118,47,1243,1498647955,1,1244),(121,2,57,0,5161,'story',0,1110,48,1244,1498647955,1,1118),(121,2,57,0,5162,'story',0,1245,49,1118,1498647955,1,1110),(121,2,57,0,5163,'story',0,1246,50,1110,1498647955,1,1245),(121,2,57,0,5164,'story',0,1090,51,1245,1498647955,1,1246),(121,2,57,0,5165,'story',0,1091,52,1246,1498647955,1,1090),(121,2,57,0,5166,'story',0,1247,53,1090,1498647955,1,1091),(121,2,57,0,5167,'story',0,1248,54,1091,1498647955,1,1247),(121,2,57,0,5168,'story',0,1119,55,1247,1498647955,1,1248),(121,2,57,0,5169,'story',0,1249,56,1248,1498647955,1,1119),(121,2,57,0,5170,'story',0,1216,57,1119,1498647955,1,1249),(121,2,57,0,5171,'story',0,1147,58,1249,1498647955,1,1216),(121,2,57,0,5172,'story',0,1250,59,1216,1498647955,1,1147),(121,2,57,0,5173,'story',0,1113,60,1147,1498647955,1,1250),(121,2,57,0,5174,'story',0,1105,61,1250,1498647955,1,1113),(121,2,57,0,5175,'story',0,1251,62,1113,1498647955,1,1105),(121,2,57,0,5176,'story',0,1124,63,1105,1498647955,1,1251),(121,2,57,0,5177,'story',0,1076,64,1251,1498647955,1,1124),(121,2,57,0,5178,'story',0,1252,65,1124,1498647955,1,1076),(121,2,57,0,5179,'story',0,1253,66,1076,1498647955,1,1252),(121,2,57,0,5180,'story',0,1115,67,1252,1498647955,1,1253),(121,2,57,0,5181,'story',0,1116,68,1253,1498647955,1,1115),(121,2,57,0,5182,'story',0,1137,69,1115,1498647955,1,1116),(121,2,57,0,5183,'story',0,1138,70,1116,1498647955,1,1137),(121,2,57,0,5184,'story',0,1254,71,1137,1498647955,1,1138),(121,2,57,0,5185,'story',0,1255,72,1138,1498647955,1,1254),(121,2,57,0,5186,'story',0,1256,73,1254,1498647955,1,1255),(121,2,57,0,5187,'story',0,992,74,1255,1498647955,1,1256),(121,2,57,0,5188,'story',0,1129,75,1256,1498647955,1,992),(121,2,57,0,5189,'story',0,1130,76,992,1498647955,1,1129),(121,2,57,0,5190,'story',0,1131,77,1129,1498647955,1,1130),(121,2,57,0,5191,'story',0,1132,78,1130,1498647955,1,1131),(121,2,57,0,5192,'story',0,985,79,1131,1498647955,1,1132),(121,2,57,0,5193,'story',0,1133,80,1132,1498647955,1,985),(121,2,57,0,5194,'story',0,1257,81,985,1498647955,1,1133),(121,2,57,0,5195,'story',0,1258,82,1133,1498647955,1,1257),(121,2,57,0,5196,'story',0,1259,83,1257,1498647955,1,1258),(121,2,57,0,5197,'story',0,1260,84,1258,1498647955,1,1259),(121,2,57,0,5198,'story',0,1261,85,1259,1498647955,1,1260),(121,2,57,0,5199,'story',0,1262,86,1260,1498647955,1,1261),(121,2,57,0,5200,'story',0,1100,87,1261,1498647955,1,1262),(121,2,57,0,5201,'story',0,1263,88,1262,1498647955,1,1100),(121,2,57,0,5202,'story',0,1264,89,1100,1498647955,1,1263),(121,2,57,0,5203,'story',0,1265,90,1263,1498647955,1,1264),(121,2,57,0,5204,'story',0,1266,91,1264,1498647955,1,1265),(121,2,57,0,5205,'story',0,1083,92,1265,1498647955,1,1266),(121,2,57,0,5206,'story',0,1267,93,1266,1498647955,1,1083),(121,2,57,0,5207,'story',0,1139,94,1083,1498647955,1,1267),(121,2,57,0,5208,'story',0,1268,95,1267,1498647955,1,1139),(121,2,57,0,5209,'story',0,1269,96,1139,1498647955,1,1268),(121,2,57,0,5210,'story',0,1270,97,1268,1498647955,1,1269),(121,2,57,0,5211,'story',0,1271,98,1269,1498647955,1,1270),(121,2,57,0,5212,'story',0,1079,99,1270,1498647955,1,1271),(121,2,57,0,5213,'story',0,992,100,1271,1498647955,1,1079),(121,2,57,0,5214,'story',0,1129,101,1079,1498647955,1,992),(121,2,57,0,5215,'story',0,1130,102,992,1498647955,1,1129),(121,2,57,0,5216,'story',0,1131,103,1129,1498647955,1,1130),(121,2,57,0,5217,'story',0,1132,104,1130,1498647955,1,1131),(121,2,57,0,5218,'story',0,985,105,1131,1498647955,1,1132),(121,2,57,0,5219,'story',0,1133,106,1132,1498647955,1,985),(121,2,57,0,5220,'story',0,1113,107,985,1498647955,1,1133),(121,2,57,0,5221,'story',0,1244,108,1133,1498647955,1,1113),(121,2,57,0,5222,'story',0,1272,109,1113,1498647955,1,1244),(121,2,57,0,5223,'story',0,1165,110,1244,1498647955,1,1272),(121,2,57,0,5224,'story',0,1161,111,1272,1498647955,1,1165),(121,2,57,0,5225,'story',0,1268,112,1165,1498647955,1,1161),(121,2,57,0,5226,'story',0,1273,113,1161,1498647955,1,1268),(121,2,57,0,5227,'story',0,1274,114,1268,1498647955,1,1273),(121,2,57,0,5228,'story',0,1088,115,1273,1498647955,1,1274),(121,2,57,0,5229,'story',0,1190,116,1274,1498647955,1,1088),(121,2,57,0,5230,'story',0,1275,117,1088,1498647955,1,1190),(121,2,57,0,5231,'story',0,1276,118,1190,1498647955,1,1275),(121,2,57,0,5232,'story',0,1202,119,1275,1498647955,1,1276),(121,2,57,0,5233,'story',0,1203,120,1276,1498647955,1,1202),(121,2,57,0,5234,'story',0,1193,121,1202,1498647955,1,1203),(121,2,57,0,5235,'story',0,1277,122,1203,1498647955,1,1193),(121,2,57,0,5236,'story',0,1256,123,1193,1498647955,1,1277),(121,2,57,0,5237,'story',0,1278,124,1277,1498647955,1,1256),(121,2,57,0,5238,'story',0,1093,125,1256,1498647955,1,1278),(121,2,57,0,5239,'story',0,1279,126,1278,1498647955,1,1093),(121,2,57,0,5240,'story',0,1168,127,1093,1498647955,1,1279),(121,2,57,0,5241,'story',0,1169,128,1279,1498647955,1,1168),(121,2,57,0,5242,'story',0,1206,129,1168,1498647955,1,1169),(121,2,57,0,5243,'story',0,1137,130,1169,1498647955,1,1206),(121,2,57,0,5244,'story',0,1138,131,1206,1498647955,1,1137),(121,2,57,0,5245,'story',0,1101,132,1137,1498647955,1,1138),(121,2,57,0,5246,'story',0,1101,133,1138,1498647955,1,1101),(121,2,57,0,5247,'story',0,1280,134,1101,1498647955,1,1101),(121,2,57,0,5248,'story',0,1281,135,1101,1498647955,1,1280),(121,2,57,0,5249,'story',0,1282,136,1280,1498647955,1,1281),(121,2,57,0,5250,'story',0,1159,137,1281,1498647955,1,1282),(121,2,57,0,5251,'story',0,982,138,1282,1498647955,1,1159),(121,2,57,0,5252,'story',0,1160,139,1159,1498647955,1,982),(121,2,57,0,5253,'story',0,1048,140,982,1498647955,1,1160),(121,2,57,0,5254,'story',0,980,141,1160,1498647955,1,1048),(121,2,57,0,5255,'story',0,1079,142,1048,1498647955,1,980),(121,2,57,0,5256,'story',0,1283,143,980,1498647955,1,1079),(121,2,57,0,5257,'story',0,1145,144,1079,1498647955,1,1283),(121,2,57,0,5258,'story',0,1179,145,1283,1498647955,1,1145),(121,2,57,0,5259,'story',0,1180,146,1145,1498647955,1,1179),(121,2,57,0,5260,'story',0,1181,147,1179,1498647955,1,1180),(121,2,57,0,5261,'story',0,1026,148,1180,1498647955,1,1181),(121,2,57,0,5262,'story',0,1284,149,1181,1498647955,1,1026),(121,2,57,0,5263,'story',0,1285,150,1026,1498647955,1,1284),(181,2,57,0,5264,'category',0,0,151,1284,1498647955,1,1285),(1,2,52,0,5265,'title',0,1050,0,0,1498647640,1,1072),(1,2,52,0,5266,'title',0,1073,1,1072,1498647640,1,1050),(1,2,52,0,5267,'title',0,1072,2,1050,1498647640,1,1073),(152,2,52,0,5268,'short_title',0,1050,3,1073,1498647640,1,1072),(152,2,52,0,5269,'short_title',0,1073,4,1072,1498647640,1,1050),(152,2,52,0,5270,'short_title',0,1286,5,1050,1498647640,1,1073),(120,2,52,0,5271,'teaser',0,1287,6,1073,1498647640,1,1286),(120,2,52,0,5272,'teaser',0,1076,7,1286,1498647640,1,1287),(120,2,52,0,5273,'teaser',0,1288,8,1287,1498647640,1,1076),(120,2,52,0,5274,'teaser',0,1289,9,1076,1498647640,1,1288),(120,2,52,0,5275,'teaser',0,1079,10,1288,1498647640,1,1289),(120,2,52,0,5276,'teaser',0,1290,11,1289,1498647640,1,1079),(120,2,52,0,5277,'teaser',0,1291,12,1079,1498647640,1,1290),(120,2,52,0,5278,'teaser',0,1292,13,1290,1498647640,1,1291),(120,2,52,0,5279,'teaser',0,1083,14,1291,1498647640,1,1292),(120,2,52,0,5280,'teaser',0,1293,15,1292,1498647640,1,1083),(120,2,52,0,5281,'teaser',0,1294,16,1083,1498647640,1,1293),(120,2,52,0,5282,'teaser',0,1295,17,1293,1498647640,1,1294),(120,2,52,0,5283,'teaser',0,1296,18,1294,1498647640,1,1295),(120,2,52,0,5284,'teaser',0,1088,19,1295,1498647640,1,1296),(120,2,52,0,5285,'teaser',0,1297,20,1296,1498647640,1,1088),(120,2,52,0,5286,'teaser',0,1090,21,1088,1498647640,1,1297),(120,2,52,0,5287,'teaser',0,1091,22,1297,1498647640,1,1090),(120,2,52,0,5288,'teaser',0,1092,23,1090,1498647640,1,1091),(120,2,52,0,5289,'teaser',0,1093,24,1091,1498647640,1,1092),(120,2,52,0,5290,'teaser',0,1298,25,1092,1498647640,1,1093),(120,2,52,0,5291,'teaser',0,1299,26,1093,1498647640,1,1298),(120,2,52,0,5292,'teaser',0,1300,27,1298,1498647640,1,1299),(120,2,52,0,5293,'teaser',0,1301,28,1299,1498647640,1,1300),(120,2,52,0,5294,'teaser',0,1302,29,1300,1498647640,1,1301),(120,2,52,0,5295,'teaser',0,1303,30,1301,1498647640,1,1302),(120,2,52,0,5296,'teaser',0,1100,31,1302,1498647640,1,1303),(120,2,52,0,5297,'teaser',0,1101,32,1303,1498647640,1,1100),(120,2,52,0,5298,'teaser',0,1101,33,1100,1498647640,1,1101),(120,2,52,0,5299,'teaser',0,1304,34,1101,1498647640,1,1101),(120,2,52,0,5300,'teaser',0,1103,35,1101,1498647640,1,1304),(120,2,52,0,5301,'teaser',0,1305,36,1304,1498647640,1,1103),(120,2,52,0,5302,'teaser',0,1105,37,1103,1498647640,1,1305),(120,2,52,0,5303,'teaser',0,1306,38,1305,1498647640,1,1105),(120,2,52,0,5304,'teaser',0,1307,39,1105,1498647640,1,1306),(120,2,52,0,5305,'teaser',0,1308,40,1306,1498647640,1,1307),(120,2,52,0,5306,'teaser',0,1309,41,1307,1498647640,1,1308),(120,2,52,0,5307,'teaser',0,1110,42,1308,1498647640,1,1309),(120,2,52,0,5308,'teaser',0,1111,43,1309,1498647640,1,1110),(121,2,52,0,5309,'story',0,1092,44,1110,1498647640,1,1111),(121,2,52,0,5310,'story',0,1112,45,1111,1498647640,1,1092),(121,2,52,0,5311,'story',0,1113,46,1092,1498647640,1,1112),(121,2,52,0,5312,'story',0,1114,47,1112,1498647640,1,1113),(121,2,52,0,5313,'story',0,1115,48,1113,1498647640,1,1114),(121,2,52,0,5314,'story',0,1116,49,1114,1498647640,1,1115),(121,2,52,0,5315,'story',0,1117,50,1115,1498647640,1,1116),(121,2,52,0,5316,'story',0,1118,51,1116,1498647640,1,1117),(121,2,52,0,5317,'story',0,1119,52,1117,1498647640,1,1118),(121,2,52,0,5318,'story',0,1120,53,1118,1498647640,1,1119),(121,2,52,0,5319,'story',0,1121,54,1119,1498647640,1,1120),(121,2,52,0,5320,'story',0,1122,55,1120,1498647640,1,1121),(121,2,52,0,5321,'story',0,1123,56,1121,1498647640,1,1122),(121,2,52,0,5322,'story',0,1124,57,1122,1498647640,1,1123),(121,2,52,0,5323,'story',0,1125,58,1123,1498647640,1,1124),(121,2,52,0,5324,'story',0,1126,59,1124,1498647640,1,1125),(121,2,52,0,5325,'story',0,1127,60,1125,1498647640,1,1126),(121,2,52,0,5326,'story',0,1128,61,1126,1498647640,1,1127),(121,2,52,0,5327,'story',0,1103,62,1127,1498647640,1,1128),(121,2,52,0,5328,'story',0,992,63,1128,1498647640,1,1103),(121,2,52,0,5329,'story',0,1129,64,1103,1498647640,1,992),(121,2,52,0,5330,'story',0,1130,65,992,1498647640,1,1129),(121,2,52,0,5331,'story',0,1131,66,1129,1498647640,1,1130),(121,2,52,0,5332,'story',0,1132,67,1130,1498647640,1,1131),(121,2,52,0,5333,'story',0,985,68,1131,1498647640,1,1132),(121,2,52,0,5334,'story',0,1133,69,1132,1498647640,1,985),(121,2,52,0,5335,'story',0,1134,70,985,1498647640,1,1133),(121,2,52,0,5336,'story',0,1135,71,1133,1498647640,1,1134),(121,2,52,0,5337,'story',0,1136,72,1134,1498647640,1,1135),(121,2,52,0,5338,'story',0,1110,73,1135,1498647640,1,1136),(121,2,52,0,5339,'story',0,1137,74,1136,1498647640,1,1110),(121,2,52,0,5340,'story',0,1138,75,1110,1498647640,1,1137),(121,2,52,0,5341,'story',0,1088,76,1137,1498647640,1,1138),(121,2,52,0,5342,'story',0,1139,77,1138,1498647640,1,1088),(121,2,52,0,5343,'story',0,1140,78,1088,1498647640,1,1139),(121,2,52,0,5344,'story',0,1310,79,1139,1498647640,1,1140),(121,2,52,0,5345,'story',0,1113,80,1140,1498647640,1,1310),(121,2,52,0,5346,'story',0,1311,81,1310,1498647640,1,1113),(121,2,52,0,5347,'story',0,1312,82,1113,1498647640,1,1311),(121,2,52,0,5348,'story',0,1115,83,1311,1498647640,1,1312),(121,2,52,0,5349,'story',0,1313,84,1312,1498647640,1,1115),(121,2,52,0,5350,'story',0,1145,85,1115,1498647640,1,1313),(121,2,52,0,5351,'story',0,1314,86,1313,1498647640,1,1145),(121,2,52,0,5352,'story',0,1147,87,1145,1498647640,1,1314),(121,2,52,0,5353,'story',0,1076,88,1314,1498647640,1,1147),(121,2,52,0,5354,'story',0,1103,89,1147,1498647640,1,1076),(121,2,52,0,5355,'story',0,1088,90,1076,1498647640,1,1103),(121,2,52,0,5356,'story',0,1315,91,1103,1498647640,1,1088),(121,2,52,0,5357,'story',0,1316,92,1088,1498647640,1,1315),(121,2,52,0,5358,'story',0,1317,93,1315,1498647640,1,1316),(121,2,52,0,5359,'story',0,1318,94,1316,1498647640,1,1317),(121,2,52,0,5360,'story',0,1319,95,1317,1498647640,1,1318),(121,2,52,0,5361,'story',0,1320,96,1318,1498647640,1,1319),(121,2,52,0,5362,'story',0,1321,97,1319,1498647640,1,1320),(121,2,52,0,5363,'story',0,1322,98,1320,1498647640,1,1321),(121,2,52,0,5364,'story',0,1323,99,1321,1498647640,1,1322),(121,2,52,0,5365,'story',0,1324,100,1322,1498647640,1,1323),(121,2,52,0,5366,'story',0,1302,101,1323,1498647640,1,1324),(121,2,52,0,5367,'story',0,1325,102,1324,1498647640,1,1302),(121,2,52,0,5368,'story',0,1159,103,1302,1498647640,1,1325),(121,2,52,0,5369,'story',0,982,104,1325,1498647640,1,1159),(121,2,52,0,5370,'story',0,1160,105,1159,1498647640,1,982),(121,2,52,0,5371,'story',0,1048,106,982,1498647640,1,1160),(121,2,52,0,5372,'story',0,980,107,1160,1498647640,1,1048),(121,2,52,0,5373,'story',0,1161,108,1048,1498647640,1,980),(121,2,52,0,5374,'story',0,1326,109,980,1498647640,1,1161),(121,2,52,0,5375,'story',0,1298,110,1161,1498647640,1,1326),(121,2,52,0,5376,'story',0,1299,111,1326,1498647640,1,1298),(121,2,52,0,5377,'story',0,1327,112,1298,1498647640,1,1299),(121,2,52,0,5378,'story',0,1328,113,1299,1498647640,1,1327),(121,2,52,0,5379,'story',0,1165,114,1327,1498647640,1,1328),(121,2,52,0,5380,'story',0,1329,115,1328,1498647640,1,1165),(121,2,52,0,5381,'story',0,1330,116,1165,1498647640,1,1329),(121,2,52,0,5382,'story',0,1168,117,1329,1498647640,1,1330),(121,2,52,0,5383,'story',0,1169,118,1330,1498647640,1,1168),(121,2,52,0,5384,'story',0,1331,119,1168,1498647640,1,1169),(121,2,52,0,5385,'story',0,1332,120,1169,1498647640,1,1331),(121,2,52,0,5386,'story',0,1329,121,1331,1498647640,1,1332),(121,2,52,0,5387,'story',0,1330,122,1332,1498647640,1,1329),(121,2,52,0,5388,'story',0,1313,123,1329,1498647640,1,1330),(121,2,52,0,5389,'story',0,1333,124,1330,1498647640,1,1313),(121,2,52,0,5390,'story',0,1334,125,1313,1498647640,1,1333),(121,2,52,0,5391,'story',0,1335,126,1333,1498647640,1,1334),(121,2,52,0,5392,'story',0,1336,127,1334,1498647640,1,1335),(121,2,52,0,5393,'story',0,1337,128,1335,1498647640,1,1336),(121,2,52,0,5394,'story',0,1338,129,1336,1498647640,1,1337),(121,2,52,0,5395,'story',0,1339,130,1337,1498647640,1,1338),(121,2,52,0,5396,'story',0,1179,131,1338,1498647640,1,1339),(121,2,52,0,5397,'story',0,1180,132,1339,1498647640,1,1179),(121,2,52,0,5398,'story',0,1181,133,1179,1498647640,1,1180),(121,2,52,0,5399,'story',0,1026,134,1180,1498647640,1,1181),(121,2,52,0,5400,'story',0,1340,135,1181,1498647640,1,1026),(121,2,52,0,5401,'story',0,1341,136,1026,1498647640,1,1340),(121,2,52,0,5402,'story',0,1342,137,1340,1498647640,1,1341),(121,2,52,0,5403,'story',0,1124,138,1341,1498647640,1,1342),(121,2,52,0,5404,'story',0,1343,139,1342,1498647640,1,1124),(121,2,52,0,5405,'story',0,970,140,1124,1498647640,1,1343),(121,2,52,0,5406,'story',0,1344,141,1343,1498647640,1,970),(121,2,52,0,5407,'story',0,1120,142,970,1498647640,1,1344),(121,2,52,0,5408,'story',0,1345,143,1344,1498647640,1,1120),(121,2,52,0,5409,'story',0,1346,144,1120,1498647640,1,1345),(121,2,52,0,5410,'story',0,1287,145,1345,1498647640,1,1346),(121,2,52,0,5411,'story',0,1292,146,1346,1498647640,1,1287),(121,2,52,0,5412,'story',0,1326,147,1287,1498647640,1,1292),(121,2,52,0,5413,'story',0,1347,148,1292,1498647640,1,1326),(121,2,52,0,5414,'story',0,1327,149,1326,1498647640,1,1347),(121,2,52,0,5415,'story',0,1340,150,1347,1498647640,1,1327),(121,2,52,0,5416,'story',0,1341,151,1327,1498647640,1,1340),(121,2,52,0,5417,'story',0,1190,152,1340,1498647640,1,1341),(121,2,52,0,5418,'story',0,1090,153,1341,1498647640,1,1190),(121,2,52,0,5419,'story',0,1091,154,1190,1498647640,1,1090),(121,2,52,0,5420,'story',0,1348,155,1090,1498647640,1,1091),(121,2,52,0,5421,'story',0,1349,156,1091,1498647640,1,1348),(121,2,52,0,5422,'story',0,1333,157,1348,1498647640,1,1349),(121,2,52,0,5423,'story',0,1334,158,1349,1498647640,1,1333),(121,2,52,0,5424,'story',0,1319,159,1333,1498647640,1,1334),(121,2,52,0,5425,'story',0,1193,160,1334,1498647640,1,1319),(121,2,52,0,5426,'story',0,1350,161,1319,1498647640,1,1193),(121,2,52,0,5427,'story',0,1338,162,1193,1498647640,1,1350),(121,2,52,0,5428,'story',0,1339,163,1350,1498647640,1,1338),(121,2,52,0,5429,'story',0,1336,164,1338,1498647640,1,1339),(121,2,52,0,5430,'story',0,1337,165,1339,1498647640,1,1336),(121,2,52,0,5431,'story',0,1351,166,1336,1498647640,1,1337),(121,2,52,0,5432,'story',0,1352,167,1337,1498647640,1,1351),(121,2,52,0,5433,'story',0,1197,168,1351,1498647640,1,1352),(121,2,52,0,5434,'story',0,1304,169,1352,1498647640,1,1197),(121,2,52,0,5435,'story',0,1353,170,1197,1498647640,1,1304),(121,2,52,0,5436,'story',0,1300,171,1304,1498647640,1,1353),(121,2,52,0,5437,'story',0,1354,172,1353,1498647640,1,1300),(121,2,52,0,5438,'story',0,1355,173,1300,1498647640,1,1354),(121,2,52,0,5439,'story',0,1356,174,1354,1498647640,1,1355),(121,2,52,0,5440,'story',0,1202,175,1355,1498647640,1,1356),(121,2,52,0,5441,'story',0,1203,176,1356,1498647640,1,1202),(121,2,52,0,5442,'story',0,1357,177,1202,1498647640,1,1203),(121,2,52,0,5443,'story',0,1358,178,1203,1498647640,1,1357),(121,2,52,0,5444,'story',0,1206,179,1357,1498647640,1,1358),(121,2,52,0,5445,'story',0,1090,180,1358,1498647640,1,1206),(121,2,52,0,5446,'story',0,1091,181,1206,1498647640,1,1090),(121,2,52,0,5447,'story',0,1359,182,1090,1498647640,1,1091),(121,2,52,0,5448,'story',0,1360,183,1091,1498647640,1,1359),(121,2,52,0,5449,'story',0,1209,184,1359,1498647640,1,1360),(121,2,52,0,5450,'story',0,1361,185,1360,1498647640,1,1209),(121,2,52,0,5451,'story',0,1362,186,1209,1498647640,1,1361),(121,2,52,0,5452,'story',0,1300,187,1361,1498647640,1,1362),(121,2,52,0,5453,'story',0,1363,188,1362,1498647640,1,1300),(121,2,52,0,5454,'story',0,1364,189,1300,1498647640,1,1363),(121,2,52,0,5455,'story',0,1365,190,1363,1498647640,1,1364),(121,2,52,0,5456,'story',0,1366,191,1364,1498647640,1,1365),(121,2,52,0,5457,'story',0,1216,192,1365,1498647640,1,1366),(121,2,52,0,5458,'story',0,1367,193,1366,1498647640,1,1216),(121,2,52,0,5459,'story',0,1368,194,1216,1498647640,1,1367),(121,2,52,0,5460,'story',0,1369,195,1367,1498647640,1,1368),(121,2,52,0,5461,'story',0,1370,196,1368,1498647640,1,1369),(121,2,52,0,5462,'story',0,1361,197,1369,1498647640,1,1370),(121,2,52,0,5463,'story',0,1287,198,1370,1498647640,1,1361),(121,2,52,0,5464,'story',0,1120,199,1361,1498647640,1,1287),(121,2,52,0,5465,'story',0,1371,200,1287,1498647640,1,1120),(121,2,52,0,5466,'story',0,1372,201,1120,1498647640,1,1371),(121,2,52,0,5467,'story',0,1373,202,1371,1498647640,1,1372),(121,2,52,0,5468,'story',0,1355,203,1372,1498647640,1,1373),(121,2,52,0,5469,'story',0,1356,204,1373,1498647640,1,1355),(121,2,52,0,5470,'story',0,1328,205,1355,1498647640,1,1356),(121,2,52,0,5471,'story',0,1083,206,1356,1498647640,1,1328),(121,2,52,0,5472,'story',0,1334,207,1328,1498647640,1,1083),(121,2,52,0,5473,'story',0,1374,208,1083,1498647640,1,1334),(181,2,52,0,5474,'category',0,0,209,1334,1498647640,1,1374),(1,2,58,0,5475,'title',0,1050,0,0,1498739286,1,1072),(1,2,58,0,5476,'title',0,1289,1,1072,1498739286,1,1050),(1,2,58,0,5477,'title',0,1072,2,1050,1498739286,1,1289),(152,2,58,0,5478,'short_title',0,1050,3,1289,1498739286,1,1072),(152,2,58,0,5479,'short_title',0,1289,4,1072,1498739286,1,1050),(152,2,58,0,5480,'short_title',0,1197,5,1050,1498739286,1,1289),(120,2,58,0,5481,'teaser',0,1241,6,1289,1498739286,1,1197),(120,2,58,0,5482,'teaser',0,1242,7,1197,1498739286,1,1241),(120,2,58,0,5483,'teaser',0,1209,8,1241,1498739286,1,1242),(120,2,58,0,5484,'teaser',0,1243,9,1242,1498739286,1,1209),(120,2,58,0,5485,'teaser',0,1244,10,1209,1498739286,1,1243),(120,2,58,0,5486,'teaser',0,1118,11,1243,1498739286,1,1244),(120,2,58,0,5487,'teaser',0,1110,12,1244,1498739286,1,1118),(120,2,58,0,5488,'teaser',0,1245,13,1118,1498739286,1,1110),(120,2,58,0,5489,'teaser',0,1246,14,1110,1498739286,1,1245),(120,2,58,0,5490,'teaser',0,1090,15,1245,1498739286,1,1246),(120,2,58,0,5491,'teaser',0,1091,16,1246,1498739286,1,1090),(120,2,58,0,5492,'teaser',0,1247,17,1090,1498739286,1,1091),(120,2,58,0,5493,'teaser',0,1248,18,1091,1498739286,1,1247),(120,2,58,0,5494,'teaser',0,1119,19,1247,1498739286,1,1248),(120,2,58,0,5495,'teaser',0,1249,20,1248,1498739286,1,1119),(120,2,58,0,5496,'teaser',0,1216,21,1119,1498739286,1,1249),(120,2,58,0,5497,'teaser',0,1147,22,1249,1498739286,1,1216),(120,2,58,0,5498,'teaser',0,1250,23,1216,1498739286,1,1147),(120,2,58,0,5499,'teaser',0,1113,24,1147,1498739286,1,1250),(120,2,58,0,5500,'teaser',0,1105,25,1250,1498739286,1,1113),(120,2,58,0,5501,'teaser',0,1251,26,1113,1498739286,1,1105),(120,2,58,0,5502,'teaser',0,1124,27,1105,1498739286,1,1251),(120,2,58,0,5503,'teaser',0,1197,28,1251,1498739286,1,1124),(121,2,58,0,5504,'story',0,1241,29,1124,1498739286,1,1197),(121,2,58,0,5505,'story',0,1242,30,1197,1498739286,1,1241),(121,2,58,0,5506,'story',0,1209,31,1241,1498739286,1,1242),(121,2,58,0,5507,'story',0,1243,32,1242,1498739286,1,1209),(121,2,58,0,5508,'story',0,1244,33,1209,1498739286,1,1243),(121,2,58,0,5509,'story',0,1118,34,1243,1498739286,1,1244),(121,2,58,0,5510,'story',0,1110,35,1244,1498739286,1,1118),(121,2,58,0,5511,'story',0,1245,36,1118,1498739286,1,1110),(121,2,58,0,5512,'story',0,1246,37,1110,1498739286,1,1245),(121,2,58,0,5513,'story',0,1090,38,1245,1498739286,1,1246),(121,2,58,0,5514,'story',0,1091,39,1246,1498739286,1,1090),(121,2,58,0,5515,'story',0,1247,40,1090,1498739286,1,1091),(121,2,58,0,5516,'story',0,1248,41,1091,1498739286,1,1247),(121,2,58,0,5517,'story',0,1119,42,1247,1498739286,1,1248),(121,2,58,0,5518,'story',0,1249,43,1248,1498739286,1,1119),(121,2,58,0,5519,'story',0,1216,44,1119,1498739286,1,1249),(121,2,58,0,5520,'story',0,1147,45,1249,1498739286,1,1216),(121,2,58,0,5521,'story',0,1250,46,1216,1498739286,1,1147),(121,2,58,0,5522,'story',0,1113,47,1147,1498739286,1,1250),(121,2,58,0,5523,'story',0,1105,48,1250,1498739286,1,1113),(121,2,58,0,5524,'story',0,1251,49,1113,1498739286,1,1105),(121,2,58,0,5525,'story',0,1124,50,1105,1498739286,1,1251),(121,2,58,0,5526,'story',0,1076,51,1251,1498739286,1,1124),(121,2,58,0,5527,'story',0,1252,52,1124,1498739286,1,1076),(121,2,58,0,5528,'story',0,1253,53,1076,1498739286,1,1252),(121,2,58,0,5529,'story',0,1115,54,1252,1498739286,1,1253),(121,2,58,0,5530,'story',0,1116,55,1253,1498739286,1,1115),(121,2,58,0,5531,'story',0,1137,56,1115,1498739286,1,1116),(121,2,58,0,5532,'story',0,1138,57,1116,1498739286,1,1137),(121,2,58,0,5533,'story',0,1254,58,1137,1498739286,1,1138),(121,2,58,0,5534,'story',0,1255,59,1138,1498739286,1,1254),(121,2,58,0,5535,'story',0,1256,60,1254,1498739286,1,1255),(121,2,58,0,5536,'story',0,992,61,1255,1498739286,1,1256),(121,2,58,0,5537,'story',0,1129,62,1256,1498739286,1,992),(121,2,58,0,5538,'story',0,1130,63,992,1498739286,1,1129),(121,2,58,0,5539,'story',0,1131,64,1129,1498739286,1,1130),(121,2,58,0,5540,'story',0,1132,65,1130,1498739286,1,1131),(121,2,58,0,5541,'story',0,985,66,1131,1498739286,1,1132),(121,2,58,0,5542,'story',0,1133,67,1132,1498739286,1,985),(121,2,58,0,5543,'story',0,1257,68,985,1498739286,1,1133),(121,2,58,0,5544,'story',0,1258,69,1133,1498739286,1,1257),(121,2,58,0,5545,'story',0,1259,70,1257,1498739286,1,1258),(121,2,58,0,5546,'story',0,1260,71,1258,1498739286,1,1259),(121,2,58,0,5547,'story',0,1261,72,1259,1498739286,1,1260),(121,2,58,0,5548,'story',0,1262,73,1260,1498739286,1,1261),(121,2,58,0,5549,'story',0,1100,74,1261,1498739286,1,1262),(121,2,58,0,5550,'story',0,1263,75,1262,1498739286,1,1100),(121,2,58,0,5551,'story',0,1264,76,1100,1498739286,1,1263),(121,2,58,0,5552,'story',0,1265,77,1263,1498739286,1,1264),(121,2,58,0,5553,'story',0,1266,78,1264,1498739286,1,1265),(121,2,58,0,5554,'story',0,1083,79,1265,1498739286,1,1266),(121,2,58,0,5555,'story',0,1267,80,1266,1498739286,1,1083),(121,2,58,0,5556,'story',0,1139,81,1083,1498739286,1,1267),(121,2,58,0,5557,'story',0,1268,82,1267,1498739286,1,1139),(121,2,58,0,5558,'story',0,1269,83,1139,1498739286,1,1268),(121,2,58,0,5559,'story',0,1270,84,1268,1498739286,1,1269),(121,2,58,0,5560,'story',0,1271,85,1269,1498739286,1,1270),(121,2,58,0,5561,'story',0,1079,86,1270,1498739286,1,1271),(121,2,58,0,5562,'story',0,992,87,1271,1498739286,1,1079),(121,2,58,0,5563,'story',0,1129,88,1079,1498739286,1,992),(121,2,58,0,5564,'story',0,1130,89,992,1498739286,1,1129),(121,2,58,0,5565,'story',0,1131,90,1129,1498739286,1,1130),(121,2,58,0,5566,'story',0,1132,91,1130,1498739286,1,1131),(121,2,58,0,5567,'story',0,985,92,1131,1498739286,1,1132),(121,2,58,0,5568,'story',0,1133,93,1132,1498739286,1,985),(121,2,58,0,5569,'story',0,1113,94,985,1498739286,1,1133),(121,2,58,0,5570,'story',0,1244,95,1133,1498739286,1,1113),(121,2,58,0,5571,'story',0,1272,96,1113,1498739286,1,1244),(121,2,58,0,5572,'story',0,1165,97,1244,1498739286,1,1272),(121,2,58,0,5573,'story',0,1161,98,1272,1498739286,1,1165),(121,2,58,0,5574,'story',0,1268,99,1165,1498739286,1,1161),(121,2,58,0,5575,'story',0,1273,100,1161,1498739286,1,1268),(121,2,58,0,5576,'story',0,1274,101,1268,1498739286,1,1273),(121,2,58,0,5577,'story',0,1088,102,1273,1498739286,1,1274),(121,2,58,0,5578,'story',0,1190,103,1274,1498739286,1,1088),(121,2,58,0,5579,'story',0,1275,104,1088,1498739286,1,1190),(121,2,58,0,5580,'story',0,1276,105,1190,1498739286,1,1275),(121,2,58,0,5581,'story',0,1202,106,1275,1498739286,1,1276),(121,2,58,0,5582,'story',0,1203,107,1276,1498739286,1,1202),(121,2,58,0,5583,'story',0,1193,108,1202,1498739286,1,1203),(121,2,58,0,5584,'story',0,1277,109,1203,1498739286,1,1193),(121,2,58,0,5585,'story',0,1256,110,1193,1498739286,1,1277),(121,2,58,0,5586,'story',0,1278,111,1277,1498739286,1,1256),(121,2,58,0,5587,'story',0,1093,112,1256,1498739286,1,1278),(121,2,58,0,5588,'story',0,1279,113,1278,1498739286,1,1093),(121,2,58,0,5589,'story',0,1168,114,1093,1498739286,1,1279),(121,2,58,0,5590,'story',0,1169,115,1279,1498739286,1,1168),(121,2,58,0,5591,'story',0,1206,116,1168,1498739286,1,1169),(121,2,58,0,5592,'story',0,1137,117,1169,1498739286,1,1206),(121,2,58,0,5593,'story',0,1138,118,1206,1498739286,1,1137),(121,2,58,0,5594,'story',0,1101,119,1137,1498739286,1,1138),(121,2,58,0,5595,'story',0,1101,120,1138,1498739286,1,1101),(121,2,58,0,5596,'story',0,1280,121,1101,1498739286,1,1101),(121,2,58,0,5597,'story',0,1281,122,1101,1498739286,1,1280),(121,2,58,0,5598,'story',0,1282,123,1280,1498739286,1,1281),(121,2,58,0,5599,'story',0,1159,124,1281,1498739286,1,1282),(121,2,58,0,5600,'story',0,982,125,1282,1498739286,1,1159),(121,2,58,0,5601,'story',0,1160,126,1159,1498739286,1,982),(121,2,58,0,5602,'story',0,1048,127,982,1498739286,1,1160),(121,2,58,0,5603,'story',0,980,128,1160,1498739286,1,1048),(121,2,58,0,5604,'story',0,1079,129,1048,1498739286,1,980),(121,2,58,0,5605,'story',0,1283,130,980,1498739286,1,1079),(121,2,58,0,5606,'story',0,1145,131,1079,1498739286,1,1283),(121,2,58,0,5607,'story',0,1179,132,1283,1498739286,1,1145),(121,2,58,0,5608,'story',0,1180,133,1145,1498739286,1,1179),(121,2,58,0,5609,'story',0,1181,134,1179,1498739286,1,1180),(121,2,58,0,5610,'story',0,1026,135,1180,1498739286,1,1181),(121,2,58,0,5611,'story',0,1284,136,1181,1498739286,1,1026),(121,2,58,0,5612,'story',0,1374,137,1026,1498739286,1,1284),(181,2,58,0,5613,'category',0,0,138,1284,1498739286,1,1374),(1,2,59,0,5614,'title',0,1375,0,0,1498739462,1,1072),(1,2,59,0,5615,'title',0,1072,1,1072,1498739462,1,1375),(152,2,59,0,5616,'short_title',0,1375,2,1375,1498739462,1,1072),(152,2,59,0,5617,'short_title',0,1197,3,1072,1498739462,1,1375),(120,2,59,0,5618,'teaser',0,1241,4,1375,1498739462,1,1197),(120,2,59,0,5619,'teaser',0,1242,5,1197,1498739462,1,1241),(120,2,59,0,5620,'teaser',0,1209,6,1241,1498739462,1,1242),(120,2,59,0,5621,'teaser',0,1243,7,1242,1498739462,1,1209),(120,2,59,0,5622,'teaser',0,1244,8,1209,1498739462,1,1243),(120,2,59,0,5623,'teaser',0,1118,9,1243,1498739462,1,1244),(120,2,59,0,5624,'teaser',0,1110,10,1244,1498739462,1,1118),(120,2,59,0,5625,'teaser',0,1245,11,1118,1498739462,1,1110),(120,2,59,0,5626,'teaser',0,1246,12,1110,1498739462,1,1245),(120,2,59,0,5627,'teaser',0,1090,13,1245,1498739462,1,1246),(120,2,59,0,5628,'teaser',0,1091,14,1246,1498739462,1,1090),(120,2,59,0,5629,'teaser',0,1247,15,1090,1498739462,1,1091),(120,2,59,0,5630,'teaser',0,1248,16,1091,1498739462,1,1247),(120,2,59,0,5631,'teaser',0,1119,17,1247,1498739462,1,1248),(120,2,59,0,5632,'teaser',0,1249,18,1248,1498739462,1,1119),(120,2,59,0,5633,'teaser',0,1216,19,1119,1498739462,1,1249),(120,2,59,0,5634,'teaser',0,1197,20,1249,1498739462,1,1216),(121,2,59,0,5635,'story',0,1241,21,1216,1498739462,1,1197),(121,2,59,0,5636,'story',0,1242,22,1197,1498739462,1,1241),(121,2,59,0,5637,'story',0,1209,23,1241,1498739462,1,1242),(121,2,59,0,5638,'story',0,1243,24,1242,1498739462,1,1209),(121,2,59,0,5639,'story',0,1244,25,1209,1498739462,1,1243),(121,2,59,0,5640,'story',0,1118,26,1243,1498739462,1,1244),(121,2,59,0,5641,'story',0,1110,27,1244,1498739462,1,1118),(121,2,59,0,5642,'story',0,1245,28,1118,1498739462,1,1110),(121,2,59,0,5643,'story',0,1246,29,1110,1498739462,1,1245),(121,2,59,0,5644,'story',0,1090,30,1245,1498739462,1,1246),(121,2,59,0,5645,'story',0,1091,31,1246,1498739462,1,1090),(121,2,59,0,5646,'story',0,1247,32,1090,1498739462,1,1091),(121,2,59,0,5647,'story',0,1248,33,1091,1498739462,1,1247),(121,2,59,0,5648,'story',0,1119,34,1247,1498739462,1,1248),(121,2,59,0,5649,'story',0,1249,35,1248,1498739462,1,1119),(121,2,59,0,5650,'story',0,1216,36,1119,1498739462,1,1249),(121,2,59,0,5651,'story',0,1147,37,1249,1498739462,1,1216),(121,2,59,0,5652,'story',0,1250,38,1216,1498739462,1,1147),(121,2,59,0,5653,'story',0,1113,39,1147,1498739462,1,1250),(121,2,59,0,5654,'story',0,1105,40,1250,1498739462,1,1113),(121,2,59,0,5655,'story',0,1251,41,1113,1498739462,1,1105),(121,2,59,0,5656,'story',0,1124,42,1105,1498739462,1,1251),(121,2,59,0,5657,'story',0,1076,43,1251,1498739462,1,1124),(121,2,59,0,5658,'story',0,1252,44,1124,1498739462,1,1076),(121,2,59,0,5659,'story',0,1253,45,1076,1498739462,1,1252),(121,2,59,0,5660,'story',0,1115,46,1252,1498739462,1,1253),(121,2,59,0,5661,'story',0,1116,47,1253,1498739462,1,1115),(121,2,59,0,5662,'story',0,1137,48,1115,1498739462,1,1116),(121,2,59,0,5663,'story',0,1138,49,1116,1498739462,1,1137),(121,2,59,0,5664,'story',0,1254,50,1137,1498739462,1,1138),(121,2,59,0,5665,'story',0,1255,51,1138,1498739462,1,1254),(121,2,59,0,5666,'story',0,1256,52,1254,1498739462,1,1255),(121,2,59,0,5667,'story',0,992,53,1255,1498739462,1,1256),(121,2,59,0,5668,'story',0,1129,54,1256,1498739462,1,992),(121,2,59,0,5669,'story',0,1130,55,992,1498739462,1,1129),(121,2,59,0,5670,'story',0,1131,56,1129,1498739462,1,1130),(121,2,59,0,5671,'story',0,1132,57,1130,1498739462,1,1131),(121,2,59,0,5672,'story',0,985,58,1131,1498739462,1,1132),(121,2,59,0,5673,'story',0,1133,59,1132,1498739462,1,985),(121,2,59,0,5674,'story',0,1257,60,985,1498739462,1,1133),(121,2,59,0,5675,'story',0,1258,61,1133,1498739462,1,1257),(121,2,59,0,5676,'story',0,1259,62,1257,1498739462,1,1258),(121,2,59,0,5677,'story',0,1260,63,1258,1498739462,1,1259),(121,2,59,0,5678,'story',0,1261,64,1259,1498739462,1,1260),(121,2,59,0,5679,'story',0,1262,65,1260,1498739462,1,1261),(121,2,59,0,5680,'story',0,1100,66,1261,1498739462,1,1262),(121,2,59,0,5681,'story',0,1263,67,1262,1498739462,1,1100),(121,2,59,0,5682,'story',0,1264,68,1100,1498739462,1,1263),(121,2,59,0,5683,'story',0,1265,69,1263,1498739462,1,1264),(121,2,59,0,5684,'story',0,1266,70,1264,1498739462,1,1265),(121,2,59,0,5685,'story',0,1083,71,1265,1498739462,1,1266),(121,2,59,0,5686,'story',0,1267,72,1266,1498739462,1,1083),(121,2,59,0,5687,'story',0,1139,73,1083,1498739462,1,1267),(121,2,59,0,5688,'story',0,1268,74,1267,1498739462,1,1139),(121,2,59,0,5689,'story',0,1269,75,1139,1498739462,1,1268),(121,2,59,0,5690,'story',0,1270,76,1268,1498739462,1,1269),(121,2,59,0,5691,'story',0,1271,77,1269,1498739462,1,1270),(121,2,59,0,5692,'story',0,1079,78,1270,1498739462,1,1271),(121,2,59,0,5693,'story',0,992,79,1271,1498739462,1,1079),(121,2,59,0,5694,'story',0,1129,80,1079,1498739462,1,992),(121,2,59,0,5695,'story',0,1130,81,992,1498739462,1,1129),(121,2,59,0,5696,'story',0,1131,82,1129,1498739462,1,1130),(121,2,59,0,5697,'story',0,1132,83,1130,1498739462,1,1131),(121,2,59,0,5698,'story',0,985,84,1131,1498739462,1,1132),(121,2,59,0,5699,'story',0,1133,85,1132,1498739462,1,985),(121,2,59,0,5700,'story',0,1113,86,985,1498739462,1,1133),(121,2,59,0,5701,'story',0,1244,87,1133,1498739462,1,1113),(121,2,59,0,5702,'story',0,1272,88,1113,1498739462,1,1244),(121,2,59,0,5703,'story',0,1165,89,1244,1498739462,1,1272),(121,2,59,0,5704,'story',0,1161,90,1272,1498739462,1,1165),(121,2,59,0,5705,'story',0,1268,91,1165,1498739462,1,1161),(121,2,59,0,5706,'story',0,1273,92,1161,1498739462,1,1268),(121,2,59,0,5707,'story',0,1274,93,1268,1498739462,1,1273),(121,2,59,0,5708,'story',0,1088,94,1273,1498739462,1,1274),(121,2,59,0,5709,'story',0,1190,95,1274,1498739462,1,1088),(121,2,59,0,5710,'story',0,1275,96,1088,1498739462,1,1190),(121,2,59,0,5711,'story',0,1276,97,1190,1498739462,1,1275),(121,2,59,0,5712,'story',0,1202,98,1275,1498739462,1,1276),(121,2,59,0,5713,'story',0,1203,99,1276,1498739462,1,1202),(121,2,59,0,5714,'story',0,1193,100,1202,1498739462,1,1203),(121,2,59,0,5715,'story',0,1277,101,1203,1498739462,1,1193),(121,2,59,0,5716,'story',0,1256,102,1193,1498739462,1,1277),(121,2,59,0,5717,'story',0,1278,103,1277,1498739462,1,1256),(121,2,59,0,5718,'story',0,1093,104,1256,1498739462,1,1278),(121,2,59,0,5719,'story',0,1279,105,1278,1498739462,1,1093),(121,2,59,0,5720,'story',0,1168,106,1093,1498739462,1,1279),(121,2,59,0,5721,'story',0,1169,107,1279,1498739462,1,1168),(121,2,59,0,5722,'story',0,1206,108,1168,1498739462,1,1169),(121,2,59,0,5723,'story',0,1137,109,1169,1498739462,1,1206),(121,2,59,0,5724,'story',0,1138,110,1206,1498739462,1,1137),(121,2,59,0,5725,'story',0,1101,111,1137,1498739462,1,1138),(121,2,59,0,5726,'story',0,1101,112,1138,1498739462,1,1101),(121,2,59,0,5727,'story',0,1280,113,1101,1498739462,1,1101),(121,2,59,0,5728,'story',0,1281,114,1101,1498739462,1,1280),(121,2,59,0,5729,'story',0,1282,115,1280,1498739462,1,1281),(121,2,59,0,5730,'story',0,1159,116,1281,1498739462,1,1282),(121,2,59,0,5731,'story',0,982,117,1282,1498739462,1,1159),(121,2,59,0,5732,'story',0,1160,118,1159,1498739462,1,982),(121,2,59,0,5733,'story',0,1048,119,982,1498739462,1,1160),(121,2,59,0,5734,'story',0,980,120,1160,1498739462,1,1048),(121,2,59,0,5735,'story',0,1079,121,1048,1498739462,1,980),(121,2,59,0,5736,'story',0,1283,122,980,1498739462,1,1079),(121,2,59,0,5737,'story',0,1145,123,1079,1498739462,1,1283),(121,2,59,0,5738,'story',0,1179,124,1283,1498739462,1,1145),(121,2,59,0,5739,'story',0,1180,125,1145,1498739462,1,1179),(121,2,59,0,5740,'story',0,1181,126,1179,1498739462,1,1180),(121,2,59,0,5741,'story',0,1026,127,1180,1498739462,1,1181),(121,2,59,0,5742,'story',0,1284,128,1181,1498739462,1,1026),(121,2,59,0,5743,'story',0,1374,129,1026,1498739462,1,1284),(181,2,59,0,5744,'category',0,0,130,1284,1498739462,1,1374),(1,2,60,0,5745,'title',0,1050,0,0,1498739575,1,1072),(1,2,60,0,5746,'title',0,1239,1,1072,1498739575,1,1050),(1,2,60,0,5747,'title',0,1072,2,1050,1498739575,1,1239),(152,2,60,0,5748,'short_title',0,1050,3,1239,1498739575,1,1072),(152,2,60,0,5749,'short_title',0,1239,4,1072,1498739575,1,1050),(152,2,60,0,5750,'short_title',0,1275,5,1050,1498739575,1,1239),(120,2,60,0,5751,'teaser',0,1276,6,1239,1498739575,1,1275),(120,2,60,0,5752,'teaser',0,1202,7,1275,1498739575,1,1276),(120,2,60,0,5753,'teaser',0,1203,8,1276,1498739575,1,1202),(120,2,60,0,5754,'teaser',0,1193,9,1202,1498739575,1,1203),(120,2,60,0,5755,'teaser',0,1277,10,1203,1498739575,1,1193),(120,2,60,0,5756,'teaser',0,1256,11,1193,1498739575,1,1277),(120,2,60,0,5757,'teaser',0,1278,12,1277,1498739575,1,1256),(120,2,60,0,5758,'teaser',0,1093,13,1256,1498739575,1,1278),(120,2,60,0,5759,'teaser',0,1279,14,1278,1498739575,1,1093),(120,2,60,0,5760,'teaser',0,1168,15,1093,1498739575,1,1279),(120,2,60,0,5761,'teaser',0,1169,16,1279,1498739575,1,1168),(120,2,60,0,5762,'teaser',0,1206,17,1168,1498739575,1,1169),(120,2,60,0,5763,'teaser',0,1197,18,1169,1498739575,1,1206),(121,2,60,0,5764,'story',0,1241,19,1206,1498739575,1,1197),(121,2,60,0,5765,'story',0,1242,20,1197,1498739575,1,1241),(121,2,60,0,5766,'story',0,1209,21,1241,1498739575,1,1242),(121,2,60,0,5767,'story',0,1243,22,1242,1498739575,1,1209),(121,2,60,0,5768,'story',0,1244,23,1209,1498739575,1,1243),(121,2,60,0,5769,'story',0,1118,24,1243,1498739575,1,1244),(121,2,60,0,5770,'story',0,1110,25,1244,1498739575,1,1118),(121,2,60,0,5771,'story',0,1245,26,1118,1498739575,1,1110),(121,2,60,0,5772,'story',0,1246,27,1110,1498739575,1,1245),(121,2,60,0,5773,'story',0,1090,28,1245,1498739575,1,1246),(121,2,60,0,5774,'story',0,1091,29,1246,1498739575,1,1090),(121,2,60,0,5775,'story',0,1247,30,1090,1498739575,1,1091),(121,2,60,0,5776,'story',0,1248,31,1091,1498739575,1,1247),(121,2,60,0,5777,'story',0,1119,32,1247,1498739575,1,1248),(121,2,60,0,5778,'story',0,1249,33,1248,1498739575,1,1119),(121,2,60,0,5779,'story',0,1216,34,1119,1498739575,1,1249),(121,2,60,0,5780,'story',0,1147,35,1249,1498739575,1,1216),(121,2,60,0,5781,'story',0,1250,36,1216,1498739575,1,1147),(121,2,60,0,5782,'story',0,1113,37,1147,1498739575,1,1250),(121,2,60,0,5783,'story',0,1105,38,1250,1498739575,1,1113),(121,2,60,0,5784,'story',0,1251,39,1113,1498739575,1,1105),(121,2,60,0,5785,'story',0,1124,40,1105,1498739575,1,1251),(121,2,60,0,5786,'story',0,1076,41,1251,1498739575,1,1124),(121,2,60,0,5787,'story',0,1252,42,1124,1498739575,1,1076),(121,2,60,0,5788,'story',0,1253,43,1076,1498739575,1,1252),(121,2,60,0,5789,'story',0,1115,44,1252,1498739575,1,1253),(121,2,60,0,5790,'story',0,1116,45,1253,1498739575,1,1115),(121,2,60,0,5791,'story',0,1137,46,1115,1498739575,1,1116),(121,2,60,0,5792,'story',0,1138,47,1116,1498739575,1,1137),(121,2,60,0,5793,'story',0,1254,48,1137,1498739575,1,1138),(121,2,60,0,5794,'story',0,1255,49,1138,1498739575,1,1254),(121,2,60,0,5795,'story',0,1256,50,1254,1498739575,1,1255),(121,2,60,0,5796,'story',0,992,51,1255,1498739575,1,1256),(121,2,60,0,5797,'story',0,1129,52,1256,1498739575,1,992),(121,2,60,0,5798,'story',0,1130,53,992,1498739575,1,1129),(121,2,60,0,5799,'story',0,1131,54,1129,1498739575,1,1130),(121,2,60,0,5800,'story',0,1132,55,1130,1498739575,1,1131),(121,2,60,0,5801,'story',0,985,56,1131,1498739575,1,1132),(121,2,60,0,5802,'story',0,1133,57,1132,1498739575,1,985),(121,2,60,0,5803,'story',0,1257,58,985,1498739575,1,1133),(121,2,60,0,5804,'story',0,1258,59,1133,1498739575,1,1257),(121,2,60,0,5805,'story',0,1259,60,1257,1498739575,1,1258),(121,2,60,0,5806,'story',0,1260,61,1258,1498739575,1,1259),(121,2,60,0,5807,'story',0,1261,62,1259,1498739575,1,1260),(121,2,60,0,5808,'story',0,1262,63,1260,1498739575,1,1261),(121,2,60,0,5809,'story',0,1100,64,1261,1498739575,1,1262),(121,2,60,0,5810,'story',0,1263,65,1262,1498739575,1,1100),(121,2,60,0,5811,'story',0,1264,66,1100,1498739575,1,1263),(121,2,60,0,5812,'story',0,1265,67,1263,1498739575,1,1264),(121,2,60,0,5813,'story',0,1266,68,1264,1498739575,1,1265),(121,2,60,0,5814,'story',0,1083,69,1265,1498739575,1,1266),(121,2,60,0,5815,'story',0,1267,70,1266,1498739575,1,1083),(121,2,60,0,5816,'story',0,1139,71,1083,1498739575,1,1267),(121,2,60,0,5817,'story',0,1268,72,1267,1498739575,1,1139),(121,2,60,0,5818,'story',0,1269,73,1139,1498739575,1,1268),(121,2,60,0,5819,'story',0,1270,74,1268,1498739575,1,1269),(121,2,60,0,5820,'story',0,1271,75,1269,1498739575,1,1270),(121,2,60,0,5821,'story',0,1079,76,1270,1498739575,1,1271),(121,2,60,0,5822,'story',0,992,77,1271,1498739575,1,1079),(121,2,60,0,5823,'story',0,1129,78,1079,1498739575,1,992),(121,2,60,0,5824,'story',0,1130,79,992,1498739575,1,1129),(121,2,60,0,5825,'story',0,1131,80,1129,1498739575,1,1130),(121,2,60,0,5826,'story',0,1132,81,1130,1498739575,1,1131),(121,2,60,0,5827,'story',0,985,82,1131,1498739575,1,1132),(121,2,60,0,5828,'story',0,1133,83,1132,1498739575,1,985),(121,2,60,0,5829,'story',0,1113,84,985,1498739575,1,1133),(121,2,60,0,5830,'story',0,1244,85,1133,1498739575,1,1113),(121,2,60,0,5831,'story',0,1272,86,1113,1498739575,1,1244),(121,2,60,0,5832,'story',0,1165,87,1244,1498739575,1,1272),(121,2,60,0,5833,'story',0,1161,88,1272,1498739575,1,1165),(121,2,60,0,5834,'story',0,1268,89,1165,1498739575,1,1161),(121,2,60,0,5835,'story',0,1273,90,1161,1498739575,1,1268),(121,2,60,0,5836,'story',0,1274,91,1268,1498739575,1,1273),(121,2,60,0,5837,'story',0,1088,92,1273,1498739575,1,1274),(121,2,60,0,5838,'story',0,1190,93,1274,1498739575,1,1088),(121,2,60,0,5839,'story',0,1275,94,1088,1498739575,1,1190),(121,2,60,0,5840,'story',0,1276,95,1190,1498739575,1,1275),(121,2,60,0,5841,'story',0,1202,96,1275,1498739575,1,1276),(121,2,60,0,5842,'story',0,1203,97,1276,1498739575,1,1202),(121,2,60,0,5843,'story',0,1193,98,1202,1498739575,1,1203),(121,2,60,0,5844,'story',0,1277,99,1203,1498739575,1,1193),(121,2,60,0,5845,'story',0,1256,100,1193,1498739575,1,1277),(121,2,60,0,5846,'story',0,1278,101,1277,1498739575,1,1256),(121,2,60,0,5847,'story',0,1093,102,1256,1498739575,1,1278),(121,2,60,0,5848,'story',0,1279,103,1278,1498739575,1,1093),(121,2,60,0,5849,'story',0,1168,104,1093,1498739575,1,1279),(121,2,60,0,5850,'story',0,1169,105,1279,1498739575,1,1168),(121,2,60,0,5851,'story',0,1206,106,1168,1498739575,1,1169),(121,2,60,0,5852,'story',0,1137,107,1169,1498739575,1,1206),(121,2,60,0,5853,'story',0,1138,108,1206,1498739575,1,1137),(121,2,60,0,5854,'story',0,1101,109,1137,1498739575,1,1138),(121,2,60,0,5855,'story',0,1101,110,1138,1498739575,1,1101),(121,2,60,0,5856,'story',0,1280,111,1101,1498739575,1,1101),(121,2,60,0,5857,'story',0,1281,112,1101,1498739575,1,1280),(121,2,60,0,5858,'story',0,1282,113,1280,1498739575,1,1281),(121,2,60,0,5859,'story',0,1159,114,1281,1498739575,1,1282),(121,2,60,0,5860,'story',0,982,115,1282,1498739575,1,1159),(121,2,60,0,5861,'story',0,1160,116,1159,1498739575,1,982),(121,2,60,0,5862,'story',0,1048,117,982,1498739575,1,1160),(121,2,60,0,5863,'story',0,980,118,1160,1498739575,1,1048),(121,2,60,0,5864,'story',0,1079,119,1048,1498739575,1,980),(121,2,60,0,5865,'story',0,1283,120,980,1498739575,1,1079),(121,2,60,0,5866,'story',0,1145,121,1079,1498739575,1,1283),(121,2,60,0,5867,'story',0,1179,122,1283,1498739575,1,1145),(121,2,60,0,5868,'story',0,1180,123,1145,1498739575,1,1179),(121,2,60,0,5869,'story',0,1181,124,1179,1498739575,1,1180),(121,2,60,0,5870,'story',0,1026,125,1180,1498739575,1,1181),(121,2,60,0,5871,'story',0,1284,126,1181,1498739575,1,1026),(121,2,60,0,5872,'story',0,1374,127,1026,1498739575,1,1284),(181,2,60,0,5873,'category',0,0,128,1284,1498739575,1,1374);
/*!40000 ALTER TABLE `ezsearch_object_word_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_return_count`
--

DROP TABLE IF EXISTS `ezsearch_return_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_return_count` (
  `count` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsearch_return_cnt_ph_id_cnt` (`phrase_id`,`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_return_count`
--

LOCK TABLES `ezsearch_return_count` WRITE;
/*!40000 ALTER TABLE `ezsearch_return_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_return_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_search_phrase`
--

DROP TABLE IF EXISTS `ezsearch_search_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_search_phrase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(250) DEFAULT NULL,
  `phrase_count` int(11) DEFAULT '0',
  `result_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezsearch_search_phrase_phrase` (`phrase`),
  KEY `ezsearch_search_phrase_count` (`phrase_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_search_phrase`
--

LOCK TABLES `ezsearch_search_phrase` WRITE;
/*!40000 ALTER TABLE `ezsearch_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_word`
--

DROP TABLE IF EXISTS `ezsearch_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_count` int(11) NOT NULL DEFAULT '0',
  `word` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezsearch_word_obj_count` (`object_count`),
  KEY `ezsearch_word_word_i` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=1376 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_word`
--

LOCK TABLES `ezsearch_word` WRITE;
/*!40000 ALTER TABLE `ezsearch_word` DISABLE KEYS */;
INSERT INTO `ezsearch_word` VALUES (969,1,'welcome'),(970,2,'to'),(971,1,'ez'),(972,1,'platform'),(973,1,'this'),(974,1,'is'),(975,2,'the'),(976,1,'clean'),(977,1,'install'),(978,1,'coming'),(979,1,'with'),(980,6,'it'),(981,1,'s'),(982,6,'a'),(983,1,'barebone'),(984,2,'setup'),(985,6,'of'),(986,1,'an'),(987,1,'excellent'),(988,1,'foundation'),(989,1,'build'),(990,1,'upon'),(991,1,'if'),(992,6,'you'),(993,1,'want'),(994,1,'from'),(995,1,'scratch'),(996,2,'for'),(997,1,'more'),(998,1,'ready'),(999,1,'go'),(1000,1,'base'),(1001,1,'designs'),(1002,1,'or'),(1003,1,'demo'),(1004,1,'sites'),(1005,1,'please'),(1006,1,'check'),(1007,1,'documentation'),(1008,1,'congratulations'),(1009,1,'just'),(1010,1,'installed'),(1011,1,'new'),(1012,1,'generation'),(1013,1,'content'),(1014,1,'management'),(1015,1,'systems'),(1016,1,'and'),(1017,1,'community'),(1018,1,'replacing'),(1019,1,'publish'),(1020,1,'our'),(1021,1,'previous'),(1022,1,'software'),(1023,1,'need'),(1024,1,'some'),(1025,1,'guidance'),(1026,6,'out'),(1027,1,'following'),(1028,1,'resources'),(1029,4,'user'),(1030,1,'manual'),(1031,1,'studio'),(1032,1,'technical'),(1033,1,'doc'),(1034,1,'stack'),(1035,1,'developer'),(1036,1,'tutorial'),(1037,1,'comparison'),(1038,1,'guide'),(1039,1,'between'),(1040,1,'contribute'),(1041,1,'project'),(1042,1,'join'),(1043,1,'github'),(1044,1,'repositories'),(1045,1,'open'),(1046,1,'public'),(1047,1,'register'),(1048,6,'on'),(1049,1,'share'),(1050,5,'no'),(1051,1,'site'),(1052,1,'access'),(1053,1,'forums'),(1054,1,'tutorials'),(1055,1,'blogs'),(1056,1,'conversation'),(1057,1,'slack'),(1058,1,'good'),(1059,1,'luck'),(1060,1,'main'),(1061,2,'group'),(1062,3,'users'),(1063,2,'anonymous'),(1064,1,'guest'),(1065,1,'accounts'),(1066,2,'administrator'),(1067,1,'editors'),(1068,1,'media'),(1069,1,'images'),(1070,1,'files'),(1071,1,'multimedia'),(1072,5,'article'),(1073,2,'1'),(1076,5,'flannel'),(1079,5,'wolf'),(1083,5,'organic'),(1088,5,'vexillologist'),(1090,5,'master'),(1091,5,'cleanse'),(1092,2,'portland'),(1093,5,'shaman'),(1100,5,'bag'),(1101,5,'pok'),(1103,2,'stumptown'),(1105,5,'neutra'),(1110,5,'locavore'),(1111,2,'typewriter'),(1112,2,'viral'),(1113,5,'squid'),(1114,2,'cardigan'),(1115,5,'art'),(1116,5,'party'),(1117,2,'hammock'),(1118,5,'asymmetrical'),(1119,5,'migas'),(1120,2,'bitters'),(1121,2,'authentic'),(1122,2,'health'),(1123,2,'goth'),(1124,5,'fixie'),(1125,2,'fam'),(1126,2,'meh'),(1127,2,'yuccie'),(1128,2,'flexitarian'),(1129,5,'probably'),(1130,5,'haven'),(1131,5,'t'),(1132,5,'heard'),(1133,5,'them'),(1134,2,'chicharrones'),(1135,2,'food'),(1136,2,'truck'),(1137,5,'palo'),(1138,5,'santo'),(1139,5,'normcore'),(1140,2,'chia'),(1145,5,'butcher'),(1147,5,'diy'),(1159,5,'put'),(1160,5,'bird'),(1161,5,'truffaut'),(1165,5,'waistcoat'),(1168,5,'try'),(1169,5,'hard'),(1179,5,'before'),(1180,5,'they'),(1181,5,'sold'),(1190,5,'kinfolk'),(1193,5,'poutine'),(1197,5,'mixtape'),(1202,5,'hot'),(1203,5,'chicken'),(1206,5,'adaptogen'),(1209,5,'pickled'),(1216,5,'venmo'),(1234,1,'19441967_1585049778212889_5857698824653208083_o'),(1235,2,'jpg'),(1236,1,'hehe'),(1237,1,'jpeg'),(1238,1,'wb01'),(1239,2,'5'),(1240,1,'2'),(1241,4,'godard'),(1242,4,'jianbing'),(1243,4,'forage'),(1244,4,'iceland'),(1245,4,'subway'),(1246,4,'tile'),(1247,4,'sustainable'),(1248,4,'ennui'),(1249,4,'etsy'),(1250,4,'kickstarter'),(1251,4,'vegan'),(1252,4,'hoodie'),(1253,4,'aesthetic'),(1254,4,'chillwave'),(1255,4,'bushwick'),(1256,4,'iphone'),(1257,4,'intelligentsia'),(1258,4,'freegan'),(1259,4,'pop'),(1260,4,'up'),(1261,4,'franzen'),(1262,4,'messenger'),(1263,4,'man'),(1264,4,'bun'),(1265,4,'green'),(1266,4,'juice'),(1267,4,'tacos'),(1268,4,'vaporware'),(1269,4,'unicorn'),(1270,4,'sartorial'),(1271,4,'vinyl'),(1272,4,'snackwave'),(1273,4,'coloring'),(1274,4,'book'),(1275,4,'seitan'),(1276,4,'pinterest'),(1277,4,'austin'),(1278,4,'kogi'),(1279,4,'kitsch'),(1280,4,'blue'),(1281,4,'bottle'),(1282,4,'ethical'),(1283,4,'banjo'),(1284,4,'p'),(1285,1,'local'),(1286,1,'tofu'),(1287,1,'hexagon'),(1288,1,'vhs'),(1289,2,'3'),(1290,1,'moon'),(1291,1,'cred'),(1292,1,'narwhal'),(1293,1,'la'),(1294,1,'croix'),(1295,1,'four'),(1296,1,'loko'),(1297,1,'lumbersexual'),(1298,1,'live'),(1299,1,'edge'),(1300,1,'keffiyeh'),(1301,1,'fingerstache'),(1302,1,'cornhole'),(1303,1,'tote'),(1304,1,'mumblecore'),(1305,1,'offal'),(1306,1,'pbr'),(1307,1,'b'),(1308,1,'listicle'),(1309,1,'kombucha'),(1310,1,'skateboard'),(1311,1,'celiac'),(1312,1,'street'),(1313,1,'mustache'),(1314,1,'marfa'),(1315,1,'irony'),(1316,1,'dreamcatcher'),(1317,1,'heirloom'),(1318,1,'cray'),(1319,1,'tumblr'),(1320,1,'selfies'),(1321,1,'fashion'),(1322,1,'axe'),(1323,1,'trust'),(1324,1,'fund'),(1325,1,'shoreditch'),(1326,1,'tousled'),(1327,1,'cliche'),(1328,1,'sriracha'),(1329,1,'everyday'),(1330,1,'carry'),(1331,1,'tattooed'),(1332,1,'actually'),(1333,1,'deep'),(1334,1,'v'),(1335,1,'affogato'),(1336,1,'pour'),(1337,1,'over'),(1338,1,'next'),(1339,1,'level'),(1340,1,'drinking'),(1341,1,'vinegar'),(1342,1,'pug'),(1343,1,'farm'),(1344,1,'table'),(1345,1,'blog'),(1346,1,'glossier'),(1347,1,'tilde'),(1348,1,'chartreuse'),(1349,1,'keytar'),(1350,1,'pabst'),(1351,1,'cold'),(1352,1,'pressed'),(1353,1,'knausgaard'),(1354,1,'polaroid'),(1355,1,'enamel'),(1356,1,'pin'),(1357,1,'kale'),(1358,1,'chips'),(1359,1,'thundercats'),(1360,1,'distillery'),(1361,1,'retro'),(1362,1,'brunch'),(1363,1,'umami'),(1364,1,'helvetica'),(1365,1,'fanny'),(1366,1,'pack'),(1367,1,'activated'),(1368,1,'charcoal'),(1369,1,'yolo'),(1370,1,'taxidermy'),(1371,1,'single'),(1372,1,'origin'),(1373,1,'coffee'),(1374,4,'national'),(1375,1,'4');
/*!40000 ALTER TABLE `ezsearch_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsection`
--

DROP TABLE IF EXISTS `ezsection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `navigation_part_identifier` varchar(100) DEFAULT 'ezcontentnavigationpart',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsection`
--

LOCK TABLES `ezsection` WRITE;
/*!40000 ALTER TABLE `ezsection` DISABLE KEYS */;
INSERT INTO `ezsection` VALUES (1,'standard','','Standard','ezcontentnavigationpart'),(2,'users','','Users','ezusernavigationpart'),(3,'media','','Media','ezmedianavigationpart'),(4,'setup','','Setup','ezsetupnavigationpart'),(5,'design','','Design','ezvisualnavigationpart');
/*!40000 ALTER TABLE `ezsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsession`
--

DROP TABLE IF EXISTS `ezsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsession` (
  `data` longtext NOT NULL,
  `expiration_time` int(11) NOT NULL DEFAULT '0',
  `session_key` varchar(32) NOT NULL DEFAULT '',
  `user_hash` varchar(32) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_key`),
  KEY `expiration_time` (`expiration_time`),
  KEY `ezsession_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsession`
--

LOCK TABLES `ezsession` WRITE;
/*!40000 ALTER TABLE `ezsession` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsite_data`
--

DROP TABLE IF EXISTS `ezsite_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsite_data` (
  `name` varchar(60) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsite_data`
--

LOCK TABLES `ezsite_data` WRITE;
/*!40000 ALTER TABLE `ezsite_data` DISABLE KEYS */;
INSERT INTO `ezsite_data` VALUES ('ezpublish-release','1'),('ezpublish-version','6.4.0');
/*!40000 ALTER TABLE `ezsite_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating`
--

DROP TABLE IF EXISTS `ezstarrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating` (
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL,
  `rating_average` float NOT NULL,
  `rating_count` int(11) NOT NULL,
  PRIMARY KEY (`contentobject_id`,`contentobject_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating`
--

LOCK TABLES `ezstarrating` WRITE;
/*!40000 ALTER TABLE `ezstarrating` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating_data`
--

DROP TABLE IF EXISTS `ezstarrating_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) NOT NULL,
  `rating` float NOT NULL,
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_session_key` (`user_id`,`session_key`),
  KEY `contentobject_id_contentobject_attribute_id` (`contentobject_id`,`contentobject_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating_data`
--

LOCK TABLES `ezstarrating_data` WRITE;
/*!40000 ALTER TABLE `ezstarrating_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsubtree_notification_rule`
--

DROP TABLE IF EXISTS `ezsubtree_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsubtree_notification_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `use_digest` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsubtree_notification_rule_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsubtree_notification_rule`
--

LOCK TABLES `ezsubtree_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_counter`
--

DROP TABLE IF EXISTS `eztipafriend_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `requested` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`node_id`,`requested`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_counter`
--

LOCK TABLES `eztipafriend_counter` WRITE;
/*!40000 ALTER TABLE `eztipafriend_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_request`
--

DROP TABLE IF EXISTS `eztipafriend_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_request` (
  `created` int(11) NOT NULL DEFAULT '0',
  `email_receiver` varchar(100) NOT NULL DEFAULT '',
  KEY `eztipafriend_request_created` (`created`),
  KEY `eztipafriend_request_email_rec` (`email_receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_request`
--

LOCK TABLES `eztipafriend_request` WRITE;
/*!40000 ALTER TABLE `eztipafriend_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztrigger`
--

DROP TABLE IF EXISTS `eztrigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztrigger` (
  `connect_type` char(1) NOT NULL DEFAULT '',
  `function_name` varchar(200) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(200) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eztrigger_def_id` (`module_name`(50),`function_name`(50),`connect_type`),
  KEY `eztrigger_fetch` (`name`(25),`module_name`(50),`function_name`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztrigger`
--

LOCK TABLES `eztrigger` WRITE;
/*!40000 ALTER TABLE `eztrigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztrigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl`
--

DROP TABLE IF EXISTS `ezurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_valid` int(11) NOT NULL DEFAULT '1',
  `last_checked` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `original_url_md5` varchar(32) NOT NULL DEFAULT '',
  `url` longtext,
  PRIMARY KEY (`id`),
  KEY `ezurl_url` (`url`(255))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl`
--

LOCK TABLES `ezurl` WRITE;
/*!40000 ALTER TABLE `ezurl` DISABLE KEYS */;
INSERT INTO `ezurl` VALUES (1448832197,23,1,0,1448832197,'f76e41d421b2a72232264943026a6ee5','https://doc.ez.no/display/USER/'),(1448832277,24,1,0,1448832277,'5ebaee4017bab35ed0157379fdeff0af','https://doc.ez.no/display/DEVELOPER/'),(1448832412,25,1,0,1448832412,'2657dfe060c0d56aca8ef8193e17ecf9','https://doc.ez.no/display/DEVELOPER/Building+a+Bicycle+Route+Tracker+in+eZ+Platform'),(1448832436,26,1,0,1448832436,'180577afbb87b0e2cfcb6758c62dfd5f','https://doc.ez.no/display/MAIN/Transitioning+from+eZ+Publish+to+eZ+Platform+and+eZ+Studio%3A+Feature+Comparison'),(1448832661,27,1,0,1448832661,'f9bf96304c434139d0ff5773b6eee157','https://github.com/ezsystems'),(1448832661,28,1,0,1448832661,'265d537bfba0e5ed4e85fbcd7f30ea84','http://share.ez.no'),(1448832661,29,1,0,1448832661,'7441963094866aa9d1cbb8a59cca541c','http://ez-community-on-slack.herokuapp.com/');
/*!40000 ALTER TABLE `ezurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl_object_link`
--

DROP TABLE IF EXISTS `ezurl_object_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl_object_link` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `url_id` int(11) NOT NULL DEFAULT '0',
  KEY `ezurl_ol_coa_id` (`contentobject_attribute_id`),
  KEY `ezurl_ol_coa_version` (`contentobject_attribute_version`),
  KEY `ezurl_ol_url_id` (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl_object_link`
--

LOCK TABLES `ezurl_object_link` WRITE;
/*!40000 ALTER TABLE `ezurl_object_link` DISABLE KEYS */;
INSERT INTO `ezurl_object_link` VALUES (104,9,23),(104,9,24),(104,9,25),(104,9,26),(104,9,27),(104,9,28),(104,9,29),(104,9,23),(104,9,24),(104,9,25),(104,9,26),(104,9,27),(104,9,28),(104,9,29);
/*!40000 ALTER TABLE `ezurl_object_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias`
--

DROP TABLE IF EXISTS `ezurlalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias` (
  `destination_url` longtext NOT NULL,
  `forward_to_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_imported` int(11) NOT NULL DEFAULT '0',
  `is_internal` int(11) NOT NULL DEFAULT '1',
  `is_wildcard` int(11) NOT NULL DEFAULT '0',
  `source_md5` varchar(32) DEFAULT NULL,
  `source_url` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ezurlalias_desturl` (`destination_url`(200)),
  KEY `ezurlalias_forward_to_id` (`forward_to_id`),
  KEY `ezurlalias_imp_wcard_fwd` (`is_imported`,`is_wildcard`,`forward_to_id`),
  KEY `ezurlalias_source_md5` (`source_md5`),
  KEY `ezurlalias_source_url` (`source_url`(255)),
  KEY `ezurlalias_wcard_fwd` (`is_wildcard`,`forward_to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias`
--

LOCK TABLES `ezurlalias` WRITE;
/*!40000 ALTER TABLE `ezurlalias` DISABLE KEYS */;
INSERT INTO `ezurlalias` VALUES ('content/view/full/2',0,12,1,1,0,'d41d8cd98f00b204e9800998ecf8427e',''),('content/view/full/5',0,13,1,1,0,'9bc65c2abec141778ffaa729489f3e87','users'),('content/view/full/12',0,15,1,1,0,'02d4e844e3a660857a3f81585995ffe1','users/guest_accounts'),('content/view/full/13',0,16,1,1,0,'1b1d79c16700fd6003ea7be233e754ba','users/administrator_users'),('content/view/full/14',0,17,1,1,0,'0bb9dd665c96bbc1cf36b79180786dea','users/editors'),('content/view/full/15',0,18,1,1,0,'f1305ac5f327a19b451d82719e0c3f5d','users/administrator_users/administrator_user'),('content/view/full/43',0,20,1,1,0,'62933a2951ef01f4eafd9bdf4d3cd2f0','media'),('content/view/full/44',0,21,1,1,0,'3ae1aac958e1c82013689d917d34967a','users/anonymous_users'),('content/view/full/45',0,22,1,1,0,'aad93975f09371695ba08292fd9698db','users/anonymous_users/anonymous_user'),('content/view/full/48',0,25,1,1,0,'a0f848942ce863cf53c0fa6cc684007d','setup'),('content/view/full/51',0,28,1,1,0,'38985339d4a5aadfc41ab292b4527046','media/images'),('content/view/full/52',0,29,1,1,0,'ad5a8c6f6aac3b1b9df267fe22e7aef6','media/files'),('content/view/full/53',0,30,1,1,0,'562a0ac498571c6c3529173184a2657c','media/multimedia');
/*!40000 ALTER TABLE `ezurlalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml`
--

DROP TABLE IF EXISTS `ezurlalias_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml` (
  `action` longtext NOT NULL,
  `action_type` varchar(32) NOT NULL DEFAULT '',
  `alias_redirects` int(11) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL DEFAULT '0',
  `is_alias` int(11) NOT NULL DEFAULT '0',
  `is_original` int(11) NOT NULL DEFAULT '0',
  `lang_mask` bigint(20) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `text` longtext NOT NULL,
  `text_md5` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`parent`,`text_md5`),
  KEY `ezurlalias_ml_act_org` (`action`(32),`is_original`),
  KEY `ezurlalias_ml_actt_org_al` (`action_type`,`is_original`,`is_alias`),
  KEY `ezurlalias_ml_id` (`id`),
  KEY `ezurlalias_ml_par_act_id_lnk` (`action`(32),`id`,`link`,`parent`),
  KEY `ezurlalias_ml_par_lnk_txt` (`parent`,`text`(32),`link`),
  KEY `ezurlalias_ml_text` (`text`(32),`id`,`link`),
  KEY `ezurlalias_ml_text_lang` (`text`(32),`lang_mask`,`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml`
--

LOCK TABLES `ezurlalias_ml` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml` VALUES ('eznode:59','eznode',0,43,0,1,2,43,0,'Article-no.2','0f9f2ef6112e867c4f4ce531e6944c9b'),('eznode:60','eznode',0,44,0,1,2,44,0,'Article-no.3','28caceb89a410217920404fa847adae3'),('eznode:48','eznode',1,13,0,1,3,13,0,'Setup2','475e97c0146bfb1c490339546d9e72ee'),('nop:','nop',1,17,0,0,1,17,0,'media2','50e2736330de124f6edea9b008556fe6'),('eznode:43','eznode',1,9,0,1,3,9,0,'Media','62933a2951ef01f4eafd9bdf4d3cd2f0'),('eznode:54','eznode',1,38,0,1,2,38,0,'Article-no.1','72ada2e9429c0b842502b750dbf972e3'),('nop:','nop',1,21,0,0,1,21,0,'setup3','732cefcf28bf4547540609fb1a786a30'),('eznode:62','eznode',0,46,0,1,2,46,0,'Article-no.5','747c846fec28a93950d3af1e414f14e0'),('nop:','nop',1,3,0,0,1,3,0,'users2','86425c35a33507d479f71ade53a669aa'),('eznode:5','eznode',1,2,0,1,3,2,0,'Users','9bc65c2abec141778ffaa729489f3e87'),('eznode:2','eznode',1,1,0,1,3,1,0,'','d41d8cd98f00b204e9800998ecf8427e'),('eznode:61','eznode',0,45,0,1,2,45,0,'Article-4','e2bef10efed1df965ec51081f09e90bf'),('eznode:14','eznode',1,6,0,1,3,6,2,'Editors','a147e136bfa717592f2bd70bd4b53b17'),('eznode:44','eznode',1,10,0,1,3,10,2,'Anonymous-Users','c2803c3fa1b0b5423237b4e018cae755'),('eznode:12','eznode',1,4,0,1,3,4,2,'Guest-accounts','e57843d836e3af8ab611fde9e2139b3a'),('eznode:13','eznode',1,5,0,1,3,5,2,'Administrator-users','f89fad7f8a3abc8c09e1deb46a420007'),('nop:','nop',1,11,0,0,1,11,3,'anonymous_users2','505e93077a6dde9034ad97a14ab022b1'),('eznode:12','eznode',1,26,0,0,1,4,3,'guest_accounts','70bb992820e73638731aa8de79b3329e'),('eznode:14','eznode',1,29,0,0,1,6,3,'editors','a147e136bfa717592f2bd70bd4b53b17'),('nop:','nop',1,7,0,0,1,7,3,'administrator_users2','a7da338c20bf65f9f789c87296379c2a'),('eznode:13','eznode',1,27,0,0,1,5,3,'administrator_users','aeb8609aa933b0899aa012c71139c58c'),('eznode:44','eznode',1,30,0,0,1,10,3,'anonymous_users','e9e5ad0c05ee1a43715572e5cc545926'),('eznode:15','eznode',1,8,0,1,3,8,5,'Administrator-User','5a9d7b0ec93173ef4fedee023209cb61'),('eznode:15','eznode',1,28,0,0,0,8,7,'administrator_user','a3cca2de936df1e2f805710399989971'),('eznode:53','eznode',1,20,0,1,3,20,9,'Multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,19,0,1,3,19,9,'Files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,18,0,1,3,18,9,'Images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:45','eznode',1,12,0,1,3,12,10,'Anonymous-User','ccb62ebca03a31272430bc414bd5cd5b'),('eznode:45','eznode',1,31,0,0,1,12,11,'anonymous_user','c593ec85293ecb0e02d50d4c5c6c20eb'),('nop:','nop',1,15,0,0,1,15,14,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:53','eznode',1,34,0,0,1,20,17,'multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,33,0,0,1,19,17,'files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,32,0,0,1,18,17,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:57','eznode',0,41,0,1,3,41,18,'Hehe.jpeg','4bdcffc1d57886071d209d1c594a1d69'),('eznode:56','eznode',0,40,0,1,3,40,18,'19441967_1585049778212889_5857698824653208083_o.jpg','b165c07247017bd23fee91c8671dcdc9'),('eznode:58','eznode',0,42,0,1,3,42,18,'WB01-1-5.jpg','df3796f148db7d379983103111e4a4bd');
/*!40000 ALTER TABLE `ezurlalias_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml_incr`
--

DROP TABLE IF EXISTS `ezurlalias_ml_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

LOCK TABLES `ezurlalias_ml_incr` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml_incr` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml_incr` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46);
/*!40000 ALTER TABLE `ezurlalias_ml_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlwildcard`
--

DROP TABLE IF EXISTS `ezurlwildcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlwildcard` (
  `destination_url` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_url` longtext NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlwildcard`
--

LOCK TABLES `ezurlwildcard` WRITE;
/*!40000 ALTER TABLE `ezurlwildcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezurlwildcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser`
--

DROP TABLE IF EXISTS `ezuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '',
  `login` varchar(150) NOT NULL DEFAULT '',
  `password_hash` varchar(50) DEFAULT NULL,
  `password_hash_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`contentobject_id`),
  UNIQUE KEY `ezuser_login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser`
--

LOCK TABLES `ezuser` WRITE;
/*!40000 ALTER TABLE `ezuser` DISABLE KEYS */;
INSERT INTO `ezuser` VALUES (10,'nospam@ez.no','anonymous','4e6f6184135228ccd45f8233d72a0363',2),(14,'nospam@ez.no','admin','c78e3b0f3d9244ed8c6d1c29464bdff9',2);
/*!40000 ALTER TABLE `ezuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_accountkey`
--

DROP TABLE IF EXISTS `ezuser_accountkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_accountkey` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hash_key` (`hash_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_accountkey`
--

LOCK TABLES `ezuser_accountkey` WRITE;
/*!40000 ALTER TABLE `ezuser_accountkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_accountkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_discountrule`
--

DROP TABLE IF EXISTS `ezuser_discountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_discountrule` (
  `contentobject_id` int(11) DEFAULT NULL,
  `discountrule_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_discountrule`
--

LOCK TABLES `ezuser_discountrule` WRITE;
/*!40000 ALTER TABLE `ezuser_discountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_discountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_role`
--

DROP TABLE IF EXISTS `ezuser_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_role` (
  `contentobject_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limit_identifier` varchar(255) DEFAULT '',
  `limit_value` varchar(255) DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezuser_role_contentobject_id` (`contentobject_id`),
  KEY `ezuser_role_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_role`
--

LOCK TABLES `ezuser_role` WRITE;
/*!40000 ALTER TABLE `ezuser_role` DISABLE KEYS */;
INSERT INTO `ezuser_role` VALUES (11,28,'','',1),(42,31,'','',1),(13,32,'Subtree','/1/2/',3),(13,33,'Subtree','/1/43/',3),(12,34,'','',2),(13,35,'','',4);
/*!40000 ALTER TABLE `ezuser_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_setting`
--

DROP TABLE IF EXISTS `ezuser_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_setting` (
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `max_login` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_setting`
--

LOCK TABLES `ezuser_setting` WRITE;
/*!40000 ALTER TABLE `ezuser_setting` DISABLE KEYS */;
INSERT INTO `ezuser_setting` VALUES (1,1000,10),(1,10,14);
/*!40000 ALTER TABLE `ezuser_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuservisit`
--

DROP TABLE IF EXISTS `ezuservisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuservisit` (
  `current_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `failed_login_attempts` int(11) NOT NULL DEFAULT '0',
  `last_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `login_count` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `ezuservisit_co_visit_count` (`current_visit_timestamp`,`login_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuservisit`
--

LOCK TABLES `ezuservisit` WRITE;
/*!40000 ALTER TABLE `ezuservisit` DISABLE KEYS */;
INSERT INTO `ezuservisit` VALUES (1301057720,0,1301057720,0,14);
/*!40000 ALTER TABLE `ezuservisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule`
--

DROP TABLE IF EXISTS `ezvatrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule` (
  `country_code` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vat_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule`
--

LOCK TABLES `ezvatrule` WRITE;
/*!40000 ALTER TABLE `ezvatrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule_product_category`
--

DROP TABLE IF EXISTS `ezvatrule_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule_product_category` (
  `product_category_id` int(11) NOT NULL DEFAULT '0',
  `vatrule_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vatrule_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule_product_category`
--

LOCK TABLES `ezvatrule_product_category` WRITE;
/*!40000 ALTER TABLE `ezvatrule_product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvattype`
--

DROP TABLE IF EXISTS `ezvattype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvattype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvattype`
--

LOCK TABLES `ezvattype` WRITE;
/*!40000 ALTER TABLE `ezvattype` DISABLE KEYS */;
INSERT INTO `ezvattype` VALUES (1,'Std',0);
/*!40000 ALTER TABLE `ezvattype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezview_counter`
--

DROP TABLE IF EXISTS `ezview_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezview_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezview_counter`
--

LOCK TABLES `ezview_counter` WRITE;
/*!40000 ALTER TABLE `ezview_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezview_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwaituntildatevalue`
--

DROP TABLE IF EXISTS `ezwaituntildatevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwaituntildatevalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_event_id` int(11) NOT NULL DEFAULT '0',
  `workflow_event_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`workflow_event_id`,`workflow_event_version`),
  KEY `ezwaituntildateevalue_wf_ev_id_wf_ver` (`workflow_event_id`,`workflow_event_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwaituntildatevalue`
--

LOCK TABLES `ezwaituntildatevalue` WRITE;
/*!40000 ALTER TABLE `ezwaituntildatevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwaituntildatevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwishlist`
--

DROP TABLE IF EXISTS `ezwishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwishlist`
--

LOCK TABLES `ezwishlist` WRITE;
/*!40000 ALTER TABLE `ezwishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow`
--

DROP TABLE IF EXISTS `ezworkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow`
--

LOCK TABLES `ezworkflow` WRITE;
/*!40000 ALTER TABLE `ezworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_assign`
--

DROP TABLE IF EXISTS `ezworkflow_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_assign` (
  `access_type` int(11) NOT NULL DEFAULT '0',
  `as_tree` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_assign`
--

LOCK TABLES `ezworkflow_assign` WRITE;
/*!40000 ALTER TABLE `ezworkflow_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_event`
--

DROP TABLE IF EXISTS `ezworkflow_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_event` (
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(255) DEFAULT NULL,
  `data_text2` varchar(255) DEFAULT NULL,
  `data_text3` varchar(255) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `description` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`),
  KEY `wid_version_placement` (`workflow_id`,`version`,`placement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_event`
--

LOCK TABLES `ezworkflow_event` WRITE;
/*!40000 ALTER TABLE `ezworkflow_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group`
--

DROP TABLE IF EXISTS `ezworkflow_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group`
--

LOCK TABLES `ezworkflow_group` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group` DISABLE KEYS */;
INSERT INTO `ezworkflow_group` VALUES (1024392098,14,1,1024392098,14,'Standard');
/*!40000 ALTER TABLE `ezworkflow_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group_link`
--

DROP TABLE IF EXISTS `ezworkflow_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group_link` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`workflow_id`,`group_id`,`workflow_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group_link`
--

LOCK TABLES `ezworkflow_group_link` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_process`
--

DROP TABLE IF EXISTS `ezworkflow_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_process` (
  `activation_date` int(11) DEFAULT NULL,
  `content_id` int(11) NOT NULL DEFAULT '0',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `event_position` int(11) NOT NULL DEFAULT '0',
  `event_state` int(11) DEFAULT NULL,
  `event_status` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_event_id` int(11) NOT NULL DEFAULT '0',
  `last_event_position` int(11) NOT NULL DEFAULT '0',
  `last_event_status` int(11) NOT NULL DEFAULT '0',
  `memento_key` varchar(32) DEFAULT NULL,
  `modified` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parameters` longtext,
  `process_key` varchar(32) NOT NULL DEFAULT '',
  `session_key` varchar(32) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezworkflow_process_process_key` (`process_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_process`
--

LOCK TABLES `ezworkflow_process` WRITE;
/*!40000 ALTER TABLE `ezworkflow_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_process` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-30 11:12:09
