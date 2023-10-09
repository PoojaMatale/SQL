create database dynamic
use dynamic
drop table worker
create table worker
(
worker_id int primary key,
first_name varchar(30),
last_name varchar(30),
salary numeric(12,2),
joining_date date,
department varchar(20)
)
select *from worker
insert into worker values(001,'monika','arora',100000,'2014-02-20 09:00:00','HR')
insert into worker values(002,'niharika','verma',80000,'2014-06-11 09:00:00','admin')
insert into worker values(003,'vishal','singhal',300000,'2014-02-20 09:00:00','HR')
insert into worker values(004,'amitabh','singh',500000,'2014-02-20 09:00:00','admin')
insert into worker values(005,'vivek','bhati',500000,'2014-06-11 09:00:00','admin')
insert into worker values(006,'vipul','diwan',200000,'2014-06-11 09:00:00','acount')
insert into worker values(007,'satish','kumar',75000,'2014-01-20 09:00:00','acount')
insert into worker values(008,'geetika','chauhaun',90000,'2014-04-11 09:00:00','admin')
drop table bonus
create table bonus
(
worker_ref_id int,
bonus_date date,
bonus_amount numeric(12,3),
constraint fk_id foreign key(worker_ref_id)references worker(worker_id)
)
select *from bonus
insert into bonus values(1,'2016-02-20 00:00:00',5000)
insert into bonus values(2,'2016-06-11 00:00:00',3000)
insert into bonus values(3,'2016-02-20 00:00:00',4000)
insert into bonus values(1,'2016-02-20 00:00:00',45000)
insert into bonus values(2,'2016-06-11 00:00:00',3500)

drop table title
create table title
(
worker_ref_id int primary key,
worker_title varchar(25),
affected_form date
constraint fk_ref_id foreign key(worker_ref_id)references worker(worker_id)
)
select *from title
insert into title values(1,'manager','2016-02-20 00:00:00')
insert into title values(2,'executive','2016-02-20 00:00:00')
insert into title values(8,'executive','2016-02-20 00:00:00')
insert into title values(5,'manager','2016-02-20 00:00:00')
insert into title values(4,'asst.manager','2016-02-20 00:00:00')
insert into title values(7,'executive','2016-02-20 00:00:00')
insert into title values(6,'lead','2016-02-20 00:00:00')
insert into title values(3,'lead','2016-02-20 00:00:00')
select *from worker
select *from bonus
select *from title

--1. Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.
select  first_name as 'workername' from worker
 --2.Write an SQL query to fetch “FIRST_NAME” from the Worker table in upper case.
 Select upper(FIRST_NAME) from Worker
--3.Write an SQL query to fetch unique values of DEPARTMENT from the Worker table.
select distinct department from worker
--4. Write an SQL query to print the first three characters of  FIRST_NAME from the Worker table
Select substring(FIRST_NAME,1,3) from Worker
--5.write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table.
--6.Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and prints its length.
Select distinct Length(DEPARTMENT) from Worker
--7.write an SQL query to print all worker details from the worker table order by first_name asending
select * from worker order by first_name
--8.write an SQL query to print all worker details from the worker table order by first_name asending and departemt desending
select *from worker order by first_name ,department desc
--9.wite a SQL query print the details for workers with the first names vipul and satish from the table
select *from worker where first_name in ('vipul','satish')
--10.write an SQL query  to print details of workers with department name is 'admin'
select *from worker where department='admin'
--11.write an SQL query  to print details of workers whose first_name contains 'a'
select *from worker where first_name like '%a%'
--12.write an SQL query  to print details of workers whose first_name and ends with 'h' and contains six alphabets
select*from worker where first_name like '_____h'
--13.write an SQL query  to print details of workers whose salary lies between 100000 and 500000
select *from worker where salary between 100000 and 500000
--14.write an SQL query  to fetch the count of employee working in the department admin
select count(worker_id)as 'count' from worker where department='admin'
--15.write an SQL query  to print details of the worker whose first_name ends with 'a'
select *from worker where first_name like '%a'
--16.Write an SQL query to print the FIRST_NAME from the Worker table after removing white spaces from the right side.
--17.Write an SQL query to print the DEPARTMENT from the Worker table after removing white spaces from the left side.
Select LTRIM(DEPARTMENT) from Worker
--18.Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’.
--19.Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from the Worker table.
select *from worker where first_name not in('vipul','satish')
--20.Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
select *from worker where department like '%admin'
--21.Write an SQL query to print details of the Workers who joined in Feb’2014.
 select *from worker where year(joining_date)=2014 and month(joining_date)=2
--22.Write an SQL query to show only odd rows from a table.
 select *from worker where mod(worker_id, 2)<>0
 --23.Write an SQL query to show only even rows from a table.
 SELECT * FROM Worker WHERE MOD (worker_id, 2) = 0
 --24.Write an SQL query to clone a new table from another table.
 select * INTO WorkerClone FROM Worker
 --25.Write an SQL query to fetch intersecting records of two tables.
 select * FROM Worker intersect (SELECT * FROM WorkerClone)
--26.Write an SQL query to show records from one table that another table does not have.
select* FROM Worker minus select* FROM Worker
--27.Write an SQL query to show the current date and time.
select  GETDATE()
--28.Write an SQL query to show the top n (say 10) records of a table.
SELECT TOP 10 * FROM Worker ORDER BY Salary DESC
--29. Write an SQL query to determine the nth (say n=5) highest salary from a table.
--30.Write an SQL query to determine the 5th highest salary without using the TOP or limit method.
--31.Write an SQL query to fetch the list of employees with the same salary.
 --32.Write an SQL query to show the second-highest salary from a table.
 Select max(Salary) from Worker 
where Salary not in (Select max(Salary) from Worker)
--33.Write an SQL query to show one row twice in the results from a table
--34.Write an SQL query to fetch intersecting records of two tables.
--35.Write an SQL query to fetch the first 50% of records from a table.
SELECT *
FROM WORKER
WHERE WORKER_ID <= (SELECT count(WORKER_ID)/2 from Worker)
--40.Write an SQL query to fetch the departments that have less than five people in them.
--41.Write an SQL query to show all departments along with the number of people in there.
--42.Write an SQL query to show the last record from a table.
Select * from Worker where WORKER_ID = (SELECT max(WORKER_ID) from Worker)
--43.Write an SQL query to fetch the first row of a table.
Select * from Worker where WORKER_ID = (SELECT min(WORKER_ID) from Worker);
--44.Write an SQL query to fetch the last five records from a table.
--45.Write an SQL query to print the name of employees having the highest salary in each department.
--46.Write an SQL query to fetch three max salaries from a table.
--47.Write an SQL query to fetch three min salaries from a table.
--48. Write an SQL query to fetch nth max salaries from a table.
--49.Write an SQL query to fetch departments along with the total salaries paid for each of them.
--50.Write an SQL query to fetch the names of workers who earn the highest salary.s

