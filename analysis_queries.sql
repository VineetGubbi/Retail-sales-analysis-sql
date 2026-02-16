-- Total Revenue
SELECT SUM(p.price * od.quantity) AS total_revenue
FROM order_details od
JOIN products p ON od.product_id = p.product_id;

-- Revenue by Category
SELECT p.category,
       SUM(p.price * od.quantity) AS category_revenue
FROM order_details od
JOIN products p ON od.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;

-- Rank Customers by Spending
SELECT c.customer_name,
       SUM(p.price * od.quantity) AS total_spent,
       RANK() OVER (ORDER BY SUM(p.price * od.quantity) DESC) AS rank_position
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY c.customer_name;
