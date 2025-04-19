---Exercise 1

---SELECT Statement
---Question 1:Retrieve all columns from the employees table. 
---SQL Query: 
SELECT * FROM exercises_employees;


---SELECT DISTINCT Statement
---Question 2:Find all the unique departments in the employees table. 
---SQL Query: 
SELECT DISTINCT department 
FROM exercises_employees;


---ORDER BY Statement
---Question 3:Retrieve all employees' first and last names, ordered by salary in descending order. 
---SQL Query: 
SELECT first_name, last_name, salary 
FROM exercises_employees 
ORDER BY salary DESC;


---LIMIT Statement
---Question 4: Retrieve the top 5 highest-paid employees. 
---SQL Query: 
SELECT first_name,
       last_name, 
       salary 
FROM exercises_employees 
ORDER BY salary 
DESC LIMIT 5;


---WHERE Statement
---Question 5: Find employees who work in the IT department. 
---SQL Query: 
SELECT first_name, 
       last_name, 
       department 
FROM exercises_employees 
WHERE department = 'IT';


---AND Statement
---Question 6: Find employees who work in the Finance department AND have a salary greater than 58,000. ---SQL Query: 
SELECT first_name, 
       last_name, 
       department, 
       salary 
FROM exercises_employees 
WHERE department = 'Finance' AND salary > 58000;


---OR Statement
---Question 7:Find employees who work in the HR department OR the Marketing department. 
---SQL Query: 
SELECT first_name, 
       last_name, 
       department 
FROM exercises_employees 
WHERE department = 'HR' OR department = 'Marketing';


---NOT Statement
---Question 8: Find employees who do not work in the IT department. 
---SQL Query: 
SELECT first_name, 
       last_name, 
       department 
FROM exercises_employees 
WHERE NOT department = 'IT';


---IN Statement
---Question 9: Find employees who are in the HR, IT, or Finance departments.
---SQL Query: 
SELECT first_name, 
       last_name, 
       department 
FROM exercises_employees 
WHERE department IN ('HR', 'IT', 'Finance');


---Combining Conditions
---Question 10: Find employees who are in the IT department, have a salary greater than 50,000, and are located in New York.
---SQL Query: 
SELECT first_name, 
       last_name, 
       department, 
       salary, 
       city 
FROM exercises_employees 
WHERE department = 'IT' AND salary > 50000 AND city = 'New York';


---Combining WHERE, AND, and ORDER BY 
---Question 11
---SQL Query: 
SELECT first_name,
       last_name, 
       department, 
       salary 
FROM exercises_employees 
WHERE (department = 'Finance' OR department = 'Marketing') AND salary > 52000 
ORDER BY salary DESC;


---Combining SELECT DISTINCT, WHERE, and IN 
---Question 12
---SQL Query: 
SELECT DISTINCT city 
FROM exercises_employees 
WHERE department NOT IN ('IT', 'HR');

---Combining WHERE, NOT, AND, and ORDER BY 
---Question 13
---SQL Query: 
SELECT first_name, 
       last_name, 
       department,
       salary, 
       hire_date 
FROM exercises_employees 
WHERE department != 'Finance' AND salary > 50000 
ORDER BY hire_date ASC;


---Combining WHERE, OR, IN, and LIMIT 
---Question 14
---SQL Query: 
SELECT first_name, 
       last_name, 
       department, 
       city 
FROM exercises_employees 
WHERE city IN ('Chicago', 'Los Angeles') AND department IN ('IT', 'Marketing') 
LIMIT 3;



---Combining WHERE, AND, OR, NOT, ORDER BY, and LIMIT 
---Question 15
---SQL Query: 
SELECT first_name, 
       last_name, 
       department, 
       salary, 
       city 
FROM exercises_employees WHERE (department = 'IT' OR department = 'Finance') AND city != 'San Francisco' AND salary > 55000 
ORDER BY salary DESC 
LIMIT 5;
