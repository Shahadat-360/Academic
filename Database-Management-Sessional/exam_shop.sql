use shop
CREATE TABLE CustomerAndSuppliers
(
cusl_id CHAR (6) PRIMARY KEY CHECK (cusl_id LIKE '[CS][0-9][0-9][0-9][0-9][0-9]'),
cusl_fname CHAR(15) NOT NULL,
cusl_lname VARCHAR (15),
cusl_address TEXT,
cusl_telno CHAR (12) CHECK (cusl_telno LIKE '[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
cusl_city CHAR (12) DEFAULT 'Rajshahi',
sales_amnt MONEY CHECK (sales_amnt>=0),
proc_amnt MONEY CHECK (proc_amnt>=0)
)
Insert into CustomerAndSuppliers values('C10000','Tofail','Ahmed','Kushita','017-22633140','Kushtia',500,710)
select * from CustomerAndSuppliers
create table item (
item_id char(6) primary key check(item_id like '[P][0-9][0-9][0-9][0-9][0-9]'),
item_name char(15),
item_category char(12),
item_price money,
item_qoh int,
item_last_sold datetime default getdate()
)
insert into item(item_id,item_name,item_category,item_price,item_qoh,item_last_sold)
 values ('P00000','dell','laptop',110,50,'2-4-2015')
select * from item


create table transactions (
tran_id char(8) check(tran_id like '[T][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
item_id char(6) foreign key references item(item_id),
cusl_id char(6) foreign key references CustomerAndSuppliers(cusl_id),
tran_type char(1) check(tran_type like'[SO]'),
tran_quantity int,
tran_date datetime default getdate()
)
create trigger print_message on transactions for insert 
as
begin
print 'one item is affected'
end
drop trigger print_message
insert transactions(tran_id,item_id,cusl_id,tran_type,tran_quantity,tran_date)
  values('T0000000','P00000','C10000','S',10,'1-1-2015')

--delete from transactions where tran_id='T0000000'
select * from transactions


alter proc jake @catagory char(13),@price money
as
begin
declare @price_value money
select @price_value=avg(item_price) from  item where item_category= @catagory
while(@price_value<@price)
begin
update item set item_price=item_price+item_price*.1 where item_category=@catagory
select @price_value=avg(item_price) from  item where item_category= @catagory
end
end
select * from item

exec jake 'laptop',160



select avg(item_price) from item where item_category='laptop'


create trigger tofail on transactions for insert 
as
begin
declare @item_id char(6),@cusl_id char(6),@tran_type char(1),@tran_amnt int,@price money 
select @item_id =item_id,@cusl_id=cusl_id, @tran_type=tran_type,@tran_amnt=tran_quantity from inserted
select @price=item_price from item where item_id=@item_id
select * from inserted
if(@tran_type='S')
 begin
   update item set item_qoh=item_qoh-@tran_amnt where item_id=@item_id
   update CustomerAndSuppliers set sales_amnt=sales_amnt+@price*@tran_amnt where cusl_id=@cusl_id
  end
 else 
begin
 update item set item_qoh=item_qoh+@tran_amnt where item_id=@item_id
   update customer set proc_amnt=proc_amnt+@price*@tran_amnt where cusl_id=@cusl_id
end
end

insert transactions(tran_id,item_id,cusl_id,tran_type,tran_quantity,tran_date)
  values('T0000001','P00000','C00000','S',10,'1-1-2015')
drop trigger tofail
select * from CustomerAndSuppliers
select * from item
select * from transactions