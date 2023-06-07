CREATE TABLE departaments(
    dept_no CHAR(4) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(50)
);

CREATE TABLE titles(
    title_id CHAR(5) PRIMARY KEY NOT NULL,
	title VARCHAR(50)
);

CREATE TABLE employees(
    emp_no INT PRIMARY KEY NOT NULL,
	emp_title CHAR(5) NOT NULL,
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex CHAR,
	hire_date VARCHAR(30),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp(
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departaments(dept_no)
);

CREATE TABLE dept_manager(
    dept_no CHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departaments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);