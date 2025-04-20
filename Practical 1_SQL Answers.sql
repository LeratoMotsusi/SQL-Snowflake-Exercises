---Practical 1

---SELECT Statement
---Q1. Display all columns for all transactions. 
SELECT * FROM retail_sales;


---Q2. Display only the Transaction ID, Date, and Customer ID for all records.
SELECT Transaction_ID, 
       Date, 
       Customer_ID 
FROM retail_sales;


---SELECT DISTINCT Statement
---Q3. Display all the distinct product categories in the dataset. 
SELECT DISTINCT Product_Category 
FROM retail_sales;


---Q4. Display all the distinct gender values in the dataset.
SELECT DISTINCT Gender 
FROM retail_sales;


---WHERE Clause
---Q5. Display all transactions where the Age is greater than 40.
SELECT * FROM retail_sales
WHERE Age > 40;


---Q6. Display all transactions where the Price per Unit is between 100 and 500. 
SELECT * FROM retail_sales
WHERE Price_per_Unit BETWEEN 100 AND 500;


---Q7. Display all transactions where the Product Category is either 'Beauty' or 'Electronics'. 
SELECT * FROM retail_sales
WHERE Product_Category IN ('Beauty', 'Electronics');


---Q8. Display all transactions where the Product Category is not 'Clothing'. 
SELECT * FROM retail_sales
WHERE Product_Category <> 'Clothing';


---Q9. Display all transactions where the Quantity is greater than or equal to 3. 
SELECT * FROM retail_sales
WHERE Quantity >= 3;


---Aggregate Functions
---Q10. Count the total number of transactions. 
SELECT COUNT(*) AS Total_Transactions 
FROM retail_sales;


---Q11. Find the average Age of customers.
SELECT AVG(Age) AS Average_Age 
FROM retail_sales;


---Q12. Find the total quantity of products sold.
SELECT SUM(Quantity) AS Total_Quantity 
FROM retail_sales;

---Q13. Find the maximum Total Amount spent in a single transaction. 
SELECT MAX(Total_Amount) AS Max_Total_Amount 
FROM retail_sales;


---Q14. Find the minimum Price per Unit in the dataset. 
SELECT MIN(Price_per_Unit) AS Min_Price_per_Unit 
FROM retail_sales;


---Q15. Find the number of transactions per Product Category. 
SELECT Product_Category, COUNT(*) AS Transaction_Count 
FROM retail_sales
GROUP BY Product_Category;


---Q16. Find the total revenue (Total Amount) per gender. 
SELECT Gender, SUM(Total_Amount) AS Total_Revenue 
FROM retail_sales
GROUP BY Gender;


---Q17. Find the average Price per Unit per product category.
SELECT Product_Category, 
    AVG(Price_per_Unit) AS Average_Price 
FROM retail_sales
GROUP BY Product_Category;


---HAVING Clause
---Q18. Find the total revenue per product category where total revenue is greater than 10,000.
SELECT Product_Category, 
    SUM(Total_Amount) AS Total_Revenue 
FROM retail_sales
GROUP BY Product_Category
HAVING SUM(Total_Amount) > 10000;
    

---Q19. Find the average quantity per product category where the average is more than 2.
SELECT Product_Category, 
    AVG(Quantity) AS Average_Quantity 
FROM retail_sales
GROUP BY Product_Category
HAVING AVG(Quantity) > 2;


---CASE Statement
---Q20. Display a column called Spending_Level that shows 'High' if Total Amount > 1000, otherwise 'Low'.
SELECT 
    Transaction_ID, 
    Total_Amount,
    CASE 
        WHEN Total_Amount > 1000 THEN 'High'
        ELSE 'Low'
    END AS Spending_Level
FROM retail_sales;


---Q21. Display a new column called Age_Group that labels customers as:
---'Youth' if Age < 30
---'Adult' if Age is between 30 and 59
---'Senior' if Age >= 60
SELECT 
    Customer_ID,
    Age,
    CASE 
        WHEN Age < 30 THEN 'Youth'
        WHEN Age BETWEEN 30 AND 59 THEN 'Adult'
        ELSE 'Senior'
    END AS Age_Group
FROM retail_sales;









