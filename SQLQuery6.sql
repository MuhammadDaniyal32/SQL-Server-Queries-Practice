create table writer(
 Poet varchar (50),
 Anthology varchar (50),
 Copies_in_stock int,
);

select * from writer
drop table writer
insert into writer  values
('poet1','xyz',3),
('poet2','xyz',8),
('poet3','xyz',2),
('diff','xyz',6),
('Asasd','qqq',21),
('aSAS','xyz',2);

select Poet,sum(Copies_in_stock) as SUM from writer group by Poet 

select Poet,
max(Copies_in_stock) as MAX,
min(Copies_in_stock) as MIN,
avg(Copies_in_stock) as AVG,
sum(Copies_in_stock) as SUM
from writer group by Poet;

select * from writer
select * from writer where Copies_in_stock > 5;

select Poet,
max(Copies_in_stock) as MAX,
min(Copies_in_stock) as MIN,
avg(Copies_in_stock) as AVG,
sum(Copies_in_stock) as SUM
from writer group by Poet having Poet  > 'p';

/*DATE FUNCTION*/

 select GETDATE() as 'System_Date' 

 select DATEPART (SS,GETDATE()) /*--second*/

 select DATEPART (MI,GETDATE()) /*--mins*/

 select DATEPART (HH,GETDATE()) /*--Hours*/

 select DATEPART (WK,GETDATE()) /*--week*/

 select DATEPART (DD,GETDATE()) /*--day*/

 select DATEPART (DY,GETDATE()) /*--day of the year*/

 select DATEPART (MM,GETDATE()) /*--Month*/

  select DATEPART (YY,GETDATE()) /*--Year*/

   select DATENAME (DW,GETDATE()) /*--day*/


   select * from Daniyal_employee2

   select employee_Firstname, GETDATE() as Orderdate
   from  DANIYAL_employee
   where emp_id=