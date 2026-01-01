CREATE TABLE dept_emp (
    emp_no INT REFERENCES employees(emp_no),
    dept_no VARCHAR(4) REFERENCES departments(dept_no),
    from_date DATE,
    to_date DATE
);
