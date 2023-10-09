create database titans
use titans
drop table author
create table author
(
authorid int primary key,
authorname varchar(35),
address varchar(37),
city varchar(25)
)
select * from author
insert into author values(1,'paul scott','paragaov','pune'),
(2,'ben jonson','managrul','nashik'),
(3,'paul scott','belhe','mumbai'),
(4,'jane austen','sakori','pimpri'),
(5,'charless','alephata','nagar')
drop table awardmaster
create table awardmaster
(
awardtypeid int primary key,
awardname varchar(26),
awardprice int
)
select *from awardmaster
insert into awardmaster values(21,'silver',2000),
(22,'golden',4000),
(23,'brass',5000),
(24,'oscar',7000)

drop table book
create table book
(
bookid int primary key,
bookname varchar(35),
authorid int,
price int
)
select *from book
insert into book values(11,'phy',1,35),
(12,'bio',5,40),
(13,'chem',4,50),
(14,'math',2,45)

drop table award
create table award
(
awardid int primary key,
awardtypeid int,
authorid int,
bookid int,
years int
)
select *from award
alter table award add constraint fu_aw foreign key (authorid)references author(authorid)
alter table award add constraint fk_ma foreign key (awardmasterid)references awardmaster(awardmasterid)
alter table award add constraint fb_k foreign key (bookid)references book(bookid)

select *from author
select *from awardmaster
select *from book
select *from award


insert into award values(101,111,1,11,2002),
(102,222,4,12,2004),
(103,333,2,13,2003)
--find the book which is written by 'charless'
select bookname from book inner join author a on b.authorid=authorid
where authorname ='charless'
--find the author name for book 'phy'
select authorname from author a inner join book b on a.authorid=b.authorid where b.bookname='phy'
--find author name who golden award in year 2003
select authorname from author a join award d on a.authorid=d.authorid where d.award year 2003
--find the book name  got on award
select bookname from book b join award a on a.bookid=b.bookid
--find out the author wise  book count
select authorname count(authorid) as count from author a inner join book b on a.authorid=b.authorid group by authorname 
--find the authorname who got only on award
select a.authorname from author a join award d on a.authorid=d.authorid group by a.authorname having count d.awardid=1