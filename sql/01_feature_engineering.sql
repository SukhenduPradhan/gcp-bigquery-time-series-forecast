# normalizing the column for model ready
CREATE OR REPLACE TABLE `time_series_forecasting.model_features` AS
SELECT
  date AS transaction_date,
  CAST(sales AS FLOAT64) AS daily_sales
FROM `time_series_forecasting.raw_sales`;
