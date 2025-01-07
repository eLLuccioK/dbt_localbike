select 
    i.order_id,
    i.order_item_id,
    i.customer_id,
    i.order_status,
    i.order_date,
    i.store_id,
    s.store_name,
    i.product_id,
    p.product_name,
    p.category_name,
    p.brand_name,	
    i.item_quantity,
    i.item_price,
    i.discount,
    i.total_order_item_amount,   
from {{ref('slv_lb_order_items')}} as i
left join {{ref('brz_lb_stores')}} as s on i.store_id = s.store_id
left join {{ref('slv_lb_products')}} as p on i.product_id = p.product_id

