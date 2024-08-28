use pubs
select name from sysobjects where xtype='u';
select * from authors cross join titleauthor;
select * from authors
select * from titleauthor;
select * from authors full outer join titleauthor on authors.au_id=titleauthor.au_id

use ice_dept
select name from sysobjects where xtype='u';
select * from sessionStu

alter table sessionStu
add Home_Town text;

update sessionStu set Home_Town='jamalpur' where ID=3
delete from sessionStu where Subject like'ML expert'

alter table sessionStu
drop column Name

use pubs
select name from sysobjects where xtype='u'
select * from authors

create view basic_info as 
select au_fname+' '+au_lname as 'Name',phone from authors
where state='CA'

select * from basic_info

use pubs
create procedure allrecords
as begin
	select * from authors
end;

exec allrecords

create procedure allrecords2 @state varchar(20)
as begin
	select * from authors where state=@state
end;

exec allrecords2 'CA';

select * from titles

create procedure allrecords3 @price int
as begin
	update titles set price=price+@price where price>20
end;

exec allrecords3 -20
drop procedure allrecords3

select name from sysobjects where xtype='u'
select * from employee

create trigger update_job_lvl 
on employee after insert
as begin
	declare @job_id int,@job_lvl int,@minit char(1)
	select @job_id=job_id,@job_lvl=job_lvl,@minit=minit from inserted
	if(@minit='S')
	update employee set job_id=10,job_lvl=50 where @job_id=job_id
end;

insert into employee values('Sha42628M','Shahadat','S','Hossain',6,35,1111,2021-02-21)