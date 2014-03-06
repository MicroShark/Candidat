-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 06 Mars 2014 à 15:57
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `hitema`
--

-- --------------------------------------------------------

--
-- Structure de la table `ct_candidat`
--

DROP TABLE IF EXISTS `ct_candidat`;
CREATE TABLE IF NOT EXISTS `ct_candidat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `datenaiss` date NOT NULL,
  `cp` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `niveau` varchar(255) NOT NULL,
  `spec` varchar(255) NOT NULL,
  `datepo` date NOT NULL,
  `civil` varchar(255) NOT NULL,
  `nat` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `ct_candidat`
--

INSERT INTO `ct_candidat` (`id`, `nom`, `prenom`, `datenaiss`, `cp`, `ville`, `adresse`, `telephone`, `email`, `niveau`, `spec`, `datepo`, `civil`, `nat`) VALUES
(1, 'INTELLO', 'Jean', '1995-10-01', '56650', 'Villedereve', 'rue du chemin', '0663546159', 'test@test.fr', 'bac+x', 'chaudronnerie', '2014-04-12', '', ''),
(2, 'Nulachier', 'Fredrich', '1980-04-08', '01100', 'Chateauperdu', 'avenue de nulpart', '0105060807', 'nf@LoOoOL.com', 'Pas plus que ca', 'Alchimie', '2014-03-15', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
