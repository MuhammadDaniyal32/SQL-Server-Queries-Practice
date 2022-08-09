create table customers
(
customer_ID int primary key,
Name varchar(20),
Phone_no# varchar(20)
)

create table orders
(
order_no# int primary key,
address# varchar(50),
customer_ID int foreign key references customers(customer_ID)
)

drop table orders,customers

insert into customers values (1021,'daniyal','03332906880');
insert into customers values (1102,'arsalan','01234567880');
insert into customers values (2203,'ali','03223243343');

insert into orders values (1,'north_karachi',1021)
insert into orders values (2,'nagan',1102);
insert into orders values (3,'hassan_square',2203);

select * from customers;
select * from orders;


select * from customers inner join orders on
customers.customer_ID = orders.customer_ID;


select * from orders right join customers on
customers.customer_ID = orders.customer_ID;


create table student_info
(
student_id int identity(1020,2) primary key,
student_name varchar (20),
student_address varchar (20),
contact_no# int,
classe_no# int,
student_dob varchar(20),
student_rollno# int,
english_marks int,
urdu_marks int,
pst_marks int,
sindhi_marks int
)

drop table student_info

alter table student_info
add 
student_fees int

insert into student_info values ('Daniyal','new karachi','033322123','03','28/aug/1998','2011',55,30,40,25,1400)

select * from student_info