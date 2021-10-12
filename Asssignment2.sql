select count(t.title) AS "Number of Employees",t.title from titles t
INNER JOIN employees e ON e.emp_no = t.emp_no 
WHERE e.birth_date > "1965-01-01" GROUP BY t.title;
select avg(s.salary) AS "Average Salary", t.title from titles t 
INNER JOIN salaries s ON s.emp_no = t.emp_no GROUP BY title;
SELECT SUM(s.salary) AS "Money Spent on salary", d.dept_name from salaries s
INNER JOIN dept_emp de ON de.emp_no = s.emp_no
INNER JOIN departments d ON d.dept_no = de.dept_no GROUP BY d.dept_name
WHERE de.from_date BETWEEN "1990-01-01" AND "1992-12-31" AND d.dept_name = "Marketing"
GROUP BY d.dept_name;
