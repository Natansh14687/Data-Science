create database salesdb;
use salesdb;

create table productlines(
	productLine varchar(50) primary key,
    textDescription varchar(4000),
    htmlDescription mediumtext,
    image mediumblob
);

create table products(
	productCode varchar(15) primary key,
    productName varchar(70) not null,
    productLine varchar(50),
    productScale varchar(10) not null,
    productVendor varchar(50) not null,
    productDescription text not null,
    qualityInStock smallint not null,
    buyPrice decimal(10,2) not null,
    MSRP decimal(10,2) not null,
    constraint fk_line foreign key(productLine) references productlines(productLine)
);

create table employees(
	employeeNumber int primary key,
    lastName varchar(50) not null,
    firstName varchar(50) not null,
    extension varchar(10) not null,
    email varchar(100) not null,
    officeCode varchar(10),
    reportsTo int,
    jobTitle varchar(50) not null,
    constraint fk_oc foreign key(officeCode) references offices(officeCode),
    constraint fk_rt foreign key(reportsTo) references employees(employeeNumber)
);

create table offices(
	officeCode varchar(10) primary key,
    city varchar(50) not null,
    phone varchar(50) not null,
    addressLine1 varchar(50) not null,
    addressLine2 varchar(50),
    state varchar(50),
    country varchar(50),
    postalCode varchar(15) not null,
    territory varchar(10) not null
);

create table customers(
	customerNumber int primary key,
    customerName varchar(50) not null,
    contactLastName varchar(50) not null,
    contactFirstName varchar(50) not null,
    phone varchar(50) not null,
    addressLine1 varchar(50) not null,
    addressLine2 varchar(50),
    city varchar(50) not null,
    state varchar(50),
    postalCode varchar(15),
    country varchar(50) not null,
    salesRepEmployeeNumber int,
    creditLimit decimal(10,2),
    constraint fk_sren foreign key(salesRepEmployeeNumber) references employees(employeeNumber)
);

create table orders(
	orderNumber int primary key,
    orderDate date not null,
    requiredDate date not null,
    shippedDate date,
    `status` varchar(15) not null,
    comments text,
    customerNumber int,
    constraint fk_cn foreign key(customerNumber) references customers(customerNumber)
);
    
create table orderdetails(
	orderNumber int,
    productCode varchar(15),
    quantityOrdered int not null,
    priceEach decimal(10,2) not null,
    orderLineNumber smallint not null,
    primary key(orderNumber, productCode),
    constraint fk_on foreign key(orderNumber) references orders(orderNumber),
    constraint fk_pc foreign key (productCode) references products(productCode)
);
    
create table payments(
	customerNumber int,
    checkNumber varchar(50) primary key,
    paymentDate date not null,
    amount decimal(10,2) not null,
    constraint fk_cn2 foreign key(customerNumber) references customers(customerNumber)
);

insert into productlines(productLine,textDescription) values
('Classic Cars', 'Cars from the 1950s and 1960s'),
('Motorcycles', 'A range of motorcycles');


    
    
    
    
    