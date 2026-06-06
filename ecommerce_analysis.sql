-- ============================================================
-- 🛒 E-COMMERCE SALES ANALYSIS — SQL CASE STUDY
-- Author  : Pragati Pawara
-- Tool    : SQLiteOnline
-- Domain  : E-Commerce / Business Analytics
-- ============================================================


-- ── STEP 0: DROP EXISTING TABLES ───────────────────────────
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

-- ── STEP 1: CREATE TABLES ───────────────────────────────────

CREATE TABLE customers (
  customer_id   INTEGER PRIMARY KEY,
  name          TEXT,
  city          TEXT,
  email         TEXT,
  joined_date   TEXT
);

CREATE TABLE products (
  product_id    INTEGER PRIMARY KEY,
  name          TEXT,
  category      TEXT,
  price         REAL
);

CREATE TABLE orders (
  order_id      INTEGER PRIMARY KEY,
  customer_id   INTEGER,
  order_date    TEXT,
  status        TEXT
);

CREATE TABLE order_items (
  item_id       INTEGER PRIMARY KEY,
  order_id      INTEGER,
  product_id    INTEGER,
  quantity      INTEGER,
  unit_price    REAL
);


-- ── STEP 2: INSERT DATA ─────────────────────────────────────

INSERT INTO customers VALUES
(1,  'Aarav Shah',      'Mumbai',    'aarav@email.com',    '2023-01-15'),
(2,  'Priya Mehta',     'Delhi',     'priya@email.com',    '2023-02-20'),
(3,  'Rohit Verma',     'Bangalore', 'rohit@email.com',    '2023-03-10'),
(4,  'Sneha Patel',     'Pune',      'sneha@email.com',    '2023-04-05'),
(5,  'Karan Singh',     'Chennai',   'karan@email.com',    '2023-05-18'),
(6,  'Anjali Nair',     'Hyderabad', 'anjali@email.com',   '2023-06-22'),
(7,  'Vikram Rao',      'Mumbai',    'vikram@email.com',   '2023-07-11'),
(8,  'Divya Joshi',     'Delhi',     'divya@email.com',    '2023-08-30'),
(9,  'Arjun Kumar',     'Bangalore', 'arjun@email.com',    '2023-09-14'),
(10, 'Meera Iyer',      'Chennai',   'meera@email.com',    '2023-10-25'),
(11, 'Raj Malhotra',    'Pune',      'raj@email.com',      '2023-11-08'),
(12, 'Pooja Sharma',    'Mumbai',    'pooja@email.com',    '2023-12-01'),
(13, 'Nikhil Gupta',    'Delhi',     'nikhil@email.com',   '2024-01-17'),
(14, 'Riya Desai',      'Bangalore', 'riya@email.com',     '2024-02-28'),
(15, 'Suresh Pillai',   'Hyderabad', 'suresh@email.com',   '2024-03-19');

INSERT INTO products VALUES
(1,  'iPhone 15',          'Electronics',  79999),
(2,  'Samsung TV 55"',     'Electronics',  54999),
(3,  'Nike Air Max',       'Footwear',     8999),
(4,  'Levi Jeans',         'Clothing',     2999),
(5,  'Instant Pot',        'Kitchen',      6499),
(6,  'MacBook Air M2',     'Electronics',  114999),
(7,  'Adidas Running',     'Footwear',     6499),
(8,  'Zara Dress',         'Clothing',     3499),
(9,  'Nespresso Machine',  'Kitchen',      12999),
(10, 'boAt Earbuds',       'Electronics',  1999),
(11, 'Woodland Boots',     'Footwear',     4999),
(12, 'H&M Jacket',         'Clothing',     4499),
(13, 'Air Fryer',          'Kitchen',      4999),
(14, 'iPad Pro',           'Electronics',  89999),
(15, 'Puma Sneakers',      'Footwear',     5499);

INSERT INTO orders VALUES
(1,  1,  '2023-01-20', 'Delivered'),
(2,  2,  '2023-02-25', 'Delivered'),
(3,  3,  '2023-03-15', 'Delivered'),
(4,  4,  '2023-04-10', 'Delivered'),
(5,  5,  '2023-05-22', 'Delivered'),
(6,  1,  '2023-06-05', 'Delivered'),
(7,  6,  '2023-06-18', 'Delivered'),
(8,  7,  '2023-07-14', 'Delivered'),
(9,  2,  '2023-08-02', 'Delivered'),
(10, 8,  '2023-08-31', 'Delivered'),
(11, 3,  '2023-09-20', 'Delivered'),
(12, 9,  '2023-10-05', 'Delivered'),
(13, 10, '2023-10-28', 'Delivered'),
(14, 1,  '2023-11-11', 'Delivered'),
(15, 11, '2023-11-15', 'Delivered'),
(16, 4,  '2023-12-03', 'Delivered'),
(17, 12, '2023-12-20', 'Delivered'),
(18, 5,  '2024-01-08', 'Delivered'),
(19, 13, '2024-01-19', 'Delivered'),
(20, 6,  '2024-02-14', 'Delivered'),
(21, 2,  '2024-03-01', 'Delivered'),
(22, 14, '2024-03-22', 'Delivered'),
(23, 7,  '2024-04-10', 'Delivered'),
(24, 3,  '2024-04-25', 'Cancelled'),
(25, 15, '2024-05-07', 'Delivered'),
(26, 8,  '2024-05-18', 'Delivered'),
(27, 1,  '2024-06-02', 'Delivered'),
(28, 9,  '2024-06-15', 'Delivered'),
(29, 10, '2024-07-04', 'Delivered'),
(30, 11, '2024-07-22', 'Delivered');

INSERT INTO order_items VALUES
(1,  1,  1,  1, 79999),
(2,  1,  10, 2, 1999),
(3,  2,  2,  1, 54999),
(4,  3,  6,  1, 114999),
(5,  4,  3,  1, 8999),
(6,  5,  4,  2, 2999),
(7,  6,  5,  1, 6499),
(8,  7,  9,  1, 12999),
(9,  8,  14, 1, 89999),
(10, 9,  7,  1, 6499),
(11, 10, 8,  2, 3499),
(12, 11, 13, 1, 4999),
(13, 12, 11, 1, 4999),
(14, 13, 1,  1, 79999),
(15, 14, 10, 3, 1999),
(16, 15, 4,  1, 2999),
(17, 16, 3,  1, 8999),
(18, 17, 6,  1, 114999),
(19, 18, 12, 2, 4499),
(20, 19, 2,  1, 54999),
(21, 20, 5,  2, 6499),
(22, 21, 9,  1, 12999),
(23, 22, 14, 1, 89999),
(24, 23, 15, 2, 5499),
(25, 25, 1,  1, 79999),
(26, 26, 7,  1, 6499),
(27, 27, 6,  1, 114999),
(28, 28, 13, 2, 4999),
(29, 29, 10, 4, 1999),
(30, 30, 3,  1, 8999);


-- ============================================================
-- 📊 ANALYSIS QUERIES
-- ============================================================

-- ── Q1: Total Orders & Revenue Overview ─────────────────────
SELECT
  COUNT(DISTINCT o.order_id)              AS total_orders,
  COUNT(DISTINCT o.customer_id)           AS unique_customers,
  ROUND(SUM(oi.quantity * oi.unit_price)) AS total_revenue,
  ROUND(AVG(oi.quantity * oi.unit_price)) AS avg_order_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status = 'Delivered';


-- ── Q2: Revenue by Product Category ─────────────────────────
SELECT
  p.category,
  COUNT(oi.item_id)                             AS total_items_sold,
  SUM(oi.quantity)                              AS total_units,
  ROUND(SUM(oi.quantity * oi.unit_price))       AS total_revenue,
  ROUND(AVG(oi.quantity * oi.unit_price))       AS avg_item_value
FROM order_items oi
JOIN products p    ON oi.product_id = p.product_id
JOIN orders o      ON oi.order_id   = o.order_id
WHERE o.status = 'Delivered'
GROUP BY p.category
ORDER BY total_revenue DESC;


-- ── Q3: Top 5 Products by Revenue ───────────────────────────
SELECT
  p.name                                        AS product,
  p.category,
  SUM(oi.quantity)                              AS units_sold,
  ROUND(SUM(oi.quantity * oi.unit_price))       AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o   ON oi.order_id   = o.order_id
WHERE o.status = 'Delivered'
GROUP BY p.product_id
ORDER BY total_revenue DESC
LIMIT 5;


-- ── Q4: Top 10 Customers by Spend ───────────────────────────
SELECT
  c.name                                        AS customer,
  c.city,
  COUNT(DISTINCT o.order_id)                    AS total_orders,
  ROUND(SUM(oi.quantity * oi.unit_price))       AS total_spent
FROM customers c
JOIN orders o      ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id   = oi.order_id
WHERE o.status = 'Delivered'
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 10;


-- ── Q5: Monthly Revenue Trend ───────────────────────────────
SELECT
  STRFTIME('%Y-%m', o.order_date)               AS month,
  COUNT(DISTINCT o.order_id)                    AS orders,
  ROUND(SUM(oi.quantity * oi.unit_price))       AS monthly_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status = 'Delivered'
GROUP BY month
ORDER BY month;


-- ── Q6: Revenue by City ──────────────────────────────────────
SELECT
  c.city,
  COUNT(DISTINCT o.order_id)                    AS total_orders,
  ROUND(SUM(oi.quantity * oi.unit_price))       AS total_revenue
FROM customers c
JOIN orders o       ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id    = oi.order_id
WHERE o.status = 'Delivered'
GROUP BY c.city
ORDER BY total_revenue DESC;


-- ── Q7: Repeat Purchase Rate ─────────────────────────────────
SELECT
  COUNT(*) AS total_customers,
  SUM(CASE WHEN order_count > 1 THEN 1 ELSE 0 END) AS repeat_customers,
  ROUND(
    100.0 * SUM(CASE WHEN order_count > 1 THEN 1 ELSE 0 END) / COUNT(*), 1
  ) AS repeat_rate_pct
FROM (
  SELECT customer_id, COUNT(order_id) AS order_count
  FROM orders
  WHERE status = 'Delivered'
  GROUP BY customer_id
);


-- ── Q8: Average Order Value by City ─────────────────────────
SELECT
  c.city,
  ROUND(AVG(order_total)) AS avg_order_value
FROM (
  SELECT
    o.order_id,
    o.customer_id,
    SUM(oi.quantity * oi.unit_price) AS order_total
  FROM orders o
  JOIN order_items oi ON o.order_id = oi.order_id
  WHERE o.status = 'Delivered'
  GROUP BY o.order_id
) t
JOIN customers c ON t.customer_id = c.customer_id
GROUP BY c.city
ORDER BY avg_order_value DESC;


-- ── Q9: Products Never Ordered ───────────────────────────────
SELECT
  p.product_id,
  p.name        AS product,
  p.category,
  p.price
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.item_id IS NULL;


-- ── Q10: Month-over-Month Revenue Growth ────────────────────
WITH monthly AS (
  SELECT
    STRFTIME('%Y-%m', o.order_date)         AS month,
    ROUND(SUM(oi.quantity * oi.unit_price)) AS revenue
  FROM orders o
  JOIN order_items oi ON o.order_id = oi.order_id
  WHERE o.status = 'Delivered'
  GROUP BY month
)
SELECT
  month,
  revenue,
  LAG(revenue) OVER (ORDER BY month)       AS prev_month_revenue,
  ROUND(
    100.0 * (revenue - LAG(revenue) OVER (ORDER BY month))
    / LAG(revenue) OVER (ORDER BY month), 1
  ) AS mom_growth_pct
FROM monthly
ORDER BY month;
