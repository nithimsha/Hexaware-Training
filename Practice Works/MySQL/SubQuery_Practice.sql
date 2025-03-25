Use nithim_db
create table product
 (
 pid int identity(200,1) primary key not null,
 pname varchar(100),
 pprice bigint);

 insert into product values
 ('pen','10'),
 ('notebook','50'),
 ('toys','100'),
 ('laptop','20000'),
 ('pencl','10'),
 ('pencilbox','250');

 create table orders
 (
 orid int identity(200,1) primary key not null,
 ordate date,
 prid int,
 constraint pr_prid foreign key (prid) references product(pid)
 );

 insert into orders values (getdate(),(select pid from product where pname='pen')),
 (getdate(),(select pid from product where pname='notebook')),
 (getdate(),(select pid from product where pname='toys')),
 (getdate(),(select pid from product where pname='laptop')),
 (getdate(),(select pid from product where pname='pencil'));

 select* from orders

select* from product

delete from orders


delete from orders where prid=203
delete from product where pid not in (select prid from orders)

select * from product
select * from orders
use nithim_db
select * from product
select * from orders

--Using corelated 
select  p.pid,p.pname,
(select count(prid) from orders where prid= p.pid group by prid )  as Total_Order
from product as p

--Using joins
select p.pid, p.pname, count(o.prid)as Total_Order
from product as p
inner join 
orders as o
on p.pid=o.prid
group by p.pname,p.pid

--sub query to find out average price of product and search minimum price
select avg(pprice) from product group by pname
select pname,pprice from product where pprice >All(select avg(pprice) from product group by pname)
select * from product

--join query to find out average price of product and search minimum price
select avg(pprice) from product group by pname
select p1.pname,p1.pprice from product as p1
join
product as p
on p.pid =p1.pid
where p.pprice >= All(select avg(pprice) from product group by pname)
select * from product


select pname,pprice from product where pprice <= Any(select avg(pprice) from product group by pname)


select pname,pprice from product where pprice <= All(select avg(pprice) from product group by pname)