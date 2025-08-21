{{ config(materialized='table') }}

WITH tb1 AS (
    SELECT
        PaymentID,
        OrderID,
        CustomerID,
        PaymentDate,
        Amount,
        PaymentMethod,
        Status
    FROM {{ source('datafeed_shared_schema','stg_order_data') }}
)
SELECT * FROM tb1;