-- creating analytics schema and final analytics table for analysis --
create schema analytics;

CREATE TABLE analytics.order_analysis AS
SELECT
    oi.order_id,
    oi.order_item_id,
    oi.product_id,
    oi.seller_id,
    oi.price,
    oi.freight_value,
    oi.item_total_price,

    o.customer_id,
    o.order_status,
    o.order_purchase_timestamp,
    o.order_delivered_customer_date,
    o.order_estimated_delivery_date,

    c.customer_city,
    c.customer_state,

    p.product_category_name,

    pay.payment_type,
    pay.payment_installments,
    pay.payment_value

FROM clean.order_items oi
LEFT JOIN clean.orders o
ON oi.order_id = o.order_id

LEFT JOIN clean.customers c
ON o.customer_id = c.customer_id

LEFT JOIN clean.products p
ON oi.product_id = p.product_id

LEFT JOIN clean.payments pay
ON oi.order_id = pay.order_id;

select * from analytics.order_analysis limit 10;

select count(*) from analytics.order_analysis;
select count(*) from clean.orders;

-- to check whether duplicates exist --
select order_id, count(*)
from analytics.order_analysis
group by order_id
order by count(*) desc
limit 10;

-- timerange the dataset covers --
select
min(order_purchase_timestamp),
max(order_purchase_timestamp)
from analytics.order_analysis;

-- to verify order status distribution --
select order_status, count(*)
from analytics.order_analysis
group by order_status
order by count(*) desc;

