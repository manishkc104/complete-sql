-- 1. Sub Queries products
-- 1.1 Find products that are more expensive than lettuce
SELECT 
    *
FROM
    products
WHERE
    unit_price > (SELECT 
            unit_price
        FROM
            products
        WHERE
            product_id = 3);

-- 1.2 In sql_hr database find employees whose earn more than the average
SELECT 
    *
FROM
    employees
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employees);

-- 1.3 Find the products that has never been ordered
SELECT 
    *
FROM
    products
WHERE
    product_id NOT IN (SELECT DISTINCT
            product_id
        FROM
            order_items);

-- 1.4 Find Clients without invoices
SELECT 
    *
FROM
    clients
WHERE
    client_id NOT IN (SELECT DISTINCT
            (client_id)
        FROM
            invoices);

-- 1.5  Sub Queries VS Join 
-- 1.6 Find customers who have ordered lettuce select the customer_id, first_name and last_name
SELECT DISTINCT
    c.first_name, c.last_name, c.customer_id
FROM
    customers c
        INNER JOIN
    orders o ON c.customer_id = o.customer_id
        INNER JOIN
    order_items oi ON o.order_id = oi.order_id
WHERE
    oi.product_id = 3;
    
-- 1.7 Subqueries in the select clause
SELECT 
    invoice_id,
    invoice_total,
    (SELECT 
            AVG(invoice_total)
        FROM
            invoices) AS invoice_average,
    invoice_total - (SELECT invoice_average) AS difference
FROM
    invoices;

-- 1.8 Subqueries in the form clause

select * from (SELECT 
    invoice_id,
    invoice_total,
    (SELECT 
            AVG(invoice_total)
        FROM
            invoices) AS invoice_average,
    invoice_total - (SELECT invoice_average) AS difference
FROM
    invoices) as invoice_summary



-- 2. Corelated Subqueries 
-- 2.1 For each employee calculate the avg salary for employee according to their office 
select * from employees e where salary > (Select AVG(salary) from employees where office_id = e.office_id);

-- 2.2 Get invoices that are larger than the client's average invoice amount
SELECT 
    *
FROM
    sql_invoicing.invoices;
SELECT 
    *
FROM
    invoices i
WHERE
    invoice_total > (SELECT 
            AVG(invoice_total)
        FROM
            invoices
        WHERE
            i.client_id = client_id)




