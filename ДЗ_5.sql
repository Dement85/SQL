create database DZ5;
use DZ5;
CREATE TABLE salespeople(
  id INT(11) NOT NULL PRIMARY KEY,
  sname VARCHAR(45) NOT NULL,
  city VARCHAR(45) NOT NULL,
  comm FLOAT NOT NULL -- скидка
); 



CREATE TABLE customers(
  id INT(11) NOT NULL PRIMARY KEY,
  cname VARCHAR(45) NOT NULL,
  city VARCHAR(45),
  rating FLOAT NOT NULL,
  id_salesPeople INT(11) NOT NULL,
  FOREIGN KEY (id_salesPeople) REFERENCES salespeople(id)
);


CREATE TABLE orders(
  id INT(11) NOT NULL PRIMARY KEY,
  amt DOUBLE NOT NULL,
  odate date NOT NULL,
  id_customer INT(11) NOT NULL,
  id_salesPeople INT(11) NOT NULL,
  FOREIGN KEY (id_customer) REFERENCES customers(id),
  FOREIGN KEY (id_salesPeople) REFERENCES salespeople(id)
);

INSERT INTO salespeople (id, sname, city, comm) VALUES
(1, "Колованов", "Москва", 10),
(2, "Петров", "Тверь", 25),
(3, "Плотников", "Москва", 22),
(4, "Кучеров", "Санкт-Петербург", 28),
(5, "Малкин", "Санкт-Петербург", 18),
(6, "Шипачев", "Челябинск", 30),
(7, "Мозякин", "Одинцово", 25),
(8, "Проворов", "Москва", 25);

INSERT INTO customers (id, cname, city, rating, id_salesPeople) VALUES
(1, "Деснов", "Москва", 90, 6),
(2, "Краснов", "Москва", 95, 7),
(3, "Кириллов", "Тверь", 96, 3),
(4, "Ермолаев", "Обнинск", 98, 3),
(5, "Колесников", "Серпухов", 98, 5),
(6, "Пушкин", "Челябинск", 90, 4),
(7, "Лермонтов", "Одинцово", 85, 1),
(8, "Белый", "Москва", 89, 3),
(9, "Чудинов", "Москва", 96, 2),
(10, "Лосев", "Одинцово", 93, 8),
(11, "Лосевa", NULL, 94, 5);


INSERT INTO orders (id, amt, odate, id_customer, id_salesPeople) VALUES
(1001, 128, '2016-01-01', 9, 4),
(1002, 1800, '2016-04-10', 10, 7),
(1003, 348, '2017-04-08', 2, 1),
(1004, 1010, '2016-06-07', 3, 3),
(1005, 499, '2017-12-04', 5, 4),
(1006, 320, '2016-03-03', 5, 4),
(1007, 80, '2017-09-02', 7, 1),
(1008, 780, '2016-03-07', 1, 3),
(1009, 560, '2017-10-07', 3, 7),
(1010, 900, '2016-01-08', 6, 8),
(1011, 100, '2016-01-01', 8, 1),
(1012, 100, '2016-02-01', 1, 4);

-- Напишите запрос, который вычислил бы сумму комиссионных продавца для 
-- каждого Заказа заказчика с оценкой выше 90.
-- SELECT id_customer, SUM(amt)  AS 'Сумма всех комиссионных' 
-- FROM orders 
-- GROUP BY id_customer
-- HAVING MAX(amt) > 90;

-- Напишите запрос, который бы выводил всех заказчиков, обслуживаемых продавцом 
-- с комиссионными выше 12%. Выведите имя заказчика, имя продавца и 
-- ставку комиссионных продавца.
-- SELECT cname, sname, comm
-- FROM orders, customers, salespeople
-- WHERE orders.id = cname and 
-- orders.id = sname and comm > 12;

-- Напишите запрос, который бы выдавал имена продавцов и заказчиков, 
-- проживающих в одном и том же городе.
SELECT sname, cname, city
FROM customers, salespeople, orders
WHERE orders.id = cname and orders.id = sname and 
salespeople.city = customers.city;