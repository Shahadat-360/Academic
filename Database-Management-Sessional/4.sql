----create alter and drop
use master
create database varsity
use varsity

create table instructor(

	ID varchar(20),
	name varchar(20) not null,
	dept_name varchar(20),
	salary numeric(8,2),
	primary key(ID)
);

insert into instructor  values ('10101','Srinivasan','Comp.Sci',65000);

insert into instructor  values ('12121','Wu','Finance',90000);

insert into instructor values ('15151','Mozart','Music',40000);

insert into instructor  values ('22222','Einstein','Physics',95000);

insert into instructor values ('32343','EI Said','History',60000);


insert into instructor values ('33456','Gold','Physics',87000);


select * from instructor
select dept_name from instructor
---group by

select name from instructor group by name;
select dept_name,avg(salary) as avg_salary from instructor group by dept_name
select dept_name,count(*) from instructor group by dept_name
---having clause
select dept_name,avg(salary) as avg_salary from instructor group by dept_name having avg(salary)>55000;
----order by clause
select * from instructor order by salary asc,name desc;

---view
create view faculty as 
select ID,name,dept_name from instructor
select * from instructor
----index
create index dept_inx on instructor(dept_name)
---procedure
create procedure instruct_proc
AS
BEGIN
select name as authors_name from instructor where ID = '15151'
END
exec instruct_proc
