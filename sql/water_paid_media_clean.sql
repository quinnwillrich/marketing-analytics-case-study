CREATE OR REPLACE TABLE `sample-takehome.sample_data.sample_paid_media_clean` AS
SELECT
  'Water' AS brand,
  date,
  DATE_TRUNC(date, MONTH) AS year_month,

  CASE
    WHEN platform IN ('GoogleSearch', 'Google_Search') THEN 'Google_Search'
    ELSE platform
  END AS platform,

  CASE
    WHEN creative_id IN ('CRA', 'CR_A') THEN 'CR_A'
    ELSE creative_id
  END AS creative_id,
  
  campaign_type,
  campaign_id,
  spend,
  impressions,
  clicks,
  reported_conversions AS platform_conversions,
  reported_revenue AS platform_revenue
FROM `sample-takehome.sample_data.sample_paid_media_raw`;