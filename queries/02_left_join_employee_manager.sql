SELECT e.emp_no,
       e.first_name || ' ' || e.last_name AS employee,
       m.first_name || ' ' || m.last_name AS manager
FROM employees e
LEFT JOIN dept_emp de
       ON e.emp_no = de.emp_no AND de.to_date = '9999-01-01'
LEFT JOIN dept_manager dm
       ON de.dept_no = dm.dept_no AND dm.to_date = '9999-01-01'
LEFT JOIN employees m
       ON dm.emp_no = m.emp_no
LIMIT 5;
