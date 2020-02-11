-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.

Select employee.emp_no, employee.last_name, employee.first_name, employee.gender, salaries.salary
from salaries
INNER JOIN employee ON
employee.emp_no=salaries.emp_no;

-- 2. List employees who were hired in 1986.

select employee.last_name, employee.first_name, employee.hire_date 
from employee where hire_date between '1986-01-01' and '1986-12-31'; 

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

select department_manager.dept_no, departments.dept_name, department_manager.emp_no, employee.last_name, employee.first_name, department_manager.from_date, department_manager.to_date
from department_manager
inner join departments on
departments.dept_no=department_manager.dept_no
inner join employee on
employee.emp_no=department_manager.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select dep_emp.emp_no, employee.last_name, employee.first_name, departments.dept_name
from dep_emp
inner join employee on
employee.emp_no=dep_emp.emp_no
inner join departments on
departments.dept_no=dep_emp.dept_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name
from employee
where last_name like 'B%' and first_name = 'Hercules';
	
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select dep_emp.emp_no, employee.last_name, employee.first_name, departments.dept_name
from dep_emp
inner join employee on
employee.emp_no=dep_emp.emp_no
inner join departments on
departments.dept_no=dep_emp.dept_no
where departments.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select dep_emp.emp_no, employee.last_name, employee.first_name, departments.dept_name
from dep_emp
inner join employee on
employee.emp_no=dep_emp.emp_no
inner join departments on
departments.dept_no=dep_emp.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select employee.last_name, count(employee.last_name)
from employee group by employee.last_name order by count(employee.last_name) asc;



