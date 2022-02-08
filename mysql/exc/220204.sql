use world;

CREATE TABLE IF NOT EXISTS `infrMember` (
  `uid` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `id` VARCHAR(45) NOT NULL,
  `pw` VARCHAR(100) NULL,
  `gender_cd` VARCHAR(45) NULL,
  `country_cd` INT NULL,
  `pwA` VARCHAR(100) NULL,
  `birth` DATE NULL,
  PRIMARY KEY (`uid`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);

CREATE TABLE IF NOT EXISTS `infrMemberSns` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` INT NULL,
  `sns_cd` TINYINT NULL,
  `sns` VARCHAR(100) NULL,
  `infrMember_uid` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrMemberSns_infrMember1_idx` (`infrMember_uid` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberSns_infrMember1`
    FOREIGN KEY (`infrMember_uid`)
    REFERENCES `infrMember` (`uid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
   
CREATE TABLE IF NOT EXISTS `gender` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `gender_cd` VARCHAR(45) NOT NULL,
  `gender_name` VARCHAR(45) NOT NULL,
  `infrMember_uid` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_gender_infrMember1_idx` (`infrMember_uid` ASC) VISIBLE,
  CONSTRAINT `fk_gender_infrMember1`
    FOREIGN KEY (`infrMember_uid`)
    REFERENCES `infrMember` (`uid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
   
   drop table gender;
   
   select * from infrMember;
   select * from gender; 
    
    insert into infrMember(
    
	name
    , id
    , pw
    , gender_cd
    , country_cd
    , pwA
    , birth
    ) values (
	'안드로'
    , 'andro5050'
    , '358235982735'
    , '3'
    , 001
    , '김밥'
    , '2012-03-17'
    );
    
   
    update infrMember 
	-- set pwA = '테스트입니다'
	set gender_cd = '999'
	where uid = 5;
    
    update gender 
	set gender_cd = '2'
	where uid = 4;
    
    insert into gender( 
    
    gender_cd
	, gender_name
    , infrMember_uid
    ) values ( 
    999
    , '옴닉'
    , 5
    );
    
    
    
    
    select 
    uid
    , name
    , id
    , pw
    , a.gender_cd
    , b.gender_name
    , country_cd
    , pwA
    , birth
from infrMember a
, gender b
where a.gender_cd = b.gender_cd;