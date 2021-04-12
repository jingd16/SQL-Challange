--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
	FROM employees
	LEFT JOIN salaries ON
	employees.emp_no = salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
	FROM employees
	WHERE hire_date like '%1986';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
	FROM dept_manager
	LEFT JOIN employees ON
	dept_manager.emp_no = employees.emp_no
	LEFT JOIN departments ON
	dept_manager.dept_no = departments.dept_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
	FROM emp
	LEFT JOIN employees ON
	emp.emp_no = employees.emp_no
	LEFT JOIN departments ON
	emp.dept_no = departments.dept_no;
	

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
	FROM employees
	WHERE first_name = 'Hercules' and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
CREATE VIEW Sales_Department AS
	SELECT emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
		FROM emp
		LEFT JOIN employees ON
		emp.emp_no = employees.emp_no
		LEFT JOIN departments ON
		emp.dept_no = departments.dept_no
		WHERE emp.dept_no = 'd007';

Select * from Sales_Department


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
CREATE VIEW Sales_Develop_Department AS
	SELECT emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
		FROM emp
		LEFT JOIN employees ON
		emp.emp_no = employees.emp_no
		LEFT JOIN departments ON
		emp.dept_no = departments.dept_no
		WHERE emp.dept_no = 'd007' or emp.dept_no = 'd005';
		
Select * from Sales_Develop_Department;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS COUNT_OF_LAST_NAME
	FROM employees
	GROUP BY last_name
	ORDER BY last_name DESC;
	
	
--===========================BONUS======================

	
	
	
	
	