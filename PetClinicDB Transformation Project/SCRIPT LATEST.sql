-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Shrey_DataModel
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Shrey_DataModel
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Shrey_DataModel` ;
USE `Shrey_DataModel` ;

-- -----------------------------------------------------
-- Table `Shrey_DataModel`.`CUSTOMER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Shrey_DataModel`.`CUSTOMER` (
  `CUSTOMER_ID` INT NOT NULL,
  `CUST_FIRST_NAME` VARCHAR(45) NOT NULL,
  `CUST_LAST_NAME` VARCHAR(45) NOT NULL,
  `CUST_DATEOFBIRTH` DATE NOT NULL,
  `CUST_CITY` VARCHAR(45) NOT NULL,
  `CUST_EMAILID` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Shrey_DataModel`.`PET`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Shrey_DataModel`.`PET` (
  `PET_ID` INT NOT NULL,
  `PET_NAME` VARCHAR(45) NOT NULL,
  `PET_DATEOFBIRTH` DATE NOT NULL,
  `PET_WEIGHT` DECIMAL(8,2) NOT NULL,
  `PET_SPECIES` VARCHAR(60) NOT NULL,
  `CUSTOMER_CUSTOMER_ID1` INT NOT NULL,
  PRIMARY KEY (`PET_ID`),
  INDEX `fk_PET_CUSTOMER1_idx` (`CUSTOMER_CUSTOMER_ID1` ASC) VISIBLE,
  CONSTRAINT `fk_PET_CUSTOMER1`
    FOREIGN KEY (`CUSTOMER_CUSTOMER_ID1`)
    REFERENCES `Shrey_DataModel`.`CUSTOMER` (`CUSTOMER_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Shrey_DataModel`.`PET_VISIT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Shrey_DataModel`.`PET_VISIT` (
  `VISIT_ID` INT NOT NULL,
  `VISIT_DATE` DATE NOT NULL,
  `VISIT_COST` DECIMAL(10,2) NOT NULL,
  `VISIT_DOCTOR` VARCHAR(45) NOT NULL,
  `PET_PET_ID` INT NOT NULL,
  `PET_CUSTOMER_CUSTOMER_ID` INT NOT NULL,
  PRIMARY KEY (`VISIT_ID`),
  INDEX `fk_PET_VISIT_PET1_idx` (`PET_PET_ID` ASC, `PET_CUSTOMER_CUSTOMER_ID` ASC) VISIBLE,
  CONSTRAINT `fk_PET_VISIT_PET1`
    FOREIGN KEY (`PET_PET_ID`)
    REFERENCES `Shrey_DataModel`.`PET` (`PET_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Shrey_DataModel`.`PAYMENTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Shrey_DataModel`.`PAYMENTS` (
  `PAYMENT_ID` INT NOT NULL,
  `PAYMENT_TYPE` VARCHAR(45) NOT NULL,
  `PAYMENT_DATE` DATE NOT NULL,
  `PAYMENT_AMOUNT` DECIMAL(20,2) NOT NULL,
  `PET_VISIT_VISIT_ID` INT NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  INDEX `fk_PAYMENTS_PET_VISIT1_idx` (`PET_VISIT_VISIT_ID` ASC) VISIBLE,
  CONSTRAINT `fk_PAYMENTS_PET_VISIT1`
    FOREIGN KEY (`PET_VISIT_VISIT_ID`)
    REFERENCES `Shrey_DataModel`.`PET_VISIT` (`VISIT_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Shrey_DataModel`.`PROCEDURE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Shrey_DataModel`.`PROCEDURE` (
  `PROCEDURE_ID` INT NOT NULL,
  `PROCEDURE_COST` DECIMAL(20,2) NOT NULL,
  `PROCEDURE_TYPE` VARCHAR(45) NOT NULL,
  `PROCEDURE_DESCRIPTION` VARCHAR(500) NULL,
  `PROCEDURE_HISTORY` VARCHAR(500) NOT NULL,
  `PROCEDURE_REQUIREMENTS` VARCHAR(45) NOT NULL,
  `PET_PET_ID` INT NOT NULL,
  PRIMARY KEY (`PROCEDURE_ID`),
  INDEX `fk_PROCEDURE_PET1_idx` (`PET_PET_ID` ASC) VISIBLE,
  CONSTRAINT `fk_PROCEDURE_PET1`
    FOREIGN KEY (`PET_PET_ID`)
    REFERENCES `Shrey_DataModel`.`PET` (`PET_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Shrey_DataModel`.`DOCTOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Shrey_DataModel`.`DOCTOR` (
  `DOCTOR_ID` INT NOT NULL,
  `DOCTOR_FIRSTNAME` VARCHAR(45) NOT NULL,
  `DOCTOR_LASTNAME` VARCHAR(45) NOT NULL,
  `DOCTOR_QUALIFICATION` VARCHAR(45) NOT NULL,
  `DOCTOR_SALARY` DECIMAL(20,2) NOT NULL,
  `DOCTOR_DATEOFBIRTH` DATE NOT NULL,
  `DOCTOR_AGE` INT NOT NULL,
  `DOCTOR_CITY` VARCHAR(45) NOT NULL,
  `PROCEDURE_PROCEDURE_ID` INT NOT NULL,
  PRIMARY KEY (`DOCTOR_ID`),
  INDEX `fk_DOCTOR_PROCEDURE1_idx` (`PROCEDURE_PROCEDURE_ID` ASC) VISIBLE,
  CONSTRAINT `fk_DOCTOR_PROCEDURE1`
    FOREIGN KEY (`PROCEDURE_PROCEDURE_ID`)
    REFERENCES `Shrey_DataModel`.`PROCEDURE` (`PROCEDURE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Shrey_DataModel`.`PRESCRIPTION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Shrey_DataModel`.`PRESCRIPTION` (
  `PRESCRIPTION_ID` INT NOT NULL,
  `PRESCRIPTION_DRUGNAME` VARCHAR(100) NOT NULL,
  `PRESCRIPTION_COST` DECIMAL(15,2) NOT NULL,
  `PRESCRIPTION_DOSAGE` VARCHAR(200) NOT NULL,
  `DOCTOR_DOCTOR_ID` INT NOT NULL,
  PRIMARY KEY (`PRESCRIPTION_ID`),
  INDEX `fk_PREDCRIPTION_DOCTOR1_idx` (`DOCTOR_DOCTOR_ID` ASC) VISIBLE,
  CONSTRAINT `fk_PREDCRIPTION_DOCTOR1`
    FOREIGN KEY (`DOCTOR_DOCTOR_ID`)
    REFERENCES `Shrey_DataModel`.`DOCTOR` (`DOCTOR_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
