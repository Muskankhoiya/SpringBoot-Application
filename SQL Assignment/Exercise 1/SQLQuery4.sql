/* 4.Display the Name and Color of the Product with the maximum weight.*/

USE AdventureWorks2008R2

SELECT Name, Color 
FROM 
Production.Product 
WHERE
Weight = (select MAX(Weight) From Production.Product);