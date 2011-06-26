-- MySQL dump 10.9
--
-- Host: localhost    Database: transportapp_production
-- ------------------------------------------------------
-- Server version	4.1.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
  `username` varchar(255) NOT NULL default '',
  `salted_password` varchar(40) NOT NULL default '',
  `salt` varchar(40) NOT NULL default '',
  `superuser` int(11) NOT NULL default '0',
  `reset_password_token` varchar(40) default NULL,
  `email` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrators`
--


/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
LOCK TABLES `administrators` WRITE;
INSERT INTO `administrators` VALUES (1,'admin','e0f789d687a480cc671d85d440aa8ebae2856e15','72bfbf6749b39b0458c7035771bb7e624ac7c6c5',1,NULL,'joe@wtown.org');
UNLOCK TABLES;
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;

--
-- Table structure for table `buses`
--

DROP TABLE IF EXISTS `buses`;
CREATE TABLE `buses` (
  `id` int(11) NOT NULL auto_increment,
  `route_id` int(11) NOT NULL default '0',
  `going_away` tinyint(1) NOT NULL default '0',
  `departure` datetime NOT NULL default '0000-00-00 00:00:00',
  `seats` int(11) NOT NULL default '0',
  `occupied_seats` int(11) NOT NULL default '0',
  `reservations_closing_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `report_token` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buses`
--


/*!40000 ALTER TABLE `buses` DISABLE KEYS */;
LOCK TABLES `buses` WRITE;
INSERT INTO `buses` VALUES (1,1,1,'2006-10-06 12:00:00',54,4,'2006-10-05 08:00:00',NULL),(2,1,1,'2006-10-06 15:00:00',54,1,'2006-10-05 08:00:00',NULL),(3,1,1,'2006-10-06 18:00:00',54,0,'2006-10-05 08:00:00',NULL),(4,2,1,'2006-10-06 17:00:00',6,7,'2006-10-05 08:00:00',NULL),(5,1,0,'2006-10-10 15:00:00',54,5,'2006-10-09 08:00:00',NULL),(6,1,0,'2006-10-10 19:00:00',54,0,'2006-10-09 08:00:00',NULL),(7,2,0,'2006-10-10 17:00:00',54,0,'2006-10-09 08:00:00',NULL),(8,1,0,'2006-10-10 23:00:00',54,0,'2006-10-09 08:00:00',NULL),(9,3,1,'2006-11-17 12:00:00',54,0,'2006-11-16 08:00:00',NULL),(10,3,1,'2006-11-17 15:00:00',54,0,'2006-11-16 08:00:00',NULL),(11,3,1,'2006-11-17 18:00:00',54,0,'2006-11-16 08:00:00',NULL),(12,3,1,'2006-11-18 09:00:00',54,0,'2006-11-17 08:00:00',NULL),(13,4,1,'2006-11-17 17:00:00',54,0,'2006-11-16 08:00:00',NULL),(14,3,0,'2006-11-26 13:00:00',54,0,'2006-11-25 08:00:00',NULL),(15,3,0,'2006-11-26 16:00:00',54,0,'2006-11-25 08:00:00',NULL),(16,3,0,'2006-11-26 19:00:00',54,0,'2006-11-25 08:00:00',NULL),(17,3,0,'2006-11-26 23:00:00',54,0,'2006-11-25 08:00:00',NULL),(18,4,0,'2006-11-26 17:00:00',54,0,'2006-11-25 08:00:00',NULL),(19,5,1,'2006-12-18 15:00:00',54,0,'2006-12-17 08:00:00',NULL),(20,5,1,'2006-12-18 18:00:00',54,0,'2006-12-17 08:00:00',NULL),(21,5,1,'2006-12-19 12:00:00',54,0,'2006-12-18 08:00:00',NULL),(22,5,1,'2006-12-19 15:00:00',54,0,'2006-12-18 08:00:00',NULL),(23,5,1,'2006-12-19 18:00:00',54,0,'2006-12-18 08:00:00',NULL),(24,6,1,'2006-12-19 17:00:00',54,0,'2006-12-18 08:00:00',NULL),(25,5,0,'2007-01-14 13:00:00',54,0,'2007-01-13 08:00:00',NULL),(26,5,0,'2007-01-14 16:00:00',54,0,'2007-01-13 08:00:00',NULL),(27,5,0,'2007-01-14 19:00:00',54,0,'2007-01-13 08:00:00',NULL),(28,5,0,'2007-01-14 23:00:00',54,0,'2007-01-13 08:00:00',NULL),(29,6,0,'2007-01-14 17:00:00',54,0,'2007-01-13 08:00:00',NULL),(30,7,1,'2007-03-02 12:00:00',54,0,'2007-03-01 08:00:00',NULL),(31,7,1,'2007-03-02 15:00:00',54,0,'2007-03-01 08:00:00',NULL),(32,7,1,'2007-03-02 18:00:00',54,0,'2007-03-01 08:00:00',NULL),(33,7,1,'2007-03-03 09:00:00',54,0,'2007-03-02 08:00:00',NULL),(34,8,1,'2007-03-02 17:00:00',54,0,'2007-03-01 08:00:00',NULL),(35,7,0,'2007-03-18 13:00:00',54,0,'2007-03-17 08:00:00',NULL),(36,7,0,'2007-03-18 16:00:00',54,0,'2007-03-17 08:00:00',NULL),(37,7,0,'2007-03-18 19:00:00',54,0,'2007-03-17 08:00:00',NULL),(38,7,0,'2007-03-18 23:00:00',54,0,'2007-03-17 08:00:00',NULL),(39,8,0,'2007-03-18 17:00:00',54,0,'2007-03-17 08:00:00',NULL),(40,1,1,'2006-10-04 09:05:00',0,0,'2006-10-03 08:00:00',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `buses` ENABLE KEYS */;

--
-- Table structure for table `credit_payment_events`
--

DROP TABLE IF EXISTS `credit_payment_events`;
CREATE TABLE `credit_payment_events` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `reservation_id` int(11) default NULL,
  `transaction_amt` varchar(255) default NULL,
  `response_code` int(11) NOT NULL default '0',
  `transaction_type` int(11) NOT NULL default '0',
  `transaction_id` int(11) default NULL,
  `error_code` int(11) default NULL,
  `error_message` varchar(50) default NULL,
  `authorization` varchar(6) default NULL,
  `avs_code` char(1) default NULL,
  `cvv2_response` char(1) default NULL,
  `cavv_response` char(1) default NULL,
  `created_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `cc_last_four` varchar(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit_payment_events`
--


/*!40000 ALTER TABLE `credit_payment_events` DISABLE KEYS */;
LOCK TABLES `credit_payment_events` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `credit_payment_events` ENABLE KEYS */;

--
-- Table structure for table `remember_me_tokens`
--

DROP TABLE IF EXISTS `remember_me_tokens`;
CREATE TABLE `remember_me_tokens` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `token` varchar(40) NOT NULL default '',
  `expires` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remember_me_tokens`
--


/*!40000 ALTER TABLE `remember_me_tokens` DISABLE KEYS */;
LOCK TABLES `remember_me_tokens` WRITE;
INSERT INTO `remember_me_tokens` VALUES (3,2,'3a4e5327dcab160cfb9fac865b299a620dd93c54','2006-10-10 20:58:59'),(9,1,'6ae71975f98abd89e40e4d78f38ef804c0431159','2006-10-11 03:49:12');
UNLOCK TABLES;
/*!40000 ALTER TABLE `remember_me_tokens` ENABLE KEYS */;

--
-- Table structure for table `reservation_modifications`
--

DROP TABLE IF EXISTS `reservation_modifications`;
CREATE TABLE `reservation_modifications` (
  `id` int(11) NOT NULL auto_increment,
  `reservation_id` int(11) NOT NULL default '0',
  `modification` varchar(100) default NULL,
  `created_at` datetime NOT NULL default '0000-00-00 00:00:00',
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
  `reservation_id` int(11) NOT NULL default '0',
  `bus_id` int(11) NOT NULL default '0',
  `quantity` int(11) NOT NULL default '0',
  `conductor_wish` int(11) NOT NULL default '0',
  `conductor_status` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation_tickets`
--


/*!40000 ALTER TABLE `reservation_tickets` DISABLE KEYS */;
LOCK TABLES `reservation_tickets` WRITE;
INSERT INTO `reservation_tickets` VALUES (13,10,4,6,0,0),(14,11,4,1,0,0),(15,12,1,1,0,0),(16,13,1,1,1,1),(17,14,1,1,0,0),(18,14,5,2,0,0),(19,15,2,1,0,0),(20,16,1,1,0,0),(21,16,5,3,0,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `reservation_tickets` ENABLE KEYS */;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE `reservations` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `created_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_modified_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `payment_status` int(11) NOT NULL default '0',
  `payment_note` varchar(100) default NULL,
  `total` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservations`
--


/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
LOCK TABLES `reservations` WRITE;
INSERT INTO `reservations` VALUES (10,3,'2006-10-04 02:26:31','2006-10-04 03:10:36',2,NULL,'$168.00'),(11,3,'2006-10-04 03:04:36','2006-10-04 03:04:36',2,NULL,'$28.00'),(12,3,'2006-10-04 03:21:34','2006-10-04 03:21:34',0,NULL,'$0.10'),(13,3,'2006-10-04 03:21:57','2006-10-04 03:21:58',0,NULL,'$0.10'),(14,2,'2006-10-04 03:49:13','2006-10-04 03:49:13',0,NULL,'$0.30'),(15,1,'2006-10-04 03:50:04','2006-10-04 03:50:04',0,NULL,'$0.10'),(16,2,'2006-10-04 03:53:31','2006-10-04 03:53:31',0,NULL,'$0.40');
UNLOCK TABLES;
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
CREATE TABLE `routes` (
  `id` int(11) NOT NULL auto_increment,
  `transport_session_id` int(11) NOT NULL default '0',
  `point_a` varchar(40) NOT NULL default '',
  `point_b` varchar(40) NOT NULL default '',
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
INSERT INTO `routes` VALUES (1,1,'Kenyon','Columbus','','0.10',1),(2,1,'Kenyon','Cleveland','','28.00',1),(3,2,'Kenyon','Columbus','','18.00',1),(4,2,'Kenyon','Cleveland','','28.00',1),(5,3,'Kenyon','Columbus','','18.00',1),(6,3,'Kenyon','Cleveland','','28.00',1),(7,4,'Kenyon','Columbus','','18.00',1),(8,4,'Kenyon','Cleveland','','28.00',1);
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
INSERT INTO `schema_info` VALUES (3);
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
INSERT INTO `sessions` VALUES (1,'3a287998e82da6f669ffd888b296d456','BAh7DjoRd2FpdF9saXN0X2lkMCIKcm91dGV7CDoTc29ydF9kaXJlY3Rpb24i\nCGFzYzoJc29ydDA6CXBhZ2VpBjoNYWRtaW5faWRpBiIOcmV0dXJuLXRvMDoW\ncmVzZXJ2YXRpb25fcHJpY2VvOgpNb25leQY6C0BjZW50c2kPOgx1c2VyX2lk\naQY6HmNhc2hfcmVzZXJ2YXRpb25zX2FsbG93ZWRUIgpmbGFzaElDOidBY3Rp\nb25Db250cm9sbGVyOjpGbGFzaDo6Rmxhc2hIYXNoewAGOgpAdXNlZHsAOhhy\nZXNlcnZhdGlvbl9kZXRhaWxzWwZbB286CEJ1cww6C0Byb3V0ZW86NUFjdGl2\nZVJlY29yZDo6QXNzb2NpYXRpb25zOjpCZWxvbmdzVG9Bc3NvY2lhdGlvbgk6\nDEBsb2FkZWRUOgxAdGFyZ2V0bzoKUm91dGUIOhdAdHJhbnNwb3J0X3Nlc3Np\nb25vOxQJOxVUOxZvOhVUcmFuc3BvcnRTZXNzaW9uBzoMQGVycm9yc286GUFj\ndGl2ZVJlY29yZDo6RXJyb3JzBzoKQGJhc2VAFDsaewA6EEBhdHRyaWJ1dGVz\newsiImNhc2hfcmVzZXJ2YXRpb25zX2luZm9ybWF0aW9uIiNUaHVyc2RheSwg\nT2N0b2JlciA1IGF0IDEyIG5vb24iCW5hbWUiGU9jdG9iZXIgUmVhZGluZyBE\nYXlzIhlzZXNzaW9uX2Nsb3NpbmdfZGF0ZSIYMjAwNi0xMC0wOSAyMDowMDow\nMCIHaWQiBjEiHnJlc2VydmF0aW9uc19vcGVuaW5nX2RhdGUiGDIwMDYtMTAt\nMDEgMjE6Mzc6MDAiI2Nhc2hfcmVzZXJ2YXRpb25zX2Nsb3NpbmdfZGF0ZSIY\nMjAwNi0xMC0wMyAyMzo1OTowMDoQQHJlZmxlY3Rpb25vOjRBY3RpdmVSZWNv\ncmQ6OlJlZmxlY3Rpb246OkFzc29jaWF0aW9uUmVmbGVjdGlvbg06DUBvcHRp\nb25zewA6E0BhY3RpdmVfcmVjb3JkYwpSb3V0ZToQQGNsYXNzX25hbWUiFVRy\nYW5zcG9ydFNlc3Npb246CkBuYW1lOhZ0cmFuc3BvcnRfc2Vzc2lvbjoLQGts\nYXNzYxVUcmFuc3BvcnRTZXNzaW9uOgtAbWFjcm86D2JlbG9uZ3NfdG86FkBw\ncmltYXJ5X2tleV9uYW1lIhl0cmFuc3BvcnRfc2Vzc2lvbl9pZDoYQHRocm91\nZ2hfcmVmbGVjdGlvbkY6C0Bvd25lckASOxpvOxsHOxxAEjsaewA7HXsMIgpw\ncmljZSIJMC4xMCIZdHJhbnNwb3J0X3Nlc3Npb25faWQiBjEiEGluZm9ybWF0\naW9uIgAiB2lkIgYxIgxwb2ludF9hIgtLZW55b24iDHBvaW50X2IiDUNvbHVt\nYnVzIhJkaXNwbGF5X29yZGVyIgYxOx5vOx8NOyB7ADshYwhCdXM7IiIKUm91\ndGU7IzoKcm91dGU7JUAmOyY7JzsoIg1yb3V0ZV9pZDspRjsqQBA6EkByZXNl\ncnZhdGlvbnMwOhxAd2FpdF9saXN0X3Jlc2VydmF0aW9uczA7Gm87Gwc7HEAQ\nOxp7ADocQG5ld19yZWNvcmRfYmVmb3JlX3NhdmUwOx17DCIPZ29pbmdfYXdh\neSIGMSITb2NjdXBpZWRfc2VhdHNpByIKc2VhdHMiBzU0Ih5yZXNlcnZhdGlv\nbnNfY2xvc2luZ19kYXRldToJVGltZQ2vpBqAAAAAACIHaWQiBjEiDmRlcGFy\ndHVyZSIYMjAwNi0xMC0wNiAxMjowMDowMCINcm91dGVfaWQiBjE6GUByZXNl\ncnZhdGlvbl90aWNrZXRzMGkG\n','2006-10-03 23:25:22'),(2,'6f8f34e34c803eb8f01d2ab8eff2b915','BAh7DyIIYnVzewg6CXBhZ2VpBjoTc29ydF9kaXJlY3Rpb24iCGFzYzoJc29y\ndDA6EXdhaXRfbGlzdF9pZDA6DWFkbWluX2lkaQY6GHJlc2VydmF0aW9uX2Rl\ndGFpbHNbB1sHbzoIQnVzDjoLQHJvdXRlbzo1QWN0aXZlUmVjb3JkOjpBc3Nv\nY2lhdGlvbnM6OkJlbG9uZ3NUb0Fzc29jaWF0aW9uCToMQGxvYWRlZFQ6DEB0\nYXJnZXRvOgpSb3V0ZQg6F0B0cmFuc3BvcnRfc2Vzc2lvbm87DQk7DlQ7D286\nFVRyYW5zcG9ydFNlc3Npb24HOgxAZXJyb3JzbzoZQWN0aXZlUmVjb3JkOjpF\ncnJvcnMHOgpAYmFzZUAPOxN7ADoQQGF0dHJpYnV0ZXN7CyIJbmFtZSIZT2N0\nb2JlciBSZWFkaW5nIERheXMiImNhc2hfcmVzZXJ2YXRpb25zX2luZm9ybWF0\naW9uIiNUaHVyc2RheSwgT2N0b2JlciA1IGF0IDEyIG5vb24iB2lkIgYxIhlz\nZXNzaW9uX2Nsb3NpbmdfZGF0ZSIYMjAwNi0xMC0wOSAyMDowMDowMCIecmVz\nZXJ2YXRpb25zX29wZW5pbmdfZGF0ZSIYMjAwNi0xMC0wMSAyMTozNzowMCIj\nY2FzaF9yZXNlcnZhdGlvbnNfY2xvc2luZ19kYXRlIhgyMDA2LTEwLTA1IDIz\nOjU5OjAwOhBAcmVmbGVjdGlvbm86NEFjdGl2ZVJlY29yZDo6UmVmbGVjdGlv\nbjo6QXNzb2NpYXRpb25SZWZsZWN0aW9uDToNQG9wdGlvbnN7ADoTQGFjdGl2\nZV9yZWNvcmRjClJvdXRlOgpAbmFtZToWdHJhbnNwb3J0X3Nlc3Npb246EEBj\nbGFzc19uYW1lIhVUcmFuc3BvcnRTZXNzaW9uOgtAa2xhc3NjFVRyYW5zcG9y\ndFNlc3Npb246C0BtYWNybzoPYmVsb25nc190bzoWQHByaW1hcnlfa2V5X25h\nbWUiGXRyYW5zcG9ydF9zZXNzaW9uX2lkOhhAdGhyb3VnaF9yZWZsZWN0aW9u\nRjoLQG93bmVyQA07E287FAc7FUANOxN7ADsWewwiCnByaWNlIgkwLjEwIhl0\ncmFuc3BvcnRfc2Vzc2lvbl9pZCIGMSIHaWQiBjEiEGluZm9ybWF0aW9uIgAi\nDHBvaW50X2EiC0tlbnlvbiIMcG9pbnRfYiINQ29sdW1idXMiEmRpc3BsYXlf\nb3JkZXIiBjE7F287GA07GXsAOxpjCEJ1czsbOgpyb3V0ZTsdIgpSb3V0ZTse\nQCE7HzsgOyEiDXJvdXRlX2lkOyJGOyNACzocQG5ld19yZWNvcmRfYmVmb3Jl\nX3NhdmUwOhxAd2FpdF9saXN0X3Jlc2VydmF0aW9uczA6EUB0cmlwX3JlcG9y\ndDA6DkB3YWxrX29uczA7E287FAc7FUALOxN7ADsWew0iD2dvaW5nX2F3YXki\nBjEiE29jY3VwaWVkX3NlYXRzaQkiEXJlcG9ydF90b2tlbjAiCnNlYXRzIgc1\nNCIecmVzZXJ2YXRpb25zX2Nsb3NpbmdfZGF0ZXU6CVRpbWUNrKQagAAAAAAi\nB2lkIgYxIg5kZXBhcnR1cmUiGDIwMDYtMTAtMDYgMTI6MDA6MDAiDXJvdXRl\nX2lkIgYxOhJAcmVzZXJ2YXRpb25zMDoZQHJlc2VydmF0aW9uX3RpY2tldHMw\naQZbB287Cw47DG87DQk7DlQ7D287EAg7EW87DQk7DlQ7D287Egc7E287FAc7\nFUBROxN7ADsWewsiCW5hbWUiGU9jdG9iZXIgUmVhZGluZyBEYXlzIiJjYXNo\nX3Jlc2VydmF0aW9uc19pbmZvcm1hdGlvbiIjVGh1cnNkYXksIE9jdG9iZXIg\nNSBhdCAxMiBub29uIgdpZCIGMSIZc2Vzc2lvbl9jbG9zaW5nX2RhdGUiGDIw\nMDYtMTAtMDkgMjA6MDA6MDAiHnJlc2VydmF0aW9uc19vcGVuaW5nX2RhdGUi\nGDIwMDYtMTAtMDEgMjE6Mzc6MDAiI2Nhc2hfcmVzZXJ2YXRpb25zX2Nsb3Np\nbmdfZGF0ZSIYMjAwNi0xMC0wNSAyMzo1OTowMDsXQB87I0BPOxNvOxQHOxVA\nTzsTewA7FnsMIgpwcmljZSIJMC4xMCIZdHJhbnNwb3J0X3Nlc3Npb25faWQi\nBjEiB2lkIgYxIhBpbmZvcm1hdGlvbiIAIgxwb2ludF9hIgtLZW55b24iDHBv\naW50X2IiDUNvbHVtYnVzIhJkaXNwbGF5X29yZGVyIgYxOxdANjsjQE07JTA7\nJjA7JzA7KDA7E287FAc7FUBNOxN7ADsWew0iD2dvaW5nX2F3YXkiBjAiE29j\nY3VwaWVkX3NlYXRzaQoiEXJlcG9ydF90b2tlbjAiCnNlYXRzIgc1NCIecmVz\nZXJ2YXRpb25zX2Nsb3NpbmdfZGF0ZXU7KQ0spRqAAAAAACIHaWQiBjUiDmRl\ncGFydHVyZSIYMjAwNi0xMC0xMCAxNTowMDowMCINcm91dGVfaWQiBjE7KjA7\nKzBpCCIWdHJhbnNwb3J0X3Nlc3Npb257CDsAaQY7BiIIYXNjOwcwIg5yZXR1\ncm4tdG8wOhZyZXNlcnZhdGlvbl9wcmljZW86Ck1vbmV5BjoLQGNlbnRzaS0i\nCmZsYXNoSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7\nAAY6CkB1c2VkewA6HmNhc2hfcmVzZXJ2YXRpb25zX2FsbG93ZWRUOgx1c2Vy\nX2lkaQc=\n','2006-10-04 03:53:32'),(3,'b7fb159ea9a12cb15bdd2e73ba88154c','BAh7CDoNYWRtaW5faWRpBiIOcmV0dXJuLXRvIiUvcmVzZXJ2YXRpb25zL2dl\ndF9vbl93YWl0X2xpc3QvNCIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxlcjo6\nRmxhc2g6OkZsYXNoSGFzaHsABjoKQHVzZWR7AA==\n','2006-10-03 07:49:06'),(4,'8d35e82d1bdbf1222b99f4baadd6daac','BAh7DjoNYWRtaW5faWRpBiIIYnVzewg6CXBhZ2VpBjoJc29ydDA6E3NvcnRf\nZGlyZWN0aW9uIghhc2M6EXdhaXRfbGlzdF9pZCIGNCIKcm91dGV7CDsGaQY7\nBzA7CCIIYXNjOhhyZXNlcnZhdGlvbl9kZXRhaWxzWwZbB286NUFjdGl2ZVJl\nY29yZDo6QXNzb2NpYXRpb25zOjpCZWxvbmdzVG9Bc3NvY2lhdGlvbgk6EEBy\nZWZsZWN0aW9ubzo0QWN0aXZlUmVjb3JkOjpSZWZsZWN0aW9uOjpBc3NvY2lh\ndGlvblJlZmxlY3Rpb24NOgtAa2xhc3NjCEJ1czoNQG9wdGlvbnN7ADoTQGFj\ndGl2ZV9yZWNvcmRjGFdhaXRMaXN0UmVzZXJ2YXRpb246FkBwcmltYXJ5X2tl\neV9uYW1lIgtidXNfaWQ6GEB0aHJvdWdoX3JlZmxlY3Rpb25GOgtAbWFjcm86\nD2JlbG9uZ3NfdG86CkBuYW1lOghidXM6EEBjbGFzc19uYW1lIghCdXM6C0Bv\nd25lcm86GFdhaXRMaXN0UmVzZXJ2YXRpb24HOhBAYXR0cmlidXRlc3sKIhNz\ncG90X29wZW5fdGlsbCIYMjAwNi0xMC0wNCAwODoxMjoyNyIHaWQiBjQiC2J1\nc19pZCIGNCIMdXNlcl9pZCIGMyIPY3JlYXRlZF9hdCIYMjAwNi0xMC0wMyAw\nODoxMjoxMzoJQGJ1c0APOgxAdGFyZ2V0bzoIQnVzCjoMQGVycm9yc286GUFj\ndGl2ZVJlY29yZDo6RXJyb3JzBzseewA6CkBiYXNlQCI6HEBuZXdfcmVjb3Jk\nX2JlZm9yZV9zYXZlMDsaewwiD2dvaW5nX2F3YXkiBjEiE29jY3VwaWVkX3Nl\nYXRzaQgiCnNlYXRzIgY2Ih5yZXNlcnZhdGlvbnNfY2xvc2luZ19kYXRldToJ\nVGltZQ2vpBqAAAAAACIHaWQiBjQiDmRlcGFydHVyZSIYMjAwNi0xMC0wNiAx\nNzowMDowMCINcm91dGVfaWQiBjI6HEB3YWl0X2xpc3RfcmVzZXJ2YXRpb25z\nbzozQWN0aXZlUmVjb3JkOjpBc3NvY2lhdGlvbnM6Okhhc01hbnlBc3NvY2lh\ndGlvbgs7DG87DQ07DkATOxBAETsPewA7ESILYnVzX2lkOxJGOxU6G3dhaXRf\nbGlzdF9yZXNlcnZhdGlvbnM7EzoNaGFzX21hbnk7FyIYV2FpdExpc3RSZXNl\ncnZhdGlvbjoMQGxvYWRlZFQ7HFsHbzsZBjsaewoiE3Nwb3Rfb3Blbl90aWxs\nIhgyMDA2LTEwLTA0IDA4OjEyOjQzIgdpZCIGMSIMdXNlcl9pZCIGMiILYnVz\nX2lkIgY0Ig9jcmVhdGVkX2F0IhgyMDA2LTEwLTAzIDA2OjE5OjEzbzsZBjsa\newoiE3Nwb3Rfb3Blbl90aWxsIhgyMDA2LTEwLTA0IDA4OjEyOjQzIgdpZCIG\nMiIMdXNlcl9pZCIGMSILYnVzX2lkIgY0Ig9jcmVhdGVkX2F0IhgyMDA2LTEw\nLTAzIDA3OjMzOjAwOxhAIjoRQGNvdW50ZXJfc3FsIiZ3YWl0X2xpc3RfcmVz\nZXJ2YXRpb25zLmJ1c19pZCA9IDQ6EEBmaW5kZXJfc3FsQFE6C0Byb3V0ZW87\nCwk7DG87DQ07DmMKUm91dGU7EEAROw97ADsRIg1yb3V0ZV9pZDsSRjsVOgpy\nb3V0ZTsTOxQ7FyIKUm91dGU7J1Q7HG86ClJvdXRlCDsebzsfBzseewA7IEBY\nOxp7DCIKcHJpY2UiCjI4LjAwIhl0cmFuc3BvcnRfc2Vzc2lvbl9pZCIGMSIQ\naW5mb3JtYXRpb24iACIHaWQiBjIiDHBvaW50X2EiC0tlbnlvbiIMcG9pbnRf\nYiIOQ2xldmVsYW5kIhJkaXNwbGF5X29yZGVyIgYxOhdAdHJhbnNwb3J0X3Nl\nc3Npb25vOwsJOwxvOw0NOw5jFVRyYW5zcG9ydFNlc3Npb247EEBUOw97ADsR\nIhl0cmFuc3BvcnRfc2Vzc2lvbl9pZDsSRjsVOhZ0cmFuc3BvcnRfc2Vzc2lv\nbjsTOxQ7FyIVVHJhbnNwb3J0U2Vzc2lvbjsnVDscbzoVVHJhbnNwb3J0U2Vz\nc2lvbgc7Hm87Hwc7HnsAOyBAcDsaewsiImNhc2hfcmVzZXJ2YXRpb25zX2lu\nZm9ybWF0aW9uIiNUaHVyc2RheSwgT2N0b2JlciA1IGF0IDEyIG5vb24iCW5h\nbWUiGU9jdG9iZXIgUmVhZGluZyBEYXlzIhlzZXNzaW9uX2Nsb3NpbmdfZGF0\nZSIYMjAwNi0xMC0wOSAyMDowMDowMCIHaWQiBjEiHnJlc2VydmF0aW9uc19v\ncGVuaW5nX2RhdGUiGDIwMDYtMTAtMDEgMjE6Mzc6MDAiI2Nhc2hfcmVzZXJ2\nYXRpb25zX2Nsb3NpbmdfZGF0ZSIYMjAwNi0xMC0wMyAyMzo1OTowMDsYQFg7\nGEAiOydUaQY6DHVzZXJfaWRpCDoWcmVzZXJ2YXRpb25fcHJpY2VvOgpNb25l\neQY6C0BjZW50c2YJMjgwMDoeY2FzaF9yZXNlcnZhdGlvbnNfYWxsb3dlZFQi\nCmZsYXNoSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7\nAAY6CkB1c2VkewA=\n','2006-10-03 08:14:44'),(5,'5dccfc32ca30ffb15018302e85ddea77','BAh7CCIWdHJhbnNwb3J0X3Nlc3Npb257CDoTc29ydF9kaXJlY3Rpb24iCGFz\nYzoJc29ydDA6CXBhZ2VpBjoNYWRtaW5faWRpBiIKZmxhc2hJQzonQWN0aW9u\nQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNoSGFzaHsABjoKQHVzZWR7AA==\n','2006-10-03 22:51:51'),(6,'bd540045cf17624949d67a57a3c23a50','BAh7BiIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNo\nSGFzaHsABjoKQHVzZWR7AA==\n','2006-10-03 20:59:45'),(7,'3c6e2bc2c582311baefa07f918d6fb80','BAh7DSIIYnVzewg6CXBhZ2VpBjoTc29ydF9kaXJlY3Rpb24iCGFzYzoJc29y\ndDA6EXdhaXRfbGlzdF9pZDA6DWFkbWluX2lkaQY6GHJlc2VydmF0aW9uX2Rl\ndGFpbHNbBlsHbzoIQnVzBzoLQHJvdXRlbzo1QWN0aXZlUmVjb3JkOjpBc3Nv\nY2lhdGlvbnM6OkJlbG9uZ3NUb0Fzc29jaWF0aW9uCToMQGxvYWRlZFQ6DEB0\nYXJnZXRvOgpSb3V0ZQc6F0B0cmFuc3BvcnRfc2Vzc2lvbm87DQk7DlQ7D286\nFVRyYW5zcG9ydFNlc3Npb24GOhBAYXR0cmlidXRlc3sLIgluYW1lIhlPY3Rv\nYmVyIFJlYWRpbmcgRGF5cyIiY2FzaF9yZXNlcnZhdGlvbnNfaW5mb3JtYXRp\nb24iI1RodXJzZGF5LCBPY3RvYmVyIDUgYXQgMTIgbm9vbiIHaWQiBjEiGXNl\nc3Npb25fY2xvc2luZ19kYXRlIhgyMDA2LTEwLTA5IDIwOjAwOjAwIh5yZXNl\ncnZhdGlvbnNfb3BlbmluZ19kYXRlIhgyMDA2LTEwLTAxIDIxOjM3OjAwIiNj\nYXNoX3Jlc2VydmF0aW9uc19jbG9zaW5nX2RhdGUiGDIwMDYtMTAtMDMgMjM6\nNTk6MDA6EEByZWZsZWN0aW9ubzo0QWN0aXZlUmVjb3JkOjpSZWZsZWN0aW9u\nOjpBc3NvY2lhdGlvblJlZmxlY3Rpb24NOg1Ab3B0aW9uc3sAOhNAYWN0aXZl\nX3JlY29yZGMKUm91dGU6CkBuYW1lOhZ0cmFuc3BvcnRfc2Vzc2lvbjoQQGNs\nYXNzX25hbWUiFVRyYW5zcG9ydFNlc3Npb246C0BrbGFzc2MVVHJhbnNwb3J0\nU2Vzc2lvbjoLQG1hY3JvOg9iZWxvbmdzX3RvOhZAcHJpbWFyeV9rZXlfbmFt\nZSIZdHJhbnNwb3J0X3Nlc3Npb25faWQ6GEB0aHJvdWdoX3JlZmxlY3Rpb25G\nOgtAb3duZXJADTsTewwiCnByaWNlIgoyOC4wMCIZdHJhbnNwb3J0X3Nlc3Np\nb25faWQiBjEiB2lkIgYyIhBpbmZvcm1hdGlvbiIAIgxwb2ludF9hIgtLZW55\nb24iDHBvaW50X2IiDkNsZXZlbGFuZCISZGlzcGxheV9vcmRlciIGMTsUbzsV\nDTsWewA7F2MIQnVzOxg6CnJvdXRlOxoiClJvdXRlOxtAHzscOx07HiINcm91\ndGVfaWQ7H0Y7IEALOxN7DSIPZ29pbmdfYXdheSIGMSITb2NjdXBpZWRfc2Vh\ndHMiBjAiCnNlYXRzIgY2IhFyZXBvcnRfdG9rZW4wIgdpZCIGNCIecmVzZXJ2\nYXRpb25zX2Nsb3NpbmdfZGF0ZSIYMjAwNi0xMC0wNSAwODowMDowMCIOZGVw\nYXJ0dXJlIhgyMDA2LTEwLTA2IDE3OjAwOjAwIg1yb3V0ZV9pZCIGMmkLOhZy\nZXNlcnZhdGlvbl9wcmljZW86Ck1vbmV5BjoLQGNlbnRzaQKgQSIKZmxhc2hJ\nQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNoSGFzaHsABjoKQHVz\nZWR7ADoeY2FzaF9yZXNlcnZhdGlvbnNfYWxsb3dlZEY6DHVzZXJfaWRpBg==\n','2006-10-04 03:06:00'),(8,'3be7ac5d8c91c5c1bb415c0e4a040dea','BAh7DyIIYnVzewg6CXBhZ2VpBjoTc29ydF9kaXJlY3Rpb24iCGFzYzoJc29y\ndDA6EXdhaXRfbGlzdF9pZDA6DWFkbWluX2lkaQYiFnRyYW5zcG9ydF9zZXNz\naW9uewg7AGkGOwYiCGFzYzsHMDoYcmVzZXJ2YXRpb25fZGV0YWlsc1sGWwdv\nOghCdXMOOgtAcm91dGVvOjVBY3RpdmVSZWNvcmQ6OkFzc29jaWF0aW9uczo6\nQmVsb25nc1RvQXNzb2NpYXRpb24JOgxAbG9hZGVkVDoMQHRhcmdldG86ClJv\ndXRlCDoXQHRyYW5zcG9ydF9zZXNzaW9ubzsNCTsOVDsPbzoVVHJhbnNwb3J0\nU2Vzc2lvbgc6DEBlcnJvcnNvOhlBY3RpdmVSZWNvcmQ6OkVycm9ycwc6CkBi\nYXNlQBI7E3sAOhBAYXR0cmlidXRlc3sLIgluYW1lIhlPY3RvYmVyIFJlYWRp\nbmcgRGF5cyIiY2FzaF9yZXNlcnZhdGlvbnNfaW5mb3JtYXRpb24iI1RodXJz\nZGF5LCBPY3RvYmVyIDUgYXQgMTIgbm9vbiIHaWQiBjEiGXNlc3Npb25fY2xv\nc2luZ19kYXRlIhgyMDA2LTEwLTA5IDIwOjAwOjAwIh5yZXNlcnZhdGlvbnNf\nb3BlbmluZ19kYXRlIhgyMDA2LTEwLTAxIDIxOjM3OjAwIiNjYXNoX3Jlc2Vy\ndmF0aW9uc19jbG9zaW5nX2RhdGUiGDIwMDYtMTAtMDUgMjM6NTk6MDA6EEBy\nZWZsZWN0aW9ubzo0QWN0aXZlUmVjb3JkOjpSZWZsZWN0aW9uOjpBc3NvY2lh\ndGlvblJlZmxlY3Rpb24NOg1Ab3B0aW9uc3sAOhNAYWN0aXZlX3JlY29yZGMK\nUm91dGU6CkBuYW1lOhZ0cmFuc3BvcnRfc2Vzc2lvbjoQQGNsYXNzX25hbWUi\nFVRyYW5zcG9ydFNlc3Npb246C0BrbGFzc2MVVHJhbnNwb3J0U2Vzc2lvbjoL\nQG1hY3JvOg9iZWxvbmdzX3RvOhZAcHJpbWFyeV9rZXlfbmFtZSIZdHJhbnNw\nb3J0X3Nlc3Npb25faWQ6GEB0aHJvdWdoX3JlZmxlY3Rpb25GOgtAb3duZXJA\nEDsTbzsUBzsVQBA7E3sAOxZ7DCIKcHJpY2UiCTAuMTAiGXRyYW5zcG9ydF9z\nZXNzaW9uX2lkIgYxIgdpZCIGMSIQaW5mb3JtYXRpb24iACIMcG9pbnRfYSIL\nS2VueW9uIgxwb2ludF9iIg1Db2x1bWJ1cyISZGlzcGxheV9vcmRlciIGMTsX\nbzsYDTsZewA7GmMIQnVzOxs6CnJvdXRlOx0iClJvdXRlOx5AJDsfOyA7ISIN\ncm91dGVfaWQ7IkY7I0AOOhxAbmV3X3JlY29yZF9iZWZvcmVfc2F2ZTA6HEB3\nYWl0X2xpc3RfcmVzZXJ2YXRpb25zMDoRQHRyaXBfcmVwb3J0MDoOQHdhbGtf\nb25zMDsTbzsUBzsVQA47E3sAOxZ7DSIPZ29pbmdfYXdheSIGMSITb2NjdXBp\nZWRfc2VhdHNpByIRcmVwb3J0X3Rva2VuMCIKc2VhdHMiBzU0Ih5yZXNlcnZh\ndGlvbnNfY2xvc2luZ19kYXRldToJVGltZQ2spBqAAAAAACIHaWQiBjEiDmRl\ncGFydHVyZSIYMjAwNi0xMC0wNiAxMjowMDowMCINcm91dGVfaWQiBjE6EkBy\nZXNlcnZhdGlvbnMwOhlAcmVzZXJ2YXRpb25fdGlja2V0czBpBiIOcmV0dXJu\nLXRvMDoWcmVzZXJ2YXRpb25fcHJpY2VvOgpNb25leQY6C0BjZW50c2kPOh5j\nYXNoX3Jlc2VydmF0aW9uc19hbGxvd2VkVCIKZmxhc2hJQzonQWN0aW9uQ29u\ndHJvbGxlcjo6Rmxhc2g6OkZsYXNoSGFzaHsABjoKQHVzZWR7ADoMdXNlcl9p\nZGkI\n','2006-10-04 03:25:59'),(9,'c4a3e93173ec202da8979262ba68bed1','BAh7CzoRd2FpdF9saXN0X2lkMDoYcmVzZXJ2YXRpb25fZGV0YWlsc1sAOhZy\nZXNlcnZhdGlvbl9wcmljZW86Ck1vbmV5BjoLQGNlbnRzaQAiCmZsYXNoSUM6\nJ0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7AAY6CkB1c2Vk\newA6HmNhc2hfcmVzZXJ2YXRpb25zX2FsbG93ZWRUOgx1c2VyX2lkaQY=\n','2006-10-04 04:59:29'),(10,'8ef6b44a690820eedaf256be8c4fe0b0','BAh7BiIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNo\nSGFzaHsABjoKQHVzZWR7AA==\n','2006-10-06 14:40:22');
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
INSERT INTO `settings` VALUES (1,'08:00:00',10,'17:00:00');
UNLOCK TABLES;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

--
-- Table structure for table `stored_payment_addresses`
--

DROP TABLE IF EXISTS `stored_payment_addresses`;
CREATE TABLE `stored_payment_addresses` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
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
  `name` varchar(40) NOT NULL default '',
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
INSERT INTO `transport_sessions` VALUES (1,'October Reading Days','2006-10-01 21:37:00','2006-10-09 20:00:00','2006-10-05 23:59:00','Thursday, October 5 at 12 noon'),(2,'Thanksgiving Break','2006-11-07 00:00:00','2006-11-25 20:00:00','2006-11-12 23:59:00',''),(3,'Winter Break','2006-12-08 00:00:00','2007-01-13 20:00:00','2006-12-13 23:59:00',''),(4,'Spring Break','2007-02-20 00:00:00','2007-03-17 20:00:00','2007-02-25 23:59:00','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `transport_sessions` ENABLE KEYS */;

--
-- Table structure for table `trip_reports`
--

DROP TABLE IF EXISTS `trip_reports`;
CREATE TABLE `trip_reports` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `bus_id` int(11) NOT NULL default '0',
  `refund_issued` int(11) default '0',
  `on_time` int(11) default '1',
  `comment` text,
  `created_at` datetime NOT NULL default '0000-00-00 00:00:00',
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
  `login_id` varchar(255) NOT NULL default '',
  `reset_password_token` varchar(40) default NULL,
  `phone` varchar(12) default NULL,
  `salted_password` varchar(40) default NULL,
  `salt` varchar(40) NOT NULL default '',
  `verified` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--


/*!40000 ALTER TABLE `users` DISABLE KEYS */;
LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (1,'joe@wtown.org','108f290734',NULL,'e0446c5d15','8e8779e6d7',1),(2,'07wcu','63f3307850','6127184757','f47ae708ff','ee4b0656e2',1),(3,'07ajj','9a098b2341','1112223333','122186d2ee','95a85b89d9',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--
-- Table structure for table `wait_list_reservations`
--

DROP TABLE IF EXISTS `wait_list_reservations`;
CREATE TABLE `wait_list_reservations` (
  `id` int(11) NOT NULL auto_increment,
  `bus_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `created_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `spot_open_till` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wait_list_reservations`
--


/*!40000 ALTER TABLE `wait_list_reservations` DISABLE KEYS */;
LOCK TABLES `wait_list_reservations` WRITE;
INSERT INTO `wait_list_reservations` VALUES (6,4,3,'2006-10-04 02:27:01',NULL),(8,4,1,'2006-10-04 03:02:14',NULL),(9,40,3,'2006-10-04 03:20:38',NULL),(10,40,1,'2006-10-04 03:49:17',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `wait_list_reservations` ENABLE KEYS */;

--
-- Table structure for table `walk_ons`
--

DROP TABLE IF EXISTS `walk_ons`;
CREATE TABLE `walk_ons` (
  `id` int(11) NOT NULL auto_increment,
  `bus_id` int(11) NOT NULL default '0',
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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

