/* Exercise 6: Write a trigger for the Product table to ensure the list price can never be raised more than 15 Percent in a single change. Modify the 
above trigger to execute its check code only if the ListPrice column is updated */

USE AdventureWorks2008R2

GO
CREATE TRIGGER CheckPriceRisee
ON Production.Product
AFTER UPDATE
AS 
BEGIN 
     SET NOCOUNT ON;

	 IF UPDATE(ListPrice)
	       BEGIN
		         UPDATE Production.Product
				 SET ListPrice = IIF((ins.ListPrice - del.ListPrice) > del.ListPrice*0.15,
				                       del.ListPrice, ins.ListPrice)
			     FROM deleted AS del, Production.Product As prd
				 INNER JOIN inserted AS ins ON ins.ProductID = prd.ProductID
		   END
END
GO

/*

UPDATE Production.Product
SET ListPrice = 1800
WHERE ProductID = 680
*/