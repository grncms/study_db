use world;

desc book3;
desc publisher;

CREATE TABLE IF NOT EXISTS `book3` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `publisher_cd` INT NULL,
  PRIMARY KEY (`no`)
  );

CREATE TABLE IF NOT EXISTS `publisher` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`)
);

insert into book3 (
name
,publisher_cd
) values (
'이것이자바다'
, 2
);

insert into publisher (
name
) values (
'한빛미디어'
);

select * from book3;
select * from publisher;

select
	a.no
	,a.name
	,a.publisher_cd
	,b.name
from book3 as a
-- left join publisher as b on b.no = a.publisher_cd;
inner join publisher as b on b.no = a.publisher_cd;

select
	a.no
	,a.name
	,a.publisher_cd
	,(select name from publisher where no = a.publisher_cd)
from book3 as a;

select
	a.no
	,a.name
	,a.publisher_cd
	,(select name from publisher where no = a.publisher_cd) as publisher_name
from book3 as a;

select
	a.no
	,a.name
	,a.publisher_cd
	,getPublisherName -- 함수, fuction
from book3 as a;



-- 테이블 조인을 해야 되면 ㅔ이블 이름에 알리아스를 넣는다.(alias)