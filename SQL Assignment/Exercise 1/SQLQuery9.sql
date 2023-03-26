/* 9. Display the managerial hierarchy from Ruth Ellerbrock (person type – EM) up to CEO Ken Sanchez.*/

USE AdventureWorks2008R2
DECLARE @ID int;

SELECT @ID = BusinessEntityID
FROM Person.Person
WHERE FirstName = 'Ruth'
AND LastName = 'Ellerbrock'
AND PersonType = 'EM';

EXEC dbo.uspGetEmployeeManagers @BusinessEntityID = @ID;