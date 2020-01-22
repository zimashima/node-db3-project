-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p.productName, c.CategoryName
FROM Product as p
JOIN Category as c
ON p.CategoryId = c.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.Id, s.CompanyName
FROM "Order" as o
JOIN Shipper as s
ON o.ShipVia = s.Id
WHERE o.OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.productName, od.quantity
FROM Product as p
JOIN OrderDetail as od
ON od.productId = p.Id
WHERE od.OrderId = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.Id, c.CompanyName, e.LastName
FROM "order" as o
JOIN customer as c
JOIN employee as e
ON o.customerId = c.Id and o.employeeId = e.id