# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Hôte: 127.0.0.1 (MySQL 5.6.35)
# Base de données: adopteuninge
# Temps de génération: 2018-01-10 16:47:51 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Affichage de la table event
# ------------------------------------------------------------

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `author` int(11) NOT NULL,
  `description` text,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `eventID` (`author`),
  CONSTRAINT `eventID` FOREIGN KEY (`author`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Affichage de la table message
# ------------------------------------------------------------

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `authorID` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `receiver` int(11) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `AuthorID` (`authorID`),
  KEY `receiverID` (`receiver`),
  CONSTRAINT `AuthorID` FOREIGN KEY (`authorID`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `receiverID` FOREIGN KEY (`receiver`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;

INSERT INTO `message` (`id`, `authorID`, `date`, `receiver`, `message`)
VALUES
	(1,1,'2017-12-12 00:00:00',3,'ceci est un message test');

/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `nickname` tinytext NOT NULL,
  `mail` tinytext NOT NULL,
  `password` text CHARACTER SET utf8mb4 NOT NULL,
  `age` tinyint(4) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `rank` tinyint(1) NOT NULL DEFAULT '0',
  `city` tinytext NOT NULL,
  `zip` smallint(5) NOT NULL,
  `like` tinyint(3) NOT NULL DEFAULT '10',
  `report` tinyint(2) NOT NULL DEFAULT '0',
  `sex` tinyint(1) NOT NULL,
  `orientation` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `nickname`, `mail`, `password`, `age`, `admin`, `rank`, `city`, `zip`, `like`, `report`, `sex`, `orientation`)
VALUES
	(1,'Masson','Tom','tom.masson@insa-rouen.fr','0cc175b9c0f1b6a831c399e269772661',21,1,3,'MSA',12345,10,0,0,1),
	(3,'Marchelidon','Hugo','hugo.marchelidon@insa-rouen.fr','22b6a3594cac7fbbade97039f91f201f',21,0,2,'Rouen',32767,10,0,0,0);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
