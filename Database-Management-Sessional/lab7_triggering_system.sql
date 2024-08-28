use pubs


--//6 number problem
select * from titles;
select type,max(price) as MAX_Price from titles group by type;
select type,min(price) as Min_price from title group by type;
select type,avg(price) as Average from titles group by type having avg(price)>15;
select type,avg(price)as average,sum(ytd_sales) as sum from titles group by type;
select count(price) as Number_of_Price from titles



--4 Number problem
select type,avg(price) as Price,sum(ytd_sales) as sum from titles group by type having avg(price)>15
SELECT * FROM TITLES ORDER By price asc 
create index title_id on titles(title_id);



select * from authors
select SUBSTRING(au_fname,1,1)+'.'+au_lname as Name,phone from authors

select * from authors join titleauthor on authors.au_id=titleauthor.au_id
select * from titles
select * from authors
select * from titleauthor
select * from publishers


--indexing
create index title on titles(title)
drop index title on titles


--joining
select * from titles 
join titleauthor on titles.title_id=titleauthor.title_id
join authors on authors.au_id=titleauthor.au_id

select au_fname+' '+au_lname as Name,royaltyper from authors left 
join titleauthor on authors.au_id=titleauthor.au_id

select au_fname+' '+au_lname as name,royaltyper from authors right 
join titleauthor on authors.au_id=titleauthor.au_id


--7
CREATE TRIGGER update_total_price
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
  UPDATE orders
  SET total_price = quantity * price
  WHERE id = NEW.id;
END;