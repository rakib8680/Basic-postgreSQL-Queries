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


