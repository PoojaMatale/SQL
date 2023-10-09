
 drop table student
 create  table student
 (
 sid int primary key,
 sname varchar(20),
 course varchar(20),
 fees numeric(12,4)
 )
 select *from student
 insert into student values(1,'radha','BCS',30000),
 (2,'monika','BCOM',29000),
 (3,'mohan','c#',50000),
(4,'sujit','bsc IT',40000),
(5,'akshay','BCA',20000),
(6,'sucheta','LLB',60000)

--display count of student in each course
select course,count (sid) from student 
group by course
--display count of student for c# course
select course,count(sid)from student
group by course where course='c#'

--display course &count student but count of student>10
select course ,count(sid)from student 
group by course
--display sum of fees each course
select sum(fees)from 
group by course
--display count of student in each course,stud count less than 15& display in desc order
select course name count(sid)from student
group by course name having count(sid)<15 and order by count(sid)desc
