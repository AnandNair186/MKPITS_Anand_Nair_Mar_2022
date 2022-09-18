create table teacher (id int primary key ,t_name varchar(20),city varchar(30))
create table tlog(LoginId int primary key identity,t_id int,operation varchar(20),status_ datetime)
go

create trigger teach on teacher for insert
as
insert into tlog(t_id,operation,status_) select id,'insert',GETDATE() from inserted;

select * from teacher 
select * from tlog

insert into teacher values(101,'Varun','Delhi'),(104,'Yash','Mumbai'),
(201,'Anand','Nagpur');
go


create trigger up on teacher
after update
as insert into tlog(t_id,operation,status_) select id ,'update',getdate() from deleted;

update teacher set city='Pune' where id=101

select * from teacher 
select * from tlog
