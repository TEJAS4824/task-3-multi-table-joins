CREATE TABLE salaries (
    emp_no INT REFERENCES employees(emp_no),
    salary INT,
    from_date DATE,
    to_date DATE
);
