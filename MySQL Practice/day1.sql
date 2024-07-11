create database if not exists healthcare;
use healthcare;
drop database healthcare;
create database finance;
use finance;
create table Customers_Table(
	Customer_Id int,
    First_Name varchar(10),
    Last_Name varchar(10),
    Date_of_Birth date,
    Gender varchar(11),
    Phone_Number bigint,
    Email varchar(50),
    Address varchar(200),
    City varchar(20),
    State varchar(20),
    Postal_Code int(6),
    Country varchar(50),
    Account_Creation_Date date,
    `Status` varchar(20)
);
select * from Customers_Table;

create table Accounts_Table(
	Account_ID bigint,
    Customer_Id int(10),
    Account_Type varchar(40),
    Account_Number bigint,
    Balance decimal,
    Currency varchar(20),
    Branch_Id int(20),
    Date_Opened date,
    `Status` varchar(10)
);
    
    select * from Accounts_Table;
    
create table Transactions_Table(
		Transaction_ID bigint(10),
        Account_ID bigint,
        Transaction_Date date,
        Transaction_Type varchar(10),
        Amount float(20,7),
        `Description` varchar(20),
        Balance_After_Transaction float(20,7),
        Transaction_Reference char(12)
	);
        
select * from Transactions_Table;
        
create table User_Login_Table(
	User_Id int(7),
    User_Name varchar(20),
    Password_Hash text,
    Login_Date date,
    Failed_Attempts int,
    Last_Login_Date date,
    `Role` varchar(8)
);
    
select * from User_Login_Table;
        
create table Loans_Table(
	Loan_ID int(10),
    Customer_ID varchar(10),
    Account_ID bigint,
    Loan_Type int(8),
    Loan_Amount float(10,5),
    Interest_Rate float(2,2),
    Loan_Term varchar(7),
    Start_Date date,
    End_Date date,
    Monthly_Installment float(6,3),
    Outstanding_Amount float(6,3)
    );
    
select * from Loans_Table;

create table em(
	name varchar(20),
    Age int(2)
);

select * from em;

insert into em values("Natansh",20);
insert into em values("Dushyant",19);
insert into em values("Aman",19);
insert into em values("Rohit",19);
insert into em values("Hemant",21);
insert into em values("Navneet",19);

create table em1(
	name varchar(20),
    Age int(2)
);

select * from em1;

insert into em1 values("Natansh",20),
("Dushyant",19),
("Aman",19),
("Rohit",19),
("Hemant",21),
("Navneet",19);

create table Medical_Records
(
	id 						int, 
	problem					varchar(200),
	date_of_examination		date, 
	patient_id				varchar(15), 
	doctor_id				varchar(15)
);

insert into Medical_Records values (1, 'Food Poisoning', STR_TO_DATE('10-01-2023', '%d-%m-%Y'), 'P1', 'D2');
insert into Medical_Records values (2, 'Fever and Flu', STR_TO_DATE('11-01-2023', '%d-%m-%Y'), 'P6', 'D6');
insert into Medical_Records values (3, 'Back Spasm', STR_TO_DATE('15-01-2023', '%d-%m-%Y'), 'P7', 'D6');
insert into Medical_Records values (4, 'Headache', STR_TO_DATE('20-01-2023', '%d-%m-%Y'), 'P0', 'D7');

select * from Medical_Records;

update Medical_Records
set doctor_id = 'D7'
where patient_id = 'P1';




    
        
    