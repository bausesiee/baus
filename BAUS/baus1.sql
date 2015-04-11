-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema baus1
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `baus1` ;

-- -----------------------------------------------------
-- Schema baus1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `baus1` DEFAULT CHARACTER SET latin1 ;
USE `baus1` ;

-- -----------------------------------------------------
-- Table `baus1`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baus1`.`User` ;

CREATE TABLE IF NOT EXISTS `baus1`.`User` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  `date_naissance` DATE NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `adresse` VARCHAR(45) NOT NULL,
  `telephone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_user`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `baus1`.`Annonce`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baus1`.`Annonce` ;

CREATE TABLE IF NOT EXISTS `baus1`.`Annonce` (
  `id_annonce` INT NOT NULL AUTO_INCREMENT,
  `titre_annonce` VARCHAR(45) NOT NULL,
  `descriptif_annonce` VARCHAR(45) NOT NULL,
  `date_de_creation` DATE NULL,
  `duree_annonce` VARCHAR(45) NULL,
  `date_debut` DATE NULL,
  `date_d_expiration` DATE NULL,
  `genre_de_contrat` VARCHAR(45) NULL,
  `niveau_d_etude_requis` VARCHAR(45) NULL,
  `remuneration` VARCHAR(45) NULL,
  `competence_annonce` VARCHAR(45) NULL,
  PRIMARY KEY (`id_annonce`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `baus1`.`CV`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baus1`.`CV` ;

CREATE TABLE IF NOT EXISTS `baus1`.`CV` (
  `idCv` INT NOT NULL AUTO_INCREMENT,
  `competence` VARCHAR(255) NULL,
  `dernier_diplome` VARCHAR(45) NULL,
  `annee_d_experience` VARCHAR(500) NULL,
  `langue` VARCHAR(255) NULL,
  `loisir` VARCHAR(45) NULL,
  `cle` VARCHAR(90) NULL,
  PRIMARY KEY (`idCv`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `baus1`.`LienAnnonce_User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baus1`.`LienAnnonce_User` ;

CREATE TABLE IF NOT EXISTS `baus1`.`LienAnnonce_User` (
  `idLienAnnonce_User` INT NOT NULL AUTO_INCREMENT,
  `User_id_user` INT NOT NULL,
  `Annonce_id_annonce` INT NOT NULL,
  PRIMARY KEY (`idLienAnnonce_User`),
  INDEX `fk_LienAnnonce_User_User1_idx` (`User_id_user` ASC),
  INDEX `fk_LienAnnonce_User_Annonce1_idx` (`Annonce_id_annonce` ASC),
  CONSTRAINT `fk_LienAnnonce_User_User1`
    FOREIGN KEY (`User_id_user`)
    REFERENCES `baus1`.`User` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_LienAnnonce_User_Annonce1`
    FOREIGN KEY (`Annonce_id_annonce`)
    REFERENCES `baus1`.`Annonce` (`id_annonce`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `baus1`.`LienCV_User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baus1`.`LienCV_User` ;

CREATE TABLE IF NOT EXISTS `baus1`.`LienCV_User` (
  `idLienCV_User` INT NOT NULL AUTO_INCREMENT,
  `User_id_user` INT NOT NULL,
  `CV_idCv` INT NOT NULL,
  PRIMARY KEY (`idLienCV_User`),
  INDEX `fk_LienCV_User_User1_idx` (`User_id_user` ASC),
  INDEX `fk_LienCV_User_CV1_idx` (`CV_idCv` ASC),
  CONSTRAINT `fk_LienCV_User_User1`
    FOREIGN KEY (`User_id_user`)
    REFERENCES `baus1`.`User` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_LienCV_User_CV1`
    FOREIGN KEY (`CV_idCv`)
    REFERENCES `baus1`.`CV` (`idCv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
