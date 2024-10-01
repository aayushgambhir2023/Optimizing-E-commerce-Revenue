use portfolioprojects;

select * from cltransaction;
 
-- 1.the unique brands available in the dataset
SELECT DISTINCT brand
FROM cltransaction;

-- 2.Total unique customers made transactions
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM cltransaction;

-- 3.Number of transactions were approved and how many were not approved
SELECT
    SUM(CASE WHEN order_status = 'Approved' THEN 1 ELSE 0 END) AS approved_transactions,
    SUM(CASE WHEN order_status <> 'Approved' THEN 1 ELSE 0 END) AS unapproved_transactions
FROM cltransaction;

-- 4.The top product lines with the highest average list price
SELECT
    product_line,
    AVG(list_price) AS average_list_price
FROM cltransaction
GROUP BY product_line
ORDER BY average_list_price DESC;

-- 5.Price vs. Cost Analysis(the products where the list_price is greater than twice the standard_cost)
SELECT
    product_id,
    list_price,
    standard_cost
FROM cltransaction
WHERE list_price > (2 * standard_cost);

-- 6.the average list_price for each product_line
SELECT
    product_line,
    AVG(list_price) AS average_list_price
FROM cltransaction
GROUP BY product_line;

-- 7. Brand that has the maximum difference between the list_price and standard_cost for their products
SELECT
    brand,
    MAX(list_price - standard_cost) AS price_margin
FROM cltransaction
GROUP BY brand
ORDER BY price_margin DESC
LIMIT 1;

-- 8.List the customer_id and the count of their transactions, ordered by the number of transactions in descending order.
SELECT
    customer_id,
    COUNT(*) AS transaction_count
FROM cltransaction
GROUP BY customer_id
ORDER BY transaction_count DESC;

-- 9.The total sales amount for each brand, sorted in descending order of total sales
SELECT
    brand,
    SUM(list_price) AS total_sales
FROM cltransaction
GROUP BY brand
ORDER BY total_sales DESC;

-- 10. The top 5 products with the highest profit margin (profit margin = list_price - standard_cost)
SELECT DISTINCT
    product_id,
    brand,
    product_line,
    (list_price - standard_cost) AS profit_margin
FROM cltransaction
ORDER BY profit_margin DESC
LIMIT 5;

-- 11.For each customer, find the total number of transactions, the total amount they spent (sum of list_price), and their average profit per transaction (average profit per transaction = average list_price - average standard_cost).
SELECT
    customer_id,
    COUNT(DISTINCT transaction_id) AS total_transactions,
    SUM(list_price) AS total_amount_spent,
    AVG(list_price - standard_cost) AS average_profit_per_transaction
FROM cltransaction
GROUP BY customer_id;

-- 12.Find the top 5 product lines with the highest total revenue (sum of list_price) and their percentage contribution to the overall revenue.
SELECT
    product_line,
    SUM(list_price) AS total_revenue,
    (SUM(list_price) * 100 / (SELECT SUM(list_price) FROM cltransaction)) AS revenue_contribution_percent
FROM cltransaction
GROUP BY product_line
ORDER BY total_revenue DESC
LIMIT 5;

-- 13.Identify the customers who have made at least one transaction for each product line available (i.e., customers who have made transactions for all distinct product lines)
SELECT
    customer_id
FROM cltransaction
GROUP BY customer_id
HAVING COUNT(DISTINCT product_line) = (SELECT COUNT(DISTINCT product_line) FROM cltransaction);