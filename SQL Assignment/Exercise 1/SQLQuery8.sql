/* 8. Sales people receive various commission rates that belong to 1 of 4 bands. ( */

USE AdventureWorks2008R2

SELECT Sales.SalesPerson.BusinessEntityID,
CASE
    WHEN Sales.SalesPerson.CommissionPct < 0.00 THEN 'Band 0'
	WHEN Sales.SalesPerson.CommissionPct <= 0.01 THEN 'Band 1'
	WHEN Sales.SalesPerson.CommissionPct <= 0.015 THEN 'Band 2'
	ELSE 'Band 3'
END As 'Commision Band'
FROM Sales.SalesPerson;
