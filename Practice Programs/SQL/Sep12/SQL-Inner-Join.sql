-------SQL Join----------
/*Inner Join*/

create table student2(
id int primary key identity,
admission_no varchar(30),
Fname varchar(30),
Lname varchar(30),
age int,
city varchar(30),
)

create table fees(
admission_no varchar(30),
course varchar(30),
amount_paid int,
)

insert into student2 values (3354,'Luisa', 'Evans', 13, 'Texas')
insert into student2 values (2135, 'Paul', 'Ward', 15, 'Alaska')
insert into student2 values(4321, 'Peter', 'Bennett', 14, 'California')
insert into student2 values(4213,'Carlos', 'Patterson', 17, 'New York')
insert into student2 values(5112, 'Rose', 'Huges', 16, 'Florida')
insert into student2 values(6113, 'Marielia', 'Simmons', 15, 'Arizona')
insert into student2 values(7555,'Antonio', 'Butler', 14, 'New York')
insert into student2 values(8345, 'Diego', 'Cox', 13, 'California')

insert into fees values 
(3354,'Java', 20000),       
(7555, 'Android', 22000),       
(4321, 'Python', 18000),    
(8345,'SQL', 15000),       
(5112, 'Machine Learning', 30000);  

select* from student2
select * from fees

select student2.admission_no,student2.Fname,student2.Lname,fees.course,fees.amount_paid
from student2 
inner join fees on student2.admission_no=fees.admission_no;

           
        
           
      
        
           
      

