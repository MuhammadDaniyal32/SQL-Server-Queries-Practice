create table product1
(
P_id int,
p_name varchar (30),
price int ,
exp_date varchar(30)
)

create table order1
(
O_id int,
p_id varchar (30),
order_date varchar(30),
quantity int
)

drop table product1,order1

insert into product1 values (1,'watch','150','29-05-2019');

insert into product1 (p_id,p_name,price) values (2,'mobile','3000');

insert into product1 (p_id,p_name,price) values (3,'table','5000');

insert into product1 (p_id,p_name,price) values (4,'laptop','20000');

insert into order1 values (3,2,'09-10-2013',60);

insert into order1 (o_id,quantity) values (4,90);

insert into order1 (o_id,quantity) values (1,45);

insert into order1 values (5,3,'09-10-2013',60);

insert into order1 values (5,4,'09-10-2013',60);

insert into order1 values (5,2,'09-10-2013',456);

select * from product1,order1

--subquery with select statment

select * from order1
where P_id =
(select P_id from  product1 where p_name = 'mobile')

select * from product1
select * from order1

select * from order1
where P_id in
(select P_id from  product1 where p_name in ('mobile','tablet','watch'))

--sub query with exists clause

select * from order1
where exists
(select P_id from  product1 where p_name = 'laptop')

select * from product1
select * from order1


--sub query with not exists clause


select * from order1
where not exists
(select P_id from  product1 where p_name = 'laptop')

select * from product1
select * from order1


--subquery with insert

insert into order1 (P_id,order_date) values ('42323','09-28-2019')
select * from product1 where exists (select p_name from product1 where price='150');

select * from product1
select * from order1

--update with subquery

update order1 set quantity = quantity + 50 
where O_id in (select P_id from product1 where price > 3000)

update order1 set quantity = quantity + 50 
where O_id in (select P_id from product1 where price >= 3000)

select * from product1
select * from order1

--delete with sub query

delete from order1 where P_id = '42323' select * from order1 where exists 
(select * from product1 where P_id = '4')

