-- Creating clean schema nstructure based on the raw tables --

create schema clean;

-- Creating clean orders table --
create table clean.orders as
select
	order_id,
	customer_id,
	order_status,
	cast(order_purchase_timestamp as timestamp) as order_purchase_timestamp,
	cast(order_approved_at as timestamp) as order_approved_at,
	cast(order_delivered_carrier_date as timestamp) as order_delivered_carrier_date,
	cast(order_delivered_customer_date as timestamp) as order_delivered_customer_date,
	cast(order_estimated_delivery_date as timestamp) as order_estimated_delivery_date
from raw.orders;

-- Checking if data type is correct --
select column_name, data_type
from information_schema.columns
where table_schema = 'clean'
and table_name = 'orders';

-- Creating clean products table --
create table clean.products as
select
	product_id,
	product_category_name,
	product_name_lenght,
	product_description_lenght,
	product_photos_qty,
	case
		when product_weight_g = 0 then null
		else product_weight_g
	end as product_weight_g,
	product_length_cm,
	product_height_cm,
	product_width_cm
from raw.products;

-- Creating clean order items table --
CREATE TABLE clean.order_items AS
SELECT
    order_id,
    order_item_id,
    product_id,
    seller_id,
    CAST(shipping_limit_date AS TIMESTAMP) AS shipping_limit_date,
    price,
    freight_value,
    price + freight_value AS item_total_price
FROM raw.order_items;


-- Adding an additional column delivery days --
alter table clean.orders
add column delivery_days int;

update clean.orders
set delivery_days = order_delivered_customer_date::date - order_purchase_timestamp::date;

-- Creating clean customers table --
create table clean.customers as
select
	customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    customer_city,
    customer_state
from raw.customers;

-- Creating clean payments table --
CREATE TABLE clean.payments AS
SELECT
    order_id,
    payment_sequential,
    payment_type,
    payment_installments,
    payment_value
FROM raw.payments;


