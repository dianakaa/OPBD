--1
SELECT Book.BookId, Book.Title, Author.Surname, Author.Name, Book.Price
FROM Book
JOIN Author ON Book.AuthorId = Author.Authorid

--2
SELECT [Order].OrderId, Book.BookId, Book.Title, Author.Surname,Author.Name, Book.Price, OrderList.Amount,(Book.Price * OrderList.Amount) AS Price
FROM OrderList
JOIN [Order] ON OrderList.OrderId = [Order].OrderId
JOIN Book ON OrderList.BookId = Book.BookId
JOIN Author ON Book.AuthorId = Author.Authorid

--3
SELECT [Order].OrderId, [Order].OrderDateTime,
SUM(Book.Price * OrderList.Amount) AS OrderPrice
FROM [Order]
JOIN OrderList ON [Order].OrderId = OrderList.OrderId
JOIN Book ON OrderList.BookId = Book.BookId
GROUP BY [Order].OrderId, [Order].OrderDateTime
ORDER BY [Order].OrderDateTime DESC

--4 
SELECT Customer.CustomerId, Customer.Login, COUNT([Order].OrderId) AS Amount
FROM Customer
LEFT JOIN [Order] ON Customer.CustomerId = [Order].CustomerId
GROUP BY Customer.CustomerId, Customer.Login

--5
SELECT *
FROM [Order]
WHERE OrderId NOT IN (SELECT OrderId FROM OrderList)

--6
SELECT *
FROM Customer
WHERE CustomerId IN (SELECT CustomerId FROM [Order])

--7
SELECT Surname, Name, 'Author' AS Role
FROM Author
UNION
SELECT Surname, Name, 'Customer'
FROM Customer
ORDER BY Surname, Name