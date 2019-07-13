--EMPLOYEES
SELECT *
FROM test.employees

--DEPARTMENTS
SELECT *
FROM test.departments

--JOBS
SELECT *
FROM test.jobs

--LOCATIONS
SELECT *
FROM test.locations

--1
SELECT *
FROM test.employees

--2
SELECT emp.id, emp.last_name, emp.hire_date
FROM test.employees emp

--3
SELECT emp.id, emp.last_name, emp.hire_date, ISNULL(emp.salary,0) salary
FROM test.employees emp

--4
SELECT emp.id, emp.last_name, emp.hire_date, ISNULL(emp.salary * 12, 0) annual_salary
FROM test.employees emp

--5
SELECT emp.id, emp.first_name + '||' + emp.last_name fullname, emp.hire_date, ISNULL(emp.salary * 12, 0) annual_salary
FROM test.employees emp

--6a
SELECT dep.id, department_name
FROM test.employees emp
INNER JOIN test.departments dep ON emp.department_id = dep.id

--6b
SELECT DISTINCT dep.id, department_name
FROM test.employees emp
INNER JOIN test.departments dep ON emp.department_id = dep.id

--7
SELECT *
FROM test.employees emp
WHERE emp.department_id = 10

--8
SELECT *
FROM test.employees emp
WHERE emp.salary < 2000

--9
SELECT *
FROM test.employees emp
WHERE emp.salary BETWEEN 1800 AND 3000

--10
SELECT *
FROM test.employees emp
WHERE emp.department_id IN(10,30,31)

--11
SELECT *
FROM test.employees emp
WHERE emp.last_name LIKE('f%')

--12a
SELECT *
FROM test.employees emp
WHERE emp.job_id IS NULL

--12b
SELECT *
FROM test.employees emp
WHERE emp.job_id IS NOT NULL

--13
SELECT *
FROM test.employees emp
WHERE emp.job_id <> 'AD_CTB'

--14
SELECT *
FROM test.employees emp
WHERE emp.job_id <> 'AD_CTB' AND emp.salary > 1900

--15
SELECT *
FROM test.employees emp
WHERE emp.job_id <> 'AD_CTB' OR emp.salary > 1900

--16
SELECT *
FROM test.employees emp
WHERE (emp.job_id = 'AD_CTB' OR emp.job_id = 'FQ_GRT') AND emp.salary > 1900

--17
SELECT *
FROM test.employees emp
ORDER BY emp.hire_date 

--18
SELECT *
FROM test.employees emp
ORDER BY emp.hire_date DESC

--19
SELECT *
FROM test.employees emp
ORDER BY emp.hire_date DESC, emp.last_name

--20
SELECT emp.last_name, (emp.salary * 12) annual_salary
FROM test.employees emp
ORDER BY annual_salary DESC

--21
SELECT emp.first_name, emp.last_name, dep.department_description
FROM test.employees emp
LEFT JOIN test.departments dep ON emp.department_id = dep.id

--22
SELECT emp.last_name, dep.department_name
FROM test.employees emp
LEFT JOIN test.departments dep ON emp.department_id = dep.id

--23
SELECT emp.id id_emp, emp.last_name, dep.id id_dep, dep.department_name
FROM test.employees emp
LEFT JOIN test.departments dep ON emp.department_id = dep.id

--24
SELECT emp.id id_emp, emp.last_name, dep.id id_dep, dep.department_name, dep.department_description, loc.city
FROM test.employees emp
LEFT JOIN test.departments dep ON emp.department_id = dep.id
LEFT JOIN test.locations loc ON dep.location_id = loc.id

