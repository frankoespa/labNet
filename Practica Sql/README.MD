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

## 6b)

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
