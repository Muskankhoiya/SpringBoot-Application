/* 7. Display the FirstName and LastName of records from the Person table where FirstName contains the letters ‘ss’. Display an 
additional column with sequential numbers for each row returned beginning at integer 1.*/

USE AdventureWorks2008R2

SELECT 
(SELECT count(*) FROM Person.Person P2
WHERE P2.FirstName LIKE '%ss%' 
AND P2.BusinessEntityID <= P1.BusinessEntityID) AS
RowNum, FirstName, LastName FROM Person.Person P1
WHERE FirstName LIKE '%ss%' ORDER BY FirstName, LastName;
