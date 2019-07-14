## EMPLOYEES

![](img/1.png)

## DEPARTMENTS

![](img/departments.png)

## JOBS

![](img/jobs.png)

## LOCATIONS

![](img/locations.png)

## 1)

```sql
SELECT *
FROM test.employees
```

![](img/1.png)

## 2)

```sql
SELECT emp.id, emp.last_name, emp.hire_date
FROM test.employees emp
```

![](img/2.png)

## 3)

```sql
SELECT emp.id, emp.last_name, emp.hire_date, ISNULL(emp.salary, 0) salary
FROM test.employees emp
```

![](img/3.png)

## 4)

```sql
SELECT emp.id, emp.last_name, emp.hire_date, ISNULL(emp.salary * 12, 0) annual_salary
FROM test.employees emp
```

![](img/4.png)

## 5)

```sql
SELECT emp.id, emp.first_name + '||' + emp.last_name fullname, emp.hire_date, ISNULL(emp.salary * 12, 0) annual_salary
FROM test.employees emp
```

![](img/5.png)

## 6a)

```sql
SELECT dep.id, department_name
FROM test.employees emp
INNER JOIN test.departments dep ON emp.department_id = dep.id
```

![](img/6a.png)

## 6b)

```sql
SELECT DISTINCT dep.id, department_name
FROM test.employees emp
INNER JOIN test.departments dep ON emp.department_id = dep.id
```

![](img/6b.png)

## 7)

```sql
SELECT *
FROM test.employees emp
WHERE emp.department_id = 10
```

![](img/7.png)

## 8)

```sql
SELECT *
FROM test.employees emp
WHERE emp.salary < 2000
```

![](img/8.png)

## 9)

```sql
SELECT *
FROM test.employees emp
WHERE emp.salary BETWEEN 1800 AND 3000
```

![](img/9.png)

## 10)

```sql
SELECT *
FROM test.employees emp
WHERE emp.department_id IN(10,30,31)
```

![](img/10.png)

## 11)

```sql
SELECT *
FROM test.employees emp
WHERE emp.last_name LIKE('f%')
```

![](img/11.png)

## 12a)

```sql
SELECT *
FROM test.employees emp
WHERE emp.job_id IS NULL
```

![](img/12a.png)

## 12b)

```sql
SELECT *
FROM test.employees emp
WHERE emp.job_id IS NOT NULL
```

![](img/12b.png)

## 13)

```sql
SELECT *
FROM test.employees emp
WHERE emp.job_id <> 'AD_CTB'
```

> **Aclaración:** Los NULL no pasan la condición del WHERE
> ![](img/13.png)

## 14)

```sql
SELECT *
FROM test.employees emp
WHERE emp.job_id <> 'AD_CTB' AND emp.salary > 1900
```

![](img/14.png)

## 15)

```sql
SELECT *
FROM test.employees emp
WHERE emp.job_id <> 'AD_CTB' OR emp.salary > 1900
```

![](img/15.png)

## 16)

```sql
SELECT *
FROM test.employees emp
WHERE (emp.job_id = 'AD_CTB' OR emp.job_id = 'FQ_GRT') AND emp.salary > 1900
```

![](img/16.png)

## 17)

```sql
SELECT *
FROM test.employees emp
ORDER BY emp.hire_date
```

![](img/17.png)

## 18)

```sql
SELECT *
FROM test.employees emp
ORDER BY emp.hire_date DESC
```

![](img/18.png)

## 19)

```sql
SELECT *
FROM test.employees emp
ORDER BY emp.hire_date DESC, emp.last_name
```

![](img/19.png)

## 20)

```sql
SELECT emp.last_name, (emp.salary * 12) annual_salary
FROM test.employees emp
ORDER BY annual_salary DESC
```

![](img/20.png)

## 21)

```sql
SELECT *
FROM test.employees emp , test.departments dep
WHERE emp.department_id = dep.id
```

![](img/21.png)

## 22)

```sql
SELECT emp.last_name, dep.department_name
FROM test.employees emp
LEFT JOIN test.departments dep ON emp.department_id = dep.id
```

![](img/22.png)

## 23)

```sql
SELECT emp.id id_emp, emp.last_name, dep.id id_dep, dep.department_name
FROM test.employees emp
LEFT JOIN test.departments dep ON emp.department_id = dep.id
```

![](img/23.png)

## 24)

```sql
SELECT emp.id id_emp, emp.last_name, dep.id id_dep, dep.department_name, dep.department_description, loc.city
FROM test.employees emp
LEFT JOIN test.departments dep ON emp.department_id = dep.id
LEFT JOIN test.locations loc ON dep.location_id = loc.id
```

![](img/24.png)

## 25)

```sql
SELECT *
FROM test.employees emp
JOIN test.departments dep ON emp.department_id = dep.id
```

> **Aclaración:** Se obtiene el mismo resultado que el ejercicio 21. También se puede utilizar el INNER JOIN.
> ![](img/25.png)

## 26)

```sql
SELECT *
FROM test.employees emp
LEFT JOIN test.departments dep ON emp.department_id = dep.id
```

![](img/26.png)

## 27)

```sql
SELECT *
FROM test.departments dep
LEFT JOIN test.employees emp ON dep.id = emp.department_id
```

> **Aclaración:** Se puede utilizar también el RIGHT JOIN invirtiendo las tablas.
> ![](img/27.png)

## 28)

```sql
SELECT man.id id_man, (man.first_name + ' ' + man.last_name) full_name_man, emp.id id_emp, (emp.first_name + ' ' + emp.last_name) full_name_emp
FROM test.employees man
INNER JOIN test.employees emp ON man.id = emp.manager_id
```

![](img/28.png)

## 29)

```sql
SELECT MAX(emp.salary) max_salary
FROM test.employees emp
```

![](img/29.png)

## 30)

```sql
SELECT MAX(emp.salary) max_salary, MIN(emp.salary) min_salary, AVG(emp.salary) promedy_salary, SUM(emp.salary) total_salary
FROM test.employees emp
```

![](img/30.png)

## 31)

> WRONG !!!

```sql
SELECT MAX(emp.hire_date) max_hire_date, MIN(emp.hire_date) min_hire_date, AVG(emp.hire_date) promedy_hire_date, SUM(emp.hire_date) total_hire_date
FROM test.employees emp
```

![](img/31error.png)
![](img/31error2.png)

> GOOD !!!

```sql
SELECT MAX(emp.hire_date) max_hire_date, MIN(emp.hire_date) min_hire_date, AVG(emp.salary) promedy_salary, SUM(emp.salary) total_salary
FROM test.employees emp
```

![](img/31.png)

## 32)

```sql
SELECT COUNT(*) total_employees
FROM test.employees emp
```

![](img/32.png)

## 33)

```sql
SELECT COUNT(*) total_employees_dep_10
FROM test.employees emp
WHERE emp.department_id = 10
```

![](img/33.png)

## 34)

```sql
SELECT dep.id id_dep, dep.department_name, COUNT(*) total_employees
FROM test.departments dep
INNER JOIN test.employees emp ON dep.id = emp.department_id
GROUP BY dep.id, dep.department_name
```

![](img/34.png)

## 35)

```sql
SELECT dep.id id_dep, dep.department_name, job.id id_job, job.job_name, COUNT(*) total_employees
FROM test.departments dep
INNER JOIN test.employees emp ON dep.id = emp.department_id
INNER JOIN test.jobs job ON emp.job_id = job.id
GROUP BY dep.id, dep.department_name,job.id, job.job_name
```

![](img/35.png)
