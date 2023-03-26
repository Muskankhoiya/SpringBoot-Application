/*2. Select both the FirstName and LastName of records from the Person table where the FirstName begins with the letter 'B'*/


USE AdventureWorks2008R2

SELECT FirstName, LastName 
FROM Person.Person 
WHERE FirstName LIKE 'B%';