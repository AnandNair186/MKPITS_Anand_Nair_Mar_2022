-----SubQuery-------

create table customer(
cust_id int ,
cust_name varchar(30),
city varchar(20),
)

create table orders(
order_id int,
order_date date,
cust_id int
)

insert into customer values
(101,'Anand','Dubai'),
(103,'Ketan','New York'),
(102,'Rakesh','USA'),
(108,'Aman','Belgium'),
(106,'Jayesh','France');

insert into orders values
(111,'2022-5-2',101),
(111,'2022-7-8',103),
(111,'2022-9-3',108),
(111,'2022-11-6',102);

/*select order_id,order_date,cust_id from orders where cust_id in
(select cust_id from customer
where city='New York'
)
order by order_date desc;*/

select order_id,order_date,cust_id from orders 
where cust_id in(
select cust_id from customer where city='Belgium'
)

order by order_date desc;

