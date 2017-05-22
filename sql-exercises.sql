--1.

SELECT * FROM Categories

--2.

SELECT CustomerID, ContactName, CompanyName 
FROM Customers 
WHERE City = 'London'

--3.

SELECT * 
FROM Suppliers
WHERE (ContactTitle = 'Sales Representative' or ContactTitle = 'Marketing Manager') 
AND Fax != 'NULL'

--4.

SELECT CustomerID FROM Orders 
WHERE RequiredDate > 'Jan 1, 1997' AND RequiredDate < 'Jan 1, 1998' AND freight < 100

--5.

SELECT CompanyName, ContactName 
FROM Customers 
WHERE (ContactTitle = 'Owner') AND (Country = 'Mexico' OR Country = 'Sweden' OR Country = 'Germany')

--6.

SELECT COUNT(Discontinued) FROM Products

--7.

SELECT CategoryName, Description 
FROM Categories 
WHERE CategoryName LIKE 'Co%'

--8.

SELECT CompanyName, City, PostalCode 
FROM Suppliers 
WHERE Address LIKE '%rue%' 
ORDER BY CompanyName

--9.

SELECT ProductID, Quantity 
FROM [Order Details] 
WHERE quantity != 0;

--10.

SELECT Orders.ShipAddress, Customers.ContactName 
FROM Orders 
INNER JOIN Customers 
ON Orders.CustomerID=Customers.CustomerID 
WHERE ShipVia = 1;

--11.

SELECT CompanyName, ContactTitle, ContactTitle, Region 
FROM Suppliers 
WHERE Region != 'Null';

--12.

SELECT ProductName 
FROM Products 
WHERE CategoryID = 2;

--13.

SELECT contactname 
FROM Customers 
WHERE CustomerID 
NOT IN (SELECT CustomerID FROM Orders);

--14.

INSERT INTO Shippers (CompanyName) 
VALUES ('Amazon');

--15.

UPDATE Shippers
SET CompanyName = 'Amazon Prime' 
WHERE ShipperID = 4;

--16.

SELECT Shippers.CompanyName, ROUND(Orders.Freight, -1) 
FROM Shippers, Orders;

--17.

SELECT LastName + ', ' + FirstName FROM Employees AS DisplayName

--18.

INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle, City)
VALUES ('JASON', 'Jedi Robe Outlet', 'Jason V', 'Jedi', 'Coruscant')
INSERT INTO Products (ProductName)
VALUES ('Grandmas Boysenberry Spread')
INSERT INTO Orders (ShipAddress, ShipRegion)
VALUES ('123 Obi Won Lane', 'Outer Rim')

--19.

DELETE FROM Customers
WHERE CustomerID = 'JASON'
DELETE FROM Customers
WHERE CompanyName = 'Jedi Robe Outlet'
DELETE FROM Customers
WHERE ContactName = 'Jason V'
DELETE FROM Customers
WHERE ContactTitle = 'Jedi'
DELETE FROM Customers
WHERE City= 'Coruscant'
DELETE FROM Products
WHERE ProductName = 'Grandmas Boysenberry Spread'
DELETE FROM Orders
WHERE ShipAddress = '123 Obi Won Lane'
DELETE FROM Orders
WHERE ShipRegion = 'Outer Rim'

--20.

SELECT ProductName FROM Products WHERE UnitsInStock > 100 
