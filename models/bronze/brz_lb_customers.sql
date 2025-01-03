select customer_id, 
  first_name,
  last_name,
  case when phone = 'NULL' THEN null else phone end as phone,
  email, 
  street,
  city,
  state
from {{ source('Local_Bike', 'customers') }}