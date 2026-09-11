-- BigBasket Capstone - Part 1 Task 3
-- Foundational SQL examples. SQLite syntax is used throughout.

-- 1. SELECT / WHERE: orders in a specific city
SELECT order_id, customer_id, product_id, order_date, amount_inr, status
FROM orders
JOIN customers USING (customer_id)
WHERE city = 'Bengaluru';

-- 2. DISTINCT: every distinct category
SELECT DISTINCT category
FROM products
ORDER BY category;

-- 3. ORDER BY + LIMIT: five highest-value orders
SELECT order_id, amount_inr, order_date, status
FROM orders
ORDER BY amount_inr DESC
LIMIT 5;

-- 4. Alias (AS): rename an aggregate column
SELECT COUNT(*) AS total_orders
FROM orders;

-- 5. IN: orders paid using UPI or Wallet
SELECT order_id, payment_mode, amount_inr
FROM orders
WHERE payment_mode IN ('UPI', 'Wallet');

-- 6. BETWEEN: orders with amount between INR 100 and INR 500 inclusive
SELECT order_id, amount_inr
FROM orders
WHERE amount_inr BETWEEN 100 AND 500;

-- 7. NOT BETWEEN: orders outside that amount range
SELECT order_id, amount_inr
FROM orders
WHERE amount_inr NOT BETWEEN 100 AND 500;

-- 8. IS NULL: orders with no rating recorded
SELECT order_id, status, rating
FROM orders
WHERE rating IS NULL;
