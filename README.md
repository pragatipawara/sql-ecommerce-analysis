# sql-ecommerce-analysis
# 🛒 E-Commerce Sales Analysis — SQL Case Study

**Author:** Pragati Pawara
**Tool:** SQLiteOnline
**Domain:** E-Commerce / Business Analytics
**Live Page:** [View Project](https://pragatipawara.github.io/sql-ecommerce-analysis)

---

## 📌 Overview

A complete SQL case study analyzing an e-commerce business using 4 relational tables — customers, products, orders, and order_items. The analysis answers 10 real business questions using SQL concepts ranging from basic aggregations to window functions.

---

## 🗃️ Database Schema

```
customers     → customer_id, name, city, email, joined_date
products      → product_id, name, category, price
orders        → order_id, customer_id, order_date, status
order_items   → item_id, order_id, product_id, quantity, unit_price
```

---

## 📊 Key Findings

| # | Finding | Value |
|---|---------|-------|
| 1 | Total Revenue | ₹10,34,458 |
| 2 | Total Orders | 29 delivered |
| 3 | Average Order Value | ₹34,482 |
| 4 | Top Category | Electronics (86% of revenue) |
| 5 | Best Selling Product | MacBook Air M2 (₹3,44,997) |
| 6 | Top Customer | Aarav Shah — 4 orders, ₹2,11,492 |
| 7 | Top City | Mumbai |
| 8 | Repeat Purchase Rate | 53.3% |

---

## 🔍 Queries Written

| Query | Business Question | SQL Concept |
|-------|------------------|-------------|
| Q1 | Total orders, revenue, AOV | COUNT, SUM, AVG, JOIN |
| Q2 | Revenue by product category | GROUP BY, JOIN |
| Q3 | Top 5 products by revenue | ORDER BY, LIMIT |
| Q4 | Top 10 customers by spend | Multi-table JOIN |
| Q5 | Monthly revenue trend | DATE functions, GROUP BY |
| Q6 | Revenue by city | JOIN, GROUP BY |
| Q7 | Repeat purchase rate | CASE WHEN, Subquery |
| Q8 | Avg order value by city | Nested Subquery |
| Q9 | Products never ordered | LEFT JOIN, NULL check |
| Q10 | Month-over-month growth | CTE, Window Function LAG |

---

## 🛠️ Tools Used

- **SQLiteOnline** — browser-based SQL editor
- **SQLite** — database engine
- **GitHub** — version control and hosting

---

## 📁 Files

```
ecommerce_analysis.sql   ← All 10 queries with comments
q1_overview.csv          ← Business overview results
q2_categories.csv        ← Revenue by category
q3_top_products.csv      ← Top 5 products
q4_top_customers.csv     ← Top 10 customers
```

---

## 💡 Business Insights

1. **Electronics dominates** — 86% of total revenue comes from Electronics. Diversification into other categories is a growth opportunity.
2. **High AOV** — ₹34,482 average order value suggests a premium customer base.
3. **Strong repeat rate** — 53.3% of customers made more than one purchase — good retention signal.
4. **Mumbai leads** — Mumbai customers generate the highest revenue, followed by Bangalore and Delhi.
5. **MacBook Air M2 is the star product** — single-handedly drives 33% of total revenue.

---

*Part of Pragati Pawara's Data Analytics Portfolio*
*[GitHub](https://github.com/pragatipawara) · [LinkedIn](https://linkedin.com/in/pragati-pawara-1b2443290)*
