use spoon;

create table student(
	id int primary key,
    name varchar(50)
);

insert into student values(1,"abc");
insert into student values (null,"bcd");

create table category(
	categoryId int primary key,
    categoryName varchar(50)
);

create table products(
	productId int auto_increment primary key,
    productName varchar(50),
    categoryId int,
    constraint fk_category foreign key(categoryId) references category(categoryId)
);

insert into category values(1,"webdev");

insert into products values(1,"header",100);

select * from category;

insert into products values(2,"footer",2);

delete from category where categoryId = 1;

select * from products;

drop table products;

create table products(
	productId int auto_increment primary key,
    productName varchar(50),
    categoryId int,
    constraint fk_category foreign key(categoryId) references category(categoryId)
    on delete cascade 
    on update cascade
);

update category 
set categoryId = 100
where categoryId = 1;

select * from category;

select * from products;

drop table products;


create table products(
	productId int auto_increment primary key,
    productName varchar(50),
    categoryId int,
    constraint fk_category foreign key(categoryId) references category(categoryId)
    on delete set null
    on update set null
);

select * from products;


update category
set categoryId = 10
where categoryId = 100;

