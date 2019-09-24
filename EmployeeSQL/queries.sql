SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

--1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees JOIN salaries ON employees.emp_no = salaries.emp_no;

--2
SELECT first_name, last_name, hire_date 
FROM employees WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

--3
SELECT dm.dept_no, d.dept_name, dm.emp_no,
 e.last_name, e.first_name, dm.from_date, dm.to_date
FROM dept_manager AS dm
INNER JOIN departments AS d
ON (dm.dept_no = d.dept_no)
INNER JOIN employees AS e
ON (dm.emp_no = e.emp_no);

--4
SELECT e.emp_no, last_name, first_name, d.dept_name
FROM employees e
JOIN dept_emp de
	ON e.emp_no = de.emp_no
JOIN departments d
	ON de.dept_no = d.dept_no
	
--5
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--6
SELECT e.emp_no, last_name, first_name, d.dept_name
FROM employees e
JOIN dept_emp de
	ON e.emp_no = de.emp_no
JOIN departments d
	ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales'

--7
SELECT e.emp_no, last_name, first_name, d.dept_name
FROM employees e
JOIN dept_emp de
	ON e.emp_no = de.emp_no
JOIN departments d
	ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development'

--8
SELECT last_name, COUNT(last_name) COUNT
FROM employees
GROUP BY last_name
ORDER BY COUNT DESC



