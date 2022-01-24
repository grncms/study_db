use world;

create table htmlbook (
	seq int,
	series varchar(45),
    title varchar(45),
    author varchar(45),
    publisher varchar(45),
    pubdate date,
	price int,
	reviewPoint float
);

CREATE TABLE IF NOT EXISTS `mydb`.`htmlbook` (
  `seq` INT NOT NULL,
  `series` VARCHAR(45) NULL,
  `title` VARCHAR(45) NULL,
  `author` VARCHAR(45) NULL,
  `publisher` VARCHAR(45) NULL,
  `pubdate` DATE NULL,
  `price` INT NULL,
  `reviewPoint` FLOAT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;



-- 데이터 입력

insert into htmlbook (
	seq
	, series
    , title
    , author
    , publisher
    , pubdate
	, price
    , reviewPoint 
) values (
    2
    , '이지스퍼블리싱-Do it! 시리즈'
    , ' Do it! HTML+CSS+자바스크립트 웹 표준의 정석'
    , '고경희'
    , '이지스퍼블리싱'
    ,202101
    ,27000
    ,9.6
);

-- 데이터 조회 
select * from htmlbook;

drop table htmlbook;