create table tblcount 
(countryid int,
countryname varchar(50))

create table tblstate
(stateid int,
countryid int,
statename varchar(50)
)

insert into tblcount values('1','india')
insert into tblcount values('2','nepal')
insert into tblcount values('3','srilanka')

insert into tblstate values('1','1','nepal')
insert into tblstate values('2','1','punjab')
insert into tblstate values('3','2','abc')
insert into tblstate (stateid,statename) values('4','California')



select * from  tblcount
select * from  tblstate


/*inner join::it shows data which has matching entries in both the tables*/

select * from tblcount inner join tblstate on tblcount.countryid=tblstate.countryid

select * from tblcount
select * from tblstate 



/*right join:: it displays all the data of right table but from right table only matchingdata is displays*/

select * from tblcount 
select * from tblstate

select * from tblcount right join tblstate on tblcount.countryid=tblstate.countryid

/*left table is on left of query*/

select * from tblcount 
select * from tblstate

select * from tblcount left join tblstate on tblcount.countryid=tblstate.countryid

/*right join::it displays all the data of right table but from only matching data*/

select * from tblcount right join tblstate on tblcount.countryid=tblstate.countryid

/*full outer join::combination of all*/

select * from tblcount full outer join tblstate on 
tblcount.countryid=tblstate.countryid


/* CROSS JOIN::multiplies all fields of both the tables*/

select * from tblcount cross join tblstate
