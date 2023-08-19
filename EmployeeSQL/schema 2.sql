-- QUESTION 1 
select emp.emp_no, emp.last_name, emp.first_name, emp.sex, sa.salary
from employees as emp
left join salaries as sa
on emp.emp_no = sa.emp_no

-- QUESTION 2
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'
limit 10

-- QUESTION 3
select d.dept_no, d.dept_name, dm.emp_no, emp.last_name, emp.first_name
from departments as d
join dept_manager as dm
on d.dept_no = dm.dept_no
join employees as emp
on dm.emp_no = emp.emp_no

-- 		QUESTION 4
select  emp.emp_no, emp.last_name, emp.first_name, d.dept_name
from employees as emp
join dept_emp as de
on emp.emp_no =  de.emp_no
join departments as d
on de.dept_no = d.dept_no
limit 5
-- QUESTION 5 
select *
from employees
where first_name = 'Hecules'
and last_name like  'B%'
limit 10
--- QUESTION 6
SELECT emp.emp_no, emp.last_name, emp.first_name, d.dept_name
from employees as emp
join dept_emp as de
on emp.emp_no = de.emp_no
join departments as d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales'
limit 5
---	question7
SELECT emp.emp_no, emp.last_name, emp.first_name, d.dept_name
from employees as emp
join dept_emp as de
on emp.emp_no = de.emp_no
join departments as d
on de.dept_no = d.dept_no
where d.dept_name in ('Sales', 'Deveopment')
limit 5

--8
select last_name, count(emp_no) as "Total_counts"
from employees
group by last_name
order by "Total_counts" desc
