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
SELECT emp.first_name, emp.last_name, dep.department_description
FROM test.employees emp
LEFT JOIN test.departments dep ON emp.department_id = dep.id
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
