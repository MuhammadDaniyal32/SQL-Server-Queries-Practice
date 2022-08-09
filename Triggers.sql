create table emp1
(
emp_id int,
emp_name varchar(50),
emp_salary int,
emp_city varchar(30),
emp_dob date
)

insert into emp1 (emp_id,emp_name,emp_salary,emp_city,emp_dob) values (1,'Asad','5000','Karachi','2019-12-14')
insert into emp1 (emp_id,emp_name,emp_salary,emp_city,emp_dob) values (1,'Umer','6000','Karachi','1990-05-14')
insert into emp1 (emp_id,emp_name,emp_salary,emp_city,emp_dob) values (1,'Asim','7000','Karachi','1990-05-14')
insert into emp1 (emp_id,emp_name,emp_salary,emp_city,emp_dob) values (1,'Saad','8000','Karachi','1990-05-14')

select * from emp1
drop table emp1

drop trigger checkbirthdate1
--insert trigger 
create trigger t1 on emp1 for insert
as
if(select emp_salary from inserted)>5000

BEGIN
PRINT 'Salary Cannot be greater than 5000'
ROLLBACK /* ROLLBACK TRANSACTION to erase all data modifications made from the start of the transaction or to a savepoint.*/
END

insert into emp1 values (45,'AAA','1566600','khi','1995-06-04')
insert into emp1 values (1,'Asad','4000','Karachi','1990-05-14')

--update trigger

create trigger checkbirthdate1 on emp1 for update
AS
IF (SELECT emp_dob from inserted)<getdate()
BEGIN
PRINT'Date of birth cannot be greater than todays date'
ROLLBACK
END

UPDATE emp1 set emp_dob='2019-05-06' where emp_id=3



--delete trigger
CREATE TRIGGER t85 on emp1 for delete
AS
IF(select emp_id from deleted)=2
begin
PRINT 'cannot be removed'
ROLLBACK
END
delete from emp1 where emp_id=2
delete from emp1 where emp_id=4
