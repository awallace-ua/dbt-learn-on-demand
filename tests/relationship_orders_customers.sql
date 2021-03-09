
select
  *
from {{ ref('stg_orders') }}
where customer_id in 
(select customer_id from {{ ref('stg_customers')}})


