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