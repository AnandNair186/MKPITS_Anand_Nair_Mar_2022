-----Functions-----

create table product1
(
product_id int primary key identity,
product_name varchar (20),
price int,
)

insert into product1 values
('Mouse',200),
('Keyboard',400),
('Memory Card',800),
('Pendrive',1200),
('Headphones',2000),
('Mousepad',500),
('usb hub',1000);

----MAX() function----
select product_name,price from product1
where price=(select max(price) from product1)

---MIN() function----
select product_id,product_name,price from product1 where price=(select MIN(price) from product1)

select price,product_name from product1 where price>=500 and price<=2000

---SUM() function-----
select sum(price) from product1 where price<2000

select sum(price) from product
