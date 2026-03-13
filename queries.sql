-- Total Revenue --
select sum(item_total_price) as total_revenue
from analytics.order_analysis
where order_status = 'delivered';

-- Total Orders --
SELECT COUNT(DISTINCT order_id) AS total_orders
from analytics.order_analysis
where order_status = 'delivered';

-- Avg Order Value --
select sum(item_total_price) / count(distinct order_id) as avg_order_value
from analytics.order_analysis
where order_status = 'delivered';

-- Top 10 product categories by revenue --
SELECT
	product_category_name,
	sum(item_total_price) as revenue
from analytics.order_analysis
where order_status = 'delivered'
group by product_category_name
order by revenue desc
limit 10;

-- Volume of items sold per category against revenue --
select
	product_category_name,
	count(*) as items_sold,
	sum(item_total_price) as revenue
from analytics.order_analysis
where order_status = 'delivered'
group by product_category_name
order by revenue desc
limit 10;

-- Avg product price per category --

select
	product_category_name,
	count(*) as items_sold,
	sum(item_total_price) as revenue,
	avg(item_total_price) as avg_price
from analytics.order_analysis
where order_status = 'delivered'
group by product_category_name
order by revenue desc
limit 10;

-- Top States by Revenue --
select * from analytics.order_analysis limit 10;

select
	customer_state,
	count(distinct order_id) as total_orders,
	sum(item_total_price) as revenue
from analytics.order_analysis
where order_status = 'delivered'
group by customer_state
order by revenue desc
limit 10;

-- Order delivery puntuality --
SELECT
CASE
WHEN order_delivered_customer_date <= order_estimated_delivery_date
THEN 'On Time / Early'
ELSE 'Late Delivery'
END AS delivery_status,
COUNT(*) AS orders
FROM analytics.order_analysis
WHERE order_status = 'delivered'
GROUP BY delivery_status;

-- Customer Payment Preferences --
select
	payment_type,
	count(*) as payments,
	sum(payment_value) as total_paid
from clean.payments
group by payment_type
order by total_paid desc;

