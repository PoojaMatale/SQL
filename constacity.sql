drop table country
create table country
(
cid int primary key,
cname varchar(20)
)
select *from country
insert into country values(1,'india'),(2,'china'),(3,'italy'),(4,'germany'),(5,'canada')

drop table state
create table state
(
sid int primary key,
sname varchar(27),
cid int 
)
select * from state
insert into state values(11,'maharastra',1),
(12,'uttar pradesh',2),
(13,'kerla',3),
(14,'panjab',4)

create table city
(
cityid int primary key,
cname varchar(35),
sid int
)
select *from city
insert into city values(111,'delhi',11),
(222,'mumbai',12),
(333,'kolkata',13)

select *from country--cid,cname
select *from state--sid,sname,cid
select *from city--cityid,cityname,sid

--inner join 
select c.*,s.sname
from country c
inner join state s  on s.sid=c.cid














































from country


















































































































































































