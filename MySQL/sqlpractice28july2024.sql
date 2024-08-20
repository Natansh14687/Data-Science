create database 28july2024;
use 28july2024;

create table vechiles(
	vechileId int,
    `year` int not null,
    make varchar(100) not null
);

select * from vechiles;

alter table vechiles
add Brand varchar(250) 
after `year`;

describe vechiles;

alter table vechiles
add model varchar(100) not null after Brand,
add color varchar(50) after model;

alter table vechiles 
modify Brand varchar(100) not null after vechileId,
modify model varchar(250);

alter table vechiles 
change `year` manufacturedYear smallint,
change color design varchar(100) not null;


alter table vechiles
drop Brand;

alter table vechiles
rename to vech;

desc vech;

drop table vech;

desc vechiles;

alter table vechiles
add constraint vc_constraint primary key(vechileId);

create user 'pw101'@'localhost' identified by 'abc';

select current_user();

start transaction;

set autocommit = 1;

select @@autocommit;

insert into vechiles values(5,2021,"Hello"),(6,2010,"hii");

desc vechiles;

select * from vechiles;

rollback;

select @@autocommit;

set autocommit = 0;

select * from vechiles;

commit;

insert into vechiles values(5,2011,"hehe"),(6,2012,"hipi");
savepoint savepoint1;

insert into vechiles values(7,2013,"oolo"),(8,2014,"oyo");
insert into vechiles values(9,2015,"okk");
insert into vechiles values(10,2016,"okk");

rollback to savepoint1;

truncate table vechiles;