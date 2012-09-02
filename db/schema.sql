-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Rivendell
-- ------------------------------------------------------
-- Server version	5.5.24-7-log

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
-- Table structure for table `AUDIO_PERMS`
--

DROP TABLE IF EXISTS `AUDIO_PERMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUDIO_PERMS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `GROUP_NAME` char(10) DEFAULT NULL,
  `SERVICE_NAME` char(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `GROUP_IDX` (`GROUP_NAME`),
  KEY `SERVICE_IDX` (`SERVICE_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AUDIO_PORTS`
--

DROP TABLE IF EXISTS `AUDIO_PORTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUDIO_PORTS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STATION_NAME` char(64) NOT NULL,
  `CARD_NUMBER` int(11) NOT NULL,
  `CLOCK_SOURCE` int(11) DEFAULT '0',
  `INPUT_0_LEVEL` int(11) DEFAULT '0',
  `INPUT_0_TYPE` int(11) DEFAULT '0',
  `INPUT_0_MODE` int(11) DEFAULT '0',
  `INPUT_1_LEVEL` int(11) DEFAULT '0',
  `INPUT_1_TYPE` int(11) DEFAULT '0',
  `INPUT_1_MODE` int(11) DEFAULT '0',
  `INPUT_2_LEVEL` int(11) DEFAULT '0',
  `INPUT_2_TYPE` int(11) DEFAULT '0',
  `INPUT_2_MODE` int(11) DEFAULT '0',
  `INPUT_3_LEVEL` int(11) DEFAULT '0',
  `INPUT_3_TYPE` int(11) DEFAULT '0',
  `INPUT_3_MODE` int(11) DEFAULT '0',
  `INPUT_4_LEVEL` int(11) DEFAULT '0',
  `INPUT_4_TYPE` int(11) DEFAULT '0',
  `INPUT_4_MODE` int(11) DEFAULT '0',
  `INPUT_5_LEVEL` int(11) DEFAULT '0',
  `INPUT_5_TYPE` int(11) DEFAULT '0',
  `INPUT_5_MODE` int(11) DEFAULT '0',
  `INPUT_6_LEVEL` int(11) DEFAULT '0',
  `INPUT_6_TYPE` int(11) DEFAULT '0',
  `INPUT_6_MODE` int(11) DEFAULT '0',
  `INPUT_7_LEVEL` int(11) DEFAULT '0',
  `INPUT_7_TYPE` int(11) DEFAULT '0',
  `INPUT_7_MODE` int(11) DEFAULT '0',
  `OUTPUT_0_LEVEL` int(11) DEFAULT '0',
  `OUTPUT_1_LEVEL` int(11) DEFAULT '0',
  `OUTPUT_2_LEVEL` int(11) DEFAULT '0',
  `OUTPUT_3_LEVEL` int(11) DEFAULT '0',
  `OUTPUT_4_LEVEL` int(11) DEFAULT '0',
  `OUTPUT_5_LEVEL` int(11) DEFAULT '0',
  `OUTPUT_6_LEVEL` int(11) DEFAULT '0',
  `OUTPUT_7_LEVEL` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `STATION_NAME_IDX` (`STATION_NAME`),
  KEY `CARD_NUMBER_IDX` (`CARD_NUMBER`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AUTOFILLS`
--

DROP TABLE IF EXISTS `AUTOFILLS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTOFILLS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERVICE` char(10) DEFAULT NULL,
  `CART_NUMBER` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SERVICE_IDX` (`SERVICE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AUX_METADATA`
--

DROP TABLE IF EXISTS `AUX_METADATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUX_METADATA` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FEED_ID` int(10) unsigned DEFAULT NULL,
  `VAR_NAME` char(16) DEFAULT NULL,
  `CAPTION` char(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FEED_ID_IDX` (`FEED_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BNS_CLK`
--

DROP TABLE IF EXISTS `BNS_CLK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BNS_CLK` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` char(64) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `LENGTH` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `EVENT_NAME_IDX` (`EVENT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BNS_POST`
--

DROP TABLE IF EXISTS `BNS_POST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BNS_POST` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BNS_PRE`
--

DROP TABLE IF EXISTS `BNS_PRE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BNS_PRE` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BNS_RULES`
--

DROP TABLE IF EXISTS `BNS_RULES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BNS_RULES` (
  `CODE` varchar(10) NOT NULL,
  `MAX_ROW` int(10) unsigned DEFAULT NULL,
  `MIN_WAIT` int(10) unsigned DEFAULT NULL,
  `NOT_AFTER` varchar(10) DEFAULT NULL,
  `OR_AFTER` varchar(10) DEFAULT NULL,
  `OR_AFTER_II` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CART`
--

DROP TABLE IF EXISTS `CART`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CART` (
  `NUMBER` int(10) unsigned NOT NULL,
  `TYPE` int(10) unsigned NOT NULL,
  `GROUP_NAME` char(10) NOT NULL,
  `TITLE` char(255) DEFAULT NULL,
  `ARTIST` char(255) DEFAULT NULL,
  `ALBUM` char(255) DEFAULT NULL,
  `YEAR` date DEFAULT NULL,
  `ISRC` char(12) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `CLIENT` char(64) DEFAULT NULL,
  `AGENCY` char(64) DEFAULT NULL,
  `PUBLISHER` char(64) DEFAULT NULL,
  `COMPOSER` char(64) DEFAULT NULL,
  `USER_DEFINED` char(255) DEFAULT NULL,
  `USAGE_CODE` int(11) DEFAULT '0',
  `FORCED_LENGTH` int(10) unsigned DEFAULT NULL,
  `AVERAGE_LENGTH` int(10) unsigned DEFAULT NULL,
  `LENGTH_DEVIATION` int(10) unsigned DEFAULT '0',
  `AVERAGE_SEGUE_LENGTH` int(10) unsigned DEFAULT NULL,
  `AVERAGE_HOOK_LENGTH` int(10) unsigned DEFAULT '0',
  `CUT_QUANTITY` int(10) unsigned DEFAULT NULL,
  `LAST_CUT_PLAYED` int(10) unsigned DEFAULT NULL,
  `PLAY_ORDER` int(10) unsigned DEFAULT NULL,
  `VALIDITY` int(10) unsigned DEFAULT '2',
  `START_DATETIME` datetime DEFAULT NULL,
  `END_DATETIME` datetime DEFAULT NULL,
  `ENFORCE_LENGTH` enum('N','Y') DEFAULT 'N',
  `PRESERVE_PITCH` enum('N','Y') DEFAULT 'N',
  `ASYNCRONOUS` enum('N','Y') DEFAULT 'N',
  `OWNER` char(64) DEFAULT NULL,
  `MACROS` text,
  `NOTES` text,
  `METADATA_DATETIME` datetime DEFAULT NULL,
  `SCHED_CODES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NUMBER`),
  KEY `GROUP_NAME_IDX` (`GROUP_NAME`),
  KEY `TITLE_IDX` (`TITLE`),
  KEY `ARTIST_IDX` (`ARTIST`),
  KEY `ALBUM_IDX` (`ALBUM`),
  KEY `LABEL_IDX` (`LABEL`),
  KEY `CLIENT_IDX` (`CLIENT`),
  KEY `AGENCY_IDX` (`AGENCY`),
  KEY `PUBLISHER_IDX` (`PUBLISHER`),
  KEY `COMPOSER_IDX` (`COMPOSER`),
  KEY `USER_DEFINED_IDX` (`USER_DEFINED`),
  KEY `OWNER_IDX` (`OWNER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CLIPBOARD`
--

DROP TABLE IF EXISTS `CLIPBOARD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIPBOARD` (
  `CUT_NAME` char(12) NOT NULL,
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `DESCRIPTION` char(64) DEFAULT NULL,
  `OUTCUE` char(64) DEFAULT NULL,
  `LENGTH` int(10) unsigned DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `ORIGIN_NAME` char(64) DEFAULT NULL,
  `WEIGHT` int(10) unsigned DEFAULT '1',
  `LAST_PLAY_DATETIME` datetime DEFAULT NULL,
  `PLAY_COUNTER` int(10) unsigned DEFAULT '0',
  `CODING_FORMAT` int(10) unsigned DEFAULT NULL,
  `SAMPLE_RATE` int(10) unsigned DEFAULT NULL,
  `BIT_RATE` int(10) unsigned DEFAULT NULL,
  `CHANNELS` int(10) unsigned DEFAULT NULL,
  `PLAY_GAIN` int(11) DEFAULT '0',
  `START_POINT` int(11) DEFAULT '-1',
  `END_POINT` int(11) DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `SEGUE_START_POINT` int(11) DEFAULT '-1',
  `SEGUE_END_POINT` int(11) DEFAULT '-1',
  `HOOK_START_POINT` int(11) DEFAULT '-1',
  `HOOK_END_POINT` int(11) DEFAULT '-1',
  `TALK_START_POINT` int(11) DEFAULT '-1',
  `TALK_END_POINT` int(11) DEFAULT '-1',
  PRIMARY KEY (`CUT_NAME`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `DESCRIPTION_IDX` (`DESCRIPTION`),
  KEY `OUTCUE_IDX` (`OUTCUE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CLOCKS`
--

DROP TABLE IF EXISTS `CLOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLOCKS` (
  `NAME` char(64) NOT NULL,
  `SHORT_NAME` char(8) DEFAULT NULL,
  `ARTISTSEP` int(10) unsigned DEFAULT NULL,
  `COLOR` char(7) DEFAULT NULL,
  `REMARKS` char(255) DEFAULT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CLOCK_PERMS`
--

DROP TABLE IF EXISTS `CLOCK_PERMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLOCK_PERMS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CLOCK_NAME` char(64) DEFAULT NULL,
  `SERVICE_NAME` char(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `STATION_IDX` (`CLOCK_NAME`),
  KEY `SERVICE_IDX` (`SERVICE_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CUTS`
--

DROP TABLE IF EXISTS `CUTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUTS` (
  `CUT_NAME` char(12) NOT NULL,
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `EVERGREEN` enum('N','Y') DEFAULT 'N',
  `DESCRIPTION` char(64) DEFAULT NULL,
  `OUTCUE` char(64) DEFAULT NULL,
  `ISRC` char(12) DEFAULT NULL,
  `ISCI` char(32) DEFAULT NULL,
  `LENGTH` int(10) unsigned DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `START_DATETIME` datetime DEFAULT NULL,
  `END_DATETIME` datetime DEFAULT NULL,
  `SUN` enum('N','Y') DEFAULT 'Y',
  `MON` enum('N','Y') DEFAULT 'Y',
  `TUE` enum('N','Y') DEFAULT 'Y',
  `WED` enum('N','Y') DEFAULT 'Y',
  `THU` enum('N','Y') DEFAULT 'Y',
  `FRI` enum('N','Y') DEFAULT 'Y',
  `SAT` enum('N','Y') DEFAULT 'Y',
  `START_DAYPART` time DEFAULT NULL,
  `END_DAYPART` time DEFAULT NULL,
  `ORIGIN_NAME` char(64) DEFAULT NULL,
  `WEIGHT` int(10) unsigned DEFAULT '1',
  `LAST_PLAY_DATETIME` datetime DEFAULT NULL,
  `UPLOAD_DATETIME` datetime DEFAULT NULL,
  `PLAY_COUNTER` int(10) unsigned DEFAULT '0',
  `LOCAL_COUNTER` int(10) unsigned DEFAULT '0',
  `VALIDITY` int(10) unsigned DEFAULT '2',
  `CODING_FORMAT` int(10) unsigned DEFAULT NULL,
  `SAMPLE_RATE` int(10) unsigned DEFAULT NULL,
  `BIT_RATE` int(10) unsigned DEFAULT NULL,
  `CHANNELS` int(10) unsigned DEFAULT NULL,
  `PLAY_GAIN` int(11) DEFAULT '0',
  `START_POINT` int(11) DEFAULT '-1',
  `END_POINT` int(11) DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `SEGUE_START_POINT` int(11) DEFAULT '-1',
  `SEGUE_END_POINT` int(11) DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `HOOK_START_POINT` int(11) DEFAULT '-1',
  `HOOK_END_POINT` int(11) DEFAULT '-1',
  `TALK_START_POINT` int(11) DEFAULT '-1',
  `TALK_END_POINT` int(11) DEFAULT '-1',
  PRIMARY KEY (`CUT_NAME`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `DESCRIPTION_IDX` (`DESCRIPTION`),
  KEY `OUTCUE_IDX` (`OUTCUE`),
  KEY `ORIGIN_DATETIME_IDX` (`ORIGIN_DATETIME`),
  KEY `START_DATETIME_IDX` (`START_DATETIME`),
  KEY `END_DATETIME_IDX` (`END_DATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Cuisine_End_CLK`
--

DROP TABLE IF EXISTS `Cuisine_End_CLK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cuisine_End_CLK` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` char(64) NOT NULL,
  `START_TIME` int(11) NOT NULL,
  `LENGTH` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `EVENT_NAME_IDX` (`EVENT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Cuisine_End_RULES`
--

DROP TABLE IF EXISTS `Cuisine_End_RULES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cuisine_End_RULES` (
  `CODE` varchar(10) NOT NULL,
  `MAX_ROW` int(10) unsigned DEFAULT NULL,
  `MIN_WAIT` int(10) unsigned DEFAULT NULL,
  `NOT_AFTER` varchar(10) DEFAULT NULL,
  `OR_AFTER` varchar(10) DEFAULT NULL,
  `OR_AFTER_II` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Cuisine_POST`
--

DROP TABLE IF EXISTS `Cuisine_POST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cuisine_POST` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Cuisine_PRE`
--

DROP TABLE IF EXISTS `Cuisine_PRE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cuisine_PRE` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Cuisine_Start_CLK`
--

DROP TABLE IF EXISTS `Cuisine_Start_CLK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cuisine_Start_CLK` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` char(64) NOT NULL,
  `START_TIME` int(11) NOT NULL,
  `LENGTH` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `EVENT_NAME_IDX` (`EVENT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Cuisine_Start_RULES`
--

DROP TABLE IF EXISTS `Cuisine_Start_RULES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cuisine_Start_RULES` (
  `CODE` varchar(10) NOT NULL,
  `MAX_ROW` int(10) unsigned DEFAULT NULL,
  `MIN_WAIT` int(10) unsigned DEFAULT NULL,
  `NOT_AFTER` varchar(10) DEFAULT NULL,
  `OR_AFTER` varchar(10) DEFAULT NULL,
  `OR_AFTER_II` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DECKS`
--

DROP TABLE IF EXISTS `DECKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DECKS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STATION_NAME` char(64) NOT NULL,
  `CHANNEL` int(10) unsigned NOT NULL,
  `CARD_NUMBER` int(11) DEFAULT '-1',
  `STREAM_NUMBER` int(11) DEFAULT '-1',
  `PORT_NUMBER` int(11) DEFAULT '-1',
  `MON_PORT_NUMBER` int(11) DEFAULT '-1',
  `DEFAULT_MONITOR_ON` enum('N','Y') DEFAULT 'N',
  `PORT_TYPE` enum('A','D') DEFAULT 'A',
  `DEFAULT_FORMAT` int(11) DEFAULT '0',
  `DEFAULT_CHANNELS` int(11) DEFAULT '2',
  `DEFAULT_SAMPRATE` int(11) DEFAULT '44100',
  `DEFAULT_BITRATE` int(11) DEFAULT '0',
  `DEFAULT_THRESHOLD` int(11) DEFAULT '0',
  `SWITCH_STATION` char(64) DEFAULT NULL,
  `SWITCH_MATRIX` int(11) DEFAULT '-1',
  `SWITCH_OUTPUT` int(11) DEFAULT '-1',
  `SWITCH_DELAY` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `STATION_NAME_IDX` (`STATION_NAME`),
  KEY `CHANNEL_IDX` (`CHANNEL`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DROPBOXES`
--

DROP TABLE IF EXISTS `DROPBOXES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DROPBOXES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATION_NAME` char(64) DEFAULT NULL,
  `GROUP_NAME` char(10) DEFAULT NULL,
  `PATH` char(255) DEFAULT NULL,
  `NORMALIZATION_LEVEL` int(11) DEFAULT '1',
  `AUTOTRIM_LEVEL` int(11) DEFAULT '1',
  `SINGLE_CART` enum('N','Y') DEFAULT 'N',
  `TO_CART` int(10) unsigned DEFAULT '0',
  `USE_CARTCHUNK_ID` enum('N','Y') DEFAULT 'N',
  `TITLE_FROM_CARTCHUNK_ID` enum('N','Y') DEFAULT 'N',
  `DELETE_CUTS` enum('N','Y') DEFAULT 'N',
  `DELETE_SOURCE` enum('N','Y') DEFAULT 'Y',
  `METADATA_PATTERN` char(64) DEFAULT NULL,
  `STARTDATE_OFFSET` int(11) DEFAULT '0',
  `ENDDATE_OFFSET` int(11) DEFAULT '0',
  `FIX_BROKEN_FORMATS` enum('N','Y') DEFAULT 'N',
  `LOG_PATH` char(255) DEFAULT NULL,
  `IMPORT_CREATE_DATES` enum('N','Y') DEFAULT 'N',
  `CREATE_STARTDATE_OFFSET` int(11) DEFAULT '0',
  `CREATE_ENDDATE_OFFSET` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `STATION_NAME_IDX` (`STATION_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DROPBOX_PATHS`
--

DROP TABLE IF EXISTS `DROPBOX_PATHS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DROPBOX_PATHS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DROPBOX_ID` int(11) NOT NULL,
  `FILE_PATH` char(255) NOT NULL,
  `FILE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FILE_PATH_IDX` (`DROPBOX_ID`,`FILE_PATH`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EMISSION2_CLK`
--

DROP TABLE IF EXISTS `EMISSION2_CLK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMISSION2_CLK` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` char(64) NOT NULL,
  `START_TIME` int(11) NOT NULL,
  `LENGTH` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `EVENT_NAME_IDX` (`EVENT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EMISSION2_RULES`
--

DROP TABLE IF EXISTS `EMISSION2_RULES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMISSION2_RULES` (
  `CODE` varchar(10) NOT NULL,
  `MAX_ROW` int(10) unsigned DEFAULT NULL,
  `MIN_WAIT` int(10) unsigned DEFAULT NULL,
  `NOT_AFTER` varchar(10) DEFAULT NULL,
  `OR_AFTER` varchar(10) DEFAULT NULL,
  `OR_AFTER_II` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EMISSION_CLK`
--

DROP TABLE IF EXISTS `EMISSION_CLK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMISSION_CLK` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` char(64) NOT NULL,
  `START_TIME` int(11) NOT NULL,
  `LENGTH` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `EVENT_NAME_IDX` (`EVENT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EMISSION_RULES`
--

DROP TABLE IF EXISTS `EMISSION_RULES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMISSION_RULES` (
  `CODE` varchar(10) NOT NULL,
  `MAX_ROW` int(10) unsigned DEFAULT NULL,
  `MIN_WAIT` int(10) unsigned DEFAULT NULL,
  `NOT_AFTER` varchar(10) DEFAULT NULL,
  `OR_AFTER` varchar(10) DEFAULT NULL,
  `OR_AFTER_II` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ENCODERS`
--

DROP TABLE IF EXISTS `ENCODERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ENCODERS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` char(32) NOT NULL,
  `STATION_NAME` char(64) DEFAULT NULL,
  `COMMAND_LINE` char(255) DEFAULT NULL,
  `DEFAULT_EXTENSION` char(16) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `NAME_IDX` (`NAME`,`STATION_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ENCODER_BITRATES`
--

DROP TABLE IF EXISTS `ENCODER_BITRATES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ENCODER_BITRATES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENCODER_ID` int(11) NOT NULL,
  `BITRATES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ENCODER_ID_IDX` (`ENCODER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ENCODER_CHANNELS`
--

DROP TABLE IF EXISTS `ENCODER_CHANNELS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ENCODER_CHANNELS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENCODER_ID` int(11) NOT NULL,
  `CHANNELS` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ENCODER_ID_IDX` (`ENCODER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ENCODER_SAMPLERATES`
--

DROP TABLE IF EXISTS `ENCODER_SAMPLERATES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ENCODER_SAMPLERATES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENCODER_ID` int(11) NOT NULL,
  `SAMPLERATES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ENCODER_ID_IDX` (`ENCODER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EVENTS`
--

DROP TABLE IF EXISTS `EVENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENTS` (
  `NAME` char(64) NOT NULL,
  `PROPERTIES` char(64) DEFAULT NULL,
  `DISPLAY_TEXT` char(64) DEFAULT NULL,
  `NOTE_TEXT` char(255) DEFAULT NULL,
  `PREPOSITION` int(11) DEFAULT '-1',
  `TIME_TYPE` int(11) DEFAULT '0',
  `GRACE_TIME` int(11) DEFAULT '0',
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `USE_AUTOFILL` enum('N','Y') DEFAULT 'N',
  `AUTOFILL_SLOP` int(11) DEFAULT '-1',
  `USE_TIMESCALE` enum('N','Y') DEFAULT 'N',
  `IMPORT_SOURCE` int(11) DEFAULT '0',
  `START_SLOP` int(11) DEFAULT '0',
  `END_SLOP` int(11) DEFAULT '0',
  `FIRST_TRANS_TYPE` int(11) DEFAULT '0',
  `DEFAULT_TRANS_TYPE` int(11) DEFAULT '0',
  `COLOR` char(7) DEFAULT NULL,
  `SCHED_GROUP` varchar(10) DEFAULT NULL,
  `TITLE_SEP` int(10) unsigned DEFAULT NULL,
  `HAVE_CODE` varchar(10) DEFAULT NULL,
  `HOR_SEP` int(10) unsigned DEFAULT NULL,
  `HOR_DIST` int(10) unsigned DEFAULT NULL,
  `NESTED_EVENT` char(64) DEFAULT NULL,
  `REMARKS` char(255) DEFAULT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EVENT_PERMS`
--

DROP TABLE IF EXISTS `EVENT_PERMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT_PERMS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` char(64) DEFAULT NULL,
  `SERVICE_NAME` char(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `STATION_IDX` (`EVENT_NAME`),
  KEY `SERVICE_IDX` (`SERVICE_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EXTENDED_PANELS`
--

DROP TABLE IF EXISTS `EXTENDED_PANELS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EXTENDED_PANELS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` int(11) NOT NULL,
  `OWNER` char(64) NOT NULL,
  `PANEL_NO` int(11) NOT NULL,
  `ROW_NO` int(11) NOT NULL,
  `COLUMN_NO` int(11) NOT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `CART` int(11) DEFAULT NULL,
  `DEFAULT_COLOR` char(7) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `LOAD_IDX` (`TYPE`,`OWNER`,`PANEL_NO`),
  KEY `SAVE_IDX` (`TYPE`,`OWNER`,`PANEL_NO`,`ROW_NO`,`COLUMN_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EXTENDED_PANEL_NAMES`
--

DROP TABLE IF EXISTS `EXTENDED_PANEL_NAMES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EXTENDED_PANEL_NAMES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` int(11) NOT NULL,
  `OWNER` char(64) NOT NULL,
  `PANEL_NO` int(11) NOT NULL,
  `NAME` char(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `LOAD_IDX` (`TYPE`,`OWNER`,`PANEL_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Empty_LOG`
--

DROP TABLE IF EXISTS `Empty_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Empty_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FEEDS`
--

DROP TABLE IF EXISTS `FEEDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FEEDS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `KEY_NAME` char(8) NOT NULL,
  `CHANNEL_TITLE` char(255) DEFAULT NULL,
  `CHANNEL_DESCRIPTION` text,
  `CHANNEL_CATEGORY` char(64) DEFAULT NULL,
  `CHANNEL_LINK` char(255) DEFAULT NULL,
  `CHANNEL_COPYRIGHT` char(64) DEFAULT NULL,
  `CHANNEL_WEBMASTER` char(64) DEFAULT NULL,
  `CHANNEL_LANGUAGE` char(5) DEFAULT 'en-us',
  `BASE_URL` char(255) DEFAULT NULL,
  `BASE_PREAMBLE` char(255) DEFAULT NULL,
  `PURGE_URL` char(255) DEFAULT NULL,
  `PURGE_USERNAME` char(64) DEFAULT NULL,
  `PURGE_PASSWORD` char(64) DEFAULT NULL,
  `HEADER_XML` text,
  `CHANNEL_XML` text,
  `ITEM_XML` text,
  `CAST_ORDER` enum('N','Y') DEFAULT 'N',
  `MAX_SHELF_LIFE` int(11) DEFAULT NULL,
  `LAST_BUILD_DATETIME` datetime DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `ENABLE_AUTOPOST` enum('N','Y') DEFAULT 'N',
  `KEEP_METADATA` enum('N','Y') DEFAULT 'Y',
  `UPLOAD_FORMAT` int(11) DEFAULT '2',
  `UPLOAD_CHANNELS` int(11) DEFAULT '2',
  `UPLOAD_SAMPRATE` int(11) DEFAULT '44100',
  `UPLOAD_BITRATE` int(11) DEFAULT '32000',
  `UPLOAD_QUALITY` int(11) DEFAULT '0',
  `UPLOAD_EXTENSION` char(16) DEFAULT 'mp3',
  `NORMALIZE_LEVEL` int(11) DEFAULT '-100',
  `REDIRECT_PATH` char(255) DEFAULT NULL,
  `MEDIA_LINK_MODE` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `KEY_NAME` (`KEY_NAME`),
  KEY `KEY_NAME_IDX` (`KEY_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FEED_PERMS`
--

DROP TABLE IF EXISTS `FEED_PERMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FEED_PERMS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `USER_NAME` char(255) DEFAULT NULL,
  `KEY_NAME` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `USER_IDX` (`USER_NAME`),
  KEY `KEYNAME_IDX` (`KEY_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GPIS`
--

DROP TABLE IF EXISTS `GPIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GPIS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATION_NAME` char(64) NOT NULL,
  `MATRIX` int(11) NOT NULL,
  `NUMBER` int(11) NOT NULL,
  `MACRO_CART` int(11) DEFAULT '0',
  `OFF_MACRO_CART` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MATRIX_IDX` (`STATION_NAME`,`MATRIX`,`NUMBER`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GPOS`
--

DROP TABLE IF EXISTS `GPOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GPOS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATION_NAME` char(64) NOT NULL,
  `MATRIX` int(11) NOT NULL,
  `NUMBER` int(11) NOT NULL,
  `MACRO_CART` int(11) DEFAULT '0',
  `OFF_MACRO_CART` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MATRIX_IDX` (`STATION_NAME`,`MATRIX`,`NUMBER`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GROUPS`
--

DROP TABLE IF EXISTS `GROUPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GROUPS` (
  `NAME` char(10) NOT NULL,
  `DESCRIPTION` char(255) DEFAULT NULL,
  `DEFAULT_CART_TYPE` int(10) unsigned DEFAULT '1',
  `DEFAULT_LOW_CART` int(10) unsigned DEFAULT '0',
  `DEFAULT_HIGH_CART` int(10) unsigned DEFAULT '0',
  `CUT_SHELFLIFE` int(11) DEFAULT '-1',
  `DEFAULT_TITLE` char(255) DEFAULT 'Imported from %f.%e',
  `ENFORCE_CART_RANGE` enum('N','Y') DEFAULT 'N',
  `REPORT_TFC` enum('N','Y') DEFAULT 'Y',
  `REPORT_MUS` enum('N','Y') DEFAULT 'Y',
  `ENABLE_NOW_NEXT` enum('N','Y') DEFAULT 'N',
  `COLOR` char(7) DEFAULT NULL,
  PRIMARY KEY (`NAME`),
  KEY `IDX_REPORT_TFC` (`REPORT_TFC`),
  KEY `IDX_REPORT_MUS` (`REPORT_MUS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HOSTVARS`
--

DROP TABLE IF EXISTS `HOSTVARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HOSTVARS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATION_NAME` char(64) NOT NULL,
  `NAME` char(32) NOT NULL,
  `VARVALUE` char(255) DEFAULT NULL,
  `REMARK` char(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `NAME_IDX` (`STATION_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IMPORT_TEMPLATES`
--

DROP TABLE IF EXISTS `IMPORT_TEMPLATES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IMPORT_TEMPLATES` (
  `NAME` char(64) NOT NULL,
  `CART_OFFSET` int(11) DEFAULT NULL,
  `CART_LENGTH` int(11) DEFAULT NULL,
  `TITLE_OFFSET` int(11) DEFAULT NULL,
  `TITLE_LENGTH` int(11) DEFAULT NULL,
  `HOURS_OFFSET` int(11) DEFAULT NULL,
  `HOURS_LENGTH` int(11) DEFAULT NULL,
  `MINUTES_OFFSET` int(11) DEFAULT NULL,
  `MINUTES_LENGTH` int(11) DEFAULT NULL,
  `SECONDS_OFFSET` int(11) DEFAULT NULL,
  `SECONDS_LENGTH` int(11) DEFAULT NULL,
  `LEN_HOURS_OFFSET` int(11) DEFAULT NULL,
  `LEN_HOURS_LENGTH` int(11) DEFAULT NULL,
  `LEN_MINUTES_OFFSET` int(11) DEFAULT NULL,
  `LEN_MINUTES_LENGTH` int(11) DEFAULT NULL,
  `LEN_SECONDS_OFFSET` int(11) DEFAULT NULL,
  `LEN_SECONDS_LENGTH` int(11) DEFAULT NULL,
  `LENGTH_OFFSET` int(11) DEFAULT NULL,
  `LENGTH_LENGTH` int(11) DEFAULT NULL,
  `DATA_OFFSET` int(11) DEFAULT NULL,
  `DATA_LENGTH` int(11) DEFAULT NULL,
  `EVENT_ID_OFFSET` int(11) DEFAULT NULL,
  `EVENT_ID_LENGTH` int(11) DEFAULT NULL,
  `ANNC_TYPE_OFFSET` int(11) DEFAULT NULL,
  `ANNC_TYPE_LENGTH` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `INPUTS`
--

DROP TABLE IF EXISTS `INPUTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INPUTS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATION_NAME` char(64) NOT NULL,
  `MATRIX` int(11) NOT NULL,
  `NUMBER` int(11) NOT NULL,
  `NAME` char(64) DEFAULT NULL,
  `FEED_NAME` char(8) DEFAULT NULL,
  `CHANNEL_MODE` int(11) DEFAULT NULL,
  `ENGINE_NUM` int(11) DEFAULT '-1',
  `DEVICE_NUM` int(11) DEFAULT '-1',
  `NODE_HOSTNAME` char(255) DEFAULT NULL,
  `NODE_TCP_PORT` int(11) DEFAULT NULL,
  `NODE_SLOT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `MATRIX_IDX` (`STATION_NAME`,`MATRIX`,`NUMBER`),
  KEY `NODE_IDX` (`STATION_NAME`,`MATRIX`,`NUMBER`,`NODE_HOSTNAME`,`NODE_TCP_PORT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ISCI_XREFERENCE`
--

DROP TABLE IF EXISTS `ISCI_XREFERENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ISCI_XREFERENCE` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `ISCI` char(32) NOT NULL,
  `FILENAME` char(64) NOT NULL,
  `LATEST_DATE` date NOT NULL,
  `TYPE` char(1) NOT NULL,
  `ADVERTISER_NAME` char(30) DEFAULT NULL,
  `PRODUCT_NAME` char(35) DEFAULT NULL,
  `CREATIVE_TITLE` char(30) DEFAULT NULL,
  `REGION_NAME` char(80) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `TYPE_IDX` (`TYPE`,`LATEST_DATE`),
  KEY `LATEST_DATE_IDX` (`LATEST_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Jingle_2_POST`
--

DROP TABLE IF EXISTS `Jingle_2_POST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jingle_2_POST` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Jingle_2_PRE`
--

DROP TABLE IF EXISTS `Jingle_2_PRE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jingle_2_PRE` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Jingle_POST`
--

DROP TABLE IF EXISTS `Jingle_POST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jingle_POST` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Jingle_PRE`
--

DROP TABLE IF EXISTS `Jingle_PRE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jingle_PRE` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LOGS`
--

DROP TABLE IF EXISTS `LOGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOGS` (
  `NAME` char(64) NOT NULL,
  `LOG_EXISTS` enum('N','Y') DEFAULT 'Y',
  `TYPE` int(11) NOT NULL DEFAULT '0',
  `SERVICE` char(10) NOT NULL,
  `DESCRIPTION` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) NOT NULL,
  `ORIGIN_DATETIME` datetime NOT NULL,
  `LINK_DATETIME` datetime NOT NULL,
  `MODIFIED_DATETIME` datetime NOT NULL,
  `AUTO_REFRESH` enum('N','Y') DEFAULT 'N',
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL,
  `PURGE_DATE` date DEFAULT NULL,
  `IMPORT_DATE` date DEFAULT NULL,
  `SCHEDULED_TRACKS` int(10) unsigned DEFAULT '0',
  `COMPLETED_TRACKS` int(10) unsigned DEFAULT '0',
  `MUSIC_LINKS` int(11) DEFAULT '0',
  `MUSIC_LINKED` enum('N','Y') DEFAULT 'N',
  `TRAFFIC_LINKS` int(11) DEFAULT '0',
  `TRAFFIC_LINKED` enum('N','Y') DEFAULT 'N',
  `NEXT_ID` int(11) DEFAULT '0',
  PRIMARY KEY (`NAME`),
  KEY `NAME_IDX` (`NAME`,`LOG_EXISTS`),
  KEY `SERVICE_IDX` (`SERVICE`),
  KEY `DESCRIPTION_IDX` (`DESCRIPTION`),
  KEY `ORIGIN_USER_IDX` (`ORIGIN_USER`),
  KEY `START_DATE_IDX` (`START_DATE`),
  KEY `END_DATE_IDX` (`END_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MATRICES`
--

DROP TABLE IF EXISTS `MATRICES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MATRICES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATION_NAME` char(64) NOT NULL,
  `NAME` char(64) DEFAULT NULL,
  `MATRIX` int(11) NOT NULL,
  `TYPE` int(11) NOT NULL,
  `LAYER` int(11) DEFAULT '86',
  `PORT_TYPE` int(11) DEFAULT '0',
  `PORT_TYPE_2` int(11) DEFAULT '0',
  `CARD` int(11) DEFAULT '-1',
  `PORT` int(11) NOT NULL,
  `PORT_2` int(11) NOT NULL,
  `IP_ADDRESS` char(16) DEFAULT NULL,
  `IP_ADDRESS_2` char(16) DEFAULT NULL,
  `IP_PORT` int(11) DEFAULT NULL,
  `IP_PORT_2` int(11) DEFAULT NULL,
  `USERNAME` char(32) DEFAULT NULL,
  `USERNAME_2` char(32) DEFAULT NULL,
  `PASSWORD` char(32) DEFAULT NULL,
  `PASSWORD_2` char(32) DEFAULT NULL,
  `START_CART` int(10) unsigned DEFAULT NULL,
  `STOP_CART` int(10) unsigned DEFAULT NULL,
  `START_CART_2` int(10) unsigned DEFAULT NULL,
  `STOP_CART_2` int(10) unsigned DEFAULT NULL,
  `GPIO_DEVICE` char(255) DEFAULT NULL,
  `INPUTS` int(11) NOT NULL,
  `OUTPUTS` int(11) NOT NULL,
  `GPIS` int(11) NOT NULL,
  `GPOS` int(11) NOT NULL,
  `FADERS` int(11) DEFAULT '0',
  `DISPLAYS` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MATRIX_IDX` (`STATION_NAME`,`MATRIX`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Music_2_CLK`
--

DROP TABLE IF EXISTS `Music_2_CLK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Music_2_CLK` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` char(64) NOT NULL,
  `START_TIME` int(11) NOT NULL,
  `LENGTH` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `EVENT_NAME_IDX` (`EVENT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Music_2_POST`
--

DROP TABLE IF EXISTS `Music_2_POST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Music_2_POST` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Music_2_PRE`
--

DROP TABLE IF EXISTS `Music_2_PRE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Music_2_PRE` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Music_2_RULES`
--

DROP TABLE IF EXISTS `Music_2_RULES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Music_2_RULES` (
  `CODE` varchar(10) NOT NULL,
  `MAX_ROW` int(10) unsigned DEFAULT NULL,
  `MIN_WAIT` int(10) unsigned DEFAULT NULL,
  `NOT_AFTER` varchar(10) DEFAULT NULL,
  `OR_AFTER` varchar(10) DEFAULT NULL,
  `OR_AFTER_II` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Music_CLK`
--

DROP TABLE IF EXISTS `Music_CLK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Music_CLK` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` char(64) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `LENGTH` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `EVENT_NAME_IDX` (`EVENT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Music_LOG`
--

DROP TABLE IF EXISTS `Music_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Music_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Music_POST`
--

DROP TABLE IF EXISTS `Music_POST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Music_POST` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Music_PRE`
--

DROP TABLE IF EXISTS `Music_PRE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Music_PRE` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Music_RULES`
--

DROP TABLE IF EXISTS `Music_RULES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Music_RULES` (
  `CODE` varchar(10) NOT NULL,
  `MAX_ROW` int(10) unsigned DEFAULT NULL,
  `MIN_WAIT` int(10) unsigned DEFAULT NULL,
  `NOT_AFTER` varchar(10) DEFAULT NULL,
  `OR_AFTER` varchar(10) DEFAULT NULL,
  `OR_AFTER_II` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NOWNEXT_PLUGINS`
--

DROP TABLE IF EXISTS `NOWNEXT_PLUGINS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NOWNEXT_PLUGINS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATION_NAME` char(64) NOT NULL,
  `LOG_MACHINE` int(10) unsigned NOT NULL DEFAULT '0',
  `PLUGIN_PATH` char(255) DEFAULT NULL,
  `PLUGIN_ARG` char(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `STATION_IDX` (`STATION_NAME`,`LOG_MACHINE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OUTPUTS`
--

DROP TABLE IF EXISTS `OUTPUTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OUTPUTS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATION_NAME` char(64) NOT NULL,
  `MATRIX` int(11) NOT NULL,
  `NUMBER` int(11) NOT NULL,
  `NAME` char(64) DEFAULT NULL,
  `ENGINE_NUM` int(11) DEFAULT '-1',
  `DEVICE_NUM` int(11) DEFAULT '-1',
  `NODE_HOSTNAME` char(255) DEFAULT NULL,
  `NODE_TCP_PORT` int(11) DEFAULT NULL,
  `NODE_SLOT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `MATRIX_IDX` (`STATION_NAME`,`MATRIX`,`NUMBER`),
  KEY `NODE_IDX` (`STATION_NAME`,`MATRIX`,`NUMBER`,`NODE_HOSTNAME`,`NODE_TCP_PORT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PANELS`
--

DROP TABLE IF EXISTS `PANELS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PANELS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` int(11) NOT NULL,
  `OWNER` char(64) NOT NULL,
  `PANEL_NO` int(11) NOT NULL,
  `ROW_NO` int(11) NOT NULL,
  `COLUMN_NO` int(11) NOT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `CART` int(11) DEFAULT NULL,
  `DEFAULT_COLOR` char(7) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `LOAD_IDX` (`TYPE`,`OWNER`,`PANEL_NO`),
  KEY `SAVE_IDX` (`TYPE`,`OWNER`,`PANEL_NO`,`ROW_NO`,`COLUMN_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PANEL_NAMES`
--

DROP TABLE IF EXISTS `PANEL_NAMES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PANEL_NAMES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` int(11) NOT NULL,
  `OWNER` char(64) NOT NULL,
  `PANEL_NO` int(11) NOT NULL,
  `NAME` char(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `LOAD_IDX` (`TYPE`,`OWNER`,`PANEL_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PODCASTS`
--

DROP TABLE IF EXISTS `PODCASTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PODCASTS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FEED_ID` int(10) unsigned NOT NULL,
  `STATUS` int(10) unsigned DEFAULT '1',
  `ITEM_TITLE` char(255) DEFAULT NULL,
  `ITEM_DESCRIPTION` text,
  `ITEM_CATEGORY` char(64) DEFAULT NULL,
  `ITEM_LINK` char(255) DEFAULT NULL,
  `ITEM_COMMENTS` char(255) DEFAULT NULL,
  `ITEM_AUTHOR` char(255) DEFAULT NULL,
  `ITEM_SOURCE_TEXT` char(64) DEFAULT NULL,
  `ITEM_SOURCE_URL` char(255) DEFAULT NULL,
  `AUDIO_FILENAME` char(255) DEFAULT NULL,
  `AUDIO_LENGTH` int(10) unsigned DEFAULT NULL,
  `AUDIO_TIME` int(10) unsigned DEFAULT NULL,
  `SHELF_LIFE` int(11) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `EFFECTIVE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FEED_ID_IDX` (`FEED_ID`,`ORIGIN_DATETIME`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Production_SRT`
--

DROP TABLE IF EXISTS `Production_SRT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Production_SRT` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LENGTH` int(11) DEFAULT NULL,
  `LOG_NAME` char(64) DEFAULT NULL,
  `LOG_ID` int(11) DEFAULT NULL,
  `CART_NUMBER` int(10) unsigned DEFAULT NULL,
  `CUT_NUMBER` int(11) DEFAULT NULL,
  `TITLE` char(255) DEFAULT NULL,
  `ARTIST` char(255) DEFAULT NULL,
  `PUBLISHER` char(64) DEFAULT NULL,
  `COMPOSER` char(64) DEFAULT NULL,
  `ALBUM` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `USAGE_CODE` int(11) DEFAULT NULL,
  `ISRC` char(12) DEFAULT NULL,
  `ISCI` char(32) DEFAULT NULL,
  `STATION_NAME` char(64) DEFAULT NULL,
  `EVENT_DATETIME` datetime DEFAULT NULL,
  `SCHEDULED_TIME` time DEFAULT NULL,
  `EVENT_TYPE` int(11) DEFAULT NULL,
  `EVENT_SOURCE` int(11) DEFAULT NULL,
  `PLAY_SOURCE` int(11) DEFAULT NULL,
  `START_SOURCE` int(11) DEFAULT '0',
  `ONAIR_FLAG` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(8) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `EVENT_DATETIME_IDX` (`EVENT_DATETIME`)
) ENGINE=InnoDB AUTO_INCREMENT=511 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Production_STACK`
--

DROP TABLE IF EXISTS `Production_STACK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Production_STACK` (
  `SCHED_STACK_ID` int(10) unsigned NOT NULL,
  `CART` int(10) unsigned NOT NULL,
  `ARTIST` varchar(255) DEFAULT NULL,
  `SCHED_CODES` varchar(255) DEFAULT NULL,
  `SCHEDULED_AT` datetime DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`SCHED_STACK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RDAIRPLAY`
--

DROP TABLE IF EXISTS `RDAIRPLAY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RDAIRPLAY` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATION` char(40) NOT NULL,
  `INSTANCE` int(10) unsigned NOT NULL,
  `CARD0` int(11) DEFAULT '0',
  `PORT0` int(11) DEFAULT '0',
  `START_RML0` char(255) DEFAULT NULL,
  `STOP_RML0` char(255) DEFAULT NULL,
  `CARD1` int(11) DEFAULT '0',
  `PORT1` int(11) DEFAULT '0',
  `START_RML1` char(255) DEFAULT NULL,
  `STOP_RML1` char(255) DEFAULT NULL,
  `CARD2` int(11) DEFAULT '0',
  `PORT2` int(11) DEFAULT '0',
  `START_RML2` char(255) DEFAULT NULL,
  `STOP_RML2` char(255) DEFAULT NULL,
  `CARD3` int(11) DEFAULT '0',
  `PORT3` int(11) DEFAULT '0',
  `START_RML3` char(255) DEFAULT NULL,
  `STOP_RML3` char(255) DEFAULT NULL,
  `CARD4` int(11) DEFAULT '0',
  `PORT4` int(11) DEFAULT '0',
  `START_RML4` char(255) DEFAULT NULL,
  `STOP_RML4` char(255) DEFAULT NULL,
  `CARD5` int(11) DEFAULT '0',
  `PORT5` int(11) DEFAULT '0',
  `START_RML5` char(255) DEFAULT NULL,
  `STOP_RML5` char(255) DEFAULT NULL,
  `CARD6` int(11) DEFAULT '0',
  `PORT6` int(11) DEFAULT '0',
  `START_RML6` char(255) DEFAULT NULL,
  `STOP_RML6` char(255) DEFAULT NULL,
  `CARD7` int(11) DEFAULT '0',
  `PORT7` int(11) DEFAULT '0',
  `START_RML7` char(255) DEFAULT NULL,
  `STOP_RML7` char(255) DEFAULT NULL,
  `CARD8` int(11) DEFAULT '0',
  `PORT8` int(11) DEFAULT '0',
  `START_RML8` char(255) DEFAULT NULL,
  `STOP_RML8` char(255) DEFAULT NULL,
  `CARD9` int(11) DEFAULT '0',
  `PORT9` int(11) DEFAULT '0',
  `START_RML9` char(255) DEFAULT NULL,
  `STOP_RML9` char(255) DEFAULT NULL,
  `SEGUE_LENGTH` int(11) DEFAULT '250',
  `TRANS_LENGTH` int(11) DEFAULT '50',
  `OP_MODE` int(11) DEFAULT '2',
  `START_MODE` int(11) DEFAULT '0',
  `PIE_COUNT_LENGTH` int(11) DEFAULT '15000',
  `PIE_COUNT_ENDPOINT` int(11) DEFAULT '0',
  `CHECK_TIMESYNC` enum('N','Y') DEFAULT 'Y',
  `STATION_PANELS` int(11) DEFAULT '3',
  `USER_PANELS` int(11) DEFAULT '3',
  `SHOW_AUX_1` enum('N','Y') DEFAULT 'Y',
  `SHOW_AUX_2` enum('N','Y') DEFAULT 'Y',
  `CLEAR_FILTER` enum('N','Y') DEFAULT 'N',
  `DEFAULT_TRANS_TYPE` int(11) DEFAULT '0',
  `BAR_ACTION` int(10) unsigned DEFAULT '0',
  `FLASH_PANEL` enum('N','Y') DEFAULT 'N',
  `PANEL_PAUSE_ENABLED` enum('N','Y') DEFAULT 'N',
  `BUTTON_LABEL_TEMPLATE` char(32) DEFAULT '%t',
  `PAUSE_ENABLED` enum('N','Y') DEFAULT NULL,
  `DEFAULT_SERVICE` char(10) DEFAULT NULL,
  `UDP_ADDR0` char(255) DEFAULT NULL,
  `UDP_PORT0` int(10) unsigned DEFAULT NULL,
  `UDP_STRING0` char(255) DEFAULT NULL,
  `LOG_RML0` char(255) DEFAULT NULL,
  `UDP_ADDR1` char(255) DEFAULT NULL,
  `UDP_PORT1` int(10) unsigned DEFAULT NULL,
  `UDP_STRING1` char(255) DEFAULT NULL,
  `LOG_RML1` char(255) DEFAULT NULL,
  `UDP_ADDR2` char(255) DEFAULT NULL,
  `UDP_PORT2` int(10) unsigned DEFAULT NULL,
  `UDP_STRING2` char(255) DEFAULT NULL,
  `LOG_RML2` char(255) DEFAULT NULL,
  `EXIT_CODE` int(11) DEFAULT '0',
  `EXIT_PASSWORD` char(41) DEFAULT '',
  `SKIN_PATH` char(255) DEFAULT NULL,
  `SHOW_COUNTERS` enum('N','Y') DEFAULT 'N',
  `AUDITION_PREROLL` int(11) DEFAULT '10000',
  `LOG0_START_MODE` int(11) DEFAULT '0',
  `LOG0_AUTO_RESTART` enum('N','Y') DEFAULT 'N',
  `LOG0_LOG_NAME` char(64) DEFAULT NULL,
  `LOG0_CURRENT_LOG` char(64) DEFAULT NULL,
  `LOG0_RUNNING` enum('N','Y') DEFAULT 'N',
  `LOG0_LOG_ID` int(11) DEFAULT '-1',
  `LOG0_LOG_LINE` int(11) DEFAULT '-1',
  `LOG0_NOW_CART` int(10) unsigned DEFAULT '0',
  `LOG0_NEXT_CART` int(10) unsigned DEFAULT '0',
  `LOG1_START_MODE` int(11) DEFAULT '0',
  `LOG1_AUTO_RESTART` enum('N','Y') DEFAULT 'N',
  `LOG1_LOG_NAME` char(64) DEFAULT NULL,
  `LOG1_CURRENT_LOG` char(64) DEFAULT NULL,
  `LOG1_RUNNING` enum('N','Y') DEFAULT 'N',
  `LOG1_LOG_ID` int(11) DEFAULT '-1',
  `LOG1_LOG_LINE` int(11) DEFAULT '-1',
  `LOG1_NOW_CART` int(10) unsigned DEFAULT '0',
  `LOG1_NEXT_CART` int(10) unsigned DEFAULT '0',
  `LOG2_START_MODE` int(11) DEFAULT '0',
  `LOG2_AUTO_RESTART` enum('N','Y') DEFAULT 'N',
  `LOG2_LOG_NAME` char(64) DEFAULT NULL,
  `LOG2_CURRENT_LOG` char(64) DEFAULT NULL,
  `LOG2_RUNNING` enum('N','Y') DEFAULT 'N',
  `LOG2_LOG_ID` int(11) DEFAULT '-1',
  `LOG2_LOG_LINE` int(11) DEFAULT '-1',
  `LOG2_NOW_CART` int(10) unsigned DEFAULT '0',
  `LOG2_NEXT_CART` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `STATION_IDX` (`STATION`,`INSTANCE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RDCATCH`
--

DROP TABLE IF EXISTS `RDCATCH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RDCATCH` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STATION` char(64) NOT NULL,
  `ERROR_RML` char(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `STATION_IDX` (`STATION`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RDHOTKEYS`
--

DROP TABLE IF EXISTS `RDHOTKEYS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RDHOTKEYS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STATION_NAME` char(64) DEFAULT NULL,
  `MODULE_NAME` char(64) DEFAULT NULL,
  `KEY_ID` int(11) DEFAULT NULL,
  `KEY_VALUE` char(64) DEFAULT NULL,
  `KEY_LABEL` char(64) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RDLIBRARY`
--

DROP TABLE IF EXISTS `RDLIBRARY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RDLIBRARY` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STATION` char(40) NOT NULL,
  `INSTANCE` int(10) unsigned NOT NULL,
  `INPUT_CARD` int(11) DEFAULT '0',
  `INPUT_STREAM` int(11) DEFAULT '0',
  `INPUT_PORT` int(11) DEFAULT '0',
  `INPUT_TYPE` enum('A','D') DEFAULT 'A',
  `OUTPUT_CARD` int(11) DEFAULT '0',
  `OUTPUT_STREAM` int(11) DEFAULT '0',
  `OUTPUT_PORT` int(11) DEFAULT '0',
  `VOX_THRESHOLD` int(11) DEFAULT '-5000',
  `TRIM_THRESHOLD` int(11) DEFAULT '-3000',
  `RECORD_GPI` int(11) DEFAULT '-1',
  `PLAY_GPI` int(11) DEFAULT '-1',
  `STOP_GPI` int(11) DEFAULT '-1',
  `DEFAULT_FORMAT` int(10) unsigned DEFAULT '0',
  `DEFAULT_CHANNELS` int(10) unsigned DEFAULT '2',
  `DEFAULT_SAMPRATE` int(10) unsigned DEFAULT '44100',
  `DEFAULT_LAYER` int(10) unsigned DEFAULT '0',
  `DEFAULT_BITRATE` int(10) unsigned DEFAULT '0',
  `DEFAULT_RECORD_MODE` int(10) unsigned DEFAULT '0',
  `DEFAULT_TRIM_STATE` enum('N','Y') DEFAULT 'N',
  `MAXLENGTH` int(11) DEFAULT NULL,
  `TAIL_PREROLL` int(10) unsigned DEFAULT '1500',
  `RIPPER_DEVICE` char(64) DEFAULT '/dev/cdrom',
  `PARANOIA_LEVEL` int(11) DEFAULT '0',
  `RIPPER_LEVEL` int(11) DEFAULT '-1300',
  `CDDB_SERVER` char(64) DEFAULT 'freedb.freedb.org',
  `ENABLE_EDITOR` enum('N','Y') DEFAULT 'N',
  `SRC_CONVERTER` int(11) DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `STATION_IDX` (`STATION`,`INSTANCE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RDLOGEDIT`
--

DROP TABLE IF EXISTS `RDLOGEDIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RDLOGEDIT` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STATION` char(64) NOT NULL,
  `INPUT_CARD` int(11) DEFAULT '-1',
  `INPUT_PORT` int(11) DEFAULT '0',
  `OUTPUT_CARD` int(11) DEFAULT '-1',
  `OUTPUT_PORT` int(11) DEFAULT '0',
  `FORMAT` int(10) unsigned DEFAULT '0',
  `SAMPRATE` int(10) unsigned DEFAULT '44100',
  `LAYER` int(10) unsigned DEFAULT '0',
  `BITRATE` int(10) unsigned DEFAULT '0',
  `DEFAULT_CHANNELS` int(10) unsigned DEFAULT '2',
  `MAXLENGTH` int(11) DEFAULT '0',
  `TAIL_PREROLL` int(10) unsigned DEFAULT '2000',
  `START_CART` int(10) unsigned DEFAULT '0',
  `END_CART` int(10) unsigned DEFAULT '0',
  `REC_START_CART` int(10) unsigned DEFAULT '0',
  `REC_END_CART` int(10) unsigned DEFAULT '0',
  `TRIM_THRESHOLD` int(11) DEFAULT '-3000',
  `RIPPER_LEVEL` int(11) DEFAULT '-1300',
  `DEFAULT_TRANS_TYPE` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `STATION_IDX` (`STATION`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RDPANEL`
--

DROP TABLE IF EXISTS `RDPANEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RDPANEL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATION` char(40) NOT NULL,
  `INSTANCE` int(10) unsigned NOT NULL,
  `CARD2` int(11) DEFAULT '0',
  `PORT2` int(11) DEFAULT '0',
  `START_RML2` char(255) DEFAULT NULL,
  `STOP_RML2` char(255) DEFAULT NULL,
  `CARD3` int(11) DEFAULT '0',
  `PORT3` int(11) DEFAULT '0',
  `START_RML3` char(255) DEFAULT NULL,
  `STOP_RML3` char(255) DEFAULT NULL,
  `CARD6` int(11) DEFAULT '0',
  `PORT6` int(11) DEFAULT '0',
  `START_RML6` char(255) DEFAULT NULL,
  `STOP_RML6` char(255) DEFAULT NULL,
  `CARD7` int(11) DEFAULT '0',
  `PORT7` int(11) DEFAULT '0',
  `START_RML7` char(255) DEFAULT NULL,
  `STOP_RML7` char(255) DEFAULT NULL,
  `CARD8` int(11) DEFAULT '0',
  `PORT8` int(11) DEFAULT '0',
  `START_RML8` char(255) DEFAULT NULL,
  `STOP_RML8` char(255) DEFAULT NULL,
  `CARD9` int(11) DEFAULT '0',
  `PORT9` int(11) DEFAULT '0',
  `START_RML9` char(255) DEFAULT NULL,
  `STOP_RML9` char(255) DEFAULT NULL,
  `STATION_PANELS` int(11) DEFAULT '3',
  `USER_PANELS` int(11) DEFAULT '3',
  `CLEAR_FILTER` enum('N','Y') DEFAULT 'N',
  `FLASH_PANEL` enum('N','Y') DEFAULT 'N',
  `PANEL_PAUSE_ENABLED` enum('N','Y') DEFAULT 'N',
  `BUTTON_LABEL_TEMPLATE` char(32) DEFAULT '%t',
  `DEFAULT_SERVICE` char(10) DEFAULT NULL,
  `SKIN_PATH` char(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `STATION_IDX` (`STATION`,`INSTANCE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RECORDINGS`
--

DROP TABLE IF EXISTS `RECORDINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RECORDINGS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IS_ACTIVE` enum('N','Y') DEFAULT 'Y',
  `STATION_NAME` char(64) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `CHANNEL` int(10) unsigned NOT NULL,
  `CUT_NAME` char(12) NOT NULL,
  `SUN` enum('N','Y') DEFAULT 'N',
  `MON` enum('N','Y') DEFAULT 'N',
  `TUE` enum('N','Y') DEFAULT 'N',
  `WED` enum('N','Y') DEFAULT 'N',
  `THU` enum('N','Y') DEFAULT 'N',
  `FRI` enum('N','Y') DEFAULT 'N',
  `SAT` enum('N','Y') DEFAULT 'N',
  `DESCRIPTION` char(64) DEFAULT NULL,
  `START_TYPE` int(10) unsigned DEFAULT '0',
  `START_TIME` time DEFAULT NULL,
  `START_LENGTH` int(11) DEFAULT '0',
  `START_MATRIX` int(11) DEFAULT '-1',
  `START_LINE` int(11) DEFAULT '-1',
  `START_OFFSET` int(11) DEFAULT '0',
  `END_TYPE` int(11) DEFAULT '0',
  `END_TIME` time DEFAULT NULL,
  `END_LENGTH` int(11) DEFAULT '0',
  `END_MATRIX` int(11) DEFAULT '-1',
  `END_LINE` int(11) DEFAULT '-1',
  `LENGTH` int(10) unsigned DEFAULT NULL,
  `START_GPI` int(11) DEFAULT '-1',
  `END_GPI` int(11) DEFAULT '-1',
  `ALLOW_MULT_RECS` enum('N','Y') DEFAULT 'N',
  `MAX_GPI_REC_LENGTH` int(10) unsigned DEFAULT '3600000',
  `TRIM_THRESHOLD` int(11) DEFAULT NULL,
  `NORMALIZE_LEVEL` int(11) DEFAULT '-1300',
  `STARTDATE_OFFSET` int(10) unsigned DEFAULT '0',
  `ENDDATE_OFFSET` int(10) unsigned DEFAULT '0',
  `EVENTDATE_OFFSET` int(11) DEFAULT '0',
  `FORMAT` int(11) DEFAULT '0',
  `CHANNELS` int(11) DEFAULT '2',
  `SAMPRATE` int(11) DEFAULT '44100',
  `BITRATE` int(11) DEFAULT '0',
  `QUALITY` int(11) DEFAULT '0',
  `MACRO_CART` int(11) DEFAULT '-1',
  `SWITCH_INPUT` int(11) DEFAULT '-1',
  `SWITCH_OUTPUT` int(11) DEFAULT '-1',
  `EXIT_CODE` int(11) DEFAULT '0',
  `EXIT_TEXT` text,
  `ONE_SHOT` enum('N','Y') DEFAULT 'N',
  `URL` char(255) DEFAULT NULL,
  `URL_USERNAME` char(64) DEFAULT NULL,
  `URL_PASSWORD` char(64) DEFAULT NULL,
  `ENABLE_METADATA` enum('N','Y') DEFAULT 'N',
  `FEED_ID` int(11) DEFAULT '-1',
  PRIMARY KEY (`ID`),
  KEY `STATION_NAME_IDX` (`STATION_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `REPLICATORS`
--

DROP TABLE IF EXISTS `REPLICATORS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REPLICATORS` (
  `NAME` char(32) NOT NULL,
  `DESCRIPTION` char(64) DEFAULT NULL,
  `TYPE_ID` int(10) unsigned NOT NULL,
  `STATION_NAME` char(64) DEFAULT NULL,
  `FORMAT` int(10) unsigned DEFAULT '0',
  `CHANNELS` int(10) unsigned DEFAULT '2',
  `SAMPRATE` int(10) unsigned DEFAULT '48000',
  `BITRATE` int(10) unsigned DEFAULT '0',
  `QUALITY` int(10) unsigned DEFAULT '0',
  `URL` char(255) DEFAULT NULL,
  `URL_USERNAME` char(64) DEFAULT NULL,
  `URL_PASSWORD` char(64) DEFAULT NULL,
  `ENABLE_METADATA` enum('N','Y') DEFAULT 'N',
  `NORMALIZATION_LEVEL` int(11) DEFAULT '0',
  PRIMARY KEY (`NAME`),
  KEY `TYPE_ID_IDX` (`TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `REPLICATOR_MAP`
--

DROP TABLE IF EXISTS `REPLICATOR_MAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REPLICATOR_MAP` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `REPLICATOR_NAME` char(32) NOT NULL,
  `GROUP_NAME` char(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `REPLICATOR_NAME_IDX` (`REPLICATOR_NAME`),
  KEY `GROUP_NAME_IDX` (`GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `REPL_CART_STATE`
--

DROP TABLE IF EXISTS `REPL_CART_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REPL_CART_STATE` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `REPLICATOR_NAME` char(32) NOT NULL,
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `POSTED_FILENAME` char(255) DEFAULT NULL,
  `ITEM_DATETIME` datetime NOT NULL,
  `REPOST` enum('N','Y') DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `REPLICATOR_NAME_IDX` (`REPLICATOR_NAME`,`CART_NUMBER`,`POSTED_FILENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `REPL_CUT_STATE`
--

DROP TABLE IF EXISTS `REPL_CUT_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REPL_CUT_STATE` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `REPLICATOR_NAME` char(32) NOT NULL,
  `CUT_NAME` char(12) NOT NULL,
  `ITEM_DATETIME` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `REPLICATOR_NAME_IDX` (`REPLICATOR_NAME`),
  KEY `CUT_NAME_IDX` (`CUT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `REPORTS`
--

DROP TABLE IF EXISTS `REPORTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REPORTS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` char(64) NOT NULL,
  `DESCRIPTION` char(64) DEFAULT NULL,
  `EXPORT_FILTER` int(11) DEFAULT NULL,
  `EXPORT_PATH` char(255) DEFAULT NULL,
  `WIN_EXPORT_PATH` char(255) DEFAULT NULL,
  `EXPORT_TFC` enum('N','Y') DEFAULT 'N',
  `FORCE_TFC` enum('N','Y') DEFAULT 'N',
  `EXPORT_MUS` enum('N','Y') DEFAULT 'N',
  `FORCE_MUS` enum('N','Y') DEFAULT 'N',
  `EXPORT_GEN` enum('N','Y') DEFAULT 'N',
  `STATION_ID` char(16) DEFAULT NULL,
  `CART_DIGITS` int(10) unsigned DEFAULT '6',
  `USE_LEADING_ZEROS` enum('N','Y') DEFAULT 'N',
  `LINES_PER_PAGE` int(11) DEFAULT '66',
  `SERVICE_NAME` char(64) DEFAULT NULL,
  `STATION_TYPE` int(11) DEFAULT '0',
  `STATION_FORMAT` char(64) DEFAULT NULL,
  `FILTER_ONAIR_FLAG` enum('N','Y') DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`),
  KEY `IDX_NAME` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `REPORT_SERVICES`
--

DROP TABLE IF EXISTS `REPORT_SERVICES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REPORT_SERVICES` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `REPORT_NAME` char(64) NOT NULL,
  `SERVICE_NAME` char(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_REPORT_NAME` (`REPORT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `REPORT_STATIONS`
--

DROP TABLE IF EXISTS `REPORT_STATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REPORT_STATIONS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `REPORT_NAME` char(64) NOT NULL,
  `STATION_NAME` char(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_REPORT_NAME` (`REPORT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SAMPLE_LOG`
--

DROP TABLE IF EXISTS `SAMPLE_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SAMPLE_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SCHED_CODES`
--

DROP TABLE IF EXISTS `SCHED_CODES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCHED_CODES` (
  `CODE` varchar(10) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SERVICES`
--

DROP TABLE IF EXISTS `SERVICES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SERVICES` (
  `NAME` char(10) NOT NULL,
  `DESCRIPTION` char(255) DEFAULT NULL,
  `NAME_TEMPLATE` char(255) DEFAULT NULL,
  `PROGRAM_CODE` char(255) DEFAULT NULL,
  `CHAIN_LOG` enum('N','Y') DEFAULT 'N',
  `TRACK_GROUP` char(10) DEFAULT NULL,
  `AUTO_REFRESH` enum('N','Y') DEFAULT 'N',
  `DEFAULT_LOG_SHELFLIFE` int(11) DEFAULT '-1',
  `ELR_SHELFLIFE` int(11) DEFAULT '-1',
  `TFC_PATH` char(255) DEFAULT NULL,
  `TFC_PREIMPORT_CMD` text,
  `TFC_WIN_PATH` char(255) DEFAULT NULL,
  `TFC_WIN_PREIMPORT_CMD` text,
  `TFC_IMPORT_TEMPLATE` char(64) DEFAULT 'Rivendell Standard Import',
  `TFC_LABEL_CART` char(32) DEFAULT NULL,
  `TFC_TRACK_CART` char(32) DEFAULT NULL,
  `TFC_BREAK_STRING` char(64) DEFAULT NULL,
  `TFC_TRACK_STRING` char(64) DEFAULT NULL,
  `TFC_CART_OFFSET` int(11) DEFAULT NULL,
  `TFC_CART_LENGTH` int(11) DEFAULT NULL,
  `TFC_TITLE_OFFSET` int(11) DEFAULT NULL,
  `TFC_TITLE_LENGTH` int(11) DEFAULT NULL,
  `TFC_START_OFFSET` int(11) DEFAULT NULL,
  `TFC_START_LENGTH` int(11) DEFAULT NULL,
  `TFC_HOURS_OFFSET` int(11) DEFAULT NULL,
  `TFC_HOURS_LENGTH` int(11) DEFAULT NULL,
  `TFC_MINUTES_OFFSET` int(11) DEFAULT NULL,
  `TFC_MINUTES_LENGTH` int(11) DEFAULT NULL,
  `TFC_SECONDS_OFFSET` int(11) DEFAULT NULL,
  `TFC_SECONDS_LENGTH` int(11) DEFAULT NULL,
  `TFC_LEN_HOURS_OFFSET` int(11) DEFAULT NULL,
  `TFC_LEN_HOURS_LENGTH` int(11) DEFAULT NULL,
  `TFC_LEN_MINUTES_OFFSET` int(11) DEFAULT NULL,
  `TFC_LEN_MINUTES_LENGTH` int(11) DEFAULT NULL,
  `TFC_LEN_SECONDS_OFFSET` int(11) DEFAULT NULL,
  `TFC_LEN_SECONDS_LENGTH` int(11) DEFAULT NULL,
  `TFC_LENGTH_OFFSET` int(11) DEFAULT NULL,
  `TFC_LENGTH_LENGTH` int(11) DEFAULT NULL,
  `TFC_DATA_OFFSET` int(11) DEFAULT NULL,
  `TFC_DATA_LENGTH` int(11) DEFAULT NULL,
  `TFC_EVENT_ID_OFFSET` int(11) DEFAULT NULL,
  `TFC_EVENT_ID_LENGTH` int(11) DEFAULT NULL,
  `TFC_ANNC_TYPE_OFFSET` int(11) DEFAULT NULL,
  `TFC_ANNC_TYPE_LENGTH` int(11) DEFAULT NULL,
  `MUS_PATH` char(255) DEFAULT NULL,
  `MUS_PREIMPORT_CMD` text,
  `MUS_WIN_PATH` char(255) DEFAULT NULL,
  `MUS_WIN_PREIMPORT_CMD` text,
  `MUS_IMPORT_TEMPLATE` char(64) DEFAULT 'Rivendell Standard Import',
  `MUS_LABEL_CART` char(32) DEFAULT NULL,
  `MUS_TRACK_CART` char(32) DEFAULT NULL,
  `MUS_BREAK_STRING` char(64) DEFAULT NULL,
  `MUS_TRACK_STRING` char(64) DEFAULT NULL,
  `MUS_CART_OFFSET` int(11) DEFAULT NULL,
  `MUS_CART_LENGTH` int(11) DEFAULT NULL,
  `MUS_TITLE_OFFSET` int(11) DEFAULT NULL,
  `MUS_TITLE_LENGTH` int(11) DEFAULT NULL,
  `MUS_START_OFFSET` int(11) DEFAULT NULL,
  `MUS_START_LENGTH` int(11) DEFAULT NULL,
  `MUS_HOURS_OFFSET` int(11) DEFAULT NULL,
  `MUS_HOURS_LENGTH` int(11) DEFAULT NULL,
  `MUS_MINUTES_OFFSET` int(11) DEFAULT NULL,
  `MUS_MINUTES_LENGTH` int(11) DEFAULT NULL,
  `MUS_SECONDS_OFFSET` int(11) DEFAULT NULL,
  `MUS_SECONDS_LENGTH` int(11) DEFAULT NULL,
  `MUS_LEN_HOURS_OFFSET` int(11) DEFAULT NULL,
  `MUS_LEN_HOURS_LENGTH` int(11) DEFAULT NULL,
  `MUS_LEN_MINUTES_OFFSET` int(11) DEFAULT NULL,
  `MUS_LEN_MINUTES_LENGTH` int(11) DEFAULT NULL,
  `MUS_LEN_SECONDS_OFFSET` int(11) DEFAULT NULL,
  `MUS_LEN_SECONDS_LENGTH` int(11) DEFAULT NULL,
  `MUS_LENGTH_OFFSET` int(11) DEFAULT NULL,
  `MUS_LENGTH_LENGTH` int(11) DEFAULT NULL,
  `MUS_DATA_OFFSET` int(11) DEFAULT NULL,
  `MUS_DATA_LENGTH` int(11) DEFAULT NULL,
  `MUS_EVENT_ID_OFFSET` int(11) DEFAULT NULL,
  `MUS_EVENT_ID_LENGTH` int(11) DEFAULT NULL,
  `MUS_ANNC_TYPE_OFFSET` int(11) DEFAULT NULL,
  `MUS_ANNC_TYPE_LENGTH` int(11) DEFAULT NULL,
  `CLOCK0` char(64) DEFAULT NULL,
  `CLOCK1` char(64) DEFAULT NULL,
  `CLOCK2` char(64) DEFAULT NULL,
  `CLOCK3` char(64) DEFAULT NULL,
  `CLOCK4` char(64) DEFAULT NULL,
  `CLOCK5` char(64) DEFAULT NULL,
  `CLOCK6` char(64) DEFAULT NULL,
  `CLOCK7` char(64) DEFAULT NULL,
  `CLOCK8` char(64) DEFAULT NULL,
  `CLOCK9` char(64) DEFAULT NULL,
  `CLOCK10` char(64) DEFAULT NULL,
  `CLOCK11` char(64) DEFAULT NULL,
  `CLOCK12` char(64) DEFAULT NULL,
  `CLOCK13` char(64) DEFAULT NULL,
  `CLOCK14` char(64) DEFAULT NULL,
  `CLOCK15` char(64) DEFAULT NULL,
  `CLOCK16` char(64) DEFAULT NULL,
  `CLOCK17` char(64) DEFAULT NULL,
  `CLOCK18` char(64) DEFAULT NULL,
  `CLOCK19` char(64) DEFAULT NULL,
  `CLOCK20` char(64) DEFAULT NULL,
  `CLOCK21` char(64) DEFAULT NULL,
  `CLOCK22` char(64) DEFAULT NULL,
  `CLOCK23` char(64) DEFAULT NULL,
  `CLOCK24` char(64) DEFAULT NULL,
  `CLOCK25` char(64) DEFAULT NULL,
  `CLOCK26` char(64) DEFAULT NULL,
  `CLOCK27` char(64) DEFAULT NULL,
  `CLOCK28` char(64) DEFAULT NULL,
  `CLOCK29` char(64) DEFAULT NULL,
  `CLOCK30` char(64) DEFAULT NULL,
  `CLOCK31` char(64) DEFAULT NULL,
  `CLOCK32` char(64) DEFAULT NULL,
  `CLOCK33` char(64) DEFAULT NULL,
  `CLOCK34` char(64) DEFAULT NULL,
  `CLOCK35` char(64) DEFAULT NULL,
  `CLOCK36` char(64) DEFAULT NULL,
  `CLOCK37` char(64) DEFAULT NULL,
  `CLOCK38` char(64) DEFAULT NULL,
  `CLOCK39` char(64) DEFAULT NULL,
  `CLOCK40` char(64) DEFAULT NULL,
  `CLOCK41` char(64) DEFAULT NULL,
  `CLOCK42` char(64) DEFAULT NULL,
  `CLOCK43` char(64) DEFAULT NULL,
  `CLOCK44` char(64) DEFAULT NULL,
  `CLOCK45` char(64) DEFAULT NULL,
  `CLOCK46` char(64) DEFAULT NULL,
  `CLOCK47` char(64) DEFAULT NULL,
  `CLOCK48` char(64) DEFAULT NULL,
  `CLOCK49` char(64) DEFAULT NULL,
  `CLOCK50` char(64) DEFAULT NULL,
  `CLOCK51` char(64) DEFAULT NULL,
  `CLOCK52` char(64) DEFAULT NULL,
  `CLOCK53` char(64) DEFAULT NULL,
  `CLOCK54` char(64) DEFAULT NULL,
  `CLOCK55` char(64) DEFAULT NULL,
  `CLOCK56` char(64) DEFAULT NULL,
  `CLOCK57` char(64) DEFAULT NULL,
  `CLOCK58` char(64) DEFAULT NULL,
  `CLOCK59` char(64) DEFAULT NULL,
  `CLOCK60` char(64) DEFAULT NULL,
  `CLOCK61` char(64) DEFAULT NULL,
  `CLOCK62` char(64) DEFAULT NULL,
  `CLOCK63` char(64) DEFAULT NULL,
  `CLOCK64` char(64) DEFAULT NULL,
  `CLOCK65` char(64) DEFAULT NULL,
  `CLOCK66` char(64) DEFAULT NULL,
  `CLOCK67` char(64) DEFAULT NULL,
  `CLOCK68` char(64) DEFAULT NULL,
  `CLOCK69` char(64) DEFAULT NULL,
  `CLOCK70` char(64) DEFAULT NULL,
  `CLOCK71` char(64) DEFAULT NULL,
  `CLOCK72` char(64) DEFAULT NULL,
  `CLOCK73` char(64) DEFAULT NULL,
  `CLOCK74` char(64) DEFAULT NULL,
  `CLOCK75` char(64) DEFAULT NULL,
  `CLOCK76` char(64) DEFAULT NULL,
  `CLOCK77` char(64) DEFAULT NULL,
  `CLOCK78` char(64) DEFAULT NULL,
  `CLOCK79` char(64) DEFAULT NULL,
  `CLOCK80` char(64) DEFAULT NULL,
  `CLOCK81` char(64) DEFAULT NULL,
  `CLOCK82` char(64) DEFAULT NULL,
  `CLOCK83` char(64) DEFAULT NULL,
  `CLOCK84` char(64) DEFAULT NULL,
  `CLOCK85` char(64) DEFAULT NULL,
  `CLOCK86` char(64) DEFAULT NULL,
  `CLOCK87` char(64) DEFAULT NULL,
  `CLOCK88` char(64) DEFAULT NULL,
  `CLOCK89` char(64) DEFAULT NULL,
  `CLOCK90` char(64) DEFAULT NULL,
  `CLOCK91` char(64) DEFAULT NULL,
  `CLOCK92` char(64) DEFAULT NULL,
  `CLOCK93` char(64) DEFAULT NULL,
  `CLOCK94` char(64) DEFAULT NULL,
  `CLOCK95` char(64) DEFAULT NULL,
  `CLOCK96` char(64) DEFAULT NULL,
  `CLOCK97` char(64) DEFAULT NULL,
  `CLOCK98` char(64) DEFAULT NULL,
  `CLOCK99` char(64) DEFAULT NULL,
  `CLOCK100` char(64) DEFAULT NULL,
  `CLOCK101` char(64) DEFAULT NULL,
  `CLOCK102` char(64) DEFAULT NULL,
  `CLOCK103` char(64) DEFAULT NULL,
  `CLOCK104` char(64) DEFAULT NULL,
  `CLOCK105` char(64) DEFAULT NULL,
  `CLOCK106` char(64) DEFAULT NULL,
  `CLOCK107` char(64) DEFAULT NULL,
  `CLOCK108` char(64) DEFAULT NULL,
  `CLOCK109` char(64) DEFAULT NULL,
  `CLOCK110` char(64) DEFAULT NULL,
  `CLOCK111` char(64) DEFAULT NULL,
  `CLOCK112` char(64) DEFAULT NULL,
  `CLOCK113` char(64) DEFAULT NULL,
  `CLOCK114` char(64) DEFAULT NULL,
  `CLOCK115` char(64) DEFAULT NULL,
  `CLOCK116` char(64) DEFAULT NULL,
  `CLOCK117` char(64) DEFAULT NULL,
  `CLOCK118` char(64) DEFAULT NULL,
  `CLOCK119` char(64) DEFAULT NULL,
  `CLOCK120` char(64) DEFAULT NULL,
  `CLOCK121` char(64) DEFAULT NULL,
  `CLOCK122` char(64) DEFAULT NULL,
  `CLOCK123` char(64) DEFAULT NULL,
  `CLOCK124` char(64) DEFAULT NULL,
  `CLOCK125` char(64) DEFAULT NULL,
  `CLOCK126` char(64) DEFAULT NULL,
  `CLOCK127` char(64) DEFAULT NULL,
  `CLOCK128` char(64) DEFAULT NULL,
  `CLOCK129` char(64) DEFAULT NULL,
  `CLOCK130` char(64) DEFAULT NULL,
  `CLOCK131` char(64) DEFAULT NULL,
  `CLOCK132` char(64) DEFAULT NULL,
  `CLOCK133` char(64) DEFAULT NULL,
  `CLOCK134` char(64) DEFAULT NULL,
  `CLOCK135` char(64) DEFAULT NULL,
  `CLOCK136` char(64) DEFAULT NULL,
  `CLOCK137` char(64) DEFAULT NULL,
  `CLOCK138` char(64) DEFAULT NULL,
  `CLOCK139` char(64) DEFAULT NULL,
  `CLOCK140` char(64) DEFAULT NULL,
  `CLOCK141` char(64) DEFAULT NULL,
  `CLOCK142` char(64) DEFAULT NULL,
  `CLOCK143` char(64) DEFAULT NULL,
  `CLOCK144` char(64) DEFAULT NULL,
  `CLOCK145` char(64) DEFAULT NULL,
  `CLOCK146` char(64) DEFAULT NULL,
  `CLOCK147` char(64) DEFAULT NULL,
  `CLOCK148` char(64) DEFAULT NULL,
  `CLOCK149` char(64) DEFAULT NULL,
  `CLOCK150` char(64) DEFAULT NULL,
  `CLOCK151` char(64) DEFAULT NULL,
  `CLOCK152` char(64) DEFAULT NULL,
  `CLOCK153` char(64) DEFAULT NULL,
  `CLOCK154` char(64) DEFAULT NULL,
  `CLOCK155` char(64) DEFAULT NULL,
  `CLOCK156` char(64) DEFAULT NULL,
  `CLOCK157` char(64) DEFAULT NULL,
  `CLOCK158` char(64) DEFAULT NULL,
  `CLOCK159` char(64) DEFAULT NULL,
  `CLOCK160` char(64) DEFAULT NULL,
  `CLOCK161` char(64) DEFAULT NULL,
  `CLOCK162` char(64) DEFAULT NULL,
  `CLOCK163` char(64) DEFAULT NULL,
  `CLOCK164` char(64) DEFAULT NULL,
  `CLOCK165` char(64) DEFAULT NULL,
  `CLOCK166` char(64) DEFAULT NULL,
  `CLOCK167` char(64) DEFAULT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SERVICE_PERMS`
--

DROP TABLE IF EXISTS `SERVICE_PERMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SERVICE_PERMS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STATION_NAME` char(64) DEFAULT NULL,
  `SERVICE_NAME` char(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `STATION_IDX` (`STATION_NAME`),
  KEY `SERVICE_IDX` (`SERVICE_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `STATIONS`
--

DROP TABLE IF EXISTS `STATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STATIONS` (
  `NAME` char(64) NOT NULL,
  `DESCRIPTION` char(64) DEFAULT NULL,
  `USER_NAME` char(255) DEFAULT NULL,
  `DEFAULT_NAME` char(255) DEFAULT NULL,
  `IPV4_ADDRESS` char(15) DEFAULT '127.0.0.2',
  `HTTP_STATION` char(64) DEFAULT 'localhost',
  `CAE_STATION` char(64) DEFAULT 'localhost',
  `TIME_OFFSET` int(11) DEFAULT '0',
  `BACKUP_DIR` char(255) DEFAULT NULL,
  `BACKUP_LIFE` int(11) DEFAULT '0',
  `BROADCAST_SECURITY` int(10) unsigned DEFAULT '0',
  `HEARTBEAT_CART` int(10) unsigned DEFAULT '0',
  `HEARTBEAT_INTERVAL` int(10) unsigned DEFAULT '0',
  `STARTUP_CART` int(10) unsigned DEFAULT '0',
  `EDITOR_PATH` char(255) DEFAULT '',
  `FILTER_MODE` int(11) DEFAULT '0',
  `START_JACK` enum('N','Y') DEFAULT 'N',
  `JACK_SERVER_NAME` char(64) DEFAULT NULL,
  `SYSTEM_MAINT` enum('N','Y') DEFAULT 'Y',
  `STATION_SCANNED` enum('N','Y') DEFAULT 'N',
  `HAVE_OGGENC` enum('N','Y') DEFAULT 'N',
  `HAVE_OGG123` enum('N','Y') DEFAULT 'N',
  `HAVE_FLAC` enum('N','Y') DEFAULT 'N',
  `HAVE_TWOLAME` enum('N','Y') DEFAULT 'N',
  `HAVE_LAME` enum('N','Y') DEFAULT 'N',
  `HAVE_MPG321` enum('N','Y') DEFAULT 'N',
  `HPI_VERSION` char(16) DEFAULT NULL,
  `JACK_VERSION` char(16) DEFAULT NULL,
  `ALSA_VERSION` char(16) DEFAULT NULL,
  `CARD0_DRIVER` int(11) DEFAULT '0',
  `CARD0_NAME` char(64) DEFAULT NULL,
  `CARD0_INPUTS` int(11) DEFAULT '-1',
  `CARD0_OUTPUTS` int(11) DEFAULT '-1',
  `CARD1_DRIVER` int(11) DEFAULT '0',
  `CARD1_NAME` char(64) DEFAULT NULL,
  `CARD1_INPUTS` int(11) DEFAULT '-1',
  `CARD1_OUTPUTS` int(11) DEFAULT '-1',
  `CARD2_DRIVER` int(11) DEFAULT '0',
  `CARD2_NAME` char(64) DEFAULT NULL,
  `CARD2_INPUTS` int(11) DEFAULT '-1',
  `CARD2_OUTPUTS` int(11) DEFAULT '-1',
  `CARD3_DRIVER` int(11) DEFAULT '0',
  `CARD3_NAME` char(64) DEFAULT NULL,
  `CARD3_INPUTS` int(11) DEFAULT '-1',
  `CARD3_OUTPUTS` int(11) DEFAULT '-1',
  `CARD4_DRIVER` int(11) DEFAULT '0',
  `CARD4_NAME` char(64) DEFAULT NULL,
  `CARD4_INPUTS` int(11) DEFAULT '-1',
  `CARD4_OUTPUTS` int(11) DEFAULT '-1',
  `CARD5_DRIVER` int(11) DEFAULT '0',
  `CARD5_NAME` char(64) DEFAULT NULL,
  `CARD5_INPUTS` int(11) DEFAULT '-1',
  `CARD5_OUTPUTS` int(11) DEFAULT '-1',
  `CARD6_DRIVER` int(11) DEFAULT '0',
  `CARD6_NAME` char(64) DEFAULT NULL,
  `CARD6_INPUTS` int(11) DEFAULT '-1',
  `CARD6_OUTPUTS` int(11) DEFAULT '-1',
  `CARD7_DRIVER` int(11) DEFAULT '0',
  `CARD7_NAME` char(64) DEFAULT NULL,
  `CARD7_INPUTS` int(11) DEFAULT '-1',
  `CARD7_OUTPUTS` int(11) DEFAULT '-1',
  PRIMARY KEY (`NAME`),
  KEY `DESCRIPTION_IDX` (`DESCRIPTION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SWITCHER_NODES`
--

DROP TABLE IF EXISTS `SWITCHER_NODES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SWITCHER_NODES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATION_NAME` char(64) DEFAULT NULL,
  `MATRIX` int(11) DEFAULT NULL,
  `BASE_OUTPUT` int(11) DEFAULT '0',
  `HOSTNAME` char(64) DEFAULT NULL,
  `PASSWORD` char(64) DEFAULT NULL,
  `TCP_PORT` int(11) DEFAULT NULL,
  `DESCRIPTION` char(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `STATION_IDX` (`STATION_NAME`,`MATRIX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SYSTEM`
--

DROP TABLE IF EXISTS `SYSTEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYSTEM` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SAMPLE_RATE` int(10) unsigned DEFAULT '48000',
  `DUP_CART_TITLES` enum('N','Y') NOT NULL DEFAULT 'Y',
  `MAX_POST_LENGTH` int(10) unsigned DEFAULT '10000000',
  `ISCI_XREFERENCE_PATH` char(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TEST_DEMO_LOG`
--

DROP TABLE IF EXISTS `TEST_DEMO_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TEST_DEMO_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TEST_LARZAC2_LOG`
--

DROP TABLE IF EXISTS `TEST_LARZAC2_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TEST_LARZAC2_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TEST_LARZAC_LOG`
--

DROP TABLE IF EXISTS `TEST_LARZAC_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TEST_LARZAC_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TOTO_LOG`
--

DROP TABLE IF EXISTS `TOTO_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TOTO_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TRIGGERS`
--

DROP TABLE IF EXISTS `TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRIGGERS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CUT_NAME` char(12) DEFAULT NULL,
  `TRIGGER_CODE` int(10) unsigned DEFAULT NULL,
  `OFFSET` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CUT_NAME_IDX` (`CUT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TTYS`
--

DROP TABLE IF EXISTS `TTYS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TTYS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PORT_ID` int(10) unsigned NOT NULL,
  `ACTIVE` enum('N','Y') NOT NULL DEFAULT 'N',
  `STATION_NAME` char(64) NOT NULL,
  `PORT` char(20) DEFAULT NULL,
  `BAUD_RATE` int(11) DEFAULT '9600',
  `DATA_BITS` int(11) DEFAULT '8',
  `STOP_BITS` int(11) DEFAULT '1',
  `PARITY` int(11) DEFAULT '0',
  `TERMINATION` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `STATION_NAME_IDX` (`STATION_NAME`),
  KEY `ACTIVE_IDX` (`ACTIVE`),
  KEY `PORT_ID_IDX` (`PORT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Test_FIELDS`
--

DROP TABLE IF EXISTS `Test_FIELDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Test_FIELDS` (
  `CAST_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`CAST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Test_FLG`
--

DROP TABLE IF EXISTS `Test_FLG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Test_FLG` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CAST_ID` int(10) unsigned DEFAULT NULL,
  `ACCESS_DATE` date DEFAULT NULL,
  `ACCESS_COUNT` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CAST_ID_IDX` (`CAST_ID`,`ACCESS_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Test_LOG`
--

DROP TABLE IF EXISTS `Test_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Test_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Test_SRT`
--

DROP TABLE IF EXISTS `Test_SRT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Test_SRT` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LENGTH` int(11) DEFAULT NULL,
  `LOG_NAME` char(64) DEFAULT NULL,
  `LOG_ID` int(11) DEFAULT NULL,
  `CART_NUMBER` int(10) unsigned DEFAULT NULL,
  `CUT_NUMBER` int(11) DEFAULT NULL,
  `TITLE` char(255) DEFAULT NULL,
  `ARTIST` char(255) DEFAULT NULL,
  `PUBLISHER` char(64) DEFAULT NULL,
  `COMPOSER` char(64) DEFAULT NULL,
  `ALBUM` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `USAGE_CODE` int(11) DEFAULT NULL,
  `ISRC` char(12) DEFAULT NULL,
  `ISCI` char(32) DEFAULT NULL,
  `STATION_NAME` char(64) DEFAULT NULL,
  `EVENT_DATETIME` datetime DEFAULT NULL,
  `SCHEDULED_TIME` time DEFAULT NULL,
  `EVENT_TYPE` int(11) DEFAULT NULL,
  `EVENT_SOURCE` int(11) DEFAULT NULL,
  `PLAY_SOURCE` int(11) DEFAULT NULL,
  `START_SOURCE` int(11) DEFAULT '0',
  `ONAIR_FLAG` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(8) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `EVENT_DATETIME_IDX` (`EVENT_DATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `USERS`
--

DROP TABLE IF EXISTS `USERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERS` (
  `LOGIN_NAME` char(255) NOT NULL,
  `FULL_NAME` char(255) DEFAULT NULL,
  `PHONE_NUMBER` char(20) DEFAULT NULL,
  `DESCRIPTION` char(255) DEFAULT NULL,
  `PASSWORD` char(32) DEFAULT NULL,
  `ENABLE_WEB` enum('N','Y') DEFAULT 'N',
  `ADMIN_USERS_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `ADMIN_CONFIG_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `CREATE_CARTS_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `DELETE_CARTS_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `MODIFY_CARTS_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `EDIT_AUDIO_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `ASSIGN_CART_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `CREATE_LOG_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `DELETE_LOG_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `DELETE_REC_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `PLAYOUT_LOG_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `ARRANGE_LOG_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `MODIFY_TEMPLATE_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `ADDTO_LOG_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `REMOVEFROM_LOG_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `CONFIG_PANELS_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `VOICETRACK_LOG_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `EDIT_CATCHES_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `ADD_PODCAST_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `EDIT_PODCAST_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  `DELETE_PODCAST_PRIV` enum('N','Y') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`LOGIN_NAME`),
  KEY `FULL_NAME_IDX` (`FULL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `USER_PERMS`
--

DROP TABLE IF EXISTS `USER_PERMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_PERMS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `USER_NAME` char(255) DEFAULT NULL,
  `GROUP_NAME` char(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `USER_IDX` (`USER_NAME`),
  KEY `GROUP_IDX` (`GROUP_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VERSION`
--

DROP TABLE IF EXISTS `VERSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VERSION` (
  `DB` int(11) NOT NULL,
  `LAST_MAINT_DATETIME` datetime DEFAULT '1970-01-01 00:00:00',
  `LAST_ISCI_XREFERENCE` datetime DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`DB`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VGUEST_RESOURCES`
--

DROP TABLE IF EXISTS `VGUEST_RESOURCES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VGUEST_RESOURCES` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STATION_NAME` char(64) NOT NULL,
  `MATRIX_NUM` int(11) NOT NULL,
  `VGUEST_TYPE` int(11) NOT NULL,
  `NUMBER` int(11) NOT NULL,
  `ENGINE_NUM` int(11) DEFAULT '-1',
  `DEVICE_NUM` int(11) DEFAULT '-1',
  `SURFACE_NUM` int(11) DEFAULT '0',
  `RELAY_NUM` int(11) DEFAULT '-1',
  `BUSS_NUM` int(11) DEFAULT '-1',
  PRIMARY KEY (`ID`),
  KEY `STATION_MATRIX_IDX` (`STATION_NAME`,`MATRIX_NUM`,`VGUEST_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WEB_CONNECTIONS`
--

DROP TABLE IF EXISTS `WEB_CONNECTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WEB_CONNECTIONS` (
  `SESSION_ID` int(10) unsigned NOT NULL,
  `LOGIN_NAME` char(255) DEFAULT NULL,
  `IP_ADDRESS` char(16) DEFAULT NULL,
  `TIME_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`SESSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `friday_22_05_09_LOG`
--

DROP TABLE IF EXISTS `friday_22_05_09_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friday_22_05_09_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monday_01_02_10_LOG`
--

DROP TABLE IF EXISTS `monday_01_02_10_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monday_01_02_10_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monday_16_05_11_LOG`
--

DROP TABLE IF EXISTS `monday_16_05_11_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monday_16_05_11_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `saturday_05_02_11_LOG`
--

DROP TABLE IF EXISTS `saturday_05_02_11_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saturday_05_02_11_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `saturday_22_08_09_LOG`
--

DROP TABLE IF EXISTS `saturday_22_08_09_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saturday_22_08_09_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `saturday__25__04__09_LOG`
--

DROP TABLE IF EXISTS `saturday__25__04__09_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saturday__25__04__09_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` time DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `POST_TIME` time DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` time DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sunday_11_10_09_LOG`
--

DROP TABLE IF EXISTS `sunday_11_10_09_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sunday_11_10_09_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sunday_15_05_11_LOG`
--

DROP TABLE IF EXISTS `sunday_15_05_11_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sunday_15_05_11_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `thursday_23_08_12_LOG`
--

DROP TABLE IF EXISTS `thursday_23_08_12_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thursday_23_08_12_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `thursday_27_01_11_LOG`
--

DROP TABLE IF EXISTS `thursday_27_01_11_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thursday_27_01_11_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tuesday_17_05_11_LOG`
--

DROP TABLE IF EXISTS `tuesday_17_05_11_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuesday_17_05_11_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tuesday_29_09_09_LOG`
--

DROP TABLE IF EXISTS `tuesday_29_09_09_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuesday_29_09_09_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wednesday_18_05_11_LOG`
--

DROP TABLE IF EXISTS `wednesday_18_05_11_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wednesday_18_05_11_LOG` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `TYPE` int(11) DEFAULT '0',
  `SOURCE` int(11) NOT NULL,
  `START_TIME` int(11) DEFAULT NULL,
  `GRACE_TIME` int(11) DEFAULT '0',
  `CART_NUMBER` int(10) unsigned NOT NULL,
  `TIME_TYPE` int(11) NOT NULL,
  `POST_POINT` enum('N','Y') DEFAULT 'N',
  `TRANS_TYPE` int(11) NOT NULL,
  `START_POINT` int(11) NOT NULL DEFAULT '-1',
  `END_POINT` int(11) NOT NULL DEFAULT '-1',
  `FADEUP_POINT` int(11) DEFAULT '-1',
  `FADEUP_GAIN` int(11) DEFAULT '-3000',
  `FADEDOWN_POINT` int(11) DEFAULT '-1',
  `FADEDOWN_GAIN` int(11) DEFAULT '-3000',
  `SEGUE_START_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_END_POINT` int(11) NOT NULL DEFAULT '-1',
  `SEGUE_GAIN` int(11) DEFAULT '-3000',
  `DUCK_UP_GAIN` int(11) DEFAULT '0',
  `DUCK_DOWN_GAIN` int(11) DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  `LABEL` char(64) DEFAULT NULL,
  `ORIGIN_USER` char(255) DEFAULT NULL,
  `ORIGIN_DATETIME` datetime DEFAULT NULL,
  `LINK_EVENT_NAME` char(64) DEFAULT NULL,
  `LINK_START_TIME` int(11) DEFAULT NULL,
  `LINK_LENGTH` int(11) DEFAULT '0',
  `LINK_START_SLOP` int(11) DEFAULT '0',
  `LINK_END_SLOP` int(11) DEFAULT '0',
  `LINK_ID` int(11) DEFAULT '-1',
  `LINK_EMBEDDED` enum('N','Y') DEFAULT 'N',
  `EXT_START_TIME` time DEFAULT NULL,
  `EXT_LENGTH` int(11) DEFAULT NULL,
  `EXT_CART_NAME` char(32) DEFAULT NULL,
  `EXT_DATA` char(32) DEFAULT NULL,
  `EXT_EVENT_ID` char(32) DEFAULT NULL,
  `EXT_ANNC_TYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNT_IDX` (`COUNT`),
  KEY `CART_NUMBER_IDX` (`CART_NUMBER`),
  KEY `LABEL_IDX` (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-09-02 16:37:41
