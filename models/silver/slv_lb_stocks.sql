SELECT stocks.stock_id,
    stocks.store_id, 
    stores.store_name,
    stocks.product_id, 
    products.product_name,
    stocks.stock_quantity
FROM {{ ref('brz_lb_stocks') }} AS stocks
left join {{ ref('brz_lb_stores') }} AS stores on stocks.store_id = stores.store_id
left join {{ ref('brz_lb_products') }} AS products on products.product_id = stocks.product_id