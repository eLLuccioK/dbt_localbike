select order_date,
    city,
    state,
    COUNT(order_id) as total_orders,
    SUM(total_order_amount) as total_order_amount
from {{ ref('slv_lb_order_items') }} as i
left join {{ ref('brz_lb_stores') }} as s on i.store_id = s.store_id
group by order_date,
    city,
    state