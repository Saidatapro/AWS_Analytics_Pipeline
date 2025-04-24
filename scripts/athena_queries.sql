
-- Athena Query: Load from S3 via Glue Catalog

SELECT 
  customer_id, 
  category, 
  COUNT(*) AS orders, 
  SUM(quantity) AS items_purchased, 
  SUM(total) AS total_spent
FROM processed_orders
GROUP BY customer_id, category;
