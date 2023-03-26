/* Exercise 4: Create a function that takes as inputs a SalesOrderID, a Currency Code, and a date, and returns a table of all the SalesOrderDetail rows 
for that Sales Order including Quantity, ProductID, UnitPrice, and the unit price converted to the target currency based on the end of 
day rate for the date provided. Exchange rates can be found in the Sales.CurrencyRate table. */

USE AdventureWorks2008R2

GO

CREATE FUNCTION Sales.iud_getSalesOrderDetails(
  @SalesOrderID int,
  @CurrencyCode nchar(3),
  @CurrencyRateDate datetime
)
RETURNS TABLE

AS

RETURN 
WITH Products
AS (
     SELECT * 
	 FROM Sales.SalesOrderDetail AS sod
	 WHERE sod.SalesOrderDetailID = @SalesOrderID
	 )
SELECT pd.ProductId, 
       pd.OrderQty,
	   pd.UnitPrice*scr.EndOfDayRate AS 'Converted Price'
	   FROM
	   Products AS pd, Sales.CurrencyRate as scr
	   WHERE scr.ToCurrencyCode = @CurrencyCode
	   AND
	   scr.CurrencyRateDate = @CurrencyRateDate

GO


Select * from Sales.iud_getSalesOrderDetails(51493, 'CNY', '2011-06-01 00:00:00.000');
