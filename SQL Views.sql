--VIEWS
create database fa
create table emp
(
emp_id int,
emp_name varchar(50),
emp_salary int,
emp_city varchar(30)
)

insert into emp (emp_id,emp_name, emp_salary, emp_city) values (1,'Asad','5000','Karachi')
insert into emp (emp_id,emp_name, emp_salary, emp_city) values (1,'Umar','6000','Lahore')
insert into emp (emp_id,emp_name, emp_salary, emp_city) values (1,'Asim','8000','Isamabad')
insert into emp (emp_id,emp_name, emp_salary, emp_city) values (1,'Saad','6000','Karachi')

select * from emp

drop table emp

create view emp_view
as
select emp_name,emp_city from emp

select * from emp_view

drop view emp_view

alter view emp_view
as
select * from emp

alter view emp_view
as
select * from emp where emp_id > 2

insert into emp_view values ( 98,'Taha','98765','Karachi')

select * from emp_view

delete from emp_view where emp_id=4

select * from emp

sp_helptext emp_view /*Stored procedure which have text of this query*/

--use

create database database1

use database1
create table employeelist
(
eid int identity(1,1),
fname varchar(30),
lname varchar(30),
dept_id int
)

insert into employeelist (fname,lname,dept_id) values ('ali','khan',10)
insert into employeelist (fname,lname,dept_id) values ('asad','khan',20)

use database1
select * from employeelist
