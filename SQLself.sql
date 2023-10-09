drop table colour
create table colour
(
cid int primary key,
cname varchar(20)
)
select *from colour
insert into colour values(1,'red'),(2,'green'),(3,'pink'),(4,'black'),(5,'blur')
drop table size
create table size
(
sid int primary key,
sname varchar(25)
)
select * from size
insert into size values(1,'s'),(2,'m'),(3,'xl'),(4,'L'),(5,'xxL')

select * from colour cross join size