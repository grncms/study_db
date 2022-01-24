
create table cafe(
	seq int,
    name varchar(45),
    ttable int,
    chair int,
    address varchar(45),
    area varchar(45),
    owner int
);

CREATE TABLE IF NOT EXISTS `cafe` (
  `seq` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `ttable` INT NULL COMMENT '서울:1, 경기:2. 부산:3\n코드성 데이터는 가급적이면 varchar보단  int로 넣고 변환해주는게 좋다 ',
  `chair` INT NULL,
  `address` VARCHAR(45) NULL,
  `area` VARCHAR(45) NULL,
  `owner` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

-- 데이터 입력
insert into cafe (
seq
, name
, ttable
, chair
, address
, area
, owner
) values (
	7
    , '백다방'
    ,3
    ,10
    , '인천시'
    ,17
    , '수빈'
);

-- varchar 은 ' 또는 " 로 감싼다.
-- int 는 사용하지 않아도 된다.
-- 컴마는 앞쪽을 선호 : 이건 호불호가 갈린다 ex) , '하늘다람쥐'

-- 데이터 조회 
select * from cafe;

select * from cafe where seq = 3;

select * from cafe where area = 19;
select * from cafe where name = '커피빈';

select * from cafe where name = '커피빈' and ttable = 1 and chair = 2;

select * from cafe where area > 1;
select * from cafe where area < 2;
select * from cafe where area >= 2;
select * from cafe where area <= 2;
select * from cafe where area <> 2;

select * from cafe where name like '%피%';
select * from cafe where name like '피%';
select * from cafe where name like '%피';

drop table cafe;

-- pk = primary key


