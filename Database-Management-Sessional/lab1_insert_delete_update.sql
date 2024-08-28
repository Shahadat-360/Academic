create database ice_dept
use ice_dept

create table sessionStu(
	ID int not null primary key,
	Name text not null,
	session char(9) not null check(session like'[1-2][0][0-2][0-9][-][1-2][0][0-2][0-9]'),
	Subject text not null 
);
--drop table sessionStu;
--insertion
insert into sessionStu(ID,Name,session,Subject) values(1,'Shahadat','2018-2019','Cyber Security');
insert into sessionStu(ID,Name,session,Subject) values(2,'Sagor','2018-2019','ML expert');
insert into sessionStu(ID,Name,session,Subject) values(3,'Masud','2018-2019','Web Developer');
select * from sessionStu;

--deletion
delete from sessionStu where ID=1;
delete from sessionStu where session like'2018-2019';
delete from sessionStu where Subject like'EXpert';

--update
update sessionStu set Name='Ruler',session='2000-2001',Subject='EXpert' where Subject like'ML expert';
