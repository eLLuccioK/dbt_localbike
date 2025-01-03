select store_id,
  product_id,
  CONCAT(store_id, "-", product_id) AS stock_id,
  quantity AS stock_quantity
from {{ source('Local_Bike', 'stocks') }}