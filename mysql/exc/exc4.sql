use world;

CREATE TABLE `book5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `publisher_cd` INT NULL,
  PRIMARY KEY (`no`)
);

CREATE TABLE `review5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `book5_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_publisher_book5_idx` (`book5_no` ASC) VISIBLE,
  CONSTRAINT `fk_publisher_book5`
    FOREIGN KEY (`book5_no`)
    REFERENCES `book5` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

desc book5;


insert into book5(
name
) values (
'쿠쿠루핑뽕'
);

select * from book5;

insert into review5(
name
) values (
'이책재밌다'
);
desc review5;

select * from review5;

-- 점선 : nonidentifying : 부모자식관계 : 개발하기 좀 불편하다.
-- 실선 : identifying : ???? : 개발유이성이 높다alter

desc review5;

select
a.name
, b.comment
from book5 a
-- left join review5 b on b.book5_no = a.no
inner join review5 b on b.book5_no = a.no

