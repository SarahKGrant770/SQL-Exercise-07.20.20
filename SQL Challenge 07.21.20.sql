
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

-- find all Geek Squad employees who don't have a middle initial --

-- find all products from the products table whose stock level is in the range of 500 to 1200. 
-- Order by Price from least to greatest.

SELECT Name, StockLevel FROM products
WHERE StockLevel BETWEEN 500 to 1200
Order By price;

-- ?? using the products table and the categories table, return the product name and the category name
SELECT p.name AS 'Product Name', c.name AS 'Category Name'
FROM products as p
INNER JOIN categories as c
ON products.CategoryID = categories.CategoryID AND categories.name = 'computer';

-- find all product names, product prices, and products ratings that have a rating of 5
SELECT p.name AS 'Product Name', p.Price AS 'Price', r.Rating AS Rating
FROM products AS p
Inner Join reviews as r
ON p.ProductID = r.ProductID AND r.Rating = 5;

-- find the employee with the most total quantity sold.  use the sum() function and group by
SELECT Sum(s.Quantity), e.FirstName, e.LastName
FROM sales AS s, employees AS E
WHERE e.EmployeeID = s.EmployeeID
GROUP BY s.EmployeeID
ORDER By Sum(s.Quantity) DESC LIMIT 2;

-- find the name of the department, and the name of the category for Appliances and Games
SELECT d.name AS 'Dept Name', c.name AS 'Category Name'
FROM departments AS d
INNER JOIN categories AS c
ON d.DepartmentID = c.DepartmentID AND c.name = 'Appliances' or c.name = 'games';

-- find the product name, total # sold, and total price sold, for Eagles: Hotel California --You may need to use SUM()
SELECT p.name AS 'Product Name', Sum(s.quantity) AS 'Total Sold', (p.Price * Sum(s.quantity)) AS 'Total Price Sold'
FROM products as p
INNER JOIN sales as s
ON p.ProductID = s.ProductID AND p.Name = 'Eagles: Hotel California';

-- find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!)
SELECT p.name AS 'Product Name', r.reviewer, r.rating , r.comment
FROM reviews AS r
INNER JOIN products as p
ON p.ProductID = r.ProductID AND p.name = 'Visio TV'
order by r. rating Limit 1;

/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
