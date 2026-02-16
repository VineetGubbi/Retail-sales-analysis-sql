INSERT INTO customers (customer_name, city) VALUES
('Amit Sharma', 'Mumbai'),
('Ravi Kumar', 'Bangalore'),
('Sneha Reddy', 'Hyderabad');

INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 50000),
('Mobile', 'Electronics', 20000),
('Chair', 'Furniture', 3000);

INSERT INTO orders (customer_id, order_date) VALUES
(1, '2024-01-10'),
(2, '2024-02-15'),
(3, '2024-03-20');

INSERT INTO order_details (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 5),
(3, 1, 1);
