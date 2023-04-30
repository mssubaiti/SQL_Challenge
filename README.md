# SQL_Challenge

Data Analysis

1. List the employee number, last name, first name, sex, and salary of each employee.


SELECT first_name, last_name, sex, employees.emp_no, salaries.salary
FROM employees
JOIN salaries
ON (employees.emp_no = salaries.emp_no);
---------------------------------------------------------------------------------------


2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;
---------------------------------------------------------------------------------------

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT first_name, last_name, employees.emp_no, dept_manager.dept_no, departments.dept_name
FROM employees
JOIN dept_manager 
ON employees.emp_no = dept_manager.emp_no
JOIN departments 
ON dept_manager.dept_no = departments.dept_no;
---------------------------------------------------------------------------------------


4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT first_name, last_name, employees.emp_no, dept_emp.dept_no, departments.dept_name
FROM employees
JOIN dept_emp 
ON employees.emp_no = dept_emp.emp_no
JOIN departments 
ON dept_emp.dept_no = departments.dept_no;
---------------------------------------------------------------------------------------

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%'
---------------------------------------------------------------------------------------


6. List each employee in the Sales department, including their employee number, last name, and first name.

SELECT first_name, last_name, employees.emp_no, departments.dept_name 
FROM employees
JOIN dept_emp 
ON employees.emp_no = dept_emp.emp_no
JOIN departments 
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';
---------------------------------------------------------------------------------------


7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.


SELECT first_name, last_name, employees.emp_no, departments.dept_name 
FROM employees
JOIN dept_emp 
ON employees.emp_no = dept_emp.emp_no
JOIN departments 
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';
---------------------------------------------------------------------------------------


8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(*) as lastname_count
FROM employees
GROUP BY last_name
ORDER BY lastname_count DESC;
---------------------------------------------------------------------------------------




