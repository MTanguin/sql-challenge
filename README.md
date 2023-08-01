#### "Unlocking Insights from Pewlett Hackard's Employee Database: Exploring the Workforce of the 1980s and 1990s"

# Background

As the new data engineer at Pewlett Hackard (a fictional company), the first major task is to do a research project about people whom the company employed during the 1980s and 1990s, using six CSV files from employee database during this period.

# Aim of the study

- To be able to design the tables that hold the data from the CSV files, import the CSV files into a SQL database, and answer questions about the data.
- To be able to perform data modeling, data engineering, and data analysis

# Methods 

1.  ### Data Modeling

- Inspect the CSV files
- Sketch an Entity Relationship Diagram of the tables using tool like QuickDBD.

2.  ### Data Engineering

- Use the provided information to create a table schema for each of the six CSV files. 
- Specify the data types, primary keys, foreign keys, and other constraints.
- For the primary keys, verify that the column is unique. Otherwise, create a composite key which takes     two primary keys to uniquely identify a row.
- Create the tables in the correct order to handle the foreign keys.
- Import each CSV file into its corresponding SQL table.

3.  ### Data Analysis

- List the employee number, last name, first name, sex, and salary of each employee.
- List the first name, last name, and hire date for the employees who were hired in 1986.
- List the manager of each department along with their department number, department name, employee number, last name, and first name.
- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
- List each employee in the Sales department, including their employee number, last name, and first name.
- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).



# Overview & Analysis

The departments table stores information about different departments in the company. It has a primary key dept_no and a name for the department dept_name.
The titles table stores information about the different job titles that employees held. It has a primary key emp_title_id and a column title that stores the name of the job title.
The employees table stores information about individual employees. It has a primary key emp_no, a foreign key emp_title_id that references the emp_title_id column in the titles table, and information about the employees’ name, birth date, sex, and hire date.

The salaries table  store information about the salaries of individual employees. It has a foreign key emp_no that references the emp_no column in the employees table and a column salary that stores the salary of the employee.

The dept_emp junction table store information about which employees belong to which departments. It has a foreign key emp_no that references the emp_no column in the employees table and a foreign key dept_no that references the dept_no column in the departments table.

The dept_manager is also a junction, table store information about which employees are the managers of which departments. It has a foreign key dept_no that references the dept_no column in the departments table and a foreign key emp_no that references the emp_no column in the employees table.

The following relationships exist:
One-to-many relationship between "departments" and "employees" - One department can have many employees, but an employee can only belong to one department. This relationship is established through the "dept_emp" table, which has a foreign key "dept_no" that refers to the primary key "dept_no" in the "departments" table.

One-to-one relationship between "employees" and "titles" - An employee can have only one title at a time, and a title can belong to only one employee. This relationship is established through the foreign key "emp_title_id" in the "employees" table, which refers to the primary key "emp_title_id" in the "titles" table.

Many-to-one relationship between "employees" and "salaries" - An employee can have multiple salary entries (for example, if their salary changes over time), but each salary entry can only belong to one employee. This relationship is established through the foreign key "emp_no" in the "salaries" table, which refers to the primary key "emp_no" in the "employees" table.

Many-to-many relationship between "departments" and "employees" - A department can have many employees, and an employee can work in multiple departments. This relationship is established through the "dept_emp" table, which has primary keys "emp_no" and "dept_no" that refer to the primary keys of the same name in the "employees" and "departments" tables, respectively.

One-to-one relationship between "departments" and "employees" - A department can have only one manager at a time, and a manager can only manage one department at a time. This relationship is established through the "dept_manager" table, which has a foreign key "dept_no" that refers to the primary key "dept_no" in the "departments" table, and a foreign key "emp_no" that refers to the primary key "emp_no" in the "employees" table.

For the analysis, please refer to Employees_queries.sql

### ERD Diagram

![ERD_EMPLOYEES_1980s 1990s](https://github.com/MTanguin/sql-challenge/assets/114210481/b1431328-5764-4c40-b149-8cbd2d999981)



### Sources:

https://courses.bootcampspot.com/courses/2799/assignments/42951?module_item_id=803188
https://app.quickdatabasediagrams.com/#/d/vJx65c


