-- Active: 1708873839448@@127.0.0.1@5432@company_db

-- create employee table 
create table employees (
    employee_id serial PRIMARY KEY,
    employee_name VARCHAR(100) not null,
    age int,
    email varchar(100) UNIQUE,
    department_id int REFERENCES departments(department_id),
    salary NUMERIC(10,2),
    status VARCHAR(20)
);

-- create department table 
create table departments (
    department_id serial PRIMARY KEY,
    department_name VARCHAR(50) not null
);

-- insert department data 
INSERT INTO departments (department_name) VALUES 
    ('Engineering'),
    ('Marketing'),
    ('Finance');

-- insert employees data
INSERT INTO employees (employee_name, age, email, department_id, salary, status) VALUES
    ('Alice', 30, 'alice@example.com', 1, 60000, NULL),
    ('Bob', 35, 'bob@example.net', 2, 65000, NULL),
    ('Charlie', 28, 'charlie@google.com', 1, 55000, NULL),
    ('David', 33, 'david@yahoo.com', 2, 62000, NULL),
    ('Eve', 31, 'eve@example.net', 3, 58000, NULL),
    ('Frank', 29, 'frank@example.com', 1, 59000, NULL),
    ('Grace', 34, 'grace@google.com', 2, 63000, NULL),
    ('Henry', 32, 'henry@yahoo.com', 3, 57000, NULL),
    ('Ivy', 27, 'ivy@gmail.com', 1, 56000, NULL),
    ('Jack', 36, 'jack@example.net', 2, 64000, NULL),
    ('Karen', 29, 'karen@gmail.com', 3, 60000, NULL),
    ('Liam', 33, 'liam@gmail.com', 1, 59000, NULL),
    ('Mia', 31, 'mia@yahoo.com', 2, 62000, NULL),
    ('Nora', 28, 'nora@yahoo.com', 3, 57000, NULL),
    ('Oliver', 35, 'oliver@example.net', 1, 61000, NULL),
    ('Penelope', 30, 'penelope@google.com', 2, 63000, NULL),
    ('Quinn', 32, 'quinn@google.com', 3, 59000, NULL),
    ('Rachel', 27, 'rachel@gmail.com', 1, 55000, NULL),
    ('Sam', 34, 'sam@example.net', 2, 64000, NULL),
    ('Taylor', 31, 'taylor@yahoo.com', 3, 58000, NULL);



----------------------------------------------------------------------------
----------------------------------------------------------------------------



-- Query 1: Retrieve all employees with a salary greater than 60000.
select * from employees where salary > 60000;



-- Query 2: Retrieve the names of employees using a limit of 2, starting from the 3rd employee.
select employee_name from employees offset 2 limit 2; --by using offset 2, it will start from the 3rd employee



-- Query 3: Calculate and display the average age of all employees.
select avg(age)as average_age from employees;



-- Query 4: Retrieve the names of employees whose email addresses contain 'example.com', 'example.net', or 'google.com'.
--  The ILIKE operator is used for case-insensitive pattern matching in PostgreSQL, so it will match email addresses regardless of the case of the letters.
select employee_name from employees where email ilike('%example.com') or email ilike('%example.net') or email ilike('%google.com');




-- Query 5: Retrieve the names of all employees who belong to the department titled 'Engineering'.
select employee_name from employees
join departments using(department_id) where department_name = 'Engineering'; --using join to join the employees and departments table and using the department_id to match the department_name




-- Query 6: Update the status of the employee with the highest salary to 'Promoted'.
update employees 
set status = 'Promoted'
where salary = (select max(salary) from employees); --using subquery to find the employee with the highest salary and then updating the status to 'Promoted'




-- Query 7: Retrieve the department name and the average salary of employees in each department:
 select department_name,avg(salary)as avg_salary from employees join departments using(department_id)
group by department_name --using group by to group the result by department_name and then using avg function to calculate the average salary for each department



