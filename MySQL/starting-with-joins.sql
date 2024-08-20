use db10;

CREATE TABLE student_scores (
    student_id INT PRIMARY KEY,
    score INT
);



INSERT INTO student_scores (student_id, score) VALUES
(1, 95),
(2, 85),
(3, 75),
(4, 65),
(5, 50);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_type VARCHAR(50)
);

INSERT INTO customers (customer_id, customer_type) VALUES
(101, 'Regular'),
(102, 'Premium'),
(103, 'VIP'),
(104, 'Regular'),
(105, 'VIP');

CREATE TABLE people (
    person_id INT PRIMARY KEY,
    age INT
);

INSERT INTO people (person_id, age) VALUES
(201, 0),
(202, 1),
(203, 5),
(204, 13),
(205, 30);

CREATE TABLE events (
    event_id INT PRIMARY KEY,
    day_of_week VARCHAR(50)
);

INSERT INTO events (event_id, day_of_week) VALUES
(301, 'Monday'),
(302, 'Friday'),
(303, 'Saturday'),
(304, 'Sunday'),
(305, 'Wednesday');

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_code VARCHAR(10)
);

INSERT INTO products (product_id, product_code) VALUES
(401, 'A1'),
(402, 'B2'),
(403, 'C3'),
(404, 'D4'),
(405, 'E5');



select * from student_scores;

select *,
case 
when score >= 90 then "wow"
when score >= 80 then "great"
when score >= 70 then "good"
when score >= 60 then "okk"
else "fail"
end as `status` from student_scores;


select * from customers;

select *,
case customer_type
when "Regular" then 0.05
when "Premium" then 0.10
when "VIP" then 0.20
else 0.0
end as discount from customers;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);


INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID)
VALUES
    (1, 'John', 101),
    (2, 'Alice', 102),
    (3, 'Bob', 103),
    (4, 'Carol', NULL);


INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (101, 'HR'),
    (102, 'IT'),
    (104, 'Finance');

select * from Departments;

select * from Employees;

select * from Employees e
join Departments d on e.DepartmentID = d.DepartmentID;

select * from Employees e 
left join Departments d on e.DepartmentID = d.DepartmentID;






