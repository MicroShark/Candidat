-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 14 Février 2014 à 16:44
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `hitema`
--
CREATE DATABASE IF NOT EXISTS `hitema` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hitema`;

-- --------------------------------------------------------

--
-- Structure de la table `ca_utilisateur`
--

CREATE TABLE IF NOT EXISTS `ca_utilisateur` (
  `id` int(11) NOT NULL,
  `identifiant` char(10) NOT NULL,
  `motdepasse` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ct_candidat`
--

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `ct_candidat`
--

INSERT INTO `ct_candidat` (`id`, `nom`, `prenom`, `datenaiss`, `cp`, `ville`, `adresse`, `telephone`, `email`, `niveau`, `spec`, `datepo`) VALUES
(1, 'INTELLO', 'Jean', '1995-10-01', '56650', 'Villedereve', 'rue du chemin', '0663546159', 'test@test.fr', 'bac+x', 'chaudronnerie', '2014-04-12'),
(2, 'Nulachier', 'Fredrich', '1980-04-08', '01100', 'Chateauperdu', 'avenue de nulpart', '0105060807', 'nf@LoOoOL.com', 'Pas plus que ca', 'Alchimie', '2014-03-15');

-- --------------------------------------------------------

--
-- Structure de la table `ct_insee`
--

CREATE TABLE IF NOT EXISTS `ct_insee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ct_nivetude`
--

CREATE TABLE IF NOT EXISTS `ct_nivetude` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `ct_nivetude`
--

INSERT INTO `ct_nivetude` (`id`, `nom`) VALUES
(1, 'Bac'),
(2, 'Bac +1'),
(3, 'Bac+2'),
(4, 'Bac+3'),
(5, 'Bac+5'),
(6, 'DUT'),
(7, 'BTS');

-- --------------------------------------------------------

--
-- Structure de la table `ct_porteouverte`
--

CREATE TABLE IF NOT EXISTS `ct_porteouverte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `ct_porteouverte`
--

INSERT INTO `ct_porteouverte` (`id`, `nom`, `date`) VALUES
(1, 'Porte ouverte 3', '2014-03-15'),
(2, 'Porte ouverte 4', '2014-04-12');

-- --------------------------------------------------------

--
-- Structure de la table `ct_salon`
--

CREATE TABLE IF NOT EXISTS `ct_salon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `lieu` text NOT NULL,
  `datedeb` date NOT NULL,
  `datefin` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `ct_salon`
--

INSERT INTO `ct_salon` (`id`, `nom`, `lieu`, `datedeb`, `datefin`) VALUES
(1, 'Studyrama', 'Cité universitaire de Paris', '2013-12-08', '2013-12-08'),
(2, 'Salon de l’apprentissage et de l’alternance', 'centre des expositions de Paris (15ème)', '2014-01-17', '2014-01-19'),
(3, 'Salon informatique et multimédia', 'Paris', '2014-02-01', '2014-02-02'),
(4, 'Salon Sup’Alternance ', 'Espace Champerret – HALL A', '2014-04-04', '2014-04-05'),
(5, 'Salon des MASTER 1et 2, MS et MBA ', 'CNIT Paris la Défense – Hall Pierre Curie', '2014-03-08', '2014-03-08'),
(6, 'Que faire après un BAC+2/3', 'Paris', '2014-02-08', '2014-02-08');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
