
CREATE DATABASE store;
USE store;

CREATE TABLE listt (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    nameSP VARCHAR(60) NOT NULL,
    price DOUBLE,
    ngaynhap VARCHAR(40) DEFAULT 'can phai nhap',
    gmail VARCHAR(100) UNIQUE
);

INSERT INTO listt (name, nameSP, price, ngaynhap, gmail) 
VALUES  ('d', 'dat', 233, '31', 'example@gmail.com'),
		('d', 'dat', 233, '31', 'example3@gmail.com'),	
		('d1', 'dat2', 2332, '311', 'exampl2e@gmail.com');

alter table listt add column sdt char(11) default "9123";
ALTER TABLE listt DROP COLUMN gmail;
update listt 
set sdt = "928372"
where id in (2);

update listt 
set sdt = "922232"
where id in (3);


SELECT * FROM listt;