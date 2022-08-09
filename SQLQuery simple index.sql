create table emp1
(
emp_id int,
emp_Name varchar (50),
emp_salary int,
emp_city varchar (50),
emp_dob date

)

insert into emp1 (emp_id,emp_Name,emp_salary,emp_city,emp_dob)values (1,'Asad','5000','karachi','1990-05-14')
insert into emp1 (emp_id,emp_Name,emp_salary,emp_city,emp_dob)values (2,'Danish','6000','karachi','2000-05-14')
insert into emp1 (emp_id,emp_Name,emp_salary,emp_city,emp_dob)values (3,'Farhan','7000','karachi','2001-03-14')
insert into emp1 (emp_id,emp_Name,emp_salary,emp_city,emp_dob)values (4,'samama','8000','karachi','2003-08-24')
insert into emp1 (emp_id,emp_Name,emp_salary,emp_city,emp_dob)values (5,'Hamza','9000','karachi','2003-08-12')

select * from emp1
drop table emp1

--- insert trigger

create trigger t1 on emp1 for insert
as
if(select emp_salary from inserted)>5000

BEGIN 
PRINT 'Salary cannot be greater than 5000'
ROLLBACK /*ROLLBACK TRANSACTION to erase all data modification made from the start of the transaction or to a savepoint.*/
END
-- update Trigger
create trigger checkBirthDate1 on emp1 for update
as
if(select emp_dob from inserted)> GETDATE()

BEGIN 
PRINT 'Date of birth cannot be greater than todays date'
ROLLBACK 
END

update emp1 set emp_dob='2016-05-06' where emp_id=3

-- Delete Trigger
create trigger t85 on emp1 for delete
as
if(select emp_id from deleted)=2 BEGIN
PRINT ' cannot be REMOVE'
ROLLBACK 
END

DELETE from emp1 where epm_id=2
DELETE from emp1 where epm_id=1

select * from emp1

(
Id int identity(1,1) primary key,
AudiDate nvarchar(1000)

)
Insert into tblEmployeeAudit values ('abc')
Insert into tblEmployee values ('aaa')
Insert into tblEmployee values ('cde')

create trigger tr tblEmployee Forinsert
on tblEmployee
For INSERT
AS
BEGIN