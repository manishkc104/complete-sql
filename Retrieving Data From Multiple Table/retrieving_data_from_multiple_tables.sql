USE sql_store;

-- 1. INNER Join

-- 1.1 Select order detail along with the detail of the customer
Select order_id, order_date, first_name, last_name, o.customer_id from orders o inner join customers c on o.customer_id = c.customer_id;

-- 1.2 Get the order along with the product and the product detail associated with the particular order
Select order_id, o.product_id,name, quantity, o.unit_price from order_items o inner join products p on o.product_id = p.product_id;

-- 2. Self Joins

-- 2.1 Select the name of the employee and their respective managers
USE sql_hr;
select e.employee_id, e.first_name, m.first_name AS manager from employees e inner join employees m on e.reports_to = m.employee_id;

-- 3 Joining Multiple Tables 
-- 3.1 Select the order detail along with the detail of the customer and the detail regarding the statuses of the order
Select o.order_id, o.order_date, c.first_name, c.last_name, os.name as status from orders o join customers c on o.customer_id = c.customer_id join order_statuses os on o.status = os.order_status_id;

-- 3.2 Select the payment information along with the detail of the client and the detail of the payment method
USE sql_invoicing;
Select p.payment_id,p.invoice_id,p.amount,c.name as client,pm.name as payment_info from payments p inner join clients c on p.client_id = c.client_id inner join payment_methods pm on p.payment_method = pm.payment_method_id;

-- 4 Outer Joins 
-- 4.1 Select all the customer with order detail, select the customers even if they dont have the order detail
SELECT c.customer_id,c.first_name,o.order_id from customers c Left outer join orders o on c.customer_id = o.customer_id order by c.customer_id;

-- 5 Self Outer Join
-- 5.1 Select all the employee with manager and also the employee without a manager 
USE sql_hr
SELECT e.employee_id,e.first_name,m.first_name as manager from employees e left join employees m on e.reports_to = m.employee_id;

-- 6 The Using Clause
-- 6.1 Select order detail along with the detail of the customer using the USING keyword
SELECT o.order_id,c.first_name from orders o join customers c USING (customer_id);

-- 6.2 Select the payment information along with the detail of the client and the detail of the payment method
USE sql_invoicing;
Select p.payment_id,p.invoice_id,p.amount,c.name as client,pm.name as payment_info from payments p inner join clients c USING(client_id) inner join payment_methods pm on p.payment_method = pm.payment_method_id;

-- 7 Natural Join 
-- 6.1 Select order detail along with the detail of the customer
SELECT o.order_id,c.first_name from orders o natural join customers c;

-- 8 Unions
-- 8.1 Write a query to add type to the customers according to their points if they have less than 2000 points they are of type bronze
-- if they have between 2000 to 3000 they are silver customers and if they have more than 3000 they are gold customers

select customer_id, first_name, points, "Bronze" as type from customers where points < 2000
UNION 
select customer_id, first_name, points, "Silver" as type from customers where points between 2000 and 3000
UNION
select customer_id, first_name, points, "Gold" as type from customers where points > 3000
order by first_name








