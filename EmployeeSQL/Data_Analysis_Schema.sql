
SELECT first_name, last_name, sex, employees.emp_no, salaries.salary
FROM employees
JOIN salaries
ON (employees.emp_no = salaries.emp_no);


SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;


SELECT first_name, last_name, employees.emp_no, dept_manager.dept_no, departments.dept_name
FROM employees
JOIN dept_manager 
ON employees.emp_no = dept_manager.emp_no
JOIN departments 
ON dept_manager.dept_no = departments.dept_no;


SELECT first_name, last_name, employees.emp_no, dept_emp.dept_no, departments.dept_name
FROM employees
JOIN dept_emp 
ON employees.emp_no = dept_emp.emp_no
JOIN departments 
ON dept_emp.dept_no = departments.dept_no;


SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%'


SELECT first_name, last_name, employees.emp_no, departments.dept_name 
FROM employees
JOIN dept_emp 
ON employees.emp_no = dept_emp.emp_no
JOIN departments 
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';


SELECT first_name, last_name, employees.emp_no, departments.dept_name 
FROM employees
JOIN dept_emp 
ON employees.emp_no = dept_emp.emp_no
JOIN departments 
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';


SELECT last_name, COUNT(*) as lastname_count
FROM employees
GROUP BY last_name
ORDER BY lastname_count DESC;



