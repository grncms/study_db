CREATE TABLE IF NOT EXISTS `codeGroup` (
  `cgSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cgName` VARCHAR(45) NULL,
  PRIMARY KEY (`cgSeq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `code` (
  `cdSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cdName` VARCHAR(45) NULL,
  `codeGroup_cgSeq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`cdSeq`),
  INDEX `fk_code_codeGroup2_idx` (`codeGroup_cgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_code_codeGroup2`
    FOREIGN KEY (`codeGroup_cgSeq`)
    REFERENCES `codeGroup` (`cgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;