-- MySQL Script generated by MySQL Workbench
-- Wed Jun 26 12:13:23 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`estado`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `mydb`.`estado` (
  `idestado` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `uf` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`idestado`),
  UNIQUE INDEX `idestado_UNIQUE` (`idestado` ASC))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cidade` (
  `idcidade` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `estado_idestado` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idcidade`),
  UNIQUE INDEX `idcidade_UNIQUE` (`idcidade` ASC),
  INDEX `fk_cidade_estado1_idx` (`estado_idestado` ASC),
  CONSTRAINT `fk_cidade_estado1`
    FOREIGN KEY (`estado_idestado`)
    REFERENCES `mydb`.`estado` (`idestado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`funcionario` (
  `idfuncionario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `endereco` VARCHAR(100) NULL,
  `data_contratacao` DATE NOT NULL,
  `salario` DECIMAL(10,2) NOT NULL,
  `cidade_idcidade` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idfuncionario`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) ,
  UNIQUE INDEX `idfuncionario_UNIQUE` (`idfuncionario` ASC) ,
  INDEX `fk_funcionario_cidade1_idx` (`cidade_idcidade` ASC) ,
  CONSTRAINT `fk_funcionario_cidade1`
    FOREIGN KEY (`cidade_idcidade`)
    REFERENCES `mydb`.`cidade` (`idcidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`veterinario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`veterinario` (
  `crv` INT(5) NOT NULL,
  `funcionario_idfuncionario` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`funcionario_idfuncionario`),
  UNIQUE INDEX `crv_UNIQUE` (`crv` ASC) ,
  INDEX `fk_veterinario_funcionario1_idx` (`funcionario_idfuncionario` ASC) ,
  CONSTRAINT `fk_veterinario_funcionario1`
    FOREIGN KEY (`funcionario_idfuncionario`)
    REFERENCES `mydb`.`funcionario` (`idfuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`cliente_dono`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cliente_dono` (
  `idcliente_dono` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(45) NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `telefone` BIGINT(11) NULL,
  `cidade_idcidade` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idcliente_dono`),
  UNIQUE INDEX `idcliente_dono_UNIQUE` (`idcliente_dono` ASC) ,
  INDEX `fk_cliente_dono_cidade1_idx` (`cidade_idcidade` ASC) ,
  CONSTRAINT `fk_cliente_dono_cidade1`
    FOREIGN KEY (`cidade_idcidade`)
    REFERENCES `mydb`.`cidade` (`idcidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`especie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`especie` (
  `idespecie` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idespecie`),
  UNIQUE INDEX `idespecie_UNIQUE` (`idespecie` ASC) )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`animal_paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`animal_paciente` (
  `idpaciente` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `idade` INT NULL,
  `massa_kg` DECIMAL(10,2) NOT NULL,
  `alergico` TINYINT NOT NULL,
  `idcliente_dono` INT UNSIGNED NOT NULL,
  `idespecie` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idpaciente`),
  UNIQUE INDEX `idpaciente_UNIQUE` (`idpaciente` ASC) ,
  INDEX `fk_animal_paciente_cliente_dono1_idx` (`idcliente_dono` ASC) ,
  INDEX `fk_animal_paciente_especie1_idx` (`idespecie` ASC) ,
  CONSTRAINT `fk_animal_paciente_cliente_dono1`
    FOREIGN KEY (`idcliente_dono`)
    REFERENCES `mydb`.`cliente_dono` (`idcliente_dono`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_animal_paciente_especie1`
    FOREIGN KEY (`idespecie`)
    REFERENCES `mydb`.`especie` (`idespecie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`atendimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`atendimento` (
  `idconsulta` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NULL,
  `data_hora` DATETIME NOT NULL,
  `diagnostico` TEXT NULL,
  `valor_total` DECIMAL(10,2) NOT NULL,
  `idpaciente` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idconsulta`),
  UNIQUE INDEX `idconsulta_UNIQUE` (`idconsulta` ASC) ,
  INDEX `fk_atendimento_animal_paciente1_idx` (`idpaciente` ASC) ,
  CONSTRAINT `fk_atendimento_animal_paciente1`
    FOREIGN KEY (`idpaciente`)
    REFERENCES `mydb`.`animal_paciente` (`idpaciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`procedimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`procedimento` (
  `idprocedimento` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `valor_procedimento` DECIMAL(10,2) NOT NULL,
  `doenca_prevenida` VARCHAR(100) DEFAULT "Nenhuma",
  `descricao` TEXT NULL,
  PRIMARY KEY (`idprocedimento`),
  UNIQUE INDEX `idprocedimento_UNIQUE` (`idprocedimento` ASC) )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`fornecedor` (
  `idfornecedor` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `cnpj` VARCHAR(14) NOT NULL,
  `inscricao_estadual` BIGINT(9) NOT NULL,
  `endereco` VARCHAR(100) NULL,
  `tel_contato` BIGINT(11) NOT NULL,
  `cidade_idcidade` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idfornecedor`),
  UNIQUE INDEX `idfornecedor_UNIQUE` (`idfornecedor` ASC) ,
  UNIQUE INDEX `cnpj_UNIQUE` (`cnpj` ASC) ,
  INDEX `fk_fornecedor_cidade1_idx` (`cidade_idcidade` ASC) ,
  CONSTRAINT `fk_fornecedor_cidade1`
    FOREIGN KEY (`cidade_idcidade`)
    REFERENCES `mydb`.`cidade` (`idcidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`medicamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`medicamento` (
  `idmedicamento` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `data_validade` DATE NOT NULL,
  `data_fabricacao` DATE NOT NULL,
  `data_compra` DATE NOT NULL,
  `valor_aplicacao` DECIMAL(10,2) NOT NULL,
  `fornecedor_idfornecedor` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idmedicamento`),
  UNIQUE INDEX `idmedicamento_UNIQUE` (`idmedicamento` ASC) ,
  INDEX `fk_medicamento_fornecedor1_idx` (`fornecedor_idfornecedor` ASC) ,
  CONSTRAINT `fk_medicamento_fornecedor1`
    FOREIGN KEY (`fornecedor_idfornecedor`)
    REFERENCES `mydb`.`fornecedor` (`idfornecedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`atendimento_has_medicamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`atendimento_has_medicamento` (
  `atendimento_idconsulta` INT UNSIGNED NOT NULL,
  `medicamento_idmedicamento` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`atendimento_idconsulta`, `medicamento_idmedicamento`),
  INDEX `fk_atendimento_has_medicamento_medicamento1_idx` (`medicamento_idmedicamento` ASC) ,
  INDEX `fk_atendimento_has_medicamento_atendimento1_idx` (`atendimento_idconsulta` ASC) ,
  CONSTRAINT `fk_atendimento_has_medicamento_atendimento1`
    FOREIGN KEY (`atendimento_idconsulta`)
    REFERENCES `mydb`.`atendimento` (`idconsulta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_atendimento_has_medicamento_medicamento1`
    FOREIGN KEY (`medicamento_idmedicamento`)
    REFERENCES `mydb`.`medicamento` (`idmedicamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`atendimento_has_procedimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`atendimento_has_procedimento` (
  `atendimento_idconsulta` INT UNSIGNED NOT NULL,
  `procedimento_idprocedimento` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`atendimento_idconsulta`, `procedimento_idprocedimento`),
  INDEX `fk_atendimento_has_procedimento_procedimento1_idx` (`procedimento_idprocedimento` ASC) ,
  INDEX `fk_atendimento_has_procedimento_atendimento1_idx` (`atendimento_idconsulta` ASC) ,
  CONSTRAINT `fk_atendimento_has_procedimento_atendimento1`
    FOREIGN KEY (`atendimento_idconsulta`)
    REFERENCES `mydb`.`atendimento` (`idconsulta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_atendimento_has_procedimento_procedimento1`
    FOREIGN KEY (`procedimento_idprocedimento`)
    REFERENCES `mydb`.`procedimento` (`idprocedimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`funcionario_has_atendimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`funcionario_has_atendimento` (
  `funcionario_idfuncionario` INT UNSIGNED NOT NULL,
  `atendimento_idconsulta` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`funcionario_idfuncionario`, `atendimento_idconsulta`),
  INDEX `fk_funcionario_has_atendimento_atendimento1_idx` (`atendimento_idconsulta` ASC) ,
  INDEX `fk_funcionario_has_atendimento_funcionario1_idx` (`funcionario_idfuncionario` ASC) ,
  CONSTRAINT `fk_funcionario_has_atendimento_funcionario1`
    FOREIGN KEY (`funcionario_idfuncionario`)
    REFERENCES `mydb`.`funcionario` (`idfuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionario_has_atendimento_atendimento1`
    FOREIGN KEY (`atendimento_idconsulta`)
    REFERENCES `mydb`.`atendimento` (`idconsulta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;