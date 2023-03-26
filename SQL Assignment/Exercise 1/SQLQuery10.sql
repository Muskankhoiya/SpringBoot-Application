/* 10. Display the ProductId of the product with the largest stock level.*/

USE AdventureWorks2008R2

SELECT TOP 1 Production.Product.ProductID
FROM Production.Product
ORDER BY dbo.ufnGetStock(ProductID) DESC;