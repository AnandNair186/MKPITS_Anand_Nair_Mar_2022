/* trigger Update*/

create table student(rollno int primary key,s_name varchar (20))
create table slog(loginId int primary key identity, rollno int,
operation varchar(20),update_status datetime) go

create trigger st on student after update
as 
insert into slog(rollno,operation,update_status)
select rollno,'update', getdate() from deleted;

select * from student
select* from slog

insert into student values (5,'Amol')
insert into student values (26,'Abhi')
insert into student values (15,'Bha')

update student set s_name='Bhavesh' where rollno=15