/* 3. Select a list of FirstName and LastName for employees where Title is one of Design Engineer, Tool Designer or Marketing 
Assistant.*/

Use AdventureWorks2008R2

SELECT P.FirstName, P.LastName 
FROM 
Person.Person P 
INNER JOIN
HumanResources.Employee H ON P.BusinessEntityID = H.BusinessEntityID
WHERE 
H.JobTitle IN('Design Engieer', 'Tool Designer', 'Marketing Assistant');