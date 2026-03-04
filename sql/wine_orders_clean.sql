CREATE OR REPLACE TABLE `sample-takehome.sample_data.wine_orders_clean` AS
SELECT
  *,
  'Wine' AS brand,
  DATE_TRUNC(order_date, MONTH) AS year_month,
  
  CASE
    WHEN first_purchase_flag = TRUE THEN 'New'
    ELSE 'Returning'
  END AS customer_type,

  CASE
    WHEN is_club_member = TRUE THEN 'Club Member'
    ELSE 'Non-Club'
  END AS club_status

FROM `sample-takehome.sample_data.wine_orders_raw`;