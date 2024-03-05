# FAQ

## 1. What is PostgreSQL?

PostgreSQL is a powerful, open source (RDBMS) Relational Database Management System. It is a SQL based database server and it follows the ACID properties. It supports both relational and non-relational querying and is also known for its robust features and extensibility. It is a highly scalable and reliable database system that is used to manage large data sets.

## 2. What is the purpose of a database schema in PostgreSQL?

A database schema is a collection of database objects including tables, views, indexes, sequences, data types, functions, and operators. It is a way to logically group objects such as tables, views, stored procedures etc. A schema is used to manage the objects in the database and to control access to those objects. It is a way to organize the database and to provide a level of security and control over the database objects.

## 3. Explain the primary key and foreign key concepts.

**Primary Key**: A primary key is a single column or a set of column that uniquely identifies each row in that table. It is a unique identifier for a row in a table and is used to enforce the entity integrity of the table.

**Foreign Key**: A foreign key is a column or a set of columns in a table that is used to establish a link between the data in two tables. It is used to enforce the referential integrity of the data in the table.

## 4. What is the difference between the VARCHAR and CHAR data types ?

**CHAR**: The CHAR data type is used to store fixed length strings. It is used to store strings of a fixed length and is padded with spaces to fill the entire length of the column.
**VARCHAR**: The VARCHAR data type is used to store variable length strings. It is used to store strings of variable length and does not pad the string with spaces.

## 5. Explain the purpose of the WHERE clause in a SELECT statement.

The WHERE clause is used to filter the rows returned by a SELECT statement. It is used to specify a condition that must be met for a row to be returned. Example :

```sql
SELECT * FROM employees WHERE salary > 50000;
```

## 6. What are the LIMIT and OFFSET clauses used for?

**LIMIT**: The LIMIT clause is used to limit the number of rows returned by a SELECT statement. It is used to specify the maximum number of rows to return. Example :

```sql
SELECT * FROM employees LIMIT 10;
```

**OFFSET**: The OFFSET clause is used to skip a specified number of rows before returning the remaining rows. It is used to specify the number of rows to skip. Example :

```sql
SELECT * FROM employees OFFSET 5;
```

## 7. How can you perform data modification using UPDATE statements?

The UPDATE statement is used to modify the existing data in a table. It is used to update the values of one or more columns in a table. Example :

```sql
UPDATE employees
SET salary = 60000
WHERE employee_id = 1001;
```

## 8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?

The JOIN operation is used to combine rows from two or more tables based on a related column between them. It is used to retrieve data from multiple tables. There are different types of JOIN operations such as INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN. Example of INNER JOIN :

```sql
SELECT employee_name FROM employees
JOIN departments USING(department_id) WHERE department_name = 'Engineering';
```

## 9. Explain the GROUP BY clause and its role in aggregation operations.

The GROUP BY clause is used to group the rows returned by a SELECT statement based on the values of one or more columns. It is used to perform aggregation operations such as COUNT, SUM, AVG, MIN, and MAX on the grouped data. Example :

```sql
SELECT department_name,AVG(salary) AS avg_salary FROM employees JOIN departments USING(department_id)
GROUP BY department_name
```

## 10. How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?

In PostgreSQL, aggregate functions such as COUNT, SUM, and AVG can be calculated using the SELECT statement and the GROUP BY clause. Example :

```sql
SELECT COUNT(*) FROM employees;
SELECT SUM(salary) FROM employees;
SELECT AVG(salary) FROM employees;
```
