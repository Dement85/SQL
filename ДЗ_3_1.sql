-- use bank;

-- create table if not exists clients(
-- 	 name_cl varchar (255),
--    city varchar (255),
--    id_client int primary key AUTO_INCREMENT
-- );
-- create table if not exists bills(
-- 	n_bills int,
--     name_type varchar (255),
--     data_begin date,
-- 	data_close date,
--     summ bigint,
--     id_client int,
--     FOREIGN KEY (ID_client) REFERENCES clients(id_client)
-- );

-- INSERT INTO clients(id_client, name_cl, city) VALUES('1','Stewart Carl','Memphis');
-- INSERT INTO clients(id_client, name_cl, city) VALUES('2','Khan Logan','Lakewood');
-- INSERT INTO clients(id_client, name_cl, city) VALUES('3','Mullins Marvin','Valetta');
-- INSERT INTO clients(id_client, name_cl, city) VALUES('4','Tyler Evelynn','Anaheim');
-- INSERT INTO clients(id_client, name_cl, city) VALUES('5','Nelson Eden','Reno');
-- INSERT INTO clients(id_client, name_cl, city) VALUES('6','Edwards Samara','San Bernardino');
-- INSERT INTO clients(id_client, name_cl, city) VALUES('7','Dyson Erick','Long Beach');
-- INSERT INTO clients(id_client, name_cl, city) VALUES('8','Noon Tiffany','Columbus');
-- INSERT INTO clients(id_client, name_cl, city) VALUES('9','Partridge Tyson','Moreno Valley');
-- INSERT INTO clients(id_client, name_cl, city) VALUES('10','Thomson Roger','Charlotte');

INSERT INTO bills(n_bills, name_type, data_begin, data_close, summ, id_client) 
VALUES (870466140,'Capital One','2017-11-24','2022-11-03','755493456','1'),
(1186871257,'Maestro','2016-05-01','2023-11-28','704401107','2'),
(115401445,'Capital One','2014-11-02','2901-12-07','386882681','3'),
(667544397,'Citibank','2017-8-5','2332-12-8','192513259','4'),
(509178799,'Wells Fargo','2020-12-10','2024-12-6','5698170','5'),
(0,'close','2022-3-3','2026-11-6','0','6'),
(402071071,'Maestro','2017-11-23','2071-10-10','0','7'),
(414967620,'MasterCard','2027-3-26','2076-12-7','0','8'),
(1632987213,'American Express','2023-3-17','2075-5-2','854396266','9'),
(1021351690,'Chase','2032-6-3','2541-11-7','921734998','10');

-- select * from clients;
-- select * from bills;
-- select n_bills, name_cl from bills, clients;
-- показать счета открытые за 2017 год и их клиентов
-- select n_bills, name_cl from bills, clients where data_begin = 2017;
-- Показать всех счета и их клиентов, остаток на счете положительный
-- select n_bills, name_cl from bills, clients where summ > 0;
-- показать счета открытые за 2017 год и их клиентов
-- select n_bills 
-- from bills, clients
-- where data_begin BETWEEN '2017-01-01' AND '2017-12-31'
-- and summ > 0;
-- Показать всех клиентов у которых нет счетов
-- select name_cl from bills, clients where n_bills = 0;