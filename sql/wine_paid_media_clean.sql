CREATE OR REPLACE TABLE `sample-takehome.sample_data.wine_paid_media_clean` AS
SELECT
  'Wine' AS brand,
  date,
  DATE_TRUNC(date, MONTH) AS year_month,
  platform,
  campaign_type,
  campaign_id,
  spend,
  impressions,
  clicks,
  add_to_cart,
  purchases AS platform_conversions,
  revenue AS platform_revenue
FROM `sample-takehome.sample_data.wine_paid_media_raw`;