

CREATE TABLE IF NOT EXISTS `book6` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`)
  );
  
  CREATE TABLE IF NOT EXISTS `book6_writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `book6_no` INT UNSIGNED NOT NULL,
  `writer_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_book6_writer_book61_idx` (`book6_no` ASC) VISIBLE,
  INDEX `fk_book6_writer_writer1_idx` (`writer_no` ASC) VISIBLE,
  CONSTRAINT `fk_book6_writer_book61`
    FOREIGN KEY (`book6_no`)
    REFERENCES `book6` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book6_writer_writer1`
    FOREIGN KEY (`writer_no`)
    REFERENCES `writer` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS `writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`)
  );
  
  
  