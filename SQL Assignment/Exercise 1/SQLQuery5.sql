/* 5. Display Description and MaxQty fields from the SpecialOffer table. Some of the MaxQty values are NULL, in this case display 
the value 0.00 instead. */

USE AdventureWorks2008R2

SELECT sales.SpecialOffer.Description, 
COALESCE(Sales.SpecialOffer.MaxQty, 0.00) AS MaxQty 
FROM
Sales.SpecialOffer;