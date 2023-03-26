/* 6. Display the overall Average of the [CurrencyRate].[AverageRate] values for the exchange rate ‘USD’ to ‘GBP’ for the year 2005 
i.e. FromCurrencyCode = ‘USD’ and ToCurrencyCode = ‘GBP’. Note: The field [CurrencyRate].[AverageRate] is defined as 
'Average exchange rate for the day.' */

USE AdventureWorks2008R2

SELECT AVG(AverageRate) AS 'Average Exchange Rate' 
FROM Sales.CurrencyRate
WHERE FromCurrencyCode = 'USD'
AND ToCurrencyCode = 'GBP'
AND DATEPART(YEAR, CurrencyRateDate) = 2005;
