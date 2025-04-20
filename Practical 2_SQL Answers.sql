---Practical 2

---INNER JOIN: Orders with Customer and Product Names
---Question 1: List all orders along with the customer name and product name.

SELECT
    A.OrderID,
    A.Orderdate,
    B.Customername,
    C.ProductName,
    A.Quantity
FROM orders_large AS A
INNER JOIN customers_large AS B ON A.customerid=B.customerid
INNER JOIN products_large AS C ON A.productid=C.productid;


---Question 2: INNER JOIN: Customers Who Placed Orders
---Which customers have placed at least one order?
SELECT
    B.CustomerID,
    B.CustomerName,
    b.Country,
    A.OrderID,
    A.OrderDate
FROM orders_large AS A
INNER JOIN customers_large AS B
ON A.customerid=B.customerid
WHERE A.Quantity>=1;


---Question 3: LEFT JOIN: All Customers and Their Orders
---List all customers and any orders they might have placed. Include customers who have not placed any orders.
SELECT
    A.CustomerID,
    A.CustomerName,
    A.Country,
    B.OrderID,
    B.OrderDate,
    B.ProductID,
    B.Quantity
FROM customers_large AS A
LEFT JOIN orders_large AS B
ON A.CustomerID=B.CustomerID;


---Question 4: LEFT JOIN: Product Order Count
---List all products and how many times each was ordered (if any).
SELECT
    A.ProductID,
    A.ProductName,
        COUNT(DISTINCT OrderID) AS TotalOrders
FROM products_large AS A
LEFT JOIN orders_large AS B
ON A.ProductID=B.ProductID
GROUP BY A.ProductID,A.ProductName
ORDER BY A.ProductID ASC;


---Question 5: RIGHT JOIN: Orders with Product Info (Include Products Not Ordered)
---Find all orders along with product details, including any products that might not have been ordered.
SELECT
    A.OrderID,
    A.OrderDate,
    B.ProductID,
    B.ProductName,
    B.Price,
    A.Quantity
FROM orders_large AS A
RIGHT JOIN products_large AS B
ON A.ProductID=B.ProductID;


---Question 6
---RIGHT JOIN: Customer Info with Orders (Include All Customers)
---Which customers have made orders, and include customers even if they have never placed an order.
SELECT
    A.CustomerID,
    B.CustomerName,
    B.Country,
    A.OrderID,
    A.OrderDate,
    A.ProductID,
    A.Quantity
FROM orders_large AS A
RIGHT JOIN customers_large AS B
ON A.CustomerID=B.CustomerID;


---Question 7:FULL OUTER JOIN: All Customers and All Orders
---List all customers and orders, showing NULLs where customers have not ordered or where orders have no customer info.
SELECT
    A.CustomerID,
    A.CustomerName,
    A.Country,
    B.OrderID,
    B.OrderDate,
    B.ProductID,
    B.Quantity
FROM customers_large AS A
FULL OUTER JOIN orders_large AS B
ON A.CustomerID=B.CustomerID;


---Question 8: FULL OUTER JOIN: All Products and Orders
---List all products and orders, showing NULLs where products were never ordered or orders are missing product info.
SELECT
    A.ProductID,
    A.ProductName,
    A.Price,
    B.OrderID,
    B.OrderDate,
    B.CustomerID,
    B.Quantity
FROM products_large AS A
FULL OUTER JOIN orders_large AS B
ON A.ProductID=B.ProductID;


