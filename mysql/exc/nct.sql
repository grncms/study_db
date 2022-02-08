CREATE TABLE IF NOT EXISTS `infrCode` (
  `ifcdSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcdSeqAnother` VARCHAR(50) NULL,
  `ifcdName` VARCHAR(50) NOT NULL,
  `ifcdNameEng` VARCHAR(50) NULL,
  `ifcdNameLang1` VARCHAR(50) NULL,
  `ifcdNameLang2` VARCHAR(50) NULL,
  `ifcdNameLang3` VARCHAR(50) NULL,
  `ifcdNameLang4` VARCHAR(50) NULL,
  `ifcdNameLang5` VARCHAR(50) NULL,
  `ifcdUseNy` TINYINT NULL,
  `ifcdOrder` TINYINT NULL,
  `ifcdReferenceV1` VARCHAR(50) NULL,
  `ifcdReferenceV2` VARCHAR(50) NULL,
  `ifcdReferenceV3` VARCHAR(50) NULL,
  `ifcdReferenceI1` INT NULL,
  `ifcdReferenceI2` INT NULL,
  `ifcdReferenceI3` INT NULL,
  `ifcdDesc` VARCHAR(255) NULL,
  `ifcdDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `infrCodeGroup_ifcgSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifcdSeq`, `infrCodeGroup_ifcgSeq`),
  INDEX `fk_infrCode_infrCodeGroup_idx` (`infrCodeGroup_ifcgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrCode_infrCodeGroup`
    FOREIGN KEY (`infrCodeGroup_ifcgSeq`)
    REFERENCES `infrCodeGroup` (`ifcgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

drop table infrCode;

INSERT INTO `nct`.`infrcodegroup`
(
`ifcgName`,
`ifcgUseNy`,
`ifcgOrder`,
`ifcgDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
'회원.보안질문',
1,
14,
0,
now(),
now(),
now(),
now()
);

select * from infrCodeGroup;

update infrCodeGroup
set ifcgDelNy = 1
where ifcgSeq > 10;




INSERT INTO `nct`.`infrcode`
(
`ifcdName`,
`ifcdUseNy`,
`ifcdOrder`,
`ifcdDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`infrCodeGroup_	ifcgSeq`)
VALUES
(
"1년",
1,
1,
1,
now(),
now(),
now(),
now(),
3);



select
a.ifcgSeq
, a.ifcgName
, b.ifcdSeq
, b.ifcdName
, b.ifcdOrder
from infrCodeGroup a
	left join infrCode b on b.infrCodeGroup_ifcgSeq = a.ifcgSeq
order by a.ifcgSeq, b.ifcdOrder;



select * from infrcode;

