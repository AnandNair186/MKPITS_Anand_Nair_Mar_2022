/*Insert trigger*/

create table employee(id int primary key,name_ varchar(20))
create table elog(loginId int primary key identity,id int,operation varchar (20),
update_date datetime) go

create trigger et on employee for insert 
as insert into elog (id,operation,update_date)
select id,'insert',GETDATE() from inserted;

insert into employee values (25,'Ketan')

select * from employee
select * from elog