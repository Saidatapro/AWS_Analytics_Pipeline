
-- Redshift SQL: KPI summary table

CREATE TABLE kpi_summary AS
SELECT 
  DATE_TRUNC('month', order_date) AS month,
  category,
  COUNT(DISTINCT customer_id) AS unique_customers,
  SUM(total) AS total_revenue,
  AVG(total) AS avg_order_value
FROM processed_orders
GROUP BY 1, 2
ORDER BY 1;
