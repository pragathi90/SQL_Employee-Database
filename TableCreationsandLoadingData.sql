
CREATE TABLE employees (
    emp_no int NOT NULL,
    birth_date date ,
    first_name varchar(20)  ,
    last_name varchar(20)  ,
    gender varchar(10)  ,
    hire_date date ,
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE departments (
    dept_no varchar NOT NULL,
    dept_name varchar(20)  ,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE salaries (
    emp_no int  ,
    salary money   ,
    from_date date  ,
    to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

--PRIMARY KEY (item_id, so_id),
   --FOREIGN KEY (so_id) REFERENCES so_headers (id)



CREATE TABLE dept_manager (
    dept_no varchar   ,
    emp_no int  ,
    from_date date  ,
    to_date date  ,
	PRIMARY KEY (dept_no,emp_no)
);


CREATE TABLE dept_emp (
    emp_no int   ,
	dept_no varchar  ,
    from_date date  ,
    to_date date ,
	PRIMARY KEY (dept_no,emp_no)
);

CREATE TABLE titles (
    emp_no int NOT NULL,
    title varchar  ,
    from_date date   ,
    to_date date ,  
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM employees;
--300024

SELECT * FROM departments;
--9

SELECT * FROM salaries ;
--300024

SELECT * FROM titles;
--443308

SELECT * FROM dept_manager;
--24

SELECT * FROM dept_emp ;
--331603



--DROP TABLE employees;

--DROP TABLE departments;

--DROP TABLE  salaries ;

--DROP TABLE titles;

--DROP TABLE  dept_manager;

--DROP TABLE  dept_emp ;
