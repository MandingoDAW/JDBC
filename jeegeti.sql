-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Lun 23 Décembre 2013 à 00:19
-- Version du serveur: 5.5.32
-- Version de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `jeegeti`
--
CREATE DATABASE IF NOT EXISTS `jeegeti` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jeegeti`;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `commande` varchar(3000) NOT NULL,
  `totale` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`id`, `idUser`, `commande`, `totale`) VALUES
(5, 11, ' \r\n Produit: Sumsung Galaxy S44 || Qunatité: 1\r\n \r\n Produit: HP Pavillon || Qunatité: 1\r\n', 2576),
(6, 11, ' \r\n Produit: HP Pavillon || Qunatité: 1\r\n \r\n Produit: Nokia Lumia 520 || Qunatité: 1\r\n \r\n Produit: Canon || Qunatité: 1\r\n', 3768.23);

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `photo` mediumblob,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `first_name`, `last_name`, `photo`) VALUES
INSERT INTO `contacts` (`contact_id`, `first_name`, `last_name`, `photo`) VALUES

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE IF NOT EXISTS `panier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idProduit` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `qte` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `description` varchar(400) NOT NULL,
  `prix` double NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(200) NOT NULL,
  `description` varchar(400) NOT NULL,
  `prix` varchar(200) NOT NULL,
  `image` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `description`, `prix`, `image`) VALUES
(1, 'Sumsung Galaxy S44', 'Sumsung Galaxy S4', '1000.0', './images/prod1.jpg'),
(2, 'HP Pavillon', 'HP Pavillon Intel I3 ', '1200.0', './images/prod3.png'),
(3, 'Nokia Lumia 520', 'Nokia Lumia 520 ....', '899.0', './images/prod4.png'),
(4, 'Canon', 'Canon Pro', '1120', './images/prod2.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `role` varchar(20) NOT NULL,
  `photo` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `username`, `first_name`, `last_name`, `password`, `email`, `role`, `photo`) VALUES
(9, 'admin', 'Salem', 'Said', 'admin', 'salem.said.ing@gmail.com', 'admin', './images/user.jpg'),
(11, 'user', 'user', 'user', 'user', 'salem.said.ing@gmail.com', 'user', './images/user.jpg'),
(12, 'salem', 'salem', 'said', 'salem', 'salem.said.ing@gmail.com', 'admin', './images/user.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;