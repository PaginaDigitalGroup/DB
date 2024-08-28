-- MySQL Script for Pagina Digital Library

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_pagina_digital
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_pagina_digital` DEFAULT CHARACTER SET utf8;
USE `db_pagina_digital`;

-- -----------------------------------------------------
-- Table `db_pagina_digital`.`tb_autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pagina_digital`.`tb_autor` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_pagina_digital`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pagina_digital`.`tb_usuario` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `tipoUsuario` VARCHAR(255) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `usuario` VARCHAR(255) NOT NULL UNIQUE,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(1000) NULL,
  `col` VARCHAR(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_pagina_digital`.`tb_livro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pagina_digital`.`tb_livro` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `editora` VARCHAR(255) NOT NULL,
  `numero_pagina` BIGINT NOT NULL,
  `descricao` VARCHAR(1000) NOT NULL,
  `genero` VARCHAR(100) NOT NULL,
  `situacao` BOOLEAN NOT NULL,
  `foto` VARCHAR(1000) NULL,
  `tb_autor_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_livro_autor_idx` (`tb_autor_id` ASC),
  CONSTRAINT `fk_livro_autor`
    FOREIGN KEY (`tb_autor_id`)
    REFERENCES `db_pagina_digital`.`tb_autor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
