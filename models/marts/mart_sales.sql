{{ config(materialized='table') }}

select
    customer_id,
    sum(amount) as total_sales
from {{ ref('stg_orders') }}
group by customer_id