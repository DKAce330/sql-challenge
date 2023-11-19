
CREATE TABLE departments (dept_no integer PRIMARY KEY NOT NULL,
						  dept_name varchar (30) NOT NULL 
					);

					
CREATE TABLE titles (title_id integer PRIMARY KEY NOT NULL,
					 title varchar (30) NOT NULL
					);


CREATE TABLE salaries (emp_no integer PRIMARY KEY NOT NULL,
					   salary integer NOT NULL
					);
					
CREATE TABLE dept_manager (dept_no integer,
						   emp_no integer,
						   FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
						   FOREIGN KEY (emp_no) REFERENCES salaries (emp_no)
					);
					
CREATE TABLE dept_emp (dept_no integer,
						emp_no integer,
						FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
						FOREIGN KEY (emp_no) REFERENCES salaries (emp_no)
					);
					
CREATE TABLE employees (emp_no integer PRIMARY KEY NOT NULL,
  						emp_title_id integer,
  						birth_date date,
 						first_name varchar (20) NOT NULL,
  						last_name varchar (20) NOT NULL,
  						sex varchar (2),
  						hire_date date NOT NULL,
  						FOREIGN KEY (emp_no) REFERENCES salaries (emp_no),
  						FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
					);