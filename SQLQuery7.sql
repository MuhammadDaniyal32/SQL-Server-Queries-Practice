create table partice 
(
Id int identity,
Name varchar(50),
Joining datetime default getdate(),
Email varchar(50)
)

select * from partice

insert into partice (Name,Email) values ('daniyal','daniyal.485@gmail.com');

insert into partice (Name,Email) values ('M.daniyal','m.daniyal.@gmail.com');

insert into partice (Name,Email) values ('ALi','ali.@gmail.com');
--MATHEMATICAL FUNCTION

select len (49);  

select power (2,9);  

select sqrt (49);  

select pi ();  

select log(0.2); 

select exp (2); 

select cos (49) as 'cos'; 

select tan (45) as 'tan'; 

select sin (4); 

select acos (cos(45)) as 'cos'; 

select asin (0.5555);

select atan (0.5555); 

select cot (45);

select upper (Name) as Uppercase_name from partice;

select lower (Name) as Uppercase_name from partice;

select Name,len(Email) as lengthofemail from partice; 

select right ('Hello.....',3);

select left ('Hello.....',3);

select right (Name,4) from partice;

select left (Name,4) from partice;

--left side trim
select ltrim ('    Hello'); /*for spaces of left side*/

--right side trim
select rtrim ('Hello    '); /*for spaces of right side*/

--both side trim
select rtrim (ltrim('     Hello    ')); /*for spaces of both side*/

--Reverse order of characters
select REVERSE ('ADDADFAFASDFJASGKDFIASGD');

--Char index number of @ symbol
select CHARINDEX ('@','daniyal.485@gmail.com')

--internal substring of this string
select substring ('daniyal.485@gmail.com',1,4)

--replicate of given data
select REPLICATE ('sad',3)

create table bank 
(
Id int identity,
Name nvarchar (20),
Account#NUM nvarchar (20)
)

insert into bank 
values ('Arsalan','420101-12122323');

insert into bank 
values ('M.daiyal','420101-23123273289');

insert into bank 
values ('Ahasan','420101-233425673289');

select * from bank

select id,Name, SUBSTRING(Account#NUM,1,3) + REPLICATE ('+',4) + SUBSTRING (Account#NUM,7,9) from bank

--for space

select name + SPACE(0) + Account#NUM as Fullname from bank;

select name + SPACE(2) + Account#NUM as Fullname from bank;

select name + SPACE(6) + Account#NUM as Fullname from bank;

--temparoriy replace

select id,REPLACE(Email,'.com','.us.net') as coverted_email from partice

--permentaly replace

update partice
set Email= REPLACE (Email,'.com','.dani.net') 

stuff used for relpace 

select id,Name,Account#NUM, stuff(Account#NUM, 7,3, '*****') as stuffed_account 
from bank;

create table record
(
id int not null,
name varchar(30),
contact int
)

insert into record values ('1','Ahsan','0234234423');

insert into record values ('2','Arsalan','0234546');

insert into record values ('3','Zohaib','033323323');

drop table record

select * from record

alter table record add address varchar (50);

update 