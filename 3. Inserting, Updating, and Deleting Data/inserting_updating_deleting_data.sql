-- 1. Inserting a row

-- 1.1 Insert a row into the customer table
INSERT INTO customers 
VALUES(DEFAULT, 'John','Smith', '1990-01-01',NULL, 'address', 'city', 'CA', '100');

-- 2. Insert into multiple row 

-- 2.1 Insert multiple products in the product table 
INSERT INTO products (name,quantity_in_stock, unit_price) VALUES ('Product1', 10, 1.95),('Product2', 10, 1.95),('Product3', 10, 1.95);

-- 3. Inserting Hierarchial Rows

-- 3.1 Insert data  into the order table and to order item table 
INSERT INTO orders (customer_id,order_DATE,status) VALUES (1, '2019-01-02',1);
INSERT INTO order_items
VALUES (LAST_INSERT_ID(),1,1,2.95),(LAST_INSERT_ID(),2,1,2.95);

-- 4. Creating a Copy of the table

-- 4.1 Create a new table orders_archived and copy the data of orders table to orders_archieved where data is less the 2019
INSERT INTO orders_archived SELECT * from orders where order_date < '2019-01-01';

-- 5. Updating a Single Row 

-- 5.1 Update the invoice number 1 in the invoices table by addding a payment date
UPDATE invoices SET payment_total = 10, payment_date = '2019-03-01' WHERE invoice_id = 1;

-- 6. Updating a multiple row

-- 6.1 Write a SQL statement to given any customers born before 1990 50 extra points 
UPDATE customers SET points  = points + 50 WHERE birth_date < '1990-01-01';

-- 7 Using Subqueries in updates 

-- 7.1 Update invoices where the client name is Myworls
UPDATE invoices SET payment_total = invoice_total * 0.5, payment_date = due_date WHERE client_id = (Select client_id from clients where name = 'Myworks');

-- 7.2 Update invoices for all clients located in Newyork and Calfornia 
UPDATE invoices SET payment_total = invoice_total * 0.5, payment_date = due_date WHERE client_id IN (Select client_id from clients where state IN ('CA', 'NY'));

-- 8 Delete data from tables

-- 8.1 Delete data from invoices 
DELETE FROM invoices where invoice_id = 1

-- 9 Restoring Databases





