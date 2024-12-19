select
    lineitem.order_item_key,
    lineitem.part_key,
    lineitem.line_number,
    lineitem.extended_price,
    orders.order_key,
    orders.customer_key,
    orders.order_date,
    {{ discounted_amount('lineitem.extended_price','lineitem.discount_percentage') }} as item_discount_amount
from
    {{ ref('stg_tpch_orders') }} as orders
join
    {{ ref('stg_tpch_line_items') }} as lineitem
        on orders.order_key = lineitem.order_key
order by
    orders.order_date