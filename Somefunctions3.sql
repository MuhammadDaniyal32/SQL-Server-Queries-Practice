create table bank
(
id int identity,
name nvarchar(20) not null,
accountnnum nvarchar(20) not null
)
drop table bank
insert into bank 
values('salman','42234-233454323')
insert into bank
values('junaid','42234-233454323')
insert into bank
values('ali','42234-233454323')

select * from bank

select id,name, SUBSTRING(accountnnum,1,5)+Replicate('*',5)+Substring(accountnnum,7,3) from bank
/*spaces*/
select b.name+space(0)+b.accountnnum as fullname from bank b
select b.name+space(1)+b.accountnnum as fullname from bank b
select b.name+space(2)+b.accountnnum as fullname from bank b
select b.name+space(3)+b.accountnnum as fullname from bank b

create table tbluscustomer
(
id int identity,
name nvarchar(20),
email nvarchar(20)
)

drop table tbluscustomer
select * from tbluscustomer

insert into tbluscustomer
values('marks','mark_uk.com')

insert into tblUscustomer
values('james','james_uk.com')

insert into tbluscustomer
values('jessica','jessica_uk.com')

/*replaces from email column uk.net and replace it with us.net*/
select id,replace (email,'uk.com','us.net')as convertedemail
from tbluscustomer

/*permanently replaces in a table*/

update tblcustomer
set email=replace(email,'uk.com','us,net')
/*stuff used for replacing the rows value with that which we want to replace*/
select id,name,accountnumm,stuff(accountnnum,7,3,'****')as stuffedAccountant
from bank

create table records
(
id int not null,
name varchar(30),
contact int
)
insert into records values(1,'Ahsan',345543)
insert into records values(2,'Ali',345543)
insert into records values(3,'Ahmer',345543)

alter table records add address varchar(100)
alter table records
drop column address;
update records
set address='karachi' where id=2

exec sp_rename "records","records1"

select*from records1