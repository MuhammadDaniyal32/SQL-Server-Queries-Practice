create table somefunctions
(
id int,
firstname varchar(30),
lastname varchar(30),
email varchar (30),
dob date,
phone varchar(30)
)

select * from somefunctions

insert into somefunctions values(1,'john','smith','john.smith@gmail.com','2019-01-04','00003333')
insert into somefunctions values(2,'johny','smithh','john.smith@gmail.com','2019-01-04','000033333')
insert into somefunctions values(3,'johnny','smithh','john.smith@gmail.com','2019-01-04','000033334')
insert into somefunctions values(4,'johnyy','smithh','john.smith@gmail.com','2019-01-04','000033335')
insert into somefunctions (id,firstname,lastname,email,dob,phone) values(5,'atif','khan','ak@gmail.com','2019-02-19','3443242343')



drop table somefunctions --(for deleting whole table)

Delete from somefunctions where id=3; --(for deleting specific)

Delete  from somefunctions where lastname is null

truncate table somefunctions --(delete contant from table only)

drop database fawad 

select * from somefunctions where firstname='john';
select firstname,phone from somefunctions where firstname='john';
select * from somefunctions where lastname='smith';
select * from somefunctions where firstname <> 'john';
select * from somefunctions where id > 2;
select * from somefunctions where id >= 2;
select * from somefunctions where id < 2;
select * from somefunctions where id <= 2;

select lastname from somefunctions
select distinct lastname from somefunctions
select * from somefunctions where firstname='john' AND lastname='brown'
select * from somefunctions where firstname='james' OR lastname='abc'
select * from somefunctions where (firstname='james' OR firstname='paula') and lastname='brown'
select * from somefunctions where id between 3 and 5;
select * from somefunctions where dob between '2014-02-18' and '2014-02-20';
select * from somefunctions where firstname in ('steven','james')
select * from somefunctions order by firstname
select * from somefunctions order by firstname desc
select * from somefunctions order by dob
select * from somefunctions order by dob desc
select * from somefunctions where firstname like 'J%' /*start name with j*/
select * from somefunctions where firstname like '%s' /*end name with j */

select * from somefunctions where firstName like 'jo%'
select * from somefunctions where firstname like '%s'
select * from somefunctions where firstname like '%aul%'
select * from somefunctions where firstname like '_s'
select * from somefunctions where firstname like '__s'
select * from somefunctions where firstname like 's_'
 
select * from somefunctions where firstname like '[sp]%'
select * from somefunctions where firstname like '%[s]'
select * from somefunctions where firstname like '[s]%'
select * from somefunctions where firstname Not like '%[s]'
select * from select * from somefunctions where firstname like '%s'
  where phone like '[4-6]'
select top 3 * from somefunctions
select top 3 firstname from somefunctions
select top 50 percent * from somefunctions
select * from somefunctions

Update somefunctions
set firstname='jimmyy' ,phone='595959'
where firstname='john'

Update somefunctions
set firstname='jimmyy',phone='595959'
where id='3'

select * from somefunctions

select firstname,phone+2000 from somefunctions
select firstname,phone+2000 as bonus from somefunctions
select firstname as Name,lastname as salary,phone+2 as bonus from somefunctions

Select firstname+' '+phone as column3
from somefunctions;


 
 
 
 
 
 
 
 

 
 
