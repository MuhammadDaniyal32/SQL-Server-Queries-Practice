Create table writer(
poet varchar(50),
anthology varchar(40),
copies_in_stock int,
date_time varchar(50)
);
drop table writer
select * from writer

insert into writer values
('abccc','xyz',3,getdate());
('abccc','xyz',8,getdate() ),
('abccc','xyz',2,getdate()),
('rrrr','yyy',6,getdate()),
('deff','ghi',21,getdate()),
('deff','ghi',2,getdate());

select * from writer
select poet ,sum(copies_in_stock) as sum from writer group by poet

select poet,
max(copies_in_stock) as max,
min(copies_in_stock) as min,
avg(copies_in_stock) as avg,
sum(copies_in_stock) as sum,
from writer group by poet;

select * from writer 
select *from writer where copies_in_stock>5;

select poet,
max(copies_in_stock) as max,
min(copies_in_stock) as min,
avg(copies_in_stock) as avg,
sum(copies_in_stock) as sum,
from writer group by poet having poet >'c';

/*Date Function*/

select getdate() as 'system date'

select datepart(ss,getdate()) --second
select datepart(mi,getdate()) --min
select datepart(hh,getdate()) --hr
select datepart(wk,getdate()) --week
select datepart(dd,getdate()) --day
select datepart(dy,getdate()) --day of the year
select datepart(mm,getdate()) --month
select datepart(yy,getdate()) --year
select datepart(dw,getdate()) --day

/**/
 
select emp_name,getdate()as orderdate
from emp
where emp_id=8

select datepart(weekday,'2019-1-11')--return 4
select datename (weekday,'2017-10-18')--return monday

/*shows the date difference with the current date*/
select DATEdiff(month,'12/01/1991',getdate())
select DATEdiff(day,'12/01/1991',getdate())
select DATEdiff(year,'12/01/1991',getdate())


Create table writer(
emp_name varchar(50),
emp_email varchar(50),
date_time varchar(50) ,
);

insert into writer values
(null,null,getdate());

drop table writer

insert into writer (emp_name,emp_email) values('ab','ab@gmail.com')
select * from writer