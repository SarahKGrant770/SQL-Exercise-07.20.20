
-- find all products--
SELECT * FROM products

-- find all products that cost $1400
SELECT * FROM products
WHERE price = 1400; 

-- find all products that cost 11.99 or 13.99
SELECT * FROM products
WHERE price = 11.99 or price = 13.99; 

-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM products
WHERE NOT price = 11.99; 

-- find  all products and sort them by price from greatest to least
SELECT * FROM products
ORDER BY price DESC;

-- find all employees who don't have a middle initial
SELECT LastName, FirstName FROM employees
WHERE MiddleInitial is NULL OR MiddleInitial = '';

-- find distinct product prices
SELECT DISTINCT price
FROM products;

-- find all employees whose first name starts with the letter ‘j’
SELECT LastName, FirstName FROM employees
WHERE FirstName LIKE 'j%';

-- find all Macbooks --
SELECT * FROM products
WHERE Name LIKE 'MacBook%'; 

-- find all products that are on sale
SELECT * FROM products
WHERE OnSale = 1; 

-- find the average price of all products --
SELECT AVG(Price)
FROM products;
