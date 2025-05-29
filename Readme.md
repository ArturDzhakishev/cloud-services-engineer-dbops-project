# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

# Создание БД
CREATE DATABASE store;

# Создание пользователя, выдача необходимых прав
CREATE ROLE dbuser WITH PASSWORD '123456';
GRANT ALL PRIVILEGES ON DATABASE store TO dbuser;
GRANT ALL ON SCHEMA public TO dbuser;

# Kоличество сосисок, которое было продано за предыдущую неделю
SELECT o.date_created, SUM(op.quantity)
FROM orders AS o
JOIN order_product AS op ON o.id = op.order_id
WHERE o.status = 'shipped' AND o.date_created > NOW() - INTERVAL '7 DAY'
GROUP BY o.date_created;
