select count(t.title) AS "Number of Employees",t.title, e.birth_date from titles t
INNER JOIN employees e ON e.emp_no = t.emp_no GROUP BY t.title 
HAVING e.birth_date > "1965-01-01";
select avg(s.salary) AS "Average Salary", t.title from titles t 
INNER JOIN salaries s ON s.emp_no = t.emp_no GROUP BY title;
SELECT SUM(s.salary) AS "Money Spent on salary", d.dept_name from salaries s
INNER JOIN dept_emp de ON de.emp_no = s.emp_no
INNER JOIN departments d ON d.dept_no = de.dept_no GROUP BY d.dept_name
HAVING de.from_date BETWEEN "1990-01-01" AND "1992-12-31";
