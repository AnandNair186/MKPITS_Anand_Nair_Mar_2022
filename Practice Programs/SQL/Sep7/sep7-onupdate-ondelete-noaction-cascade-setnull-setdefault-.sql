create table vendorgroup(
groupid int primary key,
groupname varchar(50)
);

create table vendors(
groupid int,
vendorid int,
vendorname varchar(10),
constraint fk1 foreign key(groupid) 
references vendorgroup(groupid)
);

insert into vendorgroup values (101,'grpA')
select * from vendorgroup

insert into vendors values (101,1,'aman')
select * from vendors

insert into vendorgroup values (102,'grpB')
select * from vendorgroup

insert into vendors values (102,2,'ketan')
select * from vendors

insert into vendorgroup values (103,'grpC')
select * from vendorgroup

insert into vendors values (103,3,'ratan')
select * from vendors

insert into vendorgroup values (104,'grpD')
select * from vendorgroup

insert into vendors values (104,4,'chetan')
select * from vendors

insert into vendorgroup values (105,'grpE')
select * from vendorgroup

insert into vendors values (105,5,'tushar')
select * from vendors

select distinct vendorname from vendors order by vendorname desc


--------------------------Assignment sept7---------------------

---on delete no action>> ---can't delete row from parent table directly error will appear.

create table vendorgrp( 
grpid int primary key identity,
grpname varchar(50) ,
);

create table vendor(
groupid int,
vendorid int ,
vendorname varchar(10),
constraint fkvendor foreign key(groupid)
references vendorgrp (grpid)
on delete no action    
);

insert into vendorgrp values ('grp1')
insert into vendorgrp values ('grp2')
insert into vendorgrp values ('grp3')
insert into vendorgrp values ('grp4')
insert into vendorgrp values ('grp5')
insert into vendorgrp values ('grp6')

insert into vendor values(6,106,'mohan')



delete from vendor where groupid =6
delete from vendorgrp where grpid=6

select * from vendorgrp
select * from vendor

drop table vendor

-----------on delete cascade example---------

----"if row is deleted from parent table then same row from child table also gets deleted".

create table vendor(
grpid int primary key,
vendorname varchar(20),
vendorid int,
constraint fk foreign key (grpid) 
references vendorgrp(grpid)
on delete cascade 
);
insert into vendorgrp values('grp6')
insert into vendor values(7,'ritesh',107)

delete from vendorgrp where grpid =7

select * from vendorgrp
select * from vendor

drop table vendor

-------on delete set null>> this sets the row in child table to null,
--according to the deleted row from parent table

create table vendor(
grpid int,
vendorid int primary key,
vendorname varchar(20),
constraint fk foreign key(grpid)
references vendorgrp(grpid)
on delete set null,
);

insert into vendor values (4,304,'jay')

delete from vendorgrp where grpid =4

select * from vendorgrp
select * from vendor

drop table vendor


-------on delete set default>> 

create table vendor(
grpid int,
vendorid int primary key,
vendorname varchar(20),
constraint fk foreign key(grpid)
references vendorgrp(grpid)
on delete set default,
);

insert into vendor values (8,408,'kapil')
insert into vendorgrp values ('ketan')

delete from vendorgrp where grpid =8

select * from vendorgrp
select * from vendor

drop table vendor

---------------update query-------
--on update no action
create table vendor(
grpid int,
vendorid int primary key,
vendorname varchar(20),
constraint fk foreign key(grpid)
references vendorgrp(grpid)
on update no action,
);

update vendorgrp set grpname='mkp5' where grpid=5

insert into vendor values (1,101,'abhay')

select * from vendorgrp
select * from vendor

drop table vendor

----------------------------------