
create table student1
(
Rollno int,
name varchar(20),
percentage numeric,
city varchar(10),
dob date
)
--modify the data or size of data type...
alter table student1 alter column name varchar(25)
--add columns to the existing table 
alter table student1 add country varchar(22) 
--remove columns form existing table
alter table student1  drop column country
--rename column name 
exec sp_rename 'student1.name','student1name'

drop table employee
create table employee
(
eid int primary key,
ename varchar(25),
salary numeric(12,4)
)
insert into employee values(1,'madhuri',23000),
(2,'raj',25000),
(3,'rutik',27000),
(4,'monika',30000),
(5,'radhika',40000),
(6,'vivek',27000)
drop table department
create table department
(
did int primary key,
dname varchar(25),
location varchar(20)
)
select *from department
insert into department values(101,'HR','pune'),
(102,'bsc','mumbai'),
(103,'civil','nashik'),
(104,'electronic','nagar')

--select employee with max salary
select *from employee order by salary desc
--find salary for employee whos workers in admin department
select salary from employee join department d
on e.did=d.did
where