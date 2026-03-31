{{ config(schema='staging') }}

select
    order_id,
    customer_id,
    sum(amount) as amount
from {{ source('raw', 'order') }}