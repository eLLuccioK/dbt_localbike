Select 
    extract(month from order_date) as year_date,	
    extract(month from order_date) as month_date,	
    s.first_name as first_name,
    s.last_name as last_name,	
    SUM(item_quantity) as total_item_sold,
    COUNT(order_id) as total_orders,
    SUM(total_order_item_amount) as total_order_amount
from {{ref('slv_lb_order_items')}} as i
left join {{ref('brz_lb_staffs')}} as s on i.staff_id = s.staff_id
group by year_date,
    month_date,
    state,
    first_name,
    last_name
