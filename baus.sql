-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 29 Mars 2015 à 20:13
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `baus`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

CREATE TABLE IF NOT EXISTS `annonce` (
  `titre_annonce` varchar(45) NOT NULL,
  `contenu_annonce` varchar(45) NOT NULL,
  `id_annonce` int(11) NOT NULL AUTO_INCREMENT,
  `date_de_creation` datetime NOT NULL,
  `id_annonceur` int(11) NOT NULL,
  `date_d_expiration` datetime NOT NULL,
  `date_debut` varchar(45) DEFAULT NULL,
  `duree` varchar(45) DEFAULT NULL,
  `genre_de_contrat` varchar(45) DEFAULT NULL,
  `niveau_d_etude_requis` varchar(45) DEFAULT NULL,
  `remuneration` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_annonce`),
  KEY `fk_Annonce_User_idx` (`id_annonceur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `cv`
--

CREATE TABLE IF NOT EXISTS `cv` (
  `idCv` int(11) NOT NULL AUTO_INCREMENT,
  `competence` varchar(255) DEFAULT NULL,
  `dernier_diplome` varchar(45) DEFAULT NULL,
  `annee_d_experience` varchar(45) DEFAULT NULL,
  `langue` varchar(255) DEFAULT NULL,
  `loisir` varchar(45) DEFAULT NULL,
  `id_demandeur` int(11) NOT NULL,
  `competence_requise` varchar(9000) DEFAULT NULL,
  PRIMARY KEY (`idCv`),
  KEY `fk_CV_User1_idx` (`id_demandeur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `date_naissance` date NOT NULL,
  `email` varchar(45) NOT NULL,
  `adresse` varchar(45) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD CONSTRAINT `fk_Annonce_User` FOREIGN KEY (`id_annonceur`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cv`
--
ALTER TABLE `cv`
  ADD CONSTRAINT `fk_CV_User1` FOREIGN KEY (`id_demandeur`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
