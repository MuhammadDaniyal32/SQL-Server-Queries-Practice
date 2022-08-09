create table test
(
EmpId int identity(1201,2),
EmpName varchar(50),
Dept_Id int,
Designation varchar(50),
DOB date,
Salary int,
Gender varchar(50),
)
select *from test

drop table test

                                             

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Daniyal','12','HR','1998-08-28','60000','Male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Hassan','13','Manger','1996-11-28','50000','Male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Ali','14','Webdevoloper','2001-03-12','40000','Male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Ahasan','23','Systemdevolper','1998-05-18','38000','Male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Samma','10','Networktester','1995-08-28','48000','Male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Hina','34','Secretary','1999-05-21','56000','female');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Alina','34','Ethical Hacker','2002-05-21','36000','female');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Sana','34','Project Manager','2001-04-16','40000','female');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Zohaib','09','Security gurad','2002-05-26','10000','male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Talha','09','Security Manager','2003-04-16','25000','male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Shabbir','12','CEO','1997-04-16','100000','male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Noor','14','Sales Manager','1996-07-16','34000','male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Zahid','14','Human resources','1996-07-26','44000','male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('M.Ali','16','Softwear desiginer','1999-10-26','45000','male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Abad shah','16','Softwear tester','2001-10-05','55000','male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Uzair','16','Audio Engineer','1999-10-26','30000','male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Usama','17','Chartered Financial Analyst','1996-10-31','40000','male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Hussain','17','Chartered Market Technician','2002-12-28','39000','male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Kasif','17','Certified Public Accountant','1998-12-18','55000','male');

insert into test (EmpName,Dept_Id,Designation,DOB,Salary,Gender) values ('Zamman','17','Communication Management Professional','1997-1-10','45000','male');

                                                      

SELECT
  UPPER(EmpName) AS EmpUppercase
FROM
  test

SELECT
  LOWER(Designation) AS DesignationLowercase
FROM
  test

                                                       

select * from test where Designation < 'manager'; 

                                                      

 select *, DATEPART (DD,GETDATE()) as Joiningdate
   from  test
   where EmpId > 1200

                                                         

select * from test where Salary <= 10000

                                                      

select * from test where Salary >= 50000

                                                      

select count (*) as 'number of employees' from test
                                                       

select avg (Salary) as average_salary from test

                                                       

select * from test where salary = (select max(salary) from test) 


select * from test where salary = (select min(salary) from test) 

                                                      

select * from test where EmpName like 'A%'


select * from test where Gender='female'

                                                      

select * from test where Gender='male'


select * from test where EmpName like '[aeiou]%'



select * from test where EmpName like '%[ntiars]'

                                                        

select sum (Salary) as salary_sum from test