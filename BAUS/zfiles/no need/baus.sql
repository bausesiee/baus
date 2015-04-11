-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 08 Avril 2015 à 00:30
-- Version du serveur :  5.5.42
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
  `id_annonce` int(11) NOT NULL,
  `date_de_creation` datetime NOT NULL,
  `date_d_expiration` datetime NOT NULL,
  `date_debut` varchar(45) DEFAULT NULL,
  `duree` varchar(45) DEFAULT NULL,
  `genre_de_contrat` varchar(45) DEFAULT NULL,
  `niveau_d_etude_requis` varchar(45) DEFAULT NULL,
  `remuneration` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_annonce`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `annonceur`
--

CREATE TABLE IF NOT EXISTS `annonceur` (
  `idAnnonceur` int(11) NOT NULL,
  `Date` datetime NOT NULL,
  `Annonce` varchar(45) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`idAnnonceur`),
  KEY `fk_Annonceur_User1_idx` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `appreciations`
--

CREATE TABLE IF NOT EXISTS `appreciations` (
  `idAppreciations` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `note` varchar(45) NOT NULL,
  `avis` varchar(45) NOT NULL,
  `User_id_user` int(11) NOT NULL,
  PRIMARY KEY (`idAppreciations`),
  KEY `fk_Appreciations_User1_idx` (`User_id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cle`
--

CREATE TABLE IF NOT EXISTS `cle` (
  `id_cle` int(11) NOT NULL,
  `cle` varchar(45) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_cle`,`id_user`),
  KEY `fk_cle_User1_idx` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cle`
--

INSERT INTO `cle` (`id_cle`, `cle`, `id_user`) VALUES
(1, 'java', 1),
(2, 'c', 2),
(3, 'marketing', 3),
(4, 'musculation', 1);

-- --------------------------------------------------------

--
-- Structure de la table `cv`
--

CREATE TABLE IF NOT EXISTS `cv` (
  `idCv` int(11) NOT NULL,
  `competence` varchar(255) DEFAULT NULL,
  `dernier_diplome` varchar(45) DEFAULT NULL,
  `annee_d_experience` varchar(45) DEFAULT NULL,
  `langue` varchar(255) DEFAULT NULL,
  `loisir` varchar(45) DEFAULT NULL,
  `competence_requise` varchar(9000) DEFAULT NULL,
  PRIMARY KEY (`idCv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lienuser_annonce_cv`
--

CREATE TABLE IF NOT EXISTS `lienuser_annonce_cv` (
  `idLienUser_Annonce_CV` int(11) NOT NULL,
  `role` varchar(45) NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `id_annonce` int(11) NOT NULL,
  `idDemande` int(11) NOT NULL,
  `idCv` int(11) NOT NULL,
  PRIMARY KEY (`idLienUser_Annonce_CV`),
  KEY `fk_LienUser_Annonce_User1_idx` (`id_user`),
  KEY `fk_LienUser_Annonce_Annonce1_idx` (`id_annonce`),
  KEY `fk_LienUser_Annonce_CV_CV1_idx` (`idCv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `date_naissance` datetime NOT NULL,
  `email` varchar(45) NOT NULL,
  `adresse` varchar(45) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id_user`, `nom`, `prenom`, `date_naissance`, `email`, `adresse`) VALUES
(1, 'ahanguir', 'adam', '2012-01-09 00:00:00', 'adam.ahanguir@edu.Esiee.fr', 'a la maison'),
(2, 'jean', 'dupond', '2015-04-14 00:00:00', 'dupond.gen@fjjf.ff', 'maison'),
(3, 'bim', 'prenom de bim', '2015-04-08 00:00:00', 'bim.bimbim@bim.com', 'maison'),
(4, 'crari', 'son prenom', '2015-04-26 00:00:00', 'eee@ee.fr', 'a la maison');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `annonceur`
--
ALTER TABLE `annonceur`
  ADD CONSTRAINT `fk_Annonceur_User1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `appreciations`
--
ALTER TABLE `appreciations`
  ADD CONSTRAINT `fk_Appreciations_User1` FOREIGN KEY (`User_id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `cle`
--
ALTER TABLE `cle`
  ADD CONSTRAINT `fk_cle_User1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `lienuser_annonce_cv`
--
ALTER TABLE `lienuser_annonce_cv`
  ADD CONSTRAINT `fk_LienUser_Annonce_User1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_LienUser_Annonce_Annonce1` FOREIGN KEY (`id_annonce`) REFERENCES `annonce` (`id_annonce`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_LienUser_Annonce_CV_CV1` FOREIGN KEY (`idCv`) REFERENCES `cv` (`idCv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
