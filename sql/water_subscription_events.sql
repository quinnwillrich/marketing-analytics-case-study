CREATE OR REPLACE TABLE `sample-takehome.sample_data.sample_subscription_events_clean` AS
SELECT
  'Water' AS brand,
  event_date,
  DATE_TRUNC(event_date, MONTH) AS year_month,
  user_id,
  event_type
FROM `sample-takehome.sample_data.sample_subscription_events_raw`;