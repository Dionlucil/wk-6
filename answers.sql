
/* Use the salesdb database */

USE salesdb;

/* Question 1 🧑‍💼
   Retrieve firstName, lastName, email, and officeCode of all employees
   using an INNER JOIN with the offices table on officeCode.
*/
SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    o.officeCode
FROM 
    employees e
INNER JOIN 
    offices o 
    ON e.officeCode = o.officeCode;


/* Question 2 🛍️
   Retrieve productName, productVendor, and productLine
   from products table using a LEFT JOIN with productlines table.
   This ensures all products are listed even if their product line is missing.
*/
SELECT 
    p.productName, 
    p.productVendor, 
    pl.productLine
FROM 
    products p
LEFT JOIN 
    productlines pl 
    ON p.productLine = pl.productLine;


/* Question 3 📦
   Retrieve orderDate, shippedDate, status, and customerNumber
   for the first 10 orders using a RIGHT JOIN of customers with orders.
   This ensures all orders are listed even if customer info is missing.
*/
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    c.customerNumber
FROM 
    customers c
RIGHT JOIN 
    orders o 
    ON c.customerNumber = o.customerNumber
LIMIT 10;
