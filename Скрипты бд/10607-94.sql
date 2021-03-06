-- MySQL Script generated by MySQL Workbench
-- Thu May 13 11:45:26 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`all_gost`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`all_gost` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `url` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`10605-94`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`10605-94` (
  `id` INT NOT NULL,
  `e` VARCHAR(45) NULL,
  `all_gost_id` INT NOT NULL,
  PRIMARY KEY (`id`, `all_gost_id`),
  INDEX `fk_10605-94_all_gost_idx` (`all_gost_id` ASC) VISIBLE,
  CONSTRAINT `fk_10605-94_all_gost`
    FOREIGN KEY (`all_gost_id`)
    REFERENCES `mydb`.`all_gost` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`rezb_10605-94`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`rezb_10605-94` (
  `id` INT NOT NULL,
  `type_rezb` VARCHAR(45) NULL,
  `10607-94_id` INT NOT NULL,
  PRIMARY KEY (`id`, `10607-94_id`),
  INDEX `fk_rezb_10605-94_10607-941_idx` (`10607-94_id` ASC) VISIBLE,
  CONSTRAINT `fk_rezb_10605-94_10607-941`
    FOREIGN KEY (`10607-94_id`)
    REFERENCES `mydb`.`10607-94` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`10607-94`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`10607-94` (
  `id` INT NOT NULL,
  `dw` VARCHAR(45) NULL,
  `da` VARCHAR(45) NULL,
  `m` VARCHAR(45) NULL,
  `all_gost_id` INT NOT NULL,
  PRIMARY KEY (`id`, `all_gost_id`),
  INDEX `fk_10607-94_all_gost1_idx` (`all_gost_id` ASC) VISIBLE,
  CONSTRAINT `fk_10607-94_all_gost1`
    FOREIGN KEY (`all_gost_id`)
-- -----------------------------------------------------
-- ???????????? ???????????????? ???? ?????????????????????? ??????????????, ?? ???????????????????? ???????? ?????????????? all_gosts ?????? s ?? ??????????
-- -----------------------------------------------------
    REFERENCES `mydb`.`all_gosts` (`id`) 
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`rezb_10605-94`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`rezb_10605-94` (
  `id` INT NOT NULL,
  `type_rezb` VARCHAR(45) NULL,
  `10607-94_id` INT NOT NULL,
  PRIMARY KEY (`id`, `10607-94_id`),
  INDEX `fk_rezb_10605-94_10607-941_idx` (`10607-94_id` ASC) VISIBLE,
  CONSTRAINT `fk_rezb_10605-94_10607-941`
    FOREIGN KEY (`10607-94_id`)
    REFERENCES `mydb`.`10607-94` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
