CREATE TABLE employees(emp_no INT, emp_title_id VARCHAR(30), birth_date VARCHAR(30),
					  first_name VARCHAR(30), last_name VARCHAR(30), sex VARCHAR(30),
					  hire_date VARCHAR(30), PRIMARY KEY (emp_no));

CREATE TABLE dept_emp (
	         emp_no INT, 
	         dept_no VARCHAR(30), 
	         FOREIGN KEY(emp_no) references employees(emp_no),
		     FOREIGN KEY(dept_no) references departments(dept_no));

CREATE TABLE dept_manager (dept_no VARCHAR(10), emp_no INT,
			 FOREIGN KEY(emp_no) references employees(emp_no));

CREATE TABLE salaries (emp_no INT, salary VARCHAR(30),
		FOREIGN KEY(emp_no) references employees(emp_no));
CREATE TABLE departments(dept_no VARCHAR(20), 
                        dept_name VARCHAR(20), 
                       PRIMARY KEY (dept_no)); 
CREATE TABLE titles (title_id VARCHAR(30),
					title VARCHAR(30),
					FOREIGN KEY(title_id) references employees(emp_title_id));
