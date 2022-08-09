Create Table tblEmployee
(
id int primary key,
name nvarchar(30),
Salary int,
Gender nvarchar(10),
DepartmentId int
)

insert into tblEmployee values (1,'John',5000,'Male',3)
insert into tblEmployee values (2,'John',3400,'Male',2)
insert into tblEmployee values (3,'John',6000,'Male',1)

Create Table tblEmployeeAudit
(
id int identity(1,1) primary key,
AuditData nvarchar(1000)
)

insert into tblemployeeaudit values('abc')
insert into tblemployeeaudit values('aaa')
insert into tblemployeeaudit values('cde')

 

create trigger tr_tblemployee_forinsert
ON tblemployee
for insert
AS
BEGIN
Declare @DepartmentID int
Select @DepartmentID = DepartmentID from inserted

insert into tblemployeeAudit
values ('New employee with DepartmentID ='+Cast(@DepartmentID as varchar(10))+' is added at ' + Cast(Getdate()as varchar(20)))
End

select * from tblemployee
select * from tblemployeeAudit
Insert into tblEmployee values(7,'Tan',2300,'Female',3)
Insert into tblEmployee values(8,'Tan',2300,'Female',3)


drop table tblemployee,tblemployeeAudit
drop trigger tr_tblemployee_forinsert