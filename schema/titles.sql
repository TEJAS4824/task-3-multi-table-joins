CREATE TABLE titles (
    emp_no INT REFERENCES employees(emp_no),
    title VARCHAR(50),
    from_date DATE,
    to_date DATE
);
