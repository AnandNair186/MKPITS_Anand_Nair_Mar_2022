/*composite key example*/

create table orderinfo (order_id int,item_id int, order_name varchar(30),
item_name varchar(30),primary key (order_id,item_id))

insert into orderinfo values(1,1,'abc','mouse')
insert into orderinfo values(1,2,'abc','mouse')
select * from orderinfo

-----NORMALIZATION-------

/*1st NF*/

create table student (id int,s_name varchar(30),mobile_no varchar(30))

insert into student values (1,'Anand','9888888888,9777777777')----not valid in 1st NF
drop table student
select * from student
insert into student values (1,'Anand','9888888888')----valid in 1st NF
insert into student values (1,'Anand','9777777777')----valid in 1st NF

/*2nd NF*/

create table teachers(teacher_id int ,subject_ varchar(30),teacher_age int)
insert into teachers values (1,'Chemistry',30)----not valid in 2st NF
insert into teachers values (1,'Physics',30)
insert into teachers values (3,'English',32)
insert into teachers values (4,'Hindi',35)

select * from teachers
drop table teachers

---valid 2nd NF--
create table teacher_info(teacher_id int primary key,teacher_age int)

create table teacher_subject (
teacher_id int ,
subject_name varchar(30),
foreign key (teacher_id) 
references teacher_info(teacher_id)
);
insert into teacher_info values (1,30)
insert into teacher_info values (3,32)
insert into teacher_info values (4,35)


insert into teacher_subject values (1,'Chemistry')
insert into teacher_subject values (1,'Physics')
insert into teacher_subject values (3,'English')
insert into teacher_subject values (4,'Hindi')

select * from teacher_info
select * from teacher_subject

----another example of 2nd NF----

/*creating a non valid 2nd NF*/
create table orders(
order_id int,
order_date date,
product_name varchar(20),
cust_name varchar(20),
quantity smallint,
);

insert into orders values (1,'2022-09-1','Samosa','Ravi',2)
insert into orders values (1,'2022-09-3','Pakoda','Ravi',4)
insert into orders values (1,'2022-09-5','Kachori','Ravi',3)

insert into orders values (2,'2022-09-2','Samosa','Aman',3)
insert into orders values (2,'2022-09-4','Kachori','Aman',2)

select * from orders

/*creating a valid 2nd NF*/
drop table orders

create table order_info (
order_id int primary key,
cust_name varchar(20));

create table quantity_details(
order_id int,
order_date date,
product_name varchar(20),
quantity smallint,

foreign key (order_id)
references order_info(order_id)
);

insert into order_info values (1,'Ravi')
insert into order_info values (2,'Aman')

insert into quantity_details values (1,'2022-09-1','Samosa',2)
insert into quantity_details values (1,'2022-09-3','Pakoda',4)
insert into quantity_details values (1,'2022-09-5','Kachori',3)

insert into quantity_details values (2,'2022-09-2','Samosa',3)
insert into quantity_details values (2,'2022-09-2','Kachori',2)

select * from order_info
select * from quantity_details





