

INSERT INTO `bts`.`infrcodegroup`
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
'회원주소.구분',
1,
13,
0,
now(),
now(),
now(),
now()
);

select*from infrcodegroup;

INSERT INTO `bts`.`infrcode`
(
`ifcdName`,
`ifcdUseNy`,
`ifcdOrder`,
`ifcdDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifcgSeq`)
VALUES
(
'당신의 어릴적 별멸은?',
1,
6,
1,
now(),
now(),
now(),
now(),
12
);



select*from infrcode;

select
a.ifcgSeq
, a.ifcgName
, b.ifcdSeq
, b.ifcdName
, b.ifcdOrder
from infrCodeGroup a
	left join infrCode b on b.ifcgSeq = a.ifcgSeq
order by a.ifcgSeq, b.ifcdOrder;

