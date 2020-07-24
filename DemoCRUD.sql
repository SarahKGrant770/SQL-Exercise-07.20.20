-- Read
SELECT * FROM products;

SELECT * FROM products
WHERE price < 100 AND CategoryID = 8
ORDER BY Price desc;

SELECT * FROM sales;
SELECT * FROM employees
WHERE EmployeeID = 33809;

-- Create
INSERT INTO products
(Name, Price, CategoryID, OnSale, StockLevel)
VALUES ('Computer Monitor', 160, 1, 1, 100);

-- Update
UPDATE products
SET Price = 1000
WHERE ProductID = 942;

-- DELETE
DELETE FROM products
WHERE ProductID = 942;

SELECT COUNT(ProductID) FROM products;
-- above gives numbers of rows of products
SELECT COUNT(ProductID) FROM products
WHERE categoryID = 8;

SELECT SUM(Price) FROM products;
-- above gives sum of all products
SELECT SUM(Price) FROM products
WHERE categoryID = 2;

SELECT AVG(Price) AS 'Average Price' FROM products;
-- above gives sum divided by count

-- Like
SELECT * FROM products
WHERE name LIKE '%man %';
-- the space after man means they will give up names with a space after man like: Mega Man 2

SELECT * FROM products
WHERE name LIKE '_e%';
-- above gives us 2nd character is "e" and anything after because of %

SELECT * FROM products
WHERE StockLevel BETWEEN 500 AND 1200
Order By price, StockLevel DESC;

SELECT SalesID, sales.ProductID, Quantity, products.ProductID, name, Price
From sales
INNER JOIN products
ON sales.ProductID = products.ProductID;