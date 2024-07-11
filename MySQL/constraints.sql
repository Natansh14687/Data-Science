create database test1;
use test1;
create table employee(
	id int primary key,
    name varchar(50)
);

select * from employee;

insert into employee values(1,"Natansh");

create table products(
	id int primary key auto_increment,
    name varchar(50) not null
);

select * from products;

insert into products(name) values("Natansh"),("Navneet"),("Aman"),("Dushyant");

create table hasss(
	id int,
    name varchar(50) not null
);

select * from hasss;

create table favourites(
	customer_id int,
    product_id int,
    name varchar(50),
    primary key(customer_id,product_id)
);

insert into favourites values(1,1,"hello");

select * from favourites;

insert into favourites values(1,2,"hello");
	


