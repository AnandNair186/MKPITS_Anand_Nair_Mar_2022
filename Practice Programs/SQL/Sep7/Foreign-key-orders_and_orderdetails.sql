create table orders(
orderid int primary key,
orderdate date,
custid int,
);

create table orderdetails(
orderid int,
ordername varchar(20),
orderquantity int,
constraint fk foreign key (orderid) 
references orders(orderid)
);

select * from orders
insert into orders values(1,'2022-5-1',101)

insert into orderdetails values (1,'mouse',5)
select * from orderdetails

insert into orders values(2,'2022-5-2',102)

insert into orderdetails values (2,'keyboard',4)

select * from orderdetails where orderid=2
delete from orders where custid=102

delete from orderdetails where ordername ='mouse'
select * from orderdetails

insert into orderdetails values (1,'mouse',5)

insert into orders values (22,'2022-5-4',1022) 
insert into orderdetails values (22,'cpu',7) 

select * from orderdetails

delete from orderdetails where orderid=3

select * from orders where orderid=22
delete from orders where orderid=22

delete from orderdetails where orderid=22

select * from orders
insert into orders values (4,'2022-05-04',104)
insert into orders values (5,'2022-05-05',105)
insert into orders values (6,'2022-05-06',106)

select * from orderdetails



insert into orderdetails values (4,'joystick',2)
insert into orderdetails values (5,'speakers',3)
insert into orderdetails values (6,'ssd',1)

delete from orderdetails where orderquantity =2

----------using operators and between like, where in----------

select * from orderdetails where orderid>4

select * from orderdetails where orderid between 3 and 4
select * from orders where orderid in (1,3,5)

select * from orders where orderid in (1,3,5)

select * from orderdetails where ordername like ('%sd%')

select * from orderdetails where ordername like('%jo%')







