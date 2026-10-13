# Training the ARIMA-PLUS model
CREATE OR REPLACE MODEL `time_series_forecasting.sales_forecast_model`
OPTIONS(
  model_type = 'arima_plus',
  time_series_timestamp_col = 'transaction_date',
  time_series_data_col = 'daily_sales',
  auto_arima = TRUE
) AS
SELECT
  transaction_date,
  daily_sales
FROM `time_series_forecasting.model_features`;
