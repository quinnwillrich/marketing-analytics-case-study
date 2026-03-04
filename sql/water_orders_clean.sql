CREATE OR REPLACE TABLE `sample-takehome.sample_data.water_orders_clean` AS
SELECT
  'Water' AS brand,
  order_id,
  user_id,
  DATE(order_date) AS order_date,
  DATE_TRUNC(order_date, MONTH) AS year_month,
  revenue,
  is_subscription,
  first_order_flag AS is_new_customer,
  subscription_frequency,
  platform,
  campaign_type,
  assisted_channel,
  gross_margin_percent,
  revenue * (gross_margin_percent / 100) AS gross_profit,
  assisted_channel IS NOT NULL AS has_assist
FROM `sample-project.sample_data.water_orders_raw`;