SELECT d.dept_name,
       ROUND(100.0 * SUM(CASE WHEN e.gender = 'F' THEN 1 ELSE 0 END)/COUNT(*),2) AS female_pct,
       ROUND(100.0 * SUM(CASE WHEN e.gender = 'M' THEN 1 ELSE 0 END)/COUNT(*),2) AS male_pct
FROM departments d
JOIN dept_emp de ON d.dept_no = de.dept_no
JOIN employees e ON de.emp_no = e.emp_no
WHERE de.to_date = '9999-01-01'
GROUP BY d.dept_name;
