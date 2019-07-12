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
SELECT *
FROM test.employees emp

--6b

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