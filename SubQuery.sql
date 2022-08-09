create table product1
(
p_id int,
p_name varchar(50),
price int,
exp_date datetime
)


select * from product1

create table ordr1
(
o_id int,
p_id int,
order_date datetime,
quantity int
)
select * from ordr1

insert into product1 values
(1,'watch','250','09-23-2014')

insert into product1 (p_id,p_name,price) values
(2,'mobile','100')

insert into product1 (p_id,p_name,price)  values
(2,'tablet','30')

insert into product1 values
(4,'laptop','200','03-05-2015')


insert into ordr1 values(3,2,'09-10-2013',60)

insert into ordr1 (o_id,quantity)
values(4,90)

insert into ordr1 (o_id,quantity)
values(1,45)

insert into ordr1 values(5,3,'09-10-2014',60)
insert into ordr1 values(5,3,'09-10-2014',60)
insert into ordr1 values(5,3,'09-10-2014',456)


select * from product1
select * from ordr1

/*SUBQUERY WITH SELECT STATEMENT*/

select * from ordr1
where p_id=
(select p_id from product1 where p_name='mobile')

select * from product1
select * from ordr1

select * from  ordr1
where p_id in
(select p_id from product1 where p_name in ('mobile','tablet','watch'))

/*SUB QUERY WITH EXISTS CLAUSE*/

Select * from ordr1
where exists
(select p_id from product1 where p_name='laptop')

/*laptop exists in products table so inner query become true and in outer query all data from ordr table is shown*/

select * from product1
select * from ordr1

/*SUB QUERY WITH NOT EXISTS*/

select * from product1
select * from ordr1
where not exists
(select p_id from product1 where p_name='tablet')/*data which is present in products table but due to not exists it not find*/

/*SUBQUERY WITH INSERT*/

insert into ordr1 (p_id,order_date) values ('456321','09-28-2018')
select * from product1 where exists (select p_name from product1 where price='30');

select * from product1
select * from ordr1

/*SUBQUERY WITH UPDATE*/

select * from product1
select * from ordr1
UPDATE ordr1 set quantity = quantity + 50 where o_id in (select p_id from product1 where price > 200)
/*only o_id=4 is updated in order*/
UPDATE ordr1 set quantity = quantity + 50 where o_id in (select p_id from product1 where price >= 200)
/*only order id=4 and 1 are updated*/

/*SUBQUERY WITH DELETE*/
delete from ordr1 where p_id='456321' select * from ordr1 where exists
(select * from product1 where p_id='4')


select p_id from product1
UNION
select o_id from ordr1;

select p_id from product1
UNION all
select o_id from ordr1;

select p_id from product1
intersect
select o_id from ordr1;