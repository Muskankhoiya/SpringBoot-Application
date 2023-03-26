/* Exercise 3: Show the most recent five orders that were purchased from account numbers that have spent more than $70,000 with 
AdventureWorks.*/


USE AdventureWorks2008R2
/*
Select TOP 5 soh.OrderDate, soh.TotalDue, c.AccountNumber, c.CustomerID 
FROM Sales.SalesOrderHeader soh 
INNER JOIN Sales.Customer c ON
soh.CustomerID = c.CustomerID WHERE
soh.TotalDue > 70000
ORDER BY soh.OrderDate DESC;
*/

SELECT top 5 SalesOrderID, AccountNumber, OrderDate, TotalDue, CustomerID, SubTotal
FROM Sales.SalesOrderHeader
WHERE AccountNumber
IN (SELECT AccountNumber
    FROM Sales.SalesOrderHeader
	GROUP BY AccountNumber
	HAVING SUM(SubTotal) > 70000)
ORDER BY OrderDate DESC;