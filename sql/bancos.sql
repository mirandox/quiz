CREATE TABLE `quiz`.`jogador` (
  `cd_jogador` BIGINT(19) NOT NULL AUTO_INCREMENT,
  `nm_jogador` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`cd_jogador`));

CREATE TABLE `quiz`.`pergunta` (
  `cd_pergunta` BIGINT(19) NOT NULL AUTO_INCREMENT,
  `ds_pergunta` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`cd_pergunta`));
  
CREATE TABLE `quiz`.`resposta` (
  `cd_resposta` BIGINT(19) NOT NULL,
  `ds_resposta` VARCHAR(255) NOT NULL,
  `tp_resposta` TINYINT(1) NOT NULL,
  PRIMARY KEY (`cd_resposta`));

CREATE TABLE `quiz`.`questao` (
  `cd_questao` BIGINT(19) NOT NULL AUTO_INCREMENT,
  `cd_pergunta` BIGINT(19) NOT NULL,
  `cd_resposta` BIGINT(19) NOT NULL,
  PRIMARY KEY (`cd_questao`),
  INDEX `fk_pergunta_idx` (`cd_pergunta` ASC),
  INDEX `fk_resposta_idx` (`cd_resposta` ASC),
  CONSTRAINT `fk_pergunta`
    FOREIGN KEY (`cd_pergunta`)
    REFERENCES `quiz`.`pergunta` (`cd_pergunta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_resposta`
    FOREIGN KEY (`cd_resposta`)
    REFERENCES `quiz`.`resposta` (`cd_resposta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);