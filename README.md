# SQL_Challenge


This SQL challenge there are six CSV files containing data related to a company's employee and department records. The files are named as follows:

employees.csv
departments.csv
dept_emp.csv
dept_manager.csv
salaries.csv
titles.csv 


To create an ERD or table schema, we can use a tool such as Quick Database Diagrams (https://app.quickdatabasediagrams.com/#/).

The following is a brief description of each CSV file and its fields:

employees.csv - Contains information about the employees, such as their employee ID number, birth date, first name, last name, gender, and hire date.

departments.csv - Contains information about the departments, such as their department number and name.

dept_emp.csv - Contains information about the department-employee relationships, such as which employee is assigned to which department

dept_manager.csv - Contains information about the department-manager relationships, stating the employee ID number and what deptartment they manage

salaries.csv - Contains information about the employees' salaries, such as their salary amount and the employee number.

titles.csv - Contains information about the employees' titles , such as their title ID, and title type.


The project involves creating queries to answer several questions about the employees and their departments. Below are the questions and their corresponding SQL queries:

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




