
-- Revenue and profit by region
SELECT region,
       SUM(sales_amount) AS total_revenue,
       SUM(profit) AS total_profit
FROM sales_transactions
GROUP BY region;

-- Top products by revenue
SELECT product_name,
       SUM(sales_amount) AS revenue
FROM sales_transactions
GROUP BY product_name
ORDER BY revenue DESC;

-- Customer segment performance
SELECT customer_segment,
       SUM(sales_amount) AS revenue,
       SUM(profit) AS profit
FROM sales_transactions
GROUP BY customer_segment;
