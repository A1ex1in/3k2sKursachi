CREATE TABLE "hhash" (
  "id_autorization" bigint,
  "hashh" text
);

CREATE TABLE "keys" (
  "id_autorizations" bigint,
  "keyy" text
);

CREATE TABLE "adres_filial" (
  "id_adres_filial" bigint PRIMARY KEY,
  "country" text,
  "city" text,
  "street" text,
  "house" bigint,
  "post_index" bigint
);

CREATE TABLE "type_operation" (
  "id_type_operation" bigint PRIMARY KEY,
  "nam" text
);

CREATE TABLE "type_schet" (
  "id_type_schet" bigint PRIMARY KEY,
  "nam" text
);

CREATE TABLE "state_schet" (
  "id_state_schet" bigint PRIMARY KEY,
  "sost" text
);

CREATE TABLE "valut" (
  "id_valut" bigint PRIMARY KEY,
  "nam" text
);

CREATE TABLE "state_zayavka" (
  "id_state_zayavka" bigint PRIMARY KEY,
  "sost" text
);

CREATE TABLE "adres_client" (
  "id_adres_client" bigint PRIMARY KEY,
  "country" text,
  "city" text,
  "street" text,
  "house" bigint,
  "apartment" bigint
);

CREATE TABLE "client" (
  "id_client" bigint PRIMARY KEY,
  "id_adres_client" bigint,
  "fam" text,
  "nam" text,
  "otch" text,
  "passport" text,
  "numb" bigint
);

CREATE TABLE "autorization" (
  "id_autorization" bigint PRIMARY KEY,
  "id_client" bigint,
  "loginn" text,
  "pass" text
);

CREATE TABLE "zayavka" (
  "id_zayavka" bigint PRIMARY KEY,
  "id_client" bigint,
  "id_state_zayavka" bigint
);

CREATE TABLE "filial" (
  "id_filial" bigint PRIMARY KEY,
  "id_adres_filial" bigint,
  "nam" text
);

CREATE TABLE "schet" (
  "id_schet" bigint PRIMARY KEY,
  "id_client" bigint,
  "id_type_schet" bigint,
  "id_valut" bigint,
  "id_state_schet" bigint,
  "id_filial" bigint,
  "summ" bigint
);

CREATE TABLE "operations_schet" (
  "id_operation" bigint PRIMARY KEY,
  "id_schet" bigint,
  "id_type_operation" bigint,
  "summ" bigint
);

ALTER TABLE "client" ADD FOREIGN KEY ("id_adres_client") REFERENCES "adres_client" ("id_adres_client");

ALTER TABLE "autorization" ADD FOREIGN KEY ("id_client") REFERENCES "client" ("id_client");

ALTER TABLE "zayavka" ADD FOREIGN KEY ("id_client") REFERENCES "client" ("id_client");

ALTER TABLE "zayavka" ADD FOREIGN KEY ("id_state_zayavka") REFERENCES "state_zayavka" ("id_state_zayavka");

ALTER TABLE "filial" ADD FOREIGN KEY ("id_adres_filial") REFERENCES "adres_filial" ("id_adres_filial");

ALTER TABLE "schet" ADD FOREIGN KEY ("id_client") REFERENCES "client" ("id_client");

ALTER TABLE "schet" ADD FOREIGN KEY ("id_type_schet") REFERENCES "type_schet" ("id_type_schet");

ALTER TABLE "schet" ADD FOREIGN KEY ("id_valut") REFERENCES "valut" ("id_valut");

ALTER TABLE "schet" ADD FOREIGN KEY ("id_state_schet") REFERENCES "state_schet" ("id_state_schet");

ALTER TABLE "schet" ADD FOREIGN KEY ("id_filial") REFERENCES "filial" ("id_filial");

ALTER TABLE "operations_schet" ADD FOREIGN KEY ("id_schet") REFERENCES "schet" ("id_schet");

ALTER TABLE "operations_schet" ADD FOREIGN KEY ("id_type_operation") REFERENCES "type_operation" ("id_type_operation");

--0		list table:
--1		hhash (id_autorization, hashh)
--2		statistik (dat, colvo_obrasheni)
--3		memory (id_client, id_adres_client, fam, nam, otch, passport, numb)
--4		keys (id_autorizations, keyy)
--5		adres_filial (id_adres_filial, country, city, street, house, post_index)
--6		type_operation (id_type_operation, nam)
--7		type_schet (id_type_schet, nam)
--8		state_schet (id_state_schet, sost)
--9		valut (id_valut, nam)
--10	state_zayavka (id_state_zayavka, sost)
--11	adres_client (id_adres_client, country, city, street, house, apartment)
--12	client (id_client, id_adres_client, fam, nam, otch, passport, numb)
--13	autorization (id_autorization, id_client, loginn, pass)
--14	zayavka (id_zayavka, id_client, id_state_zayavka)
--15	filial (id_filial, id_adres_filial, nam)
--16	schet (id_schet, id_client, id_type_schet, id_valut, id_state_schet, id_filial, summ)
--17	operations_schet (id_operation, id_schet, id_type_operation, summ)

-- Заполнение таблицы "hhash"
--INSERT INTO "hhash" ("id_autorization", "hashh") VALUES
--(1, 'хэш1'), (2, 'хэш2'), (3, 'хэш3'), (4, 'хэш4'), (5, 'хэш5'),
--(6, 'хэш6'), (7, 'хэш7'), (8, 'хэш8'), (9, 'хэш9'), (10, 'хэш10');

-- Заполнение таблицы "keys"
--INSERT INTO "keys" ("id_autorizations", "keyy") VALUES
--(1, 'ключ1'), (2, 'ключ2'), (3, 'ключ3'), (4, 'ключ4'), (5, 'ключ5'),
--(6, 'ключ6'), (7, 'ключ7'), (8, 'ключ8'), (9, 'ключ9'), (10, 'ключ10');

-- Заполнение таблицы "adres_filial"
INSERT INTO "adres_filial" ("id_adres_filial", "country", "city", "street", "house", "post_index") VALUES
(1, 'Россия', 'Москва', 'Ленина', 1, 123456),
(2, 'Россия', 'Санкт-Петербург', 'Невский', 2, 234567),
(3, 'Россия', 'Казань', 'Кремлевская', 3, 345678),
(4, 'Россия', 'Сочи', 'Курортный', 4, 456789),
(5, 'Россия', 'Екатеринбург', 'Малышева', 5, 567890),
(6, 'Россия', 'Новосибирск', 'Кирова', 6, 678901),
(7, 'Россия', 'Владивосток', 'Светланская', 7, 789012),
(8, 'Россия', 'Нижний Новгород', 'Большая Покровская', 8, 890123),
(9, 'Россия', 'Ростов-на-Дону', 'Пушкинская', 9, 901234),
(10, 'Россия', 'Самара', 'Максима Горького', 10, 101234);

-- Заполнение таблицы "type_operation"
INSERT INTO "type_operation" ("id_type_operation", "nam") VALUES
(1, 'Депозит'), (2, 'Снятие'), (3, 'Перевод'), (4, 'Платеж'), (5, 'Обмен'),
(6, 'Кэшбэк'), (7, 'Выплата процентов'), (8, 'Комиссия'), (9, 'Штраф'), (10, 'Возврат');

-- Заполнение таблицы "type_schet"
INSERT INTO "type_schet" ("id_type_schet", "nam") VALUES
(1, 'Текущий'), (2, 'Сберегательный'), (3, 'Срочный вклад'), (4, 'Повторяющийся вклад'), (5, 'Ностро счет'),
(6, 'Востро счет'), (7, 'Текущий счет'), (8, 'Зарплатный'), (9, 'Эскроу'), (10, 'Совместный счет');

-- Заполнение таблицы "state_schet"
INSERT INTO "state_schet" ("id_state_schet", "sost") VALUES
(1, 'Активный'), (2, 'Неактивный'), (3, 'Закрыт'), (4, 'Приостановлен'), (5, 'Спящий'),
(6, 'Заморожен'), (7, 'Заблокирован'), (8, 'В ожидании'), (9, 'Одобрен'), (10, 'Отклонен');

-- Заполнение таблицы "valut"
INSERT INTO "valut" ("id_valut", "nam") VALUES
(1, 'RUB'), (2, 'USD'), (3, 'EUR'), (4, 'GBP'), (5, 'JPY'),
(6, 'CNY'), (7, 'INR'), (8, 'CAD'), (9, 'AUD'), (10, 'CHF');

-- Заполнение таблицы "state_zayavka"
INSERT INTO "state_zayavka" ("id_state_zayavka", "sost") VALUES
(1, 'Новая'), (2, 'В обработке'), (3, 'Завершена'), (4, 'Отменена'), (5, 'На удержании'),
(6, 'Отклонена'), (7, 'В ожидании'), (8, 'Одобрена'), (9, 'Отклонена'), (10, 'Закрыта');

-- Заполнение таблицы "adres_client"
INSERT INTO "adres_client" ("id_adres_client", "country", "city", "street", "house", "apartment") VALUES
(1, 'Россия', 'Москва', 'Тверская', 1, 10),
(2, 'Россия', 'Санкт-Петербург', 'Лиговский', 2, 20),
(3, 'Россия', 'Казань', 'Баумана', 3, 30),
(4, 'Россия', 'Сочи', 'Ривьера', 4, 40),
(5, 'Россия', 'Екатеринбург', 'Высоцкого', 5, 50),
(6, 'Россия', 'Новосибирск', 'Ленина', 6, 60),
(7, 'Россия', 'Владивосток', 'Океанский', 7, 70),
(8, 'Россия', 'Нижний Новгород', 'Горького', 8, 80),
(9, 'Россия', 'Ростов-на-Дону', 'Донская', 9, 90),
(10, 'Россия', 'Самара', 'Самарская', 10, 100);

-- Заполнение таблицы "client"
INSERT INTO "client" ("id_client", "id_adres_client", "fam", "nam", "otch", "passport", "numb") VALUES
(1, 1, 'Иванов', 'Иван', 'Иванович', '1234567890', 8901234567),
(2, 2, 'Петров', 'Петр', 'Петрович', '2345678901', 8902345678),
(3, 3, 'Сидоров', 'Сидор', 'Сидорович', '3456789012', 8903456789),
(4, 4, 'Смирнов', 'Сергей', 'Сергеевич', '4567890123', 8904567890),
(5, 5, 'Кузнецов', 'Алексей', 'Алексеевич', '5678901234', 8905678901),
(6, 6, 'Попов', 'Андрей', 'Андреевич', '6789012345', 8906789012),
(7, 7, 'Васильев', 'Владимир', 'Владимирович', '7890123456', 8907890123),
(8, 8, 'Зайцев', 'Дмитрий', 'Дмитриевич', '8901234567', 8908901234),
(9, 9, 'Ковалев', 'Юрий', 'Юрьевич', '9012345678', 8909012345),
(10, 10, 'Орлов', 'Михаил', 'Михайлович', '1012345678', 8901012345);

-- Заполнение таблицы "autorization"
INSERT INTO "autorization" ("id_autorization", "id_client", "loginn", "pass") VALUES
(1, 1, 'ivanov_login', 'ivanov_pass'), (2, 2, 'petrov_login', 'petrov_pass'),
(3, 3, 'sidorov_login', 'sidorov_pass'), (4, 4, 'smirnov_login', 'smirnov_pass'),
(5, 5, 'kuznetsov_login', 'kuznetsov_pass'), (6, 6, 'popov_login', 'popov_pass'),
(7, 7, 'vasiliev_login', 'vasiliev_pass'), (8, 8, 'zaitsev_login', 'zaitsev_pass'),
(9, 9, 'kovalev_login', 'kovalev_pass'), (10, 10, 'orlov_login', 'orlov_pass');

-- Заполнение таблицы "zayavka"
INSERT INTO "zayavka" ("id_zayavka", "id_client", "id_state_zayavka") VALUES
(1, 1, 1), (2, 2, 2), (3, 3, 3), (4, 4, 4), (5, 5, 5),
(6, 6, 6), (7, 7, 7), (8, 8, 8), (9, 9, 9), (10, 10, 10);

-- Заполнение таблицы "filial"
INSERT INTO "filial" ("id_filial", "id_adres_filial", "nam") VALUES
(1, 1, 'Филиал в Москве'), (2, 2, 'Филиал в Санкт-Петербурге'), (3, 3, 'Филиал в Казани'),
(4, 4, 'Филиал в Сочи'), (5, 5, 'Филиал в Екатеринбурге'), (6, 6, 'Филиал в Новосибирске'),
(7, 7, 'Филиал во Владивостоке'), (8, 8, 'Филиал в Нижнем Новгороде'), (9, 9, 'Филиал в Ростове-на-Дону'),
(10, 10, 'Филиал в Самаре');

-- Заполнение таблицы "schet"
INSERT INTO "schet" ("id_schet", "id_client", "id_type_schet", "id_valut", "id_state_schet", "id_filial", "summ") VALUES
(1, 1, 1, 1, 1, 1, 10000), (2, 2, 2, 2, 2, 2, 20000), (3, 3, 3, 3, 3, 3, 30000),
(4, 4, 4, 4, 4, 4, 40000), (5, 5, 5, 5, 5, 5, 50000), (6, 6, 6, 6, 6, 6, 60000),
(7, 7, 7, 7, 7, 7, 70000), (8, 8, 8, 8, 8, 8, 80000), (9, 9, 9, 9, 9, 9, 90000),
(10, 10, 10, 10, 10, 10, 100000);

-- Заполнение таблицы "operations_schet"
INSERT INTO "operations_schet" ("id_operation", "id_schet", "id_type_operation", "summ") VALUES
(1, 1, 1, 1000), (2, 2, 2, 2000), (3, 3, 3, 3000), (4, 4, 4, 4000), (5, 5, 5, 5000),
(6, 6, 6, 6000), (7, 7, 7, 7000), (8, 8, 8, 8000), (9, 9, 9, 9000), (10, 10, 10, 10000);


create role cliet;
create role administrator;
create role menedjer;


CREATE USER ivanov_login WITH LOGIN PASSWORD 'p1';
GRANT cliet TO ivanov_login;
CREATE USER u2 WITH LOGIN PASSWORD 'p2';
GRANT administrator TO u2;
CREATE USER u3 WITH LOGIN PASSWORD 'p3';
GRANT menedjer TO u3;


--SELECT table_schema, table_name, privilege_type
--FROM information_schema.table_privileges
--WHERE grantee = 'u1';