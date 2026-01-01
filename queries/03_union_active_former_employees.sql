SELECT emp_no, 'Active' AS status
FROM dept_emp
WHERE to_date = '9999-01-01'
UNION ALL
SELECT emp_no, 'Former' AS status
FROM dept_emp
WHERE to_date <> '9999-01-01'
LIMIT 5;
