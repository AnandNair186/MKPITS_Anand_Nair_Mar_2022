create table student (id int primary key identity(1,1),fname varchar(10),lname varchar(10),city varchar(10),course varchar(10))
insert into student(fname,lname,city,course) values ('Anand','Nair','Nagpur','Dotnet')
select * from student

insert into student(fname,lname,city,course) values ('Raj','B','Mumbai','Dotnet')
select * from student
insert into student(fname,lname,city,course) values ('Manish','C','Nagpur','Dotnet')
select * from student
insert into student(fname,lname,city,course) values ('Usha','M','Pune','Java')
select * from student
insert into student(fname,lname,city,course) values ('Chetan','S','Bangalore','java')
select * from student