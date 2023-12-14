-- use web_chop;
-- CREATE TABLE customers
-- ( customer_id int NOT NULL,
--   last_name char(50) NOT NULL,
--   first_name char(50) NOT NULL,
--   favorite_website char(50),
--   CONSTRAINT customers_pk PRIMARY KEY (customer_id)
-- );

-- CREATE TABLE orders
-- ( order_id int NOT NULL,
--   customer_id int,
--   order_date date,
--   CONSTRAINT orders_pk PRIMARY KEY (order_id)
-- );

-- INSERT INTO customers
-- (customer_id, last_name, first_name, favorite_website)
-- VALUES
-- (4000, 'Jackson', 'Joe', 'techonthenet.com');

-- INSERT INTO customers
-- (customer_id, last_name, first_name, favorite_website)
-- VALUES
-- (5000, 'Smith', 'Jane', 'digminecraft.com');

-- INSERT INTO customers
-- (customer_id, last_name, first_name, favorite_website)
-- VALUES
-- (6000, 'Ferguson', 'Samantha', 'bigactivities.com');

-- INSERT INTO customers
-- (customer_id, last_name, first_name, favorite_website)
-- VALUES
-- (7000, 'Reynolds', 'Allen', 'checkyourmath.com');

-- INSERT INTO customers
-- (customer_id, last_name, first_name, favorite_website)
-- VALUES
-- (8000, 'Anderson', 'Paige', NULL);

-- INSERT INTO customers
-- (customer_id, last_name, first_name, favorite_website)
-- VALUES
-- (9000, 'Johnson', 'Derek', 'techonthenet.com');

-- INSERT INTO orders
-- (order_id, customer_id, order_date)
-- VALUES
-- (1,7000,'2016/04/18');

-- INSERT INTO orders
-- (order_id, customer_id, order_date)
-- VALUES
-- (2,5000,'2016/04/18');

-- INSERT INTO orders
-- (order_id, customer_id, order_date)
-- VALUES
-- (3,8000,'2016/04/19');

-- INSERT INTO orders
-- (order_id, customer_id, order_date)
-- VALUES
-- (4,4000,'2016/04/20');

-- INSERT INTO orders
-- (order_id, customer_id, order_date)
-- VALUES
-- (5,null,'2016/05/01');


-- select * from customers;
-- select * from orders;
-- 1.	На основе таблиц ниже, составьте запрос,
--  где стоимость заказов больше 1000 и меньше 3000
-- select * from customers, orders
-- where order_id > 1000 and order_id < 3000;

-- 2.	На основе таблиц ниже, составьте запрос за весенние месяцы 2016 года
-- select * from orders where  5 >= month(order_date) and month(order_date) >= 3;

-- 3.	Покажите Пользователей у кого нет заказов
-- select last_name, first_name from customers
-- where customers.customer_id
-- not in 
-- 	(select customers.customer_id from customers, orders
-- 	where orders.customer_id = customers.customer_id);



