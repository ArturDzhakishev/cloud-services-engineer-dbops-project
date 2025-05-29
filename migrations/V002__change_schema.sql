-- Изменения в таблице product
ALTER TABLE product 
ADD CONSTRAINT product_pkey PRIMARY KEY (id);

ALTER TABLE product 
ADD COLUMN price DOUBLE PRECISION;

-- Изменения в таблице orders
ALTER TABLE orders 
ADD CONSTRAINT orders_pkey PRIMARY KEY (id);

ALTER TABLE orders 
ADD COLUMN date_created DATE DEFAULT CURRENT_DATE;

-- Изменения в таблице orders
ALTER TABLE order_product 
ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES orders(id),
ADD CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES product(id);

-- Удаление ненужных таблиц
DROP TABLE IF EXISTS orders_date, product_info;