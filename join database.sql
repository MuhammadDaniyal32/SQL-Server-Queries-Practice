create table tblcount 
(
country_id int,
country_Name varchar (50)
)
create table tblstate
(
State_id int,
country_id int,
State_Name varchar (50)
)

insert into tblcount values ('1','PAKISTAN');

insert into tblcount values ('2','INDIA');

insert into tblcount values ('3','CHINA');

insert into tblcount values ('4','IRAN');

insert into tblstate values ('1','1','Karachi');

insert into tblstate values ('2','1','Punjab');

insert into tblstate values ('3','1','Hydrabad');

insert into tblstate values ('4','2','Poonay');

insert into tblstate values ('5','2','Delhi');

insert into tblstate values ('6','2','Bombay');

insert into tblstate values ('7','3','Beijing');

insert into tblstate values ('8','3','Shanghai');

insert into tblstate values ('9','4','Tehran');

insert into tblstate (State_id,State_Name) values ('10','sindh');

select * from tblcount
select * from tblstate

--inner join shows the matching values of both side of table 

select * from tblcount inner join tblstate on
tblcount.country_id = tblstate.country_id

select * from tblcount
select * from tblstate

--left join shows the matching values of left side of table 

select * from tblcount left join tblstate on
tblcount.country_id = tblstate.country_id

select * from tblcount
select * from tblstate

--right join shows the matching values of right side of table 

select * from tblcount right join tblstate on
tblcount.country_id = tblstate.country_id

select * from tblcount
select * from tblstate

--full outer join shows the matching values of inner left side and right side of table 

select * from tblcount full outer join tblstate on
tblcount.country_id = tblstate.country_id

select * from tblcount
select * from tblstate


--cross join multiplies all fields of both side tables

select * from tblcount cross join tblstate 

