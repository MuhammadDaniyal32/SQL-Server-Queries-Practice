create table employee3
(
emp_id int identity,
emp_name varchar(50),
emp_email varchar(50),
emp_registerDate datetime default Getdate()
)

insert into employee3(emp_name,emp_email)values('ab','ab@gmail.com')
select*from employee3