-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour exo1
CREATE DATABASE IF NOT EXISTS `exo1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `exo1`;

-- Listage de la structure de la table exo1. fournisseurs
CREATE TABLE IF NOT EXISTS `fournisseurs` (
  `num_F` int(8) NOT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `ville` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`num_F`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table exo1.fournisseurs : ~3 rows (environ)
/*!40000 ALTER TABLE `fournisseurs` DISABLE KEYS */;
INSERT INTO `fournisseurs` (`num_F`, `nom`, `ville`) VALUES
	(1, 'A', 'Cannes'),
	(2, 'B', 'Nice'),
	(3, 'C', 'Marseille');
/*!40000 ALTER TABLE `fournisseurs` ENABLE KEYS */;

-- Listage de la structure de la table exo1. fournitures
CREATE TABLE IF NOT EXISTS `fournitures` (
  `num_F` int(8) NOT NULL,
  `code_p` int(8) NOT NULL,
  `quantite` int(8) unsigned NOT NULL,
  PRIMARY KEY (`num_F`,`code_p`),
  KEY `FK_fournitures_produits` (`code_p`),
  CONSTRAINT `FK_fournitures_fournisseurs` FOREIGN KEY (`num_F`) REFERENCES `fournisseurs` (`num_F`),
  CONSTRAINT `FK_fournitures_produits` FOREIGN KEY (`code_p`) REFERENCES `produits` (`code_p`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table exo1.fournitures : ~6 rows (environ)
/*!40000 ALTER TABLE `fournitures` DISABLE KEYS */;
INSERT INTO `fournitures` (`num_F`, `code_p`, `quantite`) VALUES
	(1, 1, 2),
	(1, 4, 2),
	(2, 2, 2),
	(2, 3, 2),
	(3, 3, 2),
	(3, 4, 2);
/*!40000 ALTER TABLE `fournitures` ENABLE KEYS */;

-- Listage de la structure de la table exo1. produits
CREATE TABLE IF NOT EXISTS `produits` (
  `code_p` int(8) NOT NULL,
  `libelle` varchar(40) NOT NULL DEFAULT '',
  `origine` varchar(40) NOT NULL DEFAULT '',
  `couleur` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`code_p`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table exo1.produits : ~4 rows (environ)
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` (`code_p`, `libelle`, `origine`, `couleur`) VALUES
	(1, 'ABC', 'France', 'rouge'),
	(2, 'DEF', 'Italie', 'bleu'),
	(3, 'GHI', 'Espagne', 'vert'),
	(4, 'JKL', 'Allemagne', 'jaune');
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
