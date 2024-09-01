-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema detection
--

CREATE DATABASE IF NOT EXISTS detection;
USE detection;

--
-- Definition of table `follow`
--

DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `fid` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow`
--

/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;


--
-- Definition of table `mdwords`
--

DROP TABLE IF EXISTS `mdwords`;
CREATE TABLE `mdwords` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `word` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mdwords`
--

/*!40000 ALTER TABLE `mdwords` DISABLE KEYS */;
INSERT INTO `mdwords` (`id`,`word`) VALUES 
 (1,'atrocious'),
 (2,'annoy'),
 (3,'apathy'),
 (4,'awful'),
 (5,'bad'),
 (6,'callous'),
 (7,'clumsy'),
 (8,'confused'),
 (9,'collapse'),
 (10,'crazy'),
 (11,'cruel'),
 (12,'cry'),
 (13,'damage'),
 (14,'damaging'),
 (15,'dastardly'),
 (16,'dead'),
 (17,'depressed'),
 (18,'despicable'),
 (19,'detrimental'),
 (20,'dirty'),
 (21,'disease'),
 (22,'disgusting'),
 (23,'disheveled'),
 (24,'dishonest'),
 (25,'dishonorable'),
 (26,'distress'),
 (27,'enraged'),
 (28,'eroding'),
 (29,'evil'),
 (30,'fail'),
 (31,'faulty'),
 (32,'fear'),
 (33,'feeble'),
 (34,'fight'),
 (35,'filthy'),
 (36,'frightful'),
 (37,'ghastly'),
 (38,'grave'),
 (39,'grimace'),
 (40,'grotesque'),
 (41,'gruesome'),
 (42,'harmful'),
 (43,'hurt'),
 (44,'pain'),
 (45,'pessimistic'),
 (46,'reject'),
 (47,'sad'),
 (48,'savage'),
 (49,'scary'),
 (50,'stressful'),
 (51,'ugly');
/*!40000 ALTER TABLE `mdwords` ENABLE KEYS */;


--
-- Definition of table `reg`
--

DROP TABLE IF EXISTS `reg`;
CREATE TABLE `reg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `photo` longblob NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

/*!40000 ALTER TABLE `reg` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg` ENABLE KEYS */;


--
-- Definition of table `tweet`
--

DROP TABLE IF EXISTS `tweet`;
CREATE TABLE `tweet` (
  `tid` int(10) unsigned NOT NULL auto_increment,
  `uid` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `photo` longblob NOT NULL,
  `reply` varchar(45) NOT NULL default '0',
  `retweet` varchar(45) NOT NULL default '0',
  `likes` varchar(45) NOT NULL default '0',
  `twid` varchar(45) default '0',
  `stress` varchar(45) default NULL,
  `status` varchar(45) NOT NULL default 'No',
  PRIMARY KEY  (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tweet`
--

/*!40000 ALTER TABLE `tweet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tweet` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
