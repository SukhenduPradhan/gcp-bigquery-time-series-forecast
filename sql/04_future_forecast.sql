# Projecting sales for next 30 days with confidence bounds 
SELECT
  forecast_timestamp,
  ROUND(forecast_value, 2) AS predicted_sales,
  ROUND(prediction_interval_lower_bound, 2) AS lower_bound,
  ROUND(prediction_interval_upper_bound, 2) AS upper_bound
FROM ML.FORECAST(
  MODEL `time_series_forecasting.sales_forecast_model`,
  STRUCT(30 AS horizon, 0.95 AS confidence_level)
)
ORDER BY forecast_timestamp;
