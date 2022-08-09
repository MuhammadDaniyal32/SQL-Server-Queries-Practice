select * from daniyal

create procedure select_pro
as 
begin
select * from daniyal 
end

exec select_pro

drop procedure select_pro

create procedure select_pro2
as
begin 
select * from daniyal where id=2
end

exec select_pro2

create procedure update_pro
as
begin 
update daniyal
set Salary = 2000
end

exec update_pro

create procedure update_pro2
as
begin 
update daniyal
set Salary=20000 where id = 1
end

exec update_pro2

create procedure insert_pro
as
begin 
insert into daniyal values (6,'Noor','Hassan','daniyal.noor@gmail.com','','','1000')
end

exec insert_pro

create procedure new_table
(
@studentname varchar(20),
@studentlast varchar (20),
@emailEmail varchar (30),
@Dob date 
)
as 
begin
select * from new_table where studentname = @studentname; studentlast = @studentlast; email = @email ;Dob = @Dob;
end