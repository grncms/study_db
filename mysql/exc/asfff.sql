CREATE TABLE `test2` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `seq2` INT NOT NULL,
  `seq3` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`, `seq3`, `seq2`)
  );
  
  insert into test2 (
	seq2
    ,seq3
    ,name
    ) value (
    1
    ,1
    ,'tony'
  );
  
  select * from test2;
