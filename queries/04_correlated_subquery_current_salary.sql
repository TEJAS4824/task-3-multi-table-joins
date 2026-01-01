SELECT e.emp_no,
       e.first_name,
       (SELECT s.salary
        FROM salaries s
        WHERE s.emp_no = e.emp_no
        AND s.to_date = '9999-01-01') AS current_salary
FROM employees e
WHERE e.emp_no BETWEEN 10001 AND 10010;
