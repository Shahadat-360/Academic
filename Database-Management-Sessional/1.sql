use master
create database university
use university
create table department(
			 dept_name varchar(20),
			 building varchar (15),
			 budget numeric(8,2),
			 primary key(dept_name)
);
insert into department values('ICE','Engineering',87000)
insert into department values('CSE','Engineering',90000)
insert into department values('EEE','JHON',95000)
insert into department values('EECE','Watson',80000)
insert into department values('BANGLA','BANGLA',68000)
insert into department values('ENGLISH','ENGLISH',55000)

select * from department
--deleting
delete from department where dept_name ='CSE'
select * from department
 --update
 update department set budget = budget + budget*1.05 where budget <90000
 select * from department