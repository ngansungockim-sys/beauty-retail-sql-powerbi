-- Beauty Retail Analysis
-- Purpose: Store analytical SQL views used for Power BI dashboard

-- Monthly KPI view
CREATE VIEW vw_beauty_kpi_monthly AS
SELECT
  substr(order_date, 1, 7) AS order_month,
  product_category_name_english AS category,
  COUNT(DISTINCT order_id) AS orders,
  ROUND(SUM(price), 2) AS revenue
FROM vw_beauty_sales
GROUP BY
  substr(order_date, 1, 7),
  product_category_name_english;
