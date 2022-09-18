create table student2 (rollno int primary key,sname varchar(10),city varchar(20),sdate date)
insert into student2 values(1,'Amit','Nagpur','2022-5-2')
select * from student2

insert into student2 values(2,'Kunal','Nagpur','2022-6-3')
select * from student2

insert into student2 values(3,'Raj','Nagpur','2022-7-4')
select * from student2

insert into student2 values(4,'Aman','Pune','2022-8-5')
select * from student2

insert into student2 values(5,'Pranay','Pune','2022-9-6')
select * from student2

---where query---'and'---'between'----
select * from student2 where rollno between 2 and 3

--using like---
select * from student2 where city like'N%r'
select * from student2 where sname like'%Ku%'

---using in----
select * from student2 where rollno in (1,3,5)
select * from student2 where sname in ('Amit','Aman','Raj')
select * from student2 where city in ('Nagpur')




