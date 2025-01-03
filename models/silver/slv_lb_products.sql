SELECT
    p.product_id,
    p.product_name,
    c.category_name,
    b.brand_name
FROM {{ ref('brz_lb_products') }} as p
LEFT JOIN {{ ref('brz_lb_categories')}} as c ON c.category_id = p.category_id
LEFT JOIN {{ ref('brz_lb_brands') }} as b ON b.brand_id = p.brand_id