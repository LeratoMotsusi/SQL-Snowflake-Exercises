---Exercise 2

---COUNT() Function
---Question 1: Find the total number of employees in the company. 
---SQL Query: 
SELECT COUNT(*) AS total_employees 
FROM exercises_employees;


---SUM() Function
---Question 2: Find the total salary paid to all employees in the IT department. 
---SQL Query: 
SELECT SUM(salary) AS total_it_salary 
FROM exercises_employees 
WHERE department = 'IT';


---AVG() Function
---Question 3: Calculate the average salary of employees in the HR department. 
---SQL Query: 
SELECT AVG(salary) AS avg_hr_salary 
FROM exercises_employees WHERE department = 'HR';


---MIN() and MAX() Functions
---Question 4: Find the highest and lowest salary in the company. 
---SQL Query: 
SELECT MIN(salary) AS lowest_salary, 
       MAX(salary) AS highest_salary 
FROM exercises_employees;


---GROUP BY Statement
---Question 5: Group employees by department and display the total salary paid in each department. 
---SQL Query: 
SELECT department, 
    SUM(salary) AS total_salary 
FROM exercises_employees 
GROUP BY department;


---GROUP BY and COUNT()
---Question 6: Count how many employees work in each city. 
---SQL Query: 
SELECT city, 
    COUNT(*) AS total_employees 
FROM exercises_employees 
GROUP BY city;


---GROUP BY and ORDER BY
---Question 7: Group employees by department, calculate the average salary in each department, and order the results in descending order of average salary. 
---SQL Query: 
SELECT department, 
    AVG(salary) AS avg_salary 
FROM exercises_employees 
GROUP BY department 
ORDER BY avg_salary DESC;

---HAVING Clause
---Question 8: Find departments where the total salary paid exceeds 100,000. 
---SQL Query: 
SELECT department, 
    SUM(salary) AS total_salary 
FROM exercises_employees 
GROUP BY department 
HAVING SUM(salary) > 100000;


---Combining GROUP BY, HAVING, and ORDER BY
---Question 9: List cities where more than one employee works, ordered by the number of employees in descending order.
---SQL Query: 
SELECT city, 
    COUNT(*) AS employee_count 
FROM exercises_employees 
GROUP BY city 
HAVING COUNT(*) > 1 
ORDER BY employee_count DESC;


---Combining Aggregate Functions
---Question 10: Find the department with the highest average salary. 
---SQL Query: 
SELECT department, 
    AVG(salary) AS avg_salary 
FROM exercises_employees 
GROUP BY department 
ORDER BY avg_salary DESC 
LIMIT 1;