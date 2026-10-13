# calculating MAPE (Mean Absolute Percentage Error) for ARIMA_PLUS

SELECT
  non_seasonal_p,
  non_seasonal_d,
  non_seasonal_q,
  aic,
  log_likelihood,
  variance
FROM ML.ARIMA_EVALUATE(MODEL `time_series_forecasting.sales_forecast_model`);
