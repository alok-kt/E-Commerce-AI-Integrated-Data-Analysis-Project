-- Creating raw schema and importing data via Import/Export ---

create schema raw;

create table raw.customers (
	customer_id text,
	customer_unique_id text,
	customer_zip_code_prefix int,
	customer_city text,
	customer_state text
);

create table raw.orders (
	order_id text,
	customer_id text,
	order_status text,
	order_purchase_timestamp text,
	order_approved_at text,
	order_delivered_carrier_date text,
	order_delivered_customer_date text,
	order_estimated_delivery_date text
);

CREATE TABLE raw.order_items (
    order_id TEXT,
    order_item_id INT,
    product_id TEXT,
    seller_id TEXT,
    shipping_limit_date TEXT,
    price NUMERIC,
    freight_value NUMERIC
);

CREATE TABLE raw.payments (
    order_id TEXT,
    payment_sequential INT,
    payment_type TEXT,
    payment_installments INT,
    payment_value NUMERIC
);

CREATE TABLE raw.products (
    product_id TEXT,
    product_category_name TEXT,
    product_name_lenght INT,
    product_description_lenght INT,
    product_photos_qty INT,
    product_weight_g INT,
    product_length_cm INT,
    product_height_cm INT,
    product_width_cm INT
);

-- Checking if table is created --
SELECT COUNT(*) FROM raw.customers;
SELECT COUNT(*) FROM raw.orders;
SELECT COUNT(*) FROM raw.order_items;
SELECT COUNT(*) FROM raw.payments;
SELECT COUNT(*) FROM raw.products;


