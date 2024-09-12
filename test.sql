DROP TABLE IF EXISTS listt;
CREATE DATABASE store;
USE store;
CREATE TABLE listt (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nameSP VARCHAR(60) NOT NULL,
    price DOUBLE,
    ngaynhap VARCHAR(40) DEFAULT 'can phai nhap',
    name VARCHAR(60) NOT NULL,
    gmail VARCHAR(100) UNIQUE
);


INSERT INTO listt (nameSP, price, ngaynhap, name, gmail) 
VALUES  ('dat', 233.5, '31', 'dd', 'example@gmail.com'),
        ('dat', 233.4, '31', 'd', 'example3@gmail.com'),    
        ('dat', 233, '31', 'd', 'example32@gmail.com'), 
        ('dat2', 2332, '311', 'd1', 'exampl2e@gmail.com');

ALTER TABLE listt ADD COLUMN sdt VARCHAR(11) DEFAULT '09123';
ALTER TABLE listt DROP COLUMN gmail;

UPDATE listt 
SET sdt = '09283732'
WHERE id = 2;

UPDATE listt 
SET sdt = '0922232'
WHERE id = 3;
 
 ALTER TABLE listt MODIFY COLUMN price INT;
SELECT * FROM listt;
