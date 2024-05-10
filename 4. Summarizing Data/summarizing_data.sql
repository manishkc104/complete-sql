-- 1. Aggregate function 
-- 1.1 Select the maximum and minimum invoices total
SELECT Max(invoice_total) as highest,Min(invoice_total) as lowest from invoices;

-- 1.2 Select the average invoice total 
SELECT AVG(invoice_total) as average from invoices;

-- 1.3 Calucate the sum of invoices total 
SELECT SUM(invoice_total) as sum from invoices;

-- 2. Group By
-- 2.1 Calculate the invoice total according to the clients 
SELECT client_id, SUM(invoice_total) as total_sales from invoices group by client_id;

-- 2.2 Calculate the invoice total according to the state and city 
SELECT state,city, SUM(invoice_total) as total_sales from invoices inner join clients using (client_id) group by state, city order by total_sales desc;

-- 2.3 Calculate the total payment made by the payment_method
SELECT 
    p.date, pm.name as payment_method, SUM(p.amount) AS total_payments
FROM
    payments p
        INNER JOIN
    payment_methods pm ON p.payment_method = pm.payment_method_id
GROUP BY date , payment_method;

-- 3. Having Clause (where clause to filter the data before we group the data and use having clause after we group the data)

-- 3.1 Show the client who have crossed the total_sales of more than 500 
SELECT client_id, sum(invoice_total) as total_sales from invoices group by client_id having total_sales > 500;

-- 3.2 Get the customers located in virginia who have spent more than $100
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM
    customers c
        JOIN
    orders o USING (customer_id)
        JOIN
    order_items oi USING (order_id)
WHERE
    state = 'VA'
GROUP BY c.customer_id , c.first_name , c.last_name
HAVING total_sales > 100;

-- 4 The Rollup operator
select pm.name as payment_method, sum(p.amount) as total_sales from payments p inner join payment_methods pm on p.payment_method = pm.payment_method_id group by pm.name with rollup;