create table m(name_ varchar(30) ,manager_id int)

create table e(emp_name varchar(30),empid int)

insert into m values('Pankaj M',1)
insert into m values('Ajay M',2)
insert into m values('Ram M',5)
insert into m values('Anand M',3)
insert into m values('Jayesh M',4)

insert into e values('Vishant Naik',1)
insert into e values('Saurab',2)
insert into e values('Rajat',2)
insert into e values('Vinay',5)
insert into e values('Yash',5)
insert into e values('Tushar',3)
insert into e values('Anand',4)
select * from m
select * from e

select m.name_,e.emp_name from m inner join e on m.manager_id=e.empid