-- MySQL Script generated by MySQL Workbench
-- 02/07/17 02:25:55
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema estate_agency
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `estate_agency`;
-- -----------------------------------------------------
-- Schema estate_agency
-- -----------------------------------------------------
CREATE SCHEMA `estate_agency` DEFAULT CHARACTER SET utf8 ;
USE `estate_agency` ;

-- -----------------------------------------------------
-- Table `estate_agency`.`sellers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `estate_agency`.`sellers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `surname` VARCHAR(45) NOT NULL,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(20) NOT NULL,
  `passport` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `estate_agency`.`realtors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `estate_agency`.`realtors` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fio` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `estate_agency`.`buyers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `estate_agency`.`buyers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `surname` VARCHAR(45) NOT NULL,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(20) NOT NULL,
  `passport` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `estate_agency`.`flats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `estate_agency`.`flats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `rooms` INT NOT NULL,
  `area` FLOAT NOT NULL,
  `floor` INT NOT NULL,
  `district` VARCHAR(45) NOT NULL,
  `price` FLOAT NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `purchased` TINYINT(1) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `estate_agency`.`contracts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `estate_agency`.`contracts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `buyers_id` INT NOT NULL,
  `sellers_id` INT NOT NULL,
  `realtors_id` INT NOT NULL,
  `flats_id` INT NOT NULL,
  `comission` FLOAT NOT NULL,
  `total_price` FLOAT NOT NULL,
  `purchase_date` DATE NOT NULL ,
  PRIMARY KEY (`id`, `buyers_id`, `sellers_id`, `realtors_id`, `flats_id`),
  INDEX `fk_contracts_buyers_idx` (`buyers_id` ASC),
  INDEX `fk_contracts_sellers1_idx` (`sellers_id` ASC),
  INDEX `fk_contracts_realtors1_idx` (`realtors_id` ASC),
  INDEX `fk_contracts_flats1_idx` (`flats_id` ASC),
  CONSTRAINT `fk_contracts_buyers`
    FOREIGN KEY (`buyers_id`)
    REFERENCES `estate_agency`.`buyers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contracts_sellers1`
    FOREIGN KEY (`sellers_id`)
    REFERENCES `estate_agency`.`sellers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contracts_realtors1`
    FOREIGN KEY (`realtors_id`)
    REFERENCES `estate_agency`.`realtors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contracts_flats1`
    FOREIGN KEY (`flats_id`)
    REFERENCES `estate_agency`.`flats` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
