--1 Display customer name which has made order with orderid '10248'
SELECT c.ContactName, o.OrderID
FROM Customers c
INNER JOIN Orders o 
ON c.CustomerID = o.CustomerID
WHERE OrderID = '10248'
-- alt, can consider where c.CustomerID = o.CustomerID and OrderID = '10248'

--2 Retrieve number of orders made by each customer
SELECT c.ContactName, COUNT(*) as NumberOrders
FROM Customers c
INNER JOIN Orders o 
ON c.CustomerID = o.CustomerID
GROUP BY c.ContactName

--3 List customer id with number of orders great than 10
SELECT CustomerID, Count(*) as NumberOrders
FROM Orders
GROUP BY CustomerID
HAVING Count(*)>10

--4 List number of orders, with the name of the customer, made by each customer
-- group by company name followed by custid
-- select xx from resultant join table
-- can't select c.ContactName, count WITHOUT the groupby bc no cannot be found.
SELECT c.ContactName, COUNT(*) as NumberOrders
FROM Customers c 
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY ContactName
