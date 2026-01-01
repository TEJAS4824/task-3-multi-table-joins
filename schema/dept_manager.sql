CREATE TABLE dept_manager (
    dept_no VARCHAR(4) REFERENCES departments(dept_no),
    emp_no INT REFERENCES employees(emp_no),
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (dept_no, emp_no)
);
