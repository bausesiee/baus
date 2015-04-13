-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 13 Avril 2015 à 14:58
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `baus1`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

CREATE TABLE IF NOT EXISTS `annonce` (
  `id_annonce` int(11) NOT NULL AUTO_INCREMENT,
  `titre_annonce` varchar(45) NOT NULL,
  `descriptif_annonce` varchar(45) NOT NULL,
  `date_de_creation` date DEFAULT NULL,
  `duree_annonce` varchar(45) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_d_expiration` date DEFAULT NULL,
  `genre_de_contrat` varchar(45) DEFAULT NULL,
  `niveau_d_etude_requis` varchar(45) DEFAULT NULL,
  `remuneration` varchar(45) DEFAULT NULL,
  `competence_annonce` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_annonce`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `annonce`
--

INSERT INTO `annonce` (`id_annonce`, `titre_annonce`, `descriptif_annonce`, `date_de_creation`, `duree_annonce`, `date_debut`, `date_d_expiration`, `genre_de_contrat`, `niveau_d_etude_requis`, `remuneration`, `competence_annonce`) VALUES
(1, 'dqsdqsd', 'qsdqsd', '0000-00-00', 'qsdqsd', '0000-00-00', '0000-00-00', '', '', '', 'qsdqs'),
(2, 'dqsdqsd', 'qsdqsd', '0000-00-00', 'qsdqsd', '0000-00-00', '0000-00-00', '', '', '', 'qsdqs'),
(3, '', '', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '', '', ''),
(4, 'mmm', '', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '', '', ''),
(5, 'developeur logiciel', 'logiciel java', '0000-00-00', '3 mois', '0000-00-00', '0000-00-00', '', '', '', 'java');

-- --------------------------------------------------------

--
-- Structure de la table `cv`
--

CREATE TABLE IF NOT EXISTS `cv` (
  `idCv` int(11) NOT NULL AUTO_INCREMENT,
  `competence` varchar(255) DEFAULT NULL,
  `dernier_diplome` varchar(45) DEFAULT NULL,
  `annee_d_experience` varchar(500) DEFAULT NULL,
  `langue` varchar(255) DEFAULT NULL,
  `loisir` varchar(45) DEFAULT NULL,
  `cle` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`idCv`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `cv`
--

INSERT INTO `cv` (`idCv`, `competence`, `dernier_diplome`, `annee_d_experience`, `langue`, `loisir`, `cle`) VALUES
(3, 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdfs', 'dfsdf', 'sdfsdf'),
(4, 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdfs', 'dfsdf', 'sdfsdf'),
(5, '', '', '', '', '', ''),
(6, 'dqsdq', 'sdqsd', 'qsdqsd', 'qsdqsd', 'qsdqsd', 'dqsdq'),
(7, 'fsdfsd', 'fsdf', 'sdfsdf', 'sdfsdf', 'sdfsd', 'fsdfsd');

-- --------------------------------------------------------

--
-- Structure de la table `lienannonce_user`
--

CREATE TABLE IF NOT EXISTS `lienannonce_user` (
  `idLienAnnonce_User` int(11) NOT NULL AUTO_INCREMENT,
  `User_id_user` int(11) NOT NULL,
  `Annonce_id_annonce` int(11) NOT NULL,
  PRIMARY KEY (`idLienAnnonce_User`),
  KEY `fk_LienAnnonce_User_User1_idx` (`User_id_user`),
  KEY `fk_LienAnnonce_User_Annonce1_idx` (`Annonce_id_annonce`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `lienannonce_user`
--

INSERT INTO `lienannonce_user` (`idLienAnnonce_User`, `User_id_user`, `Annonce_id_annonce`) VALUES
(1, 2, 2),
(2, 10, 3),
(3, 10, 4),
(4, 11, 5);

-- --------------------------------------------------------

--
-- Structure de la table `liencv_user`
--

CREATE TABLE IF NOT EXISTS `liencv_user` (
  `idLienCV_User` int(11) NOT NULL AUTO_INCREMENT,
  `User_id_user` int(11) NOT NULL,
  `CV_idCv` int(11) NOT NULL,
  PRIMARY KEY (`idLienCV_User`),
  KEY `fk_LienCV_User_User1_idx` (`User_id_user`),
  KEY `fk_LienCV_User_CV1_idx` (`CV_idCv`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `liencv_user`
--

INSERT INTO `liencv_user` (`idLienCV_User`, `User_id_user`, `CV_idCv`) VALUES
(1, 2, 6),
(2, 11, 7);

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
  `telephone` varchar(45) NOT NULL,
  `motdepasse` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id_user`, `nom`, `prenom`, `date_naissance`, `email`, `adresse`, `telephone`, `motdepasse`) VALUES
(1, 'test', 'test', '2015-04-21', 'test@gmail.com', 'test', '0123564789', 'test'),
(2, 'ben', 'zac', '0000-00-00', 'ben@gmail.com', '', '', 'test'),
(3, '', 'fff', '0000-00-00', 'fff@gmail.com', '', '', 'fff'),
(4, '', '', '0000-00-00', '', '', '', ''),
(5, '', '', '0000-00-00', '', '', '', ''),
(6, 'sdss', 'sddsd', '0000-00-00', 'bend@gmail.com', '', '', 'ddd'),
(7, '', 's', '0000-00-00', 'benss@gmail.com', '', '', ''),
(8, '', '', '0000-00-00', '', '', '', ''),
(9, 'd', 'd', '0000-00-00', 'benssss@gmail.com', '', '', 'd'),
(10, 'aaaaaaaaaaa', 'aaaaaaaaaaa', '0000-00-00', 'aaaaaa@gmail.com', '', '', 'aaaaaaaaaaaaaaa'),
(11, 'ccc', 'dsqdqsd', '0000-00-00', 'ccc@gmail.com', '', '', 'ccc');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `lienannonce_user`
--
ALTER TABLE `lienannonce_user`
  ADD CONSTRAINT `fk_LienAnnonce_User_Annonce1` FOREIGN KEY (`Annonce_id_annonce`) REFERENCES `annonce` (`id_annonce`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_LienAnnonce_User_User1` FOREIGN KEY (`User_id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `liencv_user`
--
ALTER TABLE `liencv_user`
  ADD CONSTRAINT `fk_LienCV_User_CV1` FOREIGN KEY (`CV_idCv`) REFERENCES `cv` (`idCv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_LienCV_User_User1` FOREIGN KEY (`User_id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
