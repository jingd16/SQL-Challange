--===========================departments table==========
--Drop table if exists
DROP TABLE departments;

--Create Table departments
CREATE TABLE departments (
	dept_no VARCHAR(5) PRIMARY KEY,
	dept_name VARCHAR(255)
);
 -- View table
 SELECT * FROM departments;
 
 --=============================titles table========
 --Drop table if exists
 DROP TABLE titles
 
 --Create table titles
 CREATE TABLE titles (
 	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(255)
 );
 
 --VIEW TABLE
 SELECT * FROM titles;
 
 --=================================employees table================
 --Drop table if exist
 DROP TABLE employees;
 
 --Create table employees
 CREATE TABLE employees (
 	emp_no INT PRIMARY KEY,
	emp_title VARCHAR(255) NOT NULL,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id),
	birth_date VARCHAR(255) NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(20) NOT NULL,
	hire_date VARCHAR(255) NOT NULL
 );
 
 --view table
 SELECT * FROM employees;
 
 --==================================salaries table================
 --Drop table if exist
 DROP TABLE salaries
 
 --Create table
 CREATE TABLE salaries (
 	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT NOT NULL,
	PRIMARY KEY (emp_no)
 );
 
 --View table
 SELECT * FROM salaries;
 
 --==================================dept_manager table==============
 --Drop table if exist
 DROP TABLE dept_manager;
 
 --Create table
  --dept_no and emp_no combined as composite key
 CREATE TABLE dept_manager (
 	dept_no VARCHAR(5) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
 );
 
 --View table
 SELECT * FROM dept_manager;
 
 --===================================emp table================
 --Drop table if exist
 DROP TABLE emp;
 
 --Create table
 --emp_no and dept_no combined as composite key
 CREATE TABLE emp (
 	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(5) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
 );
 
 --View table
 SELECT * FROM emp;