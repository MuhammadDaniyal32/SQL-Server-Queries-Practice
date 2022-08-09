create table SQLTask
( Empid int,
  EmpName varchar(50),
  Deptid int,
  designation varchar(50),
  dob date,
  salary int,
  gender varchar(50)
  )
  drop table SQLTask

  select*from sqltask

insert into sqltask values(1,'Fawad','33','CEO','1998-12-21','20000','male')
insert into sqltask values(2,'Ibrahim','34','manager','1998-12-22','100000','male')
insert into sqltask values(3,'Saleem','35','Co-manager','1998-12-23','40000','male')
insert into sqltask values(4,'Alia','36','Secretary','1998-12-24','35000','female')
insert into sqltask values(5,'Hassan','37','Helper','1998-12-25','10000','male')
insert into sqltask values(6,'Yousuf','38','Director','1998-12-26','50000','male')
insert into sqltask values(7,'Kamran','39','Director','1998-12-27','50000','male')
insert into sqltask values(8,'Ali','40','Director','1998-12-28','40000','male')
insert into sqltask values(9,'Akram','41','Director','1998-12-29','40000','male')
insert into sqltask values(10,'Hassan','42','Director','1998-12-11','30000','male')
insert into sqltask values(11,'Fahad','43','Director','1998-12-12','30000','male')
insert into sqltask values(12,'Akram','44','Shareholder','1998-12-13','90000','male')
insert into sqltask values(13,'Mariam','45','Shareholder','1998-12-14','90000','female')
insert into sqltask values(14,'Shahzad','46','Shareholder','1998-12-15','90000','male')
insert into sqltask values(15,'Imtiaz','47','Shareholder','1998-12-16','10000','male')
insert into sqltask values(16,'Akram','48','Shareholder','1998-12-17','10000','male')
insert into sqltask values(17,'Naeem','49','Accountant','1998-12-18','80000','male')
insert into sqltask values(18,'Salman','50','Clerk','1998-11-19','10000','male')
insert into sqltask values(19,'Naeem','51','Cashier','1998-05-30','20000','male')
insert into sqltask values(20,'Aslam','52','Driver','1998-12-29','20000','male')


--Question.2 Upper And Lowercase
SELECT upper(empname) AS UppercaseEmpName
FROM sqltask;
SELECT lower(designation) AS lowercaseEmpName
FROM sqltask;

--Question.3 Not Manager
select * from sqltask where designation <> 'manager';


--Question.4 Joining Date
select * from sqltask order by dob


--Question.5 Greater than  10,000
select * from Sqltask where salary > 10000;


--Question.6 Between 50000 and 100000
select * from sqltask where salary between 50000 and 100000;


--Question.7 Number of Employees
select count (*) as 'Number of emplyees' from sqltask


--Question.8 Average Salary
select avg (salary) as Average from sqltask


--Question.9 Max And Min Salary
select max(salary) as maxsalary from sqltask
select min(salary) as minsalary from sqltask


--Question.10 Emplyees With letter A
select * from sqltask where empname like 'A%'


--Question.11 All Female Employees
select * from sqltask where gender='female'


--Question.12 All Male emplyees
select * from sqltask where gender='male'


--Question.13 Vowels
select * from sqltask where empname like '[a,e,i,o,u]%

'
--Question.14 Name starts with (n,t,i,a,r,s)
select * from sqltask where empname like '[n,t,i,a,r,s]%'


--Question.15 Sum of Salary
select sum (salary) as SumSalary from sqltask




SELECT UPPER(empname) AS UppercaseCustomerName
FROM sqltask;