-- Data Engineering

-- Create a table for each CSV

-- Departments Table, include PK
CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	CONSTRAINT dept_pk PRIMARY KEY (dept_no)
);

-- Employees Table, include PK
CREATE TABLE employees (
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	CONSTRAINT emp_pk PRIMARY KEY (emp_no)
);

-- Department Employees Table, include 2 FK's
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	CONSTRAINT emp_pk FOREIGN KEY (emp_no)
		REFERENCES employees (emp_no),
	CONSTRAINT dept_pk FOREIGN KEY (dept_no)
		REFERENCES departments (dept_no)
);

-- Department Manager Table, include 2 FK's
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	CONSTRAINT dept_pk FOREIGN KEY (dept_no)
		REFERENCES departments (dept_no),
	CONSTRAINT emp_pk FOREIGN KEY (emp_no)
		REFERENCES employees (emp_no)
);

-- Salaries Table, include FK
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	CONSTRAINT emp_pk FOREIGN KEY (emp_no)
		REFERENCES employees (emp_no)
);

-- Titles Table, include FK
CREATE TABLE titles (
	emp_no INT NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	CONSTRAINT emp_pk FOREIGN KEY (emp_no)
		REFERENCES employees (emp_no)
);