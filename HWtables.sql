CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR
);

CREATE TABLE dep_emp (
	emp_no INT,
	dept_no VARCHAR,
	from_date DATE,
	to_date DATE
);

CREATE TABLE department_manager (
	dept_no VARCHAR,		
	emp_no INT,
	from_date DATE,
	to_date DATE
);

CREATE TABLE employee (	
	emp_no INT,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE
);

CREATE TABLE salaries (	
	emp_no INT,
	salary INT, 
	from_date DATE,
	to_date DATE
);

CREATE TABLE titles (	
	emp_no INT,
	title VARCHAR, 
	from_date DATE,
	to_date DATE
);
