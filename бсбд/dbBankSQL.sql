CREATE TABLE "hhash" (
  "id_autorization" bigint,
  "hashh" text
);

CREATE TABLE "statistik" (
  "dat" date,
  "colvo_obrasheni" bigint
);

CREATE TABLE "memory" (
  "id_client" bigint,
  "id_adres_client" bigint,
  "fam" text,
  "nam" text,
  "otch" text,
  "passport" bigint,
  "numb" bigint
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

insert into hhash (id_autorization, hashh)
values (), ();

insert into statistik (dat, colvo_obrasheni)
values (), ();

insert into memory (id_client, id_adres_client, fam, nam, otch, passport, numb)
values (), ();

insert into keys (id_autorizations, keyy)
values (), ();

insert into adres_filial (id_adres_filial, country, city, street, house, post_index)
values (), ();

insert into type_operation (id_type_operation, nam)
values (), ();

insert into type_schet (id_type_schet, nam)
values (), ();

insert into state_schet (id_state_schet, sost)
values (), ();

insert into valut (id_valut, nam)
values (), ();

insert into state_zayavka (id_state_zayavka, sost)
values (), ();

insert into adres_client (id_adres_client, country, city, street, house, apartment)
values (), ();

insert into client (id_client, id_adres_client, fam, nam, otch, passport, numb)
values (), ();

insert into autorization (id_autorization, id_client, loginn, pass)
values (), ();

insert into zayavka (id_zayavka, id_client, id_state_zayavka)
values (), ();

insert into filial (id_filial, id_adres_filial, nam)
values (), ();

insert into schet (id_schet, id_client, id_type_schet, id_valut, id_state_schet, id_filial, summ)
values (), ();

insert into operations_schet (id_operation, id_schet, id_type_operation, summ)
values (), ();