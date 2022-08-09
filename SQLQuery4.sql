select * from daniyal
update daniyal
set Lastname='Ali' , Date_of_birth='1998-05-12'
where id='5'

update daniyal
set Lastname='Ali'
where Firstname='Ahasan'

select id, Firstname, phonenumber, Salary, Salary + 2000 as Bonus from daniyal

select id, Firstname +' '+Lastname as Newcolumn, phonenumber, Salary, Salary + 2000 as Bonus from daniyal

