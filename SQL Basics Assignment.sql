-- Question 1: Create a new database and table for employees.

create database company_db;

use company_db;

create table employees (
employee_id int primary key,
first_name varchar(50),
last_name varchar(50),
department varchar(50),
salary int,
hire_date date 
);



-- Question 2: Insert data into Employes Table.

insert into employees values 
(101, 'Amit', 'Sharma', 'HR', 50000, '2020-01-15'),
(102, 'Riya', 'Kapoor', 'Sales', 75000, '2019-03-22'),
(103, 'Raj', 'Mehta', 'IT', 90000, '2018-07-11'),
(104, 'Neha', 'Verma', 'IT', 85000, '2021-09-01'),
(105, 'Arjun', 'Singh', 'Finance', 60000, '2022-02-10');

select * from employees;



-- Question 3: Display all employees records sorted by salary (Lowest to Highest).

select *
from employees 
order by salary asc;



-- Question 4: Show employees sorted by department (A-Z) and Salary (High to Low).

select *
from employees
order by department asc, salary desc;



-- Question 5: List all employes in the IT department, ordered by hire date (Newest first).

select * 
from employees
where department = 'IT'
order by hire_date desc;



-- Question 6: Create and Populate a Sales table.

create table sales (
sale_id int primary key, 
customer_name varchar(50),
amount int,
sale_date date 
);

insert into sales values
(1, 'Aditi', 1500, '2024-08-01'),
(2, 'Rohan', 2200, '2024-08-03'),
(3, 'Aditi', 3500, '2024-09-05'),
(4, 'Meena', 2700, '2024-09-15'),
(5, 'Rohan', 4500, '2024-09-25');

select * from sales;



-- Question 7: Display all sales records sorted by amount (Highest to lowest).

select * 
from sales
order by amount desc;



-- Question 8: Show all sales made by customer "Aditi".

select *
from sales 
where customer_name = 'Aditi';

