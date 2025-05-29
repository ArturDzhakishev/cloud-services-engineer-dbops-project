-- Индекс по полю order_id в таблице order_product
CREATE INDEX order_product_order_id_idx 
    ON order_product(
        order_id
    );

-- Составной индекс по полям status и date_created в таблице orders
CREATE INDEX orders_status_date_idx 
    ON orders(
        status, 
        date_created
    );