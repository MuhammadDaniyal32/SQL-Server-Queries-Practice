CREATE TABLE employee (
employee_id INT,
first_name  VARCHAR (20),
last_name   VARCHAR (20),
dept_no     INT,
salary      INT);

drop table employee

INSERT INTO employee VALUES (1, 'Dan', 'Morgan', 10, 100000);
INSERT INTO employee VALUES (2, 'Jack', 'Cline', 20, 100000);
INSERT INTO employee VALUES (3, 'Elizabeth', 'Scott', 20, 50000);
INSERT INTO employee VALUES (4, 'Jackie', 'Stough', 20, 40000);
INSERT INTO employee VALUES (5, 'Richard', 'Foote', 10, 30000);
INSERT INTO employee VALUES (6, 'Joe', 'Johnson', 20, 70000);
INSERT INTO employee VALUES (7, 'Clark', 'Urling', 20, 90000);

select * from employee



--((stored procedure))

create  PROCEDURE sp3
as
begin
select * from employee
end

drop procedure  sp3

exec sp3 

drop procedure aa

create procedure aa
as
begin
update employee
set dept_no=20 
end

exec aa

drop procedure aa1

create procedure aa1
as
begin
update employee
set dept_no=10 where employee_id='7'
end

exec aa1


create procedure abc1
as
begin
insert into employee values(11, 'ali', 'rehman', 10, 14345)
insert into employee values(12, 'asad', 'rehman', 56, 19795)
end

exec abc1

 drop procedure aa1
 
 drop procedure InsertStudentrecord
 
Create Procedure InsertStudentrecord(
 @StudentFirstName Varchar(200),
 @StudentLastName  Varchar(200)
) 
As
 Begin
   Insert into employee (first_name, last_name)
   Values(@StudentFirstName, @StudentLastName)
 End

exec InsertStudentrecord abc , xyz

exec sp3 

