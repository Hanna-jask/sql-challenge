CREATE TABLE titles (
    title_id VARCHAR(20),	
	title VARCHAR(20),
    PRIMARY KEY (title_id)
);


CREATE TABLE departments (
	dept_no VARCHAR(20),
	dept_name VARCHAR(30),
    PRIMARY KEY (dept_no)
);


CREATE TABLE employees (
    emp_no INTEGER, 
	emp_title_id VARCHAR(20),
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(20),
	hire_date DATE,
    PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_title_id) REFERENCES titles (title_id)
);


CREATE TABLE dept_emp (
    emp_no INTEGER,
	dept_no VARCHAR(20),
    FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);


CREATE TABLE dept_manager (
    dept_no VARCHAR(20),
	emp_no INTEGER,
    PRIMARY KEY (emp_no),
    FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);


CREATE TABLE salaries (
    emp_no INTEGER,
	salary INTEGER,
    PRIMARY KEY (emp_no),
    FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);
