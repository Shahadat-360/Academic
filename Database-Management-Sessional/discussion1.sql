--Discussion 1
select * from sysobjects
select name from sysobjects where xtype='u'
select * from titles
select title from titles where ytd_sales>8000
select title from titles where royalty>=12 and royalty<=24
select * from titles order by price asc
select count(title_id) from titles
select max(price) from titles
select min(price) from titles
select avg(price) from titles
select type,max(price) from titles group by type
select type,avg(price) from titles group by type having avg(price)<15
select type,avg(price) as average,sum(ytd_sales) as sum from titles group by type
select * from authors
select SUBSTRING(au_fname,1,1)+'.'+au_lname as Name,phone as Phone from authors


--Discussion 2
select * from titleauthor
select * from authors
select * from titles
select * from publishers
select title_id from titleauthor where au_id in(select au_id from authors where au_id='172-32-1176') and title_id in (select title_id from titles)
select title_id,au_lname from titleauthor join authors on titleauthor.au_id=authors.au_id
select title,authors.au_lname from titles 
join titleauthor on titles.title_id=titleauthor.title_id 
join authors on authors.au_id=titleauthor.au_id

select title,'Name'=SUBSTRING(au_fname,1,1)+' '+au_lname,pub_name as 'Publishers Name' from titles 
join titleauthor on titles.title_id=titleauthor.title_id
join authors on authors.au_id=titleauthor.au_id
join publishers on publishers.city=authors.city

select au_lname,publishers.city,pub_name from authors cross 
join publishers

select au_lname,publishers.city,pub_name from authors cross 
join publishers where authors.city=publishers.city

select * from titles where royalty=(select avg(royalty) from titles)
select * from titles where royalty=(select max(royalty) from titles)



create database store
use store
create table CustomerAndSuppliers(
cusl_id char(6) primary key check(cusl_id like'[CS][0-9][0-9][0-9][0-9][0-9]'),
cusl_fname varchar(15) not null,
cusl_lname varchar(15) not null,
cusl_address text,
cusl_telno char(12) not null check(cusl_telno like'[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
cusl_city char(12) default 'Rajshahi',
sales_amnt money check(sales_amnt>=0),
proc_amnt money check(proc_amnt>=0)
);
select * from CustomerAndSuppliers
insert into CustomerAndSuppliers
(cusl_id,cusl_fname,cusl_lname,cusl_address,cusl_telno,cusl_city,sales_amnt,proc_amnt)
values('S00001','Shahadat','Hossain','Cumilla','017-26797343','Pabna',70,190),
('S00002','Masud','Rana','Jamalpur','015-16707518','Pabna',100,200),
('C00003','Sagor','Mia','Rajshahi','017-22633141',default,70,190),
('C00001','Iqbal','Hossain','221/B Dhanmondi','017-00000000','Dhaka',0,0);

drop table CustomerAndSuppliers

create table Item(
item_id char(6) primary key check(item_id like'[P][0-9][0-9][0-9][0-9][0-9]'),
item_name char(12),
item_catagory char(10),
item_price float check(item_price>=0),
item_qoh int check(item_qoh>=0),
item_last_sold datetime  default getdate()
);
insert Item(item_id ,item_name,item_catagory,item_price ,item_qoh ,item_last_sold)
values('P00009','tofail','phone',57.8,23,'3-2-15')
insert Item(item_id ,item_name,item_catagory,item_price ,item_qoh)
values('P00002','tofail ah','laptop',56.8,23)
select * from Item

create table Transactions(
tran_id char(10) primary key check(tran_id like('[T][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
item_id char(6) foreign key references Item(item_id),
cusl_id char(6) foreign key references CustomerAndSuppliers(cusl_id),
tran_type char(1),
tran_quantity int check (tran_quantity>=0),
tran_date datetime default getDate()
);
insert into Transactions(tran_id,item_id,cusl_id,tran_type,tran_quantity)
values('T000000001','P00002','C00001','O',10)


select * from Transactions
--drop table Transactions

create proc okkkk @abc char(6)
as begin
 select * from Transactions
end

exec okkkk 'ok'

create trigger update_price
on Transactions after insert
as 
begin
	declare @item_id char(6),@tranamount int,@tran_type char(1),@cusld_id char(6),@price money
	select @item_id=item_id,@tranamount=tran_quantity,@tran_type=tran_type,@cusld_id=cusl_id from inserted
	select @price=item_price from Item where @item_id=item_id
	if (@tran_type='S')
	begin
	update Item set item_qoh=item_qoh-@tranamount where @item_id=item_id
	update CustomerAndSuppliers set sales_amnt=@price*@tranamount+sales_amnt where cusl_id=@cusld_id
	end
	else
	begin
	update Item set item_qoh=item_qoh+@tranamount where item_id=@item_id
	update CustomerAndSuppliers set proc_amnt=proc_amnt+@tranamount*@price
	end 
end;

insert into Transactions(tran_id ,item_id,cusl_id,tran_type,tran_quantity)values
('T000000002','P00009','C00003','S',5)

insert into Transactions(tran_id ,item_id,cusl_id,tran_type,tran_quantity)values
('T000000003','P00009','C00003','S',5)