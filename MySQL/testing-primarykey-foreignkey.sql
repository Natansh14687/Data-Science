create database test2;
use test2;

create table categories(
	id int primary key auto_increment,
    categoryName varchar(50)
    );

select * from categories;

create table products(
	id int,
    product_id int primary key,
    productName varchar(50),
    constraint fk_category
    foreign key fk_products(id)
    references categories(id)
);

select * from products;

insert into categories values(1,"Web");

insert into products values(1,1,"header");
insert into products values(3,4,"footer");





