/*Exercise 2: Write separate queries using a join, a subquery, a CTE, and then an EXISTS to list all AdventureWorks customers who have not placed 
an order*/

USE AdventureWorks2008R2

--Using Joins

SELECT c.CustomerID From Sales.SalesOrderHeader soh
RIGHT JOIN Sales.customer c ON soh.CustomerID= c.CustomerID
WHERE SalesOrderID is NULL;

--using subquery

SELECT CustomerID From Sales.Customer 
WHERE CustomerID NOT IN (
 Select CustomerID 
 FROM Sales.SalesOrderHeader
);

--using EXISTS

SELECT c.CustomerID
From Sales.Customer c
WHERE NOT EXISTS (
  Select soh.CustomerID  
  FROM Sales.SalesOrderHeader soh 
  WHERE c.CustomerID = soh.CustomerID
);

--using CTE

with_clause:
WITH CTE_CustomerWithoutOrders AS (
     SELECT CustomerID 
	 FROM Sales.Customer
)
SELECT * 
FROM CTE_CustomerWithoutOrders 
WHERE CustomerID NOT IN (
      SELECT CustomerID
	  From Sales.SalesOrderHeader
);
