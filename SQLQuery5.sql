create table Daniyal_employee2 (
worker_id int identity(1201,2),
worker_name varchar(50),
worker_phonenumber int,
worker_dob varchar(20),
worker_salary int,
)

insert into Daniyal_employee2 (worker_name, worker_phonenumber, worker_dob, worker_salary) values ('Daniyal','03332906', '28/aug/1998', '30000');

insert into Daniyal_employee2 (worker_name, worker_phonenumber, worker_dob, worker_salary) values ('Arsalan','0123456789', '21/aug/1998', '310000');

insert into Daniyal_employee2 (worker_name, worker_phonenumber, worker_dob, worker_salary) values ('Hassan','02223223', '28/mar/2001', '13000');

insert into Daniyal_employee2 (worker_name, worker_phonenumber, worker_dob, worker_salary) values ('Akram','022232233', '12/april/2005', '50000');

select worker_name, worker_phonenumber, worker_dob from Daniyal_employee2

select count (*) from Daniyal_employee2

select * from Daniyal_employee2

select count (*) as 'number of employees' from Daniyal_employee2

select count (worker_salary) from Daniyal_employee2

select count (distinct worker_phonenumber) as number from Daniyal_employee2

select avg (worker_salary) as average from Daniyal_employee2

select sum (worker_salary) as SUM from Daniyal_employee2

select max (worker_salary) as MAXsalary from Daniyal_employee2

select min (worker_salary) as MINsalary from Daniyal_employee2

delete from Daniyal_employee2 where worker_name='Daniyal'