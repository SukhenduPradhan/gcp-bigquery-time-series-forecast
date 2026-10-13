# Daily Retail Sales Forecasting using BigQuery ML (ARIMA_PLUS)

## Business Overview
This project builds an automated time series forecasting pipeline in Google BigQuery to project future retail sales and establish inventory confidence bounds.

## Tech Stack
* **Cloud Platform:** Google Cloud Platform (GCP)
* **Data Warehouse:** Google BigQuery
* **Machine Learning:** BigQuery ML (ARIMA_PLUS Time Series)
* **Dataset:** Daily Store Sales Dataset

## Pipeline Architecture
1. **Data Preprocessing:** Standardized transaction dates and cast daily sales metrics to float values.
2. **Automated Optimization:** Trained an ARIMA_PLUS model with `auto_arima = TRUE` to automatically handle seasonality, holiday effects and trend changes.
3. **Model Diagnostics:** Inspected candidate model variations using `ML.ARIMA_EVALUATE` to analyze AIC scores and parameter orders.
4. **Future Projection:** Generated 30-day forward sales forecasts with 95% prediction intervals.

## Key Performance Indicators
* **Optimized AIC:** Reached a minimum AIC score of ~1006.27 across tested candidate iterations.
* **Forecast Horizon:** 30-day forward projection with upper and lower safety bounds for inventory planning.

## Repository Structure
* `sql/01_feature_engineering.sql` : Data cleaning and timestamp parsing
* `sql/02_train_arima_model.sql` : BQML ARIMA_PLUS model definition
* `sql/03_model_evaluation.sql` : AIC parameter and fit inspection
* `sql/04_future_forecast.sql` : 30-day forward sales prediction query

* ## Assets Structure
* `store_sales_raw_data.csv` : Basic sales raw data 
* `model_accuracy_evaluation.csv` : ARIMA_Plus Model accuracy evaluation
* `projected_store_sales_data_30days.csv` : Output data based on ARIMA_Plus model implementation
* `ARIMA_model parameter outcome.csv` : Model parameters outcome for each row
