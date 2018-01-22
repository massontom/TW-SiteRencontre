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
  `date` text NOT NULL,
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
	(1,1,'2017/12/12 01:00:00',2,'Salut Hugo'),
	(2,1,'2017/12/12 02:00:00',4,'Salut Pamela'),

	
	(3,2,'2017/12/12 07:00:00',1,'Salut Tom'),
	(4,4,'2017/12/12 07:00:00',1,'Salut Tom');


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
  `likes` tinyint(3) NOT NULL DEFAULT '10',
  `report` tinyint(2) NOT NULL DEFAULT '0',
  `sex` tinyint(1) NOT NULL,
  `orientation` tinyint(1) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `nickname`, `mail`, `password`, `age`, `admin`, `rank`, `city`, `zip`, `likes`, `report`, `sex`, `orientation`,`description`)
VALUES
	(1,'Masson','Tom','tom.masson@insa-rouen.fr','0cc175b9c0f1b6a831c399e269772661',21,1,3,'MSA',76,10,0,0,1,'Je m\'appel Tom, est je suis en manque d\'amour. Likez mois vp...'),
	(2,'Marchelidon','Hugo','hugo.marchelidon@insa-rouen.fr','22b6a3594cac7fbbade97039f91f201f',21,0,2,'Rouen',76,10,0,0,0,'Je m\'appel Hugo, bg et intelligent!'),
  ( 4 , 'anderson'    , 'pamela'     , 'pampam@pam.pam   '    , '14ce1924b9954365c29b7593faea2237' ,  50 ,     0 ,    2 , 'Miami'  ,  96 ,    10 ,      0 ,   1 ,  0 , 'Aucune description'),
  (5 , 'Stieffler'   , 'Jeanine'    , 'jeanine@pam.pam '       , '3a17a1893999ea69c48536aa16bd2cba' ,  59 ,     0 ,    2 , 'Rouen'  ,  76 ,    10 ,      0 ,   1 ,           0 , 'Aucune description'),
  (6 , 'Kidman'      , 'Nicole'     , 'nicole@pam.pam   '    , 'fc63f87c08d505264caba37514cd0cfd' ,  50 ,     0 ,    2 , 'Paris'  ,  75 ,    10 ,      0 ,   1 ,           0 , 'Aucune description' ),
  (7 , 'Boucher'     , 'Thomas'     , 'thomas.boucher@insa-rouen.fr'   , '827ccb0eea8a706c4c34a16891f84e7b' ,  23 ,     0 ,    2 , 'Evreux' ,  27 ,    10 ,      0 ,   0 , 1 ,' Aucune description'),
  (8 , 'Hiron'       , 'Camille'    , 'camille@pam.pam  ' , 'e9fd92b4e8a79b1c0b046ec770197f60' ,  21 ,     0 ,    2 , 'Rouen'  ,  76 ,    10 ,      0 ,   1 ,      0 , 'Aucune description'),
  (9 , 'Germon'      , 'MainGauche' , 'maingauche@pam.pam ', '827ccb0eea8a706c4c34a16891f84e7b' ,  21 ,     0 ,    2 , 'Rouen'  ,  76 ,    10 ,      0 ,   0 ,        0 , 'Aucune description' ),
  (10 , 'Khalifa'     , 'Mia'        , 'mia@pam.pam '           , '827ccb0eea8a706c4c34a16891f84e7b' ,  24 ,     0 ,    2 , 'Paris'  ,  75 ,    10 ,      0 ,   1 ,           0 , 'Aucune description ' ),
  (11 , 'inconnu'     , 'Bobby'      , 'bobby@insa-rouen.Fr '    , '827ccb0eea8a706c4c34a16891f84e7b' ,  21 ,     0 ,    2 , 'Rouen'  ,  76 ,    10 ,      0 ,   1 ,           0 , 'Aucune description' );

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

# Affichage de la table likes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  	`idQuiLike` int(11) NOT NULL,
	`idLike` int(11) NOT NULL,
	PRIMARY KEY (`idQuiLike`, `idLike`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
