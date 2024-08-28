use master
create database Mizan
use Mizan
create table instructor(
            ID varchar(20),
			name varchar(15) not null,
			dept_name varchar(15),
			salary numeric(8,2),
			primary key(ID));

 insert into instructor(ID,name,dept_name,salary) values('10121','Sumaiya','ICE','86000')
 insert into instructor(ID,name,dept_name,salary) values('10122','MITU','CSE','80000')
 insert into instructor(ID,name,dept_name,salary) values('10123','Mahi','EEE','70000')
 insert into instructor(ID,name,dept_name,salary) values('10124','Trishna','EECE','90000')
 insert into instructor(ID,name,dept_name,salary) values('10125','Fariha','CE','95000')
 insert into instructor(ID,name,dept_name,salary) values('10126','Supriya','Arct','68000')

 select * from instructor
 alter table instructor add course_id varchar(20)
 drop table instructor
