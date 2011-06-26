-- MySQL dump 10.10
--
-- Host: localhost    Database: transportapp_development
-- ------------------------------------------------------
-- Server version	5.0.18-standard

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
-- Table structure for table `administrators`
--

DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) NOT NULL,
  `salted_password` varchar(40) NOT NULL,
  `salt` varchar(40) NOT NULL,
  `superuser` int(11) NOT NULL default '0',
  `reset_password_token` varchar(40) default NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrators`
--


/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
LOCK TABLES `administrators` WRITE;
INSERT INTO `administrators` VALUES (1,'admin','c771e7ff671e12870ec273da7298f7be92ab87c3','8400e88d7ae87f17837e5ca35a49ae80b3204911',1,NULL,'joe@wtown.org');
UNLOCK TABLES;
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;

--
-- Table structure for table `buses`
--

DROP TABLE IF EXISTS `buses`;
CREATE TABLE `buses` (
  `id` int(11) NOT NULL auto_increment,
  `route_id` int(11) NOT NULL,
  `going_away` tinyint(1) NOT NULL,
  `departure` datetime NOT NULL,
  `seats` int(11) NOT NULL,
  `occupied_seats` int(11) NOT NULL default '0',
  `reservations_closing_date` datetime NOT NULL,
  `report_token` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buses`
--


/*!40000 ALTER TABLE `buses` DISABLE KEYS */;
LOCK TABLES `buses` WRITE;
INSERT INTO `buses` VALUES (4,3,1,'2006-11-21 09:00:00',5,2,'2006-11-20 09:00:00','12345'),(5,3,1,'2006-11-21 12:00:00',56,0,'2006-11-20 09:00:00',NULL),(6,3,1,'2006-11-21 16:00:00',56,0,'2006-11-20 09:00:00',NULL),(7,3,1,'2006-11-22 06:30:00',56,0,'2006-11-21 09:00:00',NULL),(8,3,1,'2006-11-22 09:30:00',56,0,'2006-11-21 09:00:00',NULL),(9,3,1,'2006-11-22 12:30:00',56,0,'2006-11-21 09:00:00',NULL),(10,3,0,'2006-11-26 13:30:00',56,0,'2006-11-25 09:00:00',NULL),(11,3,0,'2006-11-26 16:30:00',56,0,'2006-11-25 09:00:00',NULL),(12,3,0,'2006-11-26 19:30:00',56,0,'2006-11-25 09:00:00',NULL),(13,3,0,'2006-09-26 23:15:00',56,0,'2006-09-25 09:00:00',NULL),(14,4,1,'2006-10-04 06:00:00',55,2,'2006-10-03 09:00:00',NULL),(15,4,1,'2006-11-21 16:15:00',56,0,'2006-11-20 09:00:00',NULL),(16,4,0,'2006-11-26 14:30:00',56,0,'2006-11-25 09:00:00',NULL),(17,4,0,'2006-11-26 17:00:00',56,0,'2006-11-25 09:00:00',NULL),(18,5,1,'2006-11-21 16:30:00',56,0,'2006-11-20 09:00:00',NULL),(19,10,0,'2006-11-26 17:00:00',56,0,'2006-11-25 09:00:00',NULL),(20,11,0,'2006-11-26 17:25:00',56,0,'2006-11-25 09:00:00',NULL),(21,13,0,'2007-01-01 16:30:00',56,0,'2006-12-31 09:00:00',NULL),(22,13,0,'2007-01-01 19:30:00',56,0,'2006-12-31 09:00:00',NULL),(23,13,0,'2007-01-01 23:15:00',56,0,'2006-12-31 09:00:00',NULL),(24,13,1,'2006-12-16 06:30:00',56,0,'2006-12-15 09:00:00',NULL),(25,13,0,'2007-01-02 13:30:00',56,0,'2007-01-01 09:00:00',NULL),(26,13,0,'2007-01-02 15:00:00',56,0,'2007-01-01 09:00:00',NULL),(27,13,1,'2006-12-16 09:30:00',56,0,'2006-12-15 09:00:00',NULL),(28,13,1,'2006-12-16 12:30:00',56,0,'2006-12-15 09:00:00',NULL),(29,13,0,'2007-01-02 16:30:00',56,0,'2007-01-01 09:00:00',NULL),(30,13,1,'2006-12-16 15:30:00',56,0,'2006-12-15 09:00:00',NULL),(31,13,1,'2006-12-17 06:30:00',56,0,'2006-12-16 09:00:00',NULL),(32,13,0,'2007-01-02 18:00:00',56,0,'2007-01-01 09:00:00',NULL),(33,13,1,'2006-12-17 09:30:00',56,0,'2006-12-16 09:00:00',NULL),(34,13,1,'2006-12-17 12:30:00',56,0,'2006-12-16 09:00:00',NULL),(35,14,0,'2007-01-02 14:30:00',55,0,'2007-01-01 09:00:00',NULL),(36,13,1,'2006-12-17 15:30:00',56,0,'2006-12-16 09:00:00',NULL),(37,14,0,'2007-01-02 17:00:00',55,0,'2007-01-01 09:00:00',NULL),(38,13,0,'2007-01-02 19:30:00',56,0,'2007-01-01 09:00:00',NULL),(39,13,0,'2007-01-02 23:15:00',56,0,'2007-01-01 09:00:00',NULL),(41,13,1,'2006-12-18 06:30:00',56,0,'2006-12-17 09:00:00',NULL),(42,20,0,'2007-01-02 17:25:00',56,0,'2007-01-01 09:00:00',NULL),(43,13,1,'2006-12-18 09:30:00',56,0,'2006-12-17 09:00:00',NULL),(44,13,1,'2006-12-18 12:30:00',56,0,'2006-12-17 09:00:00',NULL),(45,13,1,'2006-12-18 15:30:00',56,0,'2006-12-17 09:00:00',NULL),(46,13,1,'2006-12-19 06:30:00',56,0,'2006-12-18 09:00:00',NULL),(47,13,1,'2006-12-19 09:30:00',56,0,'2006-12-18 09:00:00',NULL),(48,14,1,'2007-12-17 13:00:00',55,0,'2007-12-16 09:00:00',NULL),(49,13,1,'2006-12-19 12:30:00',56,0,'2006-12-18 09:00:00',NULL),(50,17,1,'2006-12-17 13:15:00',56,0,'2006-12-16 09:00:00',NULL),(51,14,1,'2007-12-18 16:30:00',55,0,'2007-12-17 09:00:00',NULL),(52,17,1,'2006-12-18 16:30:00',56,0,'2006-12-17 09:00:00',NULL),(53,21,0,'2007-01-02 17:00:00',56,0,'2007-01-01 09:00:00',NULL),(54,22,1,'2006-12-20 12:00:00',56,0,'2006-12-19 09:00:00',NULL),(55,22,0,'2006-12-28 12:00:00',56,0,'2006-12-27 09:00:00',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `buses` ENABLE KEYS */;

--
-- Table structure for table `credit_payment_events`
--

DROP TABLE IF EXISTS `credit_payment_events`;
CREATE TABLE `credit_payment_events` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `reservation_id` int(11) default NULL,
  `transaction_amt` varchar(255) default NULL,
  `response_code` int(11) NOT NULL,
  `transaction_type` varchar(20) NOT NULL default '',
  `transaction_id` int(11) default NULL,
  `error_code` int(11) default NULL,
  `error_message` varchar(50) default NULL,
  `authorization` varchar(6) default NULL,
  `avs_code` varchar(1) default NULL,
  `cvv2_response` varchar(1) default NULL,
  `cavv_response` varchar(1) default NULL,
  `created_at` datetime NOT NULL,
  `cc_last_four` varchar(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit_payment_events`
--


/*!40000 ALTER TABLE `credit_payment_events` DISABLE KEYS */;
LOCK TABLES `credit_payment_events` WRITE;
INSERT INTO `credit_payment_events` VALUES (5,5,20,'$36.00',3,'0',0,NULL,NULL,'000000','P',NULL,NULL,'2006-10-16 09:59:08','2345'),(6,5,22,'$36.00',1,'admin auth/capture',0,NULL,NULL,'000000','P',NULL,NULL,'2006-10-16 10:14:41','0027');
UNLOCK TABLES;
/*!40000 ALTER TABLE `credit_payment_events` ENABLE KEYS */;

--
-- Table structure for table `remember_me_tokens`
--

DROP TABLE IF EXISTS `remember_me_tokens`;
CREATE TABLE `remember_me_tokens` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `token` varchar(40) NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remember_me_tokens`
--


/*!40000 ALTER TABLE `remember_me_tokens` DISABLE KEYS */;
LOCK TABLES `remember_me_tokens` WRITE;
INSERT INTO `remember_me_tokens` VALUES (4,1,'5bf987fa3dc253db72417a1954d92c5c09b78167','2006-10-10 07:17:14'),(11,1,'16bf062d62fceb2e19cc48af8db6c2a17c335a64','2006-10-10 20:37:06'),(12,5,'10a486e616f1c7553f591fb8ca5bf7e43d8a0d49','2006-10-23 10:22:00');
UNLOCK TABLES;
/*!40000 ALTER TABLE `remember_me_tokens` ENABLE KEYS */;

--
-- Table structure for table `reservation_modifications`
--

DROP TABLE IF EXISTS `reservation_modifications`;
CREATE TABLE `reservation_modifications` (
  `id` int(11) NOT NULL auto_increment,
  `reservation_id` int(11) NOT NULL,
  `modification` varchar(100) default NULL,
  `created_at` datetime NOT NULL,
  `value` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation_modifications`
--


/*!40000 ALTER TABLE `reservation_modifications` DISABLE KEYS */;
LOCK TABLES `reservation_modifications` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `reservation_modifications` ENABLE KEYS */;

--
-- Table structure for table `reservation_tickets`
--

DROP TABLE IF EXISTS `reservation_tickets`;
CREATE TABLE `reservation_tickets` (
  `id` int(11) NOT NULL auto_increment,
  `reservation_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `conductor_wish` int(11) NOT NULL default '0',
  `conductor_status` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation_tickets`
--


/*!40000 ALTER TABLE `reservation_tickets` DISABLE KEYS */;
LOCK TABLES `reservation_tickets` WRITE;
INSERT INTO `reservation_tickets` VALUES (23,19,14,2,0,0),(27,22,4,2,0,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `reservation_tickets` ENABLE KEYS */;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE `reservations` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `last_modified_at` datetime NOT NULL,
  `payment_status` int(11) NOT NULL,
  `payment_note` varchar(100) default NULL,
  `total` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservations`
--


/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
LOCK TABLES `reservations` WRITE;
INSERT INTO `reservations` VALUES (19,5,'2006-10-15 22:41:28','2006-10-15 22:41:29',2,NULL,'$92.00'),(22,5,'2006-10-16 10:14:39','2006-10-16 10:14:40',1,NULL,'$36.00');
UNLOCK TABLES;
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
CREATE TABLE `routes` (
  `id` int(11) NOT NULL auto_increment,
  `transport_session_id` int(11) NOT NULL,
  `point_a` varchar(40) NOT NULL,
  `point_b` varchar(40) NOT NULL,
  `information` text,
  `price` varchar(255) default NULL,
  `display_order` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routes`
--


/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
LOCK TABLES `routes` WRITE;
INSERT INTO `routes` VALUES (3,3,'Williams','Albany','This is Albany','18.00',0),(4,3,'Williams','NYC','','28.00',0),(5,3,'Williams','Boston','','28.00',0),(10,3,'Williams','Boston Logan','','28.00',0),(11,3,'Williams','Boston North Station','','28.00',0),(13,4,'Williams','Albany','','18.00',0),(14,4,'Williams','NYC','','28.00',0),(16,5,'Williams','Albany','','18.00',0),(17,4,'Williams','Boston','','28.00',0),(18,5,'Williams','NYC','','28.00',0),(19,5,'Williams','Boston','','28.00',0),(20,4,'Williams','Boston North Station','','28.00',0),(21,4,'Williams','Boston Logan','','28.00',0),(22,8,'Williams','Montreal','','20.00',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;

--
-- Table structure for table `schema_info`
--

DROP TABLE IF EXISTS `schema_info`;
CREATE TABLE `schema_info` (
  `version` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_info`
--


/*!40000 ALTER TABLE `schema_info` DISABLE KEYS */;
LOCK TABLES `schema_info` WRITE;
INSERT INTO `schema_info` VALUES (4);
UNLOCK TABLES;
/*!40000 ALTER TABLE `schema_info` ENABLE KEYS */;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL auto_increment,
  `session_id` varchar(255) default NULL,
  `data` text,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `sessions_session_id_index` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--


/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
LOCK TABLES `sessions` WRITE;
INSERT INTO `sessions` VALUES (1,'dce458de9dafb9d9dce3d9a17960874e','BAh7DiIIYnVzewg6CXBhZ2VpBjoJc29ydDA6E3NvcnRfZGlyZWN0aW9uIghh\nc2M6FnJlc2VydmF0aW9uX3ByaWNlbzoKTW9uZXkGOgtAY2VudHNpAhAOOhF3\nYWl0X2xpc3RfaWQwIg5yZXR1cm4tdG8wOgx1c2VyX2lkaQc6HmNhc2hfcmVz\nZXJ2YXRpb25zX2FsbG93ZWRUIgpmbGFzaElDOidBY3Rpb25Db250cm9sbGVy\nOjpGbGFzaDo6Rmxhc2hIYXNoewAGOgpAdXNlZHsAOhhyZXNlcnZhdGlvbl9k\nZXRhaWxzWwZbB286CEJ1cwc6C0Byb3V0ZW86NUFjdGl2ZVJlY29yZDo6QXNz\nb2NpYXRpb25zOjpCZWxvbmdzVG9Bc3NvY2lhdGlvbgk6EEByZWZsZWN0aW9u\nbzo0QWN0aXZlUmVjb3JkOjpSZWZsZWN0aW9uOjpBc3NvY2lhdGlvblJlZmxl\nY3Rpb24NOhBAY2xhc3NfbmFtZSIKUm91dGU6C0BrbGFzc2MKUm91dGU6E0Bh\nY3RpdmVfcmVjb3JkYwhCdXM6FkBwcmltYXJ5X2tleV9uYW1lIg1yb3V0ZV9p\nZDoNQG9wdGlvbnN7ADoYQHRocm91Z2hfcmVmbGVjdGlvbkY6C0BtYWNybzoP\nYmVsb25nc190bzoKQG5hbWU6CnJvdXRlOgxAdGFyZ2V0bzoKUm91dGUHOhdA\ndHJhbnNwb3J0X3Nlc3Npb25vOxMJOxRvOxUNOxYiFVRyYW5zcG9ydFNlc3Np\nb247F2MVVHJhbnNwb3J0U2Vzc2lvbjsYQBQ7GSIZdHJhbnNwb3J0X3Nlc3Np\nb25faWQ7GnsAOxtGOxw7HTseOhZ0cmFuc3BvcnRfc2Vzc2lvbjsgbzoVVHJh\nbnNwb3J0U2Vzc2lvbgY6EEBhdHRyaWJ1dGVzewsiImNhc2hfcmVzZXJ2YXRp\nb25zX2luZm9ybWF0aW9uIh9UaGlzIGlzIFRoYW5rc2dpdmluZyBCcmVhayIJ\nbmFtZSIXVGhhbmtzZ2l2aW5nIEJyZWFrIhlzZXNzaW9uX2Nsb3NpbmdfZGF0\nZSIYMjAwNi0xMi0yNyAyMDowMDowMCIHaWQiBjMiHnJlc2VydmF0aW9uc19v\ncGVuaW5nX2RhdGUiGDIwMDYtMDktMTEgMDA6MDA6MDAiI2Nhc2hfcmVzZXJ2\nYXRpb25zX2Nsb3NpbmdfZGF0ZSIYMjAwNi0xMS0xNiAxMjowMDowMDoLQG93\nbmVyQBg6DEBsb2FkZWRUOyV7DCIKcHJpY2UiCjE4LjAwIhl0cmFuc3BvcnRf\nc2Vzc2lvbl9pZCIGMyIQaW5mb3JtYXRpb24iE1RoaXMgaXMgQWxiYW55Igdp\nZCIGMyIMcG9pbnRfYSINV2lsbGlhbXMiDHBvaW50X2IiC0FsYmFueSISZGlz\ncGxheV9vcmRlciIGMDsmQBA7J1Q7JXsMIg9nb2luZ19hd2F5IgYxIhNvY2N1\ncGllZF9zZWF0cyIGMCIKc2VhdHMiBzU2Ih5yZXNlcnZhdGlvbnNfY2xvc2lu\nZ19kYXRlIhgyMDA2LTExLTIxIDIwOjAwOjAwIgdpZCIGOSIOZGVwYXJ0dXJl\nIhgyMDA2LTExLTIyIDEyOjMwOjAwIg1yb3V0ZV9pZCIGM2kHOg1hZG1pbl9p\nZGkG\n','2006-10-03 06:48:15'),(2,'f98db9971f3f708cc3bf94715691aef3','BAh7DzoNYWRtaW5faWRpBiIIYnVzewg6CXBhZ2VpBjoJc29ydDA6E3NvcnRf\nZGlyZWN0aW9uIghhc2M6FnJlc2VydmF0aW9uX3ByaWNlbzoKTW9uZXkGOgtA\nY2VudHNpAggHOhF3YWl0X2xpc3RfaWQwIhZ0cmFuc3BvcnRfc2Vzc2lvbnsI\nOwZpBjsHMDsIIghhc2M6HmNhc2hfcmVzZXJ2YXRpb25zX2FsbG93ZWRUIg5y\nZXR1cm4tdG8wOhhyZXNlcnZhdGlvbl9kZXRhaWxzWwZbB286CEJ1cwc6C0By\nb3V0ZW86NUFjdGl2ZVJlY29yZDo6QXNzb2NpYXRpb25zOjpCZWxvbmdzVG9B\nc3NvY2lhdGlvbgk6EEByZWZsZWN0aW9ubzo0QWN0aXZlUmVjb3JkOjpSZWZs\nZWN0aW9uOjpBc3NvY2lhdGlvblJlZmxlY3Rpb24NOhBAY2xhc3NfbmFtZSIK\nUm91dGU6C0BrbGFzc2MKUm91dGU6E0BhY3RpdmVfcmVjb3JkYwhCdXM6DUBv\ncHRpb25zewA6FkBwcmltYXJ5X2tleV9uYW1lIg1yb3V0ZV9pZDoYQHRocm91\nZ2hfcmVmbGVjdGlvbkY6C0BtYWNybzoPYmVsb25nc190bzoKQG5hbWU6CnJv\ndXRlOgtAb3duZXJAEDoMQHRhcmdldG86ClJvdXRlBzoXQHRyYW5zcG9ydF9z\nZXNzaW9ubzsRCTsSbzsTDTsUIhVUcmFuc3BvcnRTZXNzaW9uOxVjFVRyYW5z\ncG9ydFNlc3Npb247FkAUOxd7ADsYIhl0cmFuc3BvcnRfc2Vzc2lvbl9pZDsZ\nRjsaOxs7HDoWdHJhbnNwb3J0X3Nlc3Npb247HkAYOx9vOhVUcmFuc3BvcnRT\nZXNzaW9uBjoQQGF0dHJpYnV0ZXN7CyIJbmFtZSIXVGhhbmtzZ2l2aW5nIEJy\nZWFrIiJjYXNoX3Jlc2VydmF0aW9uc19pbmZvcm1hdGlvbiI0IFNVIEJveCAy\nMDEwIHByaW9yIHRvIFdlZG5lc2RheSwgTm92ZW1iZXIgMTl0aC4iB2lkIgYz\nIhlzZXNzaW9uX2Nsb3NpbmdfZGF0ZSIYMjAwNi0xMi0yNyAyMDowMDowMCIe\ncmVzZXJ2YXRpb25zX29wZW5pbmdfZGF0ZSIYMjAwNi0wOS0xMSAwMDowMDow\nMCIjY2FzaF9yZXNlcnZhdGlvbnNfY2xvc2luZ19kYXRlIhgyMDA2LTExLTE2\nIDEyOjAwOjAwOgxAbG9hZGVkVDskewwiCnByaWNlIgoxOC4wMCIZdHJhbnNw\nb3J0X3Nlc3Npb25faWQiBjMiB2lkIgYzIhBpbmZvcm1hdGlvbiITVGhpcyBp\ncyBBbGJhbnkiDHBvaW50X2EiDVdpbGxpYW1zIgxwb2ludF9iIgtBbGJhbnki\nEmRpc3BsYXlfb3JkZXIiBjA7JVQ7JHsNIg9nb2luZ19hd2F5IgYxIhNvY2N1\ncGllZF9zZWF0cyIGMSIKc2VhdHMiBzU2IhFyZXBvcnRfdG9rZW4wIgdpZCIG\nNiIecmVzZXJ2YXRpb25zX2Nsb3NpbmdfZGF0ZSIYMjAwNi0xMS0yMCAwOTow\nMDowMCIOZGVwYXJ0dXJlIhgyMDA2LTExLTIxIDE2OjAwOjAwIg1yb3V0ZV9p\nZCIGM2kGOgx1c2VyX2lkaQYiCmZsYXNoSUM6J0FjdGlvbkNvbnRyb2xsZXI6\nOkZsYXNoOjpGbGFzaEhhc2h7AAY6CkB1c2VkewA=\n','2006-10-04 00:27:06'),(3,'6592b8f13ae913d9fbc40b8f3b0d8990','BAh7CzoYcmVzZXJ2YXRpb25fZGV0YWlsc1sGWwdvOghCdXMHOhBAYXR0cmli\ndXRlc3sMIg9nb2luZ19hd2F5IgYxIhNvY2N1cGllZF9zZWF0cyIGMCIKc2Vh\ndHMiBzU2IgdpZCIGNSIecmVzZXJ2YXRpb25zX2Nsb3NpbmdfZGF0ZSIYMjAw\nNi0xMS0yMCAyMDowMDowMCIOZGVwYXJ0dXJlIhgyMDA2LTExLTIxIDEyOjAw\nOjAwIg1yb3V0ZV9pZCIGMzoLQHJvdXRlbzo1QWN0aXZlUmVjb3JkOjpBc3Nv\nY2lhdGlvbnM6OkJlbG9uZ3NUb0Fzc29jaWF0aW9uCToQQHJlZmxlY3Rpb25v\nOjRBY3RpdmVSZWNvcmQ6OlJlZmxlY3Rpb246OkFzc29jaWF0aW9uUmVmbGVj\ndGlvbg06EEBjbGFzc19uYW1lIgpSb3V0ZToLQGtsYXNzYwpSb3V0ZToTQGFj\ndGl2ZV9yZWNvcmRjCEJ1czoNQG9wdGlvbnN7ADoWQHByaW1hcnlfa2V5X25h\nbWUiDXJvdXRlX2lkOhhAdGhyb3VnaF9yZWZsZWN0aW9uRjoLQG1hY3JvOg9i\nZWxvbmdzX3RvOgpAbmFtZToKcm91dGU6C0Bvd25lckAIOgxAdGFyZ2V0bzoK\nUm91dGUHOwd7DCIKcHJpY2UiCjE4LjAwIhl0cmFuc3BvcnRfc2Vzc2lvbl9p\nZCIGMyIHaWQiBjMiEGluZm9ybWF0aW9uIhNUaGlzIGlzIEFsYmFueSIMcG9p\nbnRfYSINV2lsbGlhbXMiDHBvaW50X2IiC0FsYmFueSISZGlzcGxheV9vcmRl\nciIGMDoXQHRyYW5zcG9ydF9zZXNzaW9ubzsJCTsKbzsLDTsMIhVUcmFuc3Bv\ncnRTZXNzaW9uOw1jFVRyYW5zcG9ydFNlc3Npb247DkAbOw97ADsQIhl0cmFu\nc3BvcnRfc2Vzc2lvbl9pZDsRRjsSOxM7FDoWdHJhbnNwb3J0X3Nlc3Npb247\nFkAfOxdvOhVUcmFuc3BvcnRTZXNzaW9uBjsHewsiCW5hbWUiF1RoYW5rc2dp\ndmluZyBCcmVhayIiY2FzaF9yZXNlcnZhdGlvbnNfaW5mb3JtYXRpb24iH1Ro\naXMgaXMgVGhhbmtzZ2l2aW5nIEJyZWFrIgdpZCIGMyIZc2Vzc2lvbl9jbG9z\naW5nX2RhdGUiGDIwMDYtMTItMjcgMjA6MDA6MDAiHnJlc2VydmF0aW9uc19v\ncGVuaW5nX2RhdGUiGDIwMDYtMDktMTEgMDA6MDA6MDAiI2Nhc2hfcmVzZXJ2\nYXRpb25zX2Nsb3NpbmdfZGF0ZSIYMjAwNi0xMS0xNiAxMjowMDowMDoMQGxv\nYWRlZFQ7HFRpBjoWcmVzZXJ2YXRpb25fcHJpY2VvOgpNb25leQY6C0BjZW50\nc2kCCAc6HmNhc2hfcmVzZXJ2YXRpb25zX2FsbG93ZWRUOgx1c2VyX2lkaQYi\nCmZsYXNoSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7\nAAY6CkB1c2VkewA6EXdhaXRfbGlzdF9pZDA=\n','2006-10-03 07:23:13'),(4,'52b9e8283a0e610e52b38ac6a879b8c0','BAh7CDoMdXNlcl9pZGkGOg1hZG1pbl9pZGkGIgpmbGFzaElDOidBY3Rpb25D\nb250cm9sbGVyOjpGbGFzaDo6Rmxhc2hIYXNoewAGOgpAdXNlZHsA\n','2006-10-03 20:36:35'),(5,'aa2aaa82bd45cefa33ee8aadf631eecc','BAh7CzoRd2FpdF9saXN0X2lkMDoYcmVzZXJ2YXRpb25fZGV0YWlsc1sGWwdv\nOghCdXMHOhBAYXR0cmlidXRlc3sNIg9nb2luZ19hd2F5IgYxIhNvY2N1cGll\nZF9zZWF0cyIGMCIKc2VhdHMiBjUiEXJlcG9ydF90b2tlbiIKMTIzNDUiB2lk\nIgY0Ih5yZXNlcnZhdGlvbnNfY2xvc2luZ19kYXRlIhgyMDA2LTExLTIwIDA5\nOjAwOjAwIg5kZXBhcnR1cmUiGDIwMDYtMTEtMjEgMDk6MDA6MDAiDXJvdXRl\nX2lkIgYzOgtAcm91dGVvOjVBY3RpdmVSZWNvcmQ6OkFzc29jaWF0aW9uczo6\nQmVsb25nc1RvQXNzb2NpYXRpb24JOgxAdGFyZ2V0bzoKUm91dGUHOwh7DCIK\ncHJpY2UiCjE4LjAwIhl0cmFuc3BvcnRfc2Vzc2lvbl9pZCIGMyIHaWQiBjMi\nEGluZm9ybWF0aW9uIhNUaGlzIGlzIEFsYmFueSIMcG9pbnRfYSINV2lsbGlh\nbXMiDHBvaW50X2IiC0FsYmFueSISZGlzcGxheV9vcmRlciIGMDoXQHRyYW5z\ncG9ydF9zZXNzaW9ubzsKCTsLbzoVVHJhbnNwb3J0U2Vzc2lvbgY7CHsLIglu\nYW1lIhdUaGFua3NnaXZpbmcgQnJlYWsiImNhc2hfcmVzZXJ2YXRpb25zX2lu\nZm9ybWF0aW9uIjQgU1UgQm94IDIwMTAgcHJpb3IgdG8gV2VkbmVzZGF5LCBO\nb3ZlbWJlciAxOXRoLiIHaWQiBjMiGXNlc3Npb25fY2xvc2luZ19kYXRlIhgy\nMDA2LTEyLTI3IDIwOjAwOjAwIh5yZXNlcnZhdGlvbnNfb3BlbmluZ19kYXRl\nIhgyMDA2LTA5LTExIDAwOjAwOjAwIiNjYXNoX3Jlc2VydmF0aW9uc19jbG9z\naW5nX2RhdGUiGDIwMDYtMTEtMTYgMTI6MDA6MDA6C0Bvd25lckAbOgxAbG9h\nZGVkVDoQQHJlZmxlY3Rpb25vOjRBY3RpdmVSZWNvcmQ6OlJlZmxlY3Rpb246\nOkFzc29jaWF0aW9uUmVmbGVjdGlvbg06FkBwcmltYXJ5X2tleV9uYW1lIhl0\ncmFuc3BvcnRfc2Vzc2lvbl9pZDoYQHRocm91Z2hfcmVmbGVjdGlvbkY6DUBv\ncHRpb25zewA6EEBjbGFzc19uYW1lIhVUcmFuc3BvcnRTZXNzaW9uOgpAbmFt\nZToWdHJhbnNwb3J0X3Nlc3Npb246E0BhY3RpdmVfcmVjb3JkYwpSb3V0ZToL\nQGtsYXNzYxVUcmFuc3BvcnRTZXNzaW9uOgtAbWFjcm86D2JlbG9uZ3NfdG87\nD0AIOxBUOxFvOxINOxMiDXJvdXRlX2lkOxRGOxV7ADsWIgpSb3V0ZTsXOgpy\nb3V0ZTsZYwhCdXM7GkA+Oxs7HGkGIg5yZXR1cm4tdG8iGS9yZXNlcnZhdGlv\nbnMvY3JlYXRlOhZyZXNlcnZhdGlvbl9wcmljZW86Ck1vbmV5BjoLQGNlbnRz\naQIIBzoeY2FzaF9yZXNlcnZhdGlvbnNfYWxsb3dlZFQiCmZsYXNoSUM6J0Fj\ndGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7AAY6CkB1c2VkewA=\n','2006-10-03 20:49:02'),(6,'234cef1ad3cd97b0d4e2a48216d83f93','BAh7CToMdXNlcl9pZGkKOg1hZG1pbl9pZGkGIg5yZXR1cm4tdG8wIgpmbGFz\naElDOidBY3Rpb25Db250cm9sbGVyOjpGbGFzaDo6Rmxhc2hIYXNoewAGOgpA\ndXNlZHsA\n','2006-10-16 10:33:34');
UNLOCK TABLES;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL auto_increment,
  `reservations_closing_time` time default NULL,
  `max_tickets_purchase` int(11) default NULL,
  `daily_payment_reminder_time` time default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--


/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
LOCK TABLES `settings` WRITE;
INSERT INTO `settings` VALUES (1,'09:00:00',2,'10:00:00'),(2,NULL,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

--
-- Table structure for table `stored_payment_addresses`
--

DROP TABLE IF EXISTS `stored_payment_addresses`;
CREATE TABLE `stored_payment_addresses` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `name_on_card` varchar(100) default NULL,
  `address_one` varchar(100) default NULL,
  `city` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `zip` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stored_payment_addresses`
--


/*!40000 ALTER TABLE `stored_payment_addresses` DISABLE KEYS */;
LOCK TABLES `stored_payment_addresses` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `stored_payment_addresses` ENABLE KEYS */;

--
-- Table structure for table `transport_sessions`
--

DROP TABLE IF EXISTS `transport_sessions`;
CREATE TABLE `transport_sessions` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(40) NOT NULL,
  `reservations_opening_date` datetime default NULL,
  `session_closing_date` datetime default NULL,
  `cash_reservations_closing_date` datetime default NULL,
  `cash_reservations_information` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport_sessions`
--


/*!40000 ALTER TABLE `transport_sessions` DISABLE KEYS */;
LOCK TABLES `transport_sessions` WRITE;
INSERT INTO `transport_sessions` VALUES (3,'Thanksgiving Break','2006-09-11 00:00:00','2006-12-27 20:00:00','2006-11-16 12:00:00',' SU Box 2010 prior to Wednesday, November 19th.'),(4,'Winter Break','2006-12-06 00:00:00','2007-12-17 20:00:00','2006-12-11 12:00:00',''),(5,'Dead Week','2007-01-16 00:00:00',NULL,'2007-01-21 12:00:00',''),(6,'Spring Break','2007-03-06 00:00:00',NULL,'2007-03-11 00:00:00',''),(7,'Summer Break','2007-05-11 00:00:00',NULL,'2007-05-12 00:00:00',''),(8,'Montreal Trip','2006-12-12 00:00:00','2006-12-27 20:00:00','2006-12-14 12:00:00','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `transport_sessions` ENABLE KEYS */;

--
-- Table structure for table `trip_reports`
--

DROP TABLE IF EXISTS `trip_reports`;
CREATE TABLE `trip_reports` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `refund_issued` int(11) default '0',
  `on_time` int(11) default '1',
  `comment` text,
  `created_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip_reports`
--


/*!40000 ALTER TABLE `trip_reports` DISABLE KEYS */;
LOCK TABLES `trip_reports` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `trip_reports` ENABLE KEYS */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `login_id` varchar(255) NOT NULL,
  `reset_password_token` varchar(40) default NULL,
  `phone` varchar(12) default NULL,
  `salted_password` varchar(40) default NULL,
  `salt` varchar(40) NOT NULL,
  `verified` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--


/*!40000 ALTER TABLE `users` DISABLE KEYS */;
LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (5,'01jcb',NULL,NULL,'7e3a38f7be','afd4abb7ca',1),(6,'02jcb',NULL,NULL,'79851cc417','b0867cd2c4',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--
-- Table structure for table `wait_list_reservations`
--

DROP TABLE IF EXISTS `wait_list_reservations`;
CREATE TABLE `wait_list_reservations` (
  `id` int(11) NOT NULL auto_increment,
  `bus_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `spot_open_till` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wait_list_reservations`
--


/*!40000 ALTER TABLE `wait_list_reservations` DISABLE KEYS */;
LOCK TABLES `wait_list_reservations` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wait_list_reservations` ENABLE KEYS */;

--
-- Table structure for table `walk_ons`
--

DROP TABLE IF EXISTS `walk_ons`;
CREATE TABLE `walk_ons` (
  `id` int(11) NOT NULL auto_increment,
  `bus_id` int(11) NOT NULL,
  `name` varchar(50) default NULL,
  `login_id` varchar(30) default NULL,
  `mailbox` varchar(50) default NULL,
  `phone1` varchar(20) default NULL,
  `phone2` varchar(20) default NULL,
  `payment_status` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `walk_ons`
--


/*!40000 ALTER TABLE `walk_ons` DISABLE KEYS */;
LOCK TABLES `walk_ons` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `walk_ons` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

