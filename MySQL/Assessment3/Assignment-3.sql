create database assessment3;
use assessment3;

create table Employee(
	EmployeeID int primary key,
    EmployeeName varchar(45)
);

create table Department(
	Department_ID int primary key,
    Department_Name varchar(225),
    EmployeeID int,
    constraint fk_dep foreign key(EmployeeID) references Employee(EmployeeID)
);

create table Project(
	ProjectID int primary key,
    ProjectName varchar(225),
    Department_ID int,
    constraint fk_pr foreign key(Department_ID) references Department(Department_ID),
    `status` enum("active","inactive")
);

create table Assignment(
	Assignment_ID int primary key,
    assigning_date datetime,
    Department_ID int,
    Project_ID int,
    constraint fk_as foreign key(Department_ID) references Department(Department_ID),
    constraint kf_ass foreign key(Project_Id) references Project(ProjectId)
);

create table Employee_Assignment(
	Employee_EmployeeID int,
    Assignment_Assignment_ID int,
    constraint fk_ea foreign key(Employee_EmployeeID) references Employee(EmployeeID),
    constraint fk_eass foreign key(Assignment_Assignment_ID) references Assignment(Assignment_ID)
);


select * from Employee;

insert into Employee(EmployeeName,EmployeeID) values("Alice Johnson",3);

select * from Assignment;

insert into Assignment values
(3,"2024-07-23",(select Department_ID from Department where Department_Name = "HR"),(select Project_ID from Project where ProjectName = "Project Alpha"));


alter table Employee
add Email varchar(100);
    
    
alter table Department 
modify Department_Name varchar(255);

alter table Employee
add salary float;

SET SQL_SAFE_UPDATES = 0;
update employee
set salary = salary+salary * 0.1
where (select EmployeeID from Department where Department_Name = "IT");





insert into Employee(salary,Email,EmployeeName,EmployeeID) values(10,"hello","hello",2);


CREATE TABLE employees (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary INT,
hire_date DATE
);

INSERT INTO employees (name, department, salary, hire_date) VALUES
('Alice', 'Sales', 60000, '2019-06-15'),
('Bob', 'HR', 45000, '2021-03-12'),
('Charlie', 'Engineering', 72000, '2018-01-10'),
('David', 'Marketing', 50000, '2020-07-20'),
('Eve', 'Sales', 55000, '2018-09-30'),
('Frank', 'HR', 35000, '2020-02-25'),
('Grace', 'Design', 65000, '2017-11-05'),
('Hank', 'Engineering', 68000, '2020-08-22'),
('Ivy', 'Design', 70000, '2021-05-18'),
('Jack', 'Finance', 80000, '2016-12-01'),
('Kate', 'Sales', 50000, '2019-10-10'),
('Leo', 'IT', 75000, '2019-01-15'),
('Mia', 'Sales', 62000, '2022-01-01'),
('Nina', 'HR', 40000, '2023-06-10'),
('Oscar', 'Marketing', 58000, '2021-07-15'),
('Paul', 'Engineering', 90000, '2017-03-18'),
('Quinn', 'Design', 75000, '2019-04-25'),
('Rita', 'IT', 60000, '2021-10-20'),
('Sam', 'HR', 62000, '2022-11-30'),
('Tina', 'Finance', 42000, '2018-08-18');

select * from employees;

select * from employees where (department = "Sales" and salary > 50000) or  (department = "HR" and hire_date > '2020-01-01');

SELECT name, salary
FROM employees
WHERE salary > 50000
AND (department = 'Sales' OR department = 'HR')
ORDER BY department DESC, salary ASC;

select * from employees
where (salary between 40000 and 60000) and (department <> "Marketing")
order by hire_date desc, salary asc;

select * from employees where department <> "Finance" or salary < 30000
order by department asc, `name` desc;

select * from employees
where (`name` like "A%") and (hire_date > "2015-01-01")
order by `name` asc;

select * from employees 
where (department = "Engineering" and salary < 70000) or (department = "Design" and salary > 60000)
order by salary desc;

select * from employees
where 'name' like "%son" and department <> "IT"
order by salary desc, hire_date asc;

create table projects(
	project_id int,
    project_name varchar(250),
    start_date date,
    end_date date
);

select * from projects
where start_date < "2022-01-01" or end_date > "2022-12-31"
order by project_name desc;

select * from employees 
where (hire_date between "2021-01-01" and "2021-12-31")and salary > (select avg(salary) from employees)
order by 'name' asc;



    
    
    
    