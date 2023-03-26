/* Exercise 5: Write a Procedure supplying name information from the Person.Person table and accepting a filter for the first name. Alter the above 
Store Procedure to supply Default Values if user does not enter any value.*/

USE AdventureWorks2008R2

GO

CREATE PROCEDURE Person.pro_getNameByType
      @Type nchar(2) = 'EM'
AS
SELECT FirstName From Person.Person
WHERE  PersonType =@Type

GO

--EXEC Person.pro_getNameByType @Type = 'SC'