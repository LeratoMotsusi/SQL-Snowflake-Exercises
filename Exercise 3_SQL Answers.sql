---Exercise 3

---Question 1: Retrieve all employees and their assigned projects using an INNER JOIN.
---Return: EmployeeID, FirstName, LastName, Department, Salary, ProjectID, ProjectName, Budget, Status.
SELECT A.EmployeeID,
       A.FirstName,
       A.LastName,
       A.Department,
       A.Salary,
       B.ProjectID,
       B.ProjectName,
       B.Budget,
       B.Status
FROM exercise3_employees AS A
INNER JOIN exercise3_projects AS B
ON A.EmployeeID = B.EmployeeID;


---Question 2: Retrieve all employees and their assigned projects, including employees who have no projects using a LEFT JOIN.
---Return: EmployeeID, FirstName, LastName, Department, Salary, ProjectID, ProjectName, Budget, Status.
SELECT A.EmployeeID,
       A.FirstName,
       A.LastName,
       A.Department,
       A.Salary,
       B.ProjectID,
       B.ProjectName,
       B.Budget,
       B.Status
FROM exercise3_employees AS A
LEFT JOIN exercise3_projects AS B
ON A.EmployeeID = B.EmployeeID;


---Question 3: Retrieve all projects and their assigned employees, including projects that have no employees using a RIGHT JOIN.
---Return: ProjectID, ProjectName, Budget, Status, EmployeeID, FirstName, LastName, Department, Salary.
SELECT A.ProjectID,
       A.ProjectName,
       A.Budget,
       A.Status,
       B.EmployeeID,
       B.FirstName,
       B.LastName,
       B.Department,
       B.Salary
FROM exercise3_projects AS A
RIGHT JOIN exercise3_employees AS B
ON A.EmployeeID = B.EmployeeID;



---Question 4: Retrieve all employees and projects, including those without a match in either table using a FULL OUTER JOIN.
---Return: EmployeeID, FirstName, LastName, Department, Salary, ProjectID, ProjectName, Budget, Status.
SELECT A.EmployeeID,
       A.FirstName,
       A.LastName,
       A.Department,
       A.Salary,
       B.ProjectID,
       B.ProjectName,
       B.Budget,
       B.Status
FROM exercise3_employees AS A
FULL OUTER JOIN exercise3_projects AS B
ON A.EmployeeID = B.EmployeeID;


---Question 7: Filtering Statements
---Retrieve employees who earn more than 70,000.
---Return: EmployeeID, FirstName, LastName, Department, Salary
SELECT EmployeeID,
       FirstName,
       LastName,
       Department,
       Salary
FROM exercise3_employees
WHERE salary>70000;


---Question 8: Filtering Statements
---Retrieve employees working in either IT or Finance departments
---Return: EmployeeID, FirstName, LastName, Department, Salary.
SELECT EmployeeID,
       FirstName,
       LastName,
       Department,
       Salary
FROM exercise3_employees
WHERE Department='IT' OR Department='Finance';

---Question 9: Filtering Statements
---Retrieve projects that are not yet completed.
---Return: ProjectID, ProjectName, Budget, Status.
SELECT ProjectID,
       ProjectName,
       Budget,
       Status
FROM exercise3_projects_
WHERE NOT Status='Completed';



---Question 10: Filtering Statements
---Retrieve projects that have a budget greater than 70,000 and are not completed.
---Return: ProjectID, ProjectName, Budget, Status.
SELECT ProjectID,
       ProjectName,
       Budget,
       Status
FROM exercise3_projects_
WHERE Budget>70000 AND Status!='Completed';


---Question 11: Filtering Statements
---Retrieve employees from New York OR Toronto, ordered by salary in descending order.
---Return: EmployeeID, FirstName, LastName, Department, Salary, City.
SELECT EmployeeID,
       FirstName,
       LastName,
       Department,
       Salary,
       City
FROM exercise3_employees
WHERE City='New York' OR City='Toronto'
ORDER BY Salary DESC;


---Question 12: Filtering Statements
---Retrieve the top 3 highest-paid employees
---Return: EmployeeID, FirstName, LastName, Department, Salary
SELECT EmployeeID,
       FirstName,
       LastName,
       Department,
       Salary
FROM exercise3_employees
ORDER BY Salary DESC
LIMIT 3;


---Question 13: Aggregate Functions with GROUP BY & HAVING
---Find the total salary per department, sorted in descending order.
---Return: Department, TotalSalary (Rename SUM(Salary) as TotalSalary).
SELECT Department,
    SUM(Salary) AS TotalSalary
FROM exercise3_employees
GROUP BY Department
ORDER BY TotalSalary DESC;


---Question 14: Aggregate Functions with GROUP BY & HAVING
---Find the average salary per city, but only include cities where the average salary is greater than 65,000
---Return: City, AverageSalary (Rename AVG(Salary) as AverageSalary).
SELECT City,
    AVG(Salary) AS AverageSalary
FROM exercise3_employees
GROUP BY CITY
HAVING AverageSalary>65000;


---Question 15: Aggregate Functions with GROUP BY & HAVING
---Count the number of employees per department, including only departments with more than 1 employee.
---Return: Department, EmployeeCount (Rename COUNT(EmployeeID) as EmployeeCount).
SELECT Department,
    COUNT(EmployeeID) AS EmployeeCount
FROM exercise3_employees
GROUP BY Department
HAVING COUNT(EmployeeID)>1;


---Question 16: Aggregate Functions with GROUP BY & HAVING
---Retrieve the number of projects per status, but only include statuses with at least 2 projects.
---Return: Status, ProjectCount (Rename COUNT(ProjectID) as ProjectCount).
SELECT Status,
    COUNT(ProjectID) AS ProjectCount
FROM exercise3_projects_
GROUP BY Status
HAVING COUNT(ProjectID)>2;



---Question 17: Aggregate Functions with GROUP BY & HAVING
---Retrieve the total project budget per employee, but only for employees who are managing projects worth more than 150,000.
---Return: EmployeeID, FirstName, LastName, TotalProjectBudget (Rename SUM(Budget) as TotalProjectBudget).
SELECT 
    EmployeeID,
    SUM(Budget) AS TotalProjectBudget,
FROM exercise3_projects_
GROUP BY EmployeeID
HAVING SUM(Budget) > 150000;










