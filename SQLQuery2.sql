create table daniyal
(
id int,
Firstname varchar(50),
Lastname varchar(50),
Email varchar(50),
Date_of_birth date,
phonenumber int,
)
select * from daniyal

insert into daniyal values (1,'Daniyal','Noor','daniyal.485@gmail.com','1998/8/28','0333290688')
insert into daniyal values (2,'Arsalan','astiq','arsalan@gmail.com','1998/8/28','0123456789')
insert into daniyal values (3,'Samma','ghori','samma@gmail.com','1998/8/28','0123456789')
insert into daniyal values (4,'Ahasan','--','ahasan@gmail.com','1998/8/28','0123456789')
insert into daniyal (id,email,phonenumber) values (5,'daniyal.485@gmail.com','0123456789')

select * from daniyal where Firstname = 'daniyal';
select email,Date_of_birth,phonenumber from daniyal where Firstname = 'Arsalan';
select * from daniyal where Firstname <> 'samma';
select * from daniyal where id > 3; 
select * from daniyal where id < 3;
select * from daniyal where id >= 3; 
select * from daniyal where Email <= 'samma@gmail.com';