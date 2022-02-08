use world;

CREATE TABLE IF NOT EXISTS `infrMember` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `id` VARCHAR(45) NULL, 
  `pw` VARCHAR(100) NULL,
  `gender` VARCHAR(45) NULL,informember
  `country_cd` INT NULL,
  `pwA` VARCHAR(45) NULL,
  `birth` DATE NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `address` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defultNy` VARCHAR(100) NULL,
  `inforMember_seq` INT UNSIGNED NOT NULL,
  `inforAddress1` VARCHAR(100) NULL,
  `inforAddress2` VARCHAR(100) NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_address_inforMember1_idx` (`inforMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_address_inforMember1`
    FOREIGN KEY (`inforMember_seq`)
    REFERENCES `inforMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `gender` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` INT NULL,
  `inforMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_gender_inforMember1_idx` (`inforMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_gender_inforMember1`
    FOREIGN KEY (`inforMember_seq`)
    REFERENCES `inforMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `inforMemberSns` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` INT NULL,
  `sns_cd` TINYINT(1) NULL,
  `sns` VARCHAR(100) NULL,
  `inforMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_inforMemberSns_inforMenber_idx` (`inforMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_inforMemberSns_inforMenber`
    FOREIGN KEY (`inforMember_seq`)
    REFERENCES `inforMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `pwQ` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` INT NULL,
  `pwQ` VARCHAR(100) NULL,
  `inforMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_pwQ_inforMember1_idx` (`inforMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_pwQ_inforMember1`
    FOREIGN KEY (`inforMember_seq`)
    REFERENCES `inforMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `career` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` INT NULL,
  `career` VARCHAR(45) NULL,
  `inforMenber_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_inforMemberSns_inforMenber_idx` (`inforMenber_seq` ASC) VISIBLE,
  CONSTRAINT `fk_inforMemberSns_inforMenber00`
    FOREIGN KEY (`inforMenber_seq`)
    REFERENCES `inforMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `email` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` INT NULL,
  `email` VARCHAR(45) NULL,
  `inforMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_inforMemberEmail_inforMenber1_idx` (`inforMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_inforMemberEmail_inforMenber1`
    FOREIGN KEY (`inforMember_seq`)
    REFERENCES `inforMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mobile` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` INT NULL,
  `phone` VARCHAR(45) NULL,
  `inforMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_inforMemberSns_inforMenber_idx` (`inforMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_inforMemberSns_inforMenber0`
    FOREIGN KEY (`inforMember_seq`)
    REFERENCES `inforMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `admit` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` INT NULL,
  `admit_cd` INT NULL,
  `inforMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_admit_inforMember1_idx` (`inforMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_admit_inforMember1`
    FOREIGN KEY (`inforMember_seq`)
    REFERENCES `inforMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `hobby` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `hobby_cd` INT NULL,
  `inforMenber_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_inforMemberSns_inforMenber_idx` (`inforMenber_seq` ASC) VISIBLE,
  CONSTRAINT `fk_inforMemberSns_inforMenber000`
    FOREIGN KEY (`inforMenber_seq`)
    REFERENCES `inforMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mobileCarrier` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` INT NULL,
  `mobileCarrier_cd` INT NULL,
  `mobile_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_inforMemberMobileElectro_inforMemberMobile1_idx` (`mobile_seq` ASC) VISIBLE,
  CONSTRAINT `fk_inforMemberMobileElectro_inforMemberMobile1`
    FOREIGN KEY (`mobile_seq`)
    REFERENCES `mobile` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

drop table mobilecarrier

select
a.seq
,a.name
,b.code
,b.name
from codeGroup a
left join code b on b.codeGroup_seq = a.seq;
-- 회원가입

-- infrmember
insert into informember(
seq
, name
, id
, pw
, gender
) values (

);

--

drop table ;


-- 회원관리 목록

select * from asdfasdfasdf