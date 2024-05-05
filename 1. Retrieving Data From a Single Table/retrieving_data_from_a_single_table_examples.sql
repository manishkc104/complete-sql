USE sql_store;

-- 1. Select Statement

-- 1.1 Retrieve all the customer from the customer table
SELECT * FROM customers;

-- 1.2 Select the first name, last name and the points of all the customers in the store.
SELECT 
    first_name, last_name, points
FROM
    customers;
    
-- 1.3 Select the state of all customers, without duplicates.
SELECT DISTINCT state FROM customers;

-- 1.4 Select name,unit price and a new price (which is 1.1 times greater than the unit price) from the customer table
SELECT name, unit_price, unit_price * 1.1 AS new_price FROM products;

-- 2. Where Clause

-- 2.1 Select customers whose points is greater than 3000
SELECT * FROM customers WHERE points > 3000;

-- 2.2 Select customers located in the state of Virginia
SELECT * FROM customers WHERE state = 'VA';

-- 2.2 Select customers who are not located in the state of Virginia
SELECT * FROM customers WHERE state <> 'VA';

-- 3. AND, OR and NOT operators 

-- 3.1 Select customer who are born after 1990 or have more than 1000 points 
SELECT * FROM customers where birth_Date > '1990-01-01' OR points > 1000;

-- 3.2 From the order_items table, get the items for order number 6 where the total price is greater than 30 
SELECT * FROM order_items where order_id = 6 AND (unit_price * quantity) > 30;

-- 4 IN Operator

-- 4.1 Select the customers that are located in Florida, Virgina or Florida 
SELECT * FROM customers WHERE state IN ('VA','FL','GA');

-- 4.2 Select the customers that are not located in Florida, Virgina or Florida 
SELECT * FROM customers WHERE state NOT IN ('VA','FL','GA');

-- 4.3 Select products whose quatity in stock is equal to 49,38,72
SELECT * FROM products where quantity_in_stock IN (49,38,72);

-- 5 Between Operator

-- 5.1 Select customers who has more than a 1000 points and less than 3000 points
SELECT * FROM customers where points BETWEEN 1000 AND 3000;

-- 5.2 Select customers that are born between January 1990 and January 2000
SELECT * FROM customers where birth_date BETWEEN '1990-01-01' AND '2000-01-01';

-- 6 Like Operator

-- 6.1 Select all the customers whose last name start with "b"
SELECT * FROM customers WHERE last_name LIKE 'b%';

-- 6.2 Select all customers who has letter "b" in their last name
SELECT * FROM customers WHERE last_name LIKE '%b%';

-- 6.3 Select all the customers whose last name ends with "y"
SELECT * FROM customers WHERE last_name LIKE '%y';

-- 6.4 Select all the customers whose address contain TRAIL or AVENUE
SELECT * FROM customers WHERE address LIKE '%trail%' or address LIKE '%avenue%';

-- 6.5 Select all the customers whose phone ends with 9
SELECT * FROM customers WHERE phone LIKE '%9';

-- 7 IS NULL Operator 

-- 7.1 Select all the customers who doesnt have a phone number
SELECT * FROM customers WHERE phone IS NULL;

-- 7.2 Select all the orders that are not shipped
SELECT * FROM orders where shipped_date IS NULL;

-- 8 Order By Operator

-- 8.1 Select customer by their first name
SELECT * FROM customers ORDER BY first_name;

-- 8.2  Select order item whose order id is 2 and sort the items according to their total price 
SELECT *, quantity * unit_price AS total_price FROM order_items WHERE order_id = 2 ORDER BY quantity * unit_price;

-- 9 Limit Clause 

-- 9.1 Select the first 3 customers
SELECT * FROM customers LIMIT 3;

-- 9.2 Select the top 3 loyal customers (ie cusomters who have the most points)
SELECT * FROM customers order by points DESC limit 3;



