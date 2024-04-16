SELECT Subtotal, Taxamt FROM SalesLT.SalesOrderHeader;


SELECT SubTotal, TaxAmt, SubTotal / TaxAmt as "SubTotal/TaxAmt" 
FROM SalesLT.SalesOrderHeader
WHERE TaxAmt > 0;


SELECT SubTotal, TaxAmt, SubTotal - TaxAmt as "SubTotal-TaxAmt" 
FROM SalesLT.SalesOrderHeader
WHERE SubTotal - TaxAmt > 10000;


SELECT FirstName, MiddleName, LastName, 
        FirstName + MiddleName + LastName as FullName 
FROM SalesLT.Customer;
-- How to deal with NULL check once, Go to line 60 'CONCAT'


SELECT Top 50 FirstName + ' ' + LastName AS FullName From SalesLT.Customer
WHERE Title = 'Mr.' AND MiddleName is NULL;


SELECT Name, ProductNumber, Color, StandardCost , ListPrice, 
        ((ListPrice - StandardCost)/(StandardCost)) as Profit
From SalesLT.Product
WHERE Color IN ('Black', 'White')
    AND ((ListPrice - StandardCost)/(StandardCost)) < 3;



SELECT Name, ProductNumber, Color, StandardCost , ListPrice, 
        ((ListPrice - StandardCost)/(StandardCost)) as Profit
From SalesLT.Product
WHERE Color IN ('Black', 'White')
    AND ((ListPrice - StandardCost)/(StandardCost)) BETWEEN 0 AND 1;


Select * From SalesLT.Address
WHERE City LIKE 'A_____';


SELECT City, StateProvince, PostalCode
FROM SalesLT.Address
ORDER BY City;


SELECT FirstName, LastName, 
        FirstName + '' + LastName as FullName 
FROM SalesLT.Customer
WHERE MiddleName is NULL
ORDER BY FirstName ASC, LastName DESC;


SELECT Name, ProductNumber, SUM(StandardCost), SUM(ListPrice)
FROM SalesLT.Product
GROUP BY Name, ProductNumber;


SELECT FirstName, MiddleName, LastName, CONCAT(FirstName, ' ', MiddleName,' ', LastName) as FullName
FROM SalesLT.Customer
WHERE LEN(FirstName) > 3 AND MiddleName is not NULL
ORDER BY FirstName ASC, LastName DESC;


SELECT FirstName, left(FirstName,2) as FullName
FROM SalesLT.Customer
WHERE LEN(FirstName) > 3 AND MiddleName is not NULL;


SELECT FirstName, RIGHT(FirstName,2) as FullName
FROM SalesLT.Customer
WHERE LEN(FirstName) > 3 AND MiddleName is not NULL;


SELECT FirstName, SUBSTRING(FirstName,1,3) as FullName
FROM SalesLT.Customer
WHERE LEN(FirstName) > 3 AND MiddleName is not NULL;


SELECT top 10 Name, ProductNumber, SUM(ListPrice)
FROM SalesLT.Product
WHERE SUM(ListPrice) > 100;