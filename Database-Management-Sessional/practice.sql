create database prac
use prac

create table customerandsupliers1(
cusl_id char(6) primary key check(cusl_id like('[CS][0-9][0-9][0-9][0-9][0-9]')),
cusl_fname char(15) not null,
cusl_lname varchar(15),
cusl_address text,
cusl_telno character(12)check(cusl_telno like('[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
cusl_city char(12) default 'Rajshahi',
sales_amnt money check (sales_amnt>=0),
proc_amnt money check (proc_amnt>=0)
)
INSERT into customerandsupliers1
(cusl_id,cusl_fname,cusl_lname,cusl_address,cusl_telno,cusl_city,sales_amnt,proc_amnt) VALUES
('S00001','samia','yasmin','khustia','017-22633141','Kushtia',70,190)

INSERT into customerandsupliers1
(cusl_id,cusl_fname,cusl_lname,cusl_address,cusl_telno,cusl_city,sales_amnt,proc_amnt) VALUES
('C00002','fa','med','khulna','017-22633142','Khulna',7,19)

INSERT into customerandsupliers1
(cusl_id,cusl_fname,cusl_lname,cusl_address,cusl_telno,cusl_city,sales_amnt,proc_amnt) VALUES
('S00007','il','ed','kushtia','017-22633143','Khulna',77,199)

select * from customerandsupliers1
drop table customerandsupliers1

create table item1
(
item_id char(6) primary key check(item_id like ('[P][0-9][0-9][0-9][0-9][0-9]')),
item_name char(12),
item_category char(10),
item_price float(12) check(item_price>=0),
item_qoh int check(item_qoh>=0),
item_last_sold datetime default getDate()
)
insert into item1(item_id,item_name,item_category,item_price,item_qoh)
values('P00012','Samia','Tab',14,30)

insert into item1(item_id,item_name,item_category,item_price,item_qoh)
values('P00013','Yasmin','laptop',24,40)

insert into item1(item_id,item_name,item_category,item_price,item_qoh)
values('P00014','Suhada','laptop',34,50)

insert into item1(item_id,item_name,item_category,item_price,item_qoh)
values('P00015','Suhada','tab',54,60)

insert into item1(item_id,item_name,item_category,item_price,item_qoh)
values('P00016','Suhada','mobile',64,70)
select * from item1

create table transactions1 (

tran_id char(10) primary key check(tran_id like('[T][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
item_id char(6)foreign key references item1(item_id),
cusl_id char(6) foreign key references customerandsupliers1(cusl_id),
tran_type char(1),
tran_quantity int check (tran_quantity>=0),
tran_date datetime default getDate()
)

insert into transactions1(tran_id,item_id,cusl_id,tran_type,tran_quantity)
values('T000000001','P00012','S00001','O','10')

insert into transactions1(tran_id,item_id,cusl_id,tran_type,tran_quantity)
values('T000000002','P00013','C00002','S','12')

insert into transactions1(tran_id,item_id,cusl_id,tran_type,tran_quantity)
values('T000000003','P00014','S00007','P','14')

select * from transactions1

create proc practice1
as
begin
select "Category" = item_category, 
"Total no of items" = SUM(item_qoh),
"average price" = AVG(item_price)from item1 group by item_category
end
exec practice1
drop proc practice1

create proc practice2 @category_name char(15),@price_value money
as 
begin 
select * from item1 where item_category=@category_name and item_price<@price_value
end 
exec practice2 'tab',20
 
create proc practice3
as 
begin 
select * from item1 where item_category = 'laptop' and item_price<50
end 
exec practice3 

create trigger update_item on  transactions1 for insert
as
begin
declare @itemid char(6),@tranamount int,@tran_uqan char(1)
select @itemid = item_id ,@tranamount = tran_quantity, @tran_uqan = tran_type from inserted
if (@tran_uqan = 'S')
update item1 set item_price = item_price-@tranamount where item_id = @itemid
else
update item1 set item_price = item_price+@tranamount where item_id = @itemid
end

insert into transactions1(tran_id,item_id,cusl_id,tran_type,tran_quantity)
values('T000000004','P00013','C00002','S','14')

 
drop trigger update_item 
select*from transactions1
select * from item1

delete from transactions1 where item_id = 'P00016'
delete from item1 where item_id = 'P00016'

CREATE TRIGGER trg_update_item ON  transactions1 FOR INSERT
AS
BEGIN
DECLARE @item_id char(6), @tranamount int, @tran_type char(1),@cusld_id char(6),@price money
SELECT @item_id=item_id, @tranamount=tran_quantity, @tran_type=tran_type,@cusld_id =cusl_id FROM INSERTED
Select @price=item_price from item1 where item_id=@item_id
 IF (@tran_type ='S')
     begin
       UPDATE item1 SET item_qoh=item_qoh- @tranamount WHERE item_id=@item_id 
       update  customerandsupliers1 set sales_amnt=sales_amnt+@price*@tranamount where cusl_id=@cusld_id
     end
 ELSE
   begin
    UPDATE item1 SET item_qoh=item_qoh+ @tranamount WHERE item_id=@item_id
    update  customerandsupliers1 set proc_amnt=proc_amnt+@tranamount*@price where cusl_id=@cusld_id
    end
  END 
  
insert into transactions1(tran_id,item_id,cusl_id,tran_type,tran_quantity)
values('T000000004','P00012','S00001','P','4')
drop trigger trg_update_item
 delete from transactions1 where item_id = 'P00013'
   select *from customerandsupliers1
   select * from transactions1
   select * from item1






