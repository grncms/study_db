use world;

CREATE TABLE IF NOT EXISTS `codeGroup` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`)
  );

CREATE TABLE IF NOT EXISTS `code` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `codeGroup_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_code_codeGroup1_idx` (`codeGroup_seq` ASC) VISIBLE,
  CONSTRAINT `fk_code_codeGroup1`
    FOREIGN KEY (`codeGroup_seq`)
    REFERENCES `codeGroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


drop table code;
drop table codeGroup;


insert into codeGroup(
	seq
    ,name
    ) values (
    'infra001'
    , '성별'
    );
    
    select * from codeGroup;
    select * from code;
    
    insert into code (
    code
    ,name
    ,codeGroup_seq
    ) values (
    '3'
    ,'기타'
    ,'infra001'
    );
    
    select
    a.seq
    ,a.name
    ,b.code
    ,b.name
    from codeGroup a
    left join review5 b on b.book5_no = a.no
    
