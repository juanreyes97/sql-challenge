-- 1

SELECT 
	a.emp_no,
	last_name,
	first_name,
	sex,
	b.salary
FROM
	employees AS a
LEFT JOIN
	salaries AS b ON a.emp_no = b.emp_no
	
-- 2
	
SELECT
    first_name,
    last_name,
    TO_DATE(hire_date, 'MM/DD/YYYY') AS hire_date
FROM
    employees
WHERE 
    EXTRACT(YEAR FROM TO_DATE(hire_date, 'MM/DD/YYYY')) = 1986
ORDER BY 
    hire_date;
	
-- 3

SELECT 
	a.dept_no,
	dept_name,
	b.emp_no,
	last_name,
	first_name
FROM 
	departaments AS a
LEFT JOIN 
	dept_manager AS b ON a.dept_no = b.dept_no
LEFT JOIN 
	employees AS c ON b.emp_no = c.emp_no;

-- 4

SELECT 
	a.emp_no,
	last_name,
	first_name,
	dept_name
FROM 
	dept_emp as a
LEFT JOIN 
	employees as b ON a.emp_no = b.emp_no
LEFT JOIN 
	departaments as c ON a.dept_no = c.dept_no;
	
-- 5

SELECT
	first_name,
	last_name,
	sex
FROM
	employees
WHERE
	first_name = 'Hercules' AND last_name LIKE 'B%';
	
-- 6

SELECT
	dept_name,
	c.emp_no,
	last_name,
	first_name
FROM
	departaments AS a
LEFT JOIN 
	dept_emp as b ON a.dept_no = b.dept_no
LEFT JOIN
	employees as c ON b.emp_no = c.emp_no
WHERE dept_name = 'Sales'
	
-- 7

SELECT
	c.emp_no,
	last_name,
	first_name,
	dept_name
FROM
	departaments AS a
LEFT JOIN 
	dept_emp as b ON a.dept_no = b.dept_no
LEFT JOIN
	employees as c ON b.emp_no = c.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- 8

SELECT 
	last_name, COUNT(last_name) AS "frequency"
FROM 
	employees
GROUP BY 
	last_name
ORDER BY
	COUNT(last_name) DESC;
