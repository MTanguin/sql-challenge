--Creating table schema
--Note: If the table name exists, drop the table first before creating a new one

--Create a table name departments
CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(255) NOT NULL
);

--Import departments.csv file into the table
--Verify/View the table
SELECT * FROM departments;

--Create a table name titles
CREATE TABLE titles (
    emp_title_id VARCHAR(10) NOT NULL PRIMARY KEY,
    title VARCHAR(255) 
);

--Import titles.csv file into the table
--Verify/View the table
SELECT * FROM titles;

--Create a table name employees
CREATE TABLE employees (
    emp_no INT PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_title_id)REFERENCES titles(emp_title_id),
    birth_date DATE NOT NULL,
    first_name VARCHAR(255) NOT NULL ,
    last_name VARCHAR(255) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    hire_date DATE NOT NULL
);

--Import employees.csv file into the table
--Verify/View the table
SELECT * FROM employees;



--Create a table name salaries
CREATE TABLE salaries (
    emp_no INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary INT NOT NULL
);

--Import salaries.csv file into the table
--Verify/View the table
SELECT * FROM salaries

--Create a junction table name dept_emp 
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
--Import dept_emp.csv file into the table
--Verify/View the table
SELECT * FROM dept_emp

--Create a junction table name dept_manager
CREATE TABLE dept_manager (
    dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no) ,
    emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Import dept_manager.csv file into the table
--Verify/View the table
SELECT * FROM dept_manager
