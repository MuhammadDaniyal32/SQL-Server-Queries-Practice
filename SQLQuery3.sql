select * from daniyal
select distinct Firstname from daniyal

select * from daniyal where Firstname='Daniyal' AND Lastname='astiq'

select * from daniyal where Firstname='Daniyal' OR Lastname='noor'

select * from daniyal where (Firstname='Arsalan' OR Firstname='Daniyal') and Lastname='noor'

select * from daniyal where id between 3 and 5;

select * from daniyal where Date_of_birth between '1998-08-12'and '1998-08-28'; 

select * from daniyal where Firstname in ('Daniyal','samma');

select * from daniyal order by Firstname;

select * from daniyal order by Firstname desc;

select * from daniyal order by Date_of_birth;

select * from daniyal order by Date_of_birth desc;

select * from daniyal where Firstname like 'Ar%'

select * from daniyal where Firstname like '%n'

select * from daniyal where Firstname like '%mm%'

select * from daniyal where Firstname like '_ani___'

select * from daniyal where Firstname like '[sa]%'

select * from daniyal where Firstname like '%[sa]'

select * from daniyal where Firstname not like '[sa]%'

select * from daniyal where Date_of_birth like '[2000-1998]%'

select top 3 Firstname from daniyal 

select top 40 percent * from daniyal 

