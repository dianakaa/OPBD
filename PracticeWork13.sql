--1
SELECT * 
FROM Book
WHERE Genre = 'ןנמחא' AND Price BETWEEN 500 AND 1000;

--2
SELECT Surname, Name, Phone
FROM Customer
WHERE Phone IS NOT NULL;

--3
SELECT * 
FROM Book
WHERE Title LIKE '%Ìונעגûו%';

--4
SELECT Title
FROM Book
WHERE Title LIKE 'Ì%';

--5
SELECT Country, COUNT(Surname) as NumberOfAuthors
FROM Author
GROUP BY Country
HAVING COUNT(Surname) > 1;

--6
SELECT OrderId, COUNT(BookId) as NumberOfBooks
FROM OrderList
GROUP BY OrderId
HAVING SUM(BookId) > 5;

--7
SELECT DISTINCT Title, Authorid, COUNT(Title) as NumberOfBooks
FROM Book
GROUP BY Authorid, Title
HAVING COUNT(Title) > 1;