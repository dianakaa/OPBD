--1
SELECT * 
FROM Book;
--2
SELECT Surname+ ' '+ Name AS FullName
FROM Author;
--3
SELECT DISTINCT Country	
FROM Author
ORDER BY Country;
--4
SELECT BookId, Title, Price * 0.95 AS Price
FROM Book
ORDER BY 
Price DESC,
Title ASC;
--5
SELECT Authorid, Title, COUNT(*) as NumberOfBooks
FROM Book
GROUP BY Authorid, Title 
--6
SELECT COUNT(*) AS NumberOfBooks,
       MIN(Price) AS MinPrice,
       MAX(Price) AS MaxPrice,
       AVG(Price) AS AveragePrice 
FROM Book
--7
SELECT Genre,
       MAX(Price) AS MaxPrice,
       MIN(Price) AS MinPrice,
       COUNT(*) AS BooksCount
FROM Book
GROUP BY Genre