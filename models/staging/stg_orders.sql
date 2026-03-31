{{ config(schema='staging') }}

select
    order_id,
    customer_id,
    sum(amount) as total_sales
from {{ source('raw', 'order') }}