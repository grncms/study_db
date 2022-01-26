CREATE TABLE IF NOT EXISTS `test` (
  `seq` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`)
  );
  
  CREATE TABLE `test` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`)
  );
  drop table test;
  
  insert into test (
	name
    ) value (
    'tony'
  );
  
  select * from test;
  
  
  
-- 데이터 수정
update test set
	name = 'minsu'
    ,tel ='222'
where 1=1
	and seq = 1;
    
-- 데이터 삭제
delete from test
where 1=1
	and seq = 3;

-- 전체데이터 삭제
truncate test;


DDL : db, table : 관리자, 선임
DML : data ; 후임들

-- 테이블 수정
-- 컬럼 추가
alter table test add tel varchar(50);

-- desc table


alter table test add tel varchar(50);



