--simple index
drop table emp

create table new
(
emp_id int,
emp_name varchar(50),
emp_salary int,
emp_city varchar(30)
)

create index i2
on new (emp_id,emp_city)

drop index i1 on emp
create index i1 on emp(emp_name)