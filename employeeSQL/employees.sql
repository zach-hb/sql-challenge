SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees e
INNER JOIN salaries s ON
e.emp_no=s.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';

SELECT m.dept_no, m.emp_no, d.dept_name, e.last_name, e.first_name
FROM dept_manager m
INNER JOIN department d ON
m.dept_no = d.dept_no
INNER JOIN employees e ON
m.emp_no = e.emp_no;

SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e ON
de.emp_no = e.emp_no
INNER JOIN department d ON
de.dept_no = d.dept_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name
FROM dept_emp de
INNER JOIN department d ON
de.dept_no = d.dept_no
INNER JOIN employees e ON 
de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN department d ON
de.dept_no = d.dept_no
INNER JOIN employees e ON 
de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY 
COUNT(last_name) DESC;