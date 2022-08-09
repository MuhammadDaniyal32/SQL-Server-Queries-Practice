--VIEWS

create database daniyal2 

create table emp
(
emp_id int,
emp_name varchar (40),
emp_salary int ,
emp_city varchar (30)
)

use daniyal2
select * from emp

insert into emp values (1,'Daniyal','20000','karachi');

insert into emp values (2,'Hassan','25000','karachi');

insert into emp values (3,'Arsalan','30000','Hydrabad');

insert into emp values (4,'Ali','50000','karachi');

select * from emp_view 

create view emp_view 
as
select emp_name,emp_city from emp

alter view emp_view
as
select * from emp

alter view emp_view
as
select * from emp where emp_id > 2

insert into emp_view values (69,'samma','20','gohkti')

SP_helptext emp_view

drop database daniyal2 