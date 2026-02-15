--BUSINESS QUESTION--

  --1/  How much revenue does the business generate and how has it evolved over time?--
---Total Revenue & Core KPIs---
SELECT
  ROUND(SUM(price), 2) AS total_revenue
FROM fact_beauty;
-------------------------------------
SELECT
  COUNT(DISTINCT order_id) AS total_orders,
  ROUND(SUM(price) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM fact_beauty;

--Monthly revenue trend (core time-series)
SELECT
  substr(order_date, 1, 7) AS order_month,
  ROUND(SUM(price), 2) AS revenue
FROM vw_beauty_sales
GROUP BY substr(order_date, 1, 7)
ORDER BY order_month;


---2/ Which product categories contribute most to total revenue?
SELECT
  product_category_name_english AS category,
  ROUND(SUM(price), 2) AS revenue,
  ROUND(
    100.0 * SUM(price) / (SELECT SUM(price) FROM fact_beauty),
    2
  ) AS revenue_pct
FROM vw_beauty_sales
GROUP BY product_category_name_english
ORDER BY revenue DESC;

----3/ Is growth driven by increased order volume or higher average order value?
WITH customer_revenue AS (
  SELECT
    customer_id,
    SUM(price) AS revenue
  FROM vw_beauty_sales
  GROUP BY customer_id
)
SELECT
  CASE
    WHEN revenue < 50 THEN 'Low (<$50)'
    WHEN revenue BETWEEN 50 AND 150 THEN 'Medium ($50–$150)'
    ELSE 'High (>$150)'
  END AS customer_segment,
  COUNT(*) AS customers
FROM customer_revenue
GROUP BY customer_segment
ORDER BY customers DESC;

-----4/ What actionable insights can be derived for category and retention strategy?
CREATE VIEW IF NOT EXISTS vw_beauty_kpi_monthly AS
SELECT
  substr(order_date, 1, 7) AS order_month,
  product_category_name_english AS category,
  COUNT(DISTINCT order_id) AS orders,
  ROUND(SUM(price), 2) AS revenue
FROM vw_beauty_sales
GROUP BY
  substr(order_date, 1, 7),
  product_category_name_english;



















