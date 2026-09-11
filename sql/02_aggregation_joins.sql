-- BigBasket Capstone - Part 1 Task 4

-- (a) INNER JOIN + GROUP BY + HAVING for Delivered category performance
SELECT
    p.category,
    COUNT(o.order_id) AS order_count,
    SUM(o.amount_inr) AS total_revenue,
    AVG(o.amount_inr) AS avg_revenue
FROM orders AS o
INNER JOIN products AS p
    ON o.product_id = p.product_id
WHERE o.status = 'Delivered'
GROUP BY p.category
HAVING SUM(o.amount_inr) > 10000
ORDER BY total_revenue DESC;

-- (b) LEFT JOIN: every product must remain visible, including the zero-order product.
-- COUNT(o.order_id), not COUNT(*), preserves a true zero for Premium Face Cream 50g.
SELECT
    p.product_id,
    p.product_name,
    COUNT(o.order_id) AS total_orders,
    COALESCE(SUM(CASE WHEN o.status = 'Delivered' THEN o.amount_inr ELSE 0 END), 0) AS total_delivered_revenue,
    AVG(CASE WHEN o.status = 'Delivered' THEN o.amount_inr END) AS avg_delivered_amount
FROM products AS p
LEFT JOIN orders AS o
    ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_orders ASC, p.product_id ASC;
