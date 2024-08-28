use master
create database Fariha
use Fariha
create table university(
			 dept_name varchar(15),
			 bulding varchar(15),
			 budget numeric(8,2)
			 primary key(dept_name)

);
insert into university values('ICE','Engineering',87000)
insert into university values('CSE','Engineering',90000)
insert into university values('EEE','JHON',95000)
insert into university values('EECE','Watson',80000)
insert into university values('BANGLA','BANGLA',68000)
insert into university values('ENGLISH','ENGLISH',55000)

select * from university
select dept_name from university
select dept_name from university where dept_name = 'EECE'