create table employee5
(
emp_id int,
emp_name varchar(50),
emp_salary int,
emp_city varchar(30)
)

drop table employee5
select*from emp

insert into emp(emp_id,emp_name,emp_salary,emp_city) values(1,'ASAD','5000','Karachi')
insert into emp(emp_id,emp_name,emp_salary,emp_city) values(1,'ALI','5000','Lahore')
insert into emp(emp_id,emp_name,emp_salary,emp_city) values(1,'NAEEM','5000','Islamabad')
insert into emp(emp_id,emp_name,emp_salary,emp_city) values(1,'MARIAM','5000','Karachi')


SELECT UPPER(emp_name) as employee from employee5;
select lower (emo_name) as customer from employee5
select em_name,len(emp_city) as lenghtofaddress from employee5
select right('Hello World',3);
select right(emp_name,3) from employee5;
select left('Hello world',3);
select left(emp_name,3)from emp;

/*left side trim*/
select ltrim('   hello')
/*right side trim*/
select rtrim(ltrim('   hello  '))
/*Reverse order*/
select reverse('abababababassjjdl')
/*find index number of @ symbol*/
select charindex('@','saraaa@a.com',6,2)
/*internal string of this string*/
select substring('john@bbbb.com',6,3)
/*create replica of abc 3 times*/
select replicate('abc',3)