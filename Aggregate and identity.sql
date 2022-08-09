create table emp
(
emp_id int Identity(5,3),
emp_name varchar (50),
emp_salary int,
emp_city varchar(30)
)

select * from emp

insert into emp ( emp_name, emp_salary,emp_city) values ('Asad','5000','karachi')
insert into emp ( emp_name, emp_salary,emp_city) values ('Asad','6000','lahore')
insert into emp ( emp_name, emp_salary,emp_city) values ('Asad','8000','islamabad')
insert into emp ( emp_name, emp_salary,emp_city) values ('Asad','6000','karachi')


--AGGREGATE FUNCTIONS
/**/

SELECT * FROM EMP

select count (*) from emp
select count (*) as 'number of emplyees' from emp
select * from emp
select count(emp_city) as citycount from emp
select count(distinct emp_city) as citycount from emp
select avg (emp_salary) as Average from emp
select sum (emp_salary) as salarysum from emp
select max(emp_salary) as maxsalary from emp
select min(emp_salary) as minsalary from emp