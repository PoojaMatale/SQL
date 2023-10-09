drop table EmployeeInfo
create table EmployeeInfo
(
Empid int primary key,
Empfname varchar(35),
EmpLname varchar(21),
department varchar(25),
project varchar(29),
address varchar(20),
DOB date,
gender varchar(22)
)
select *from EmployeeInfo
insert into EmployeeInfo values(1,'Rohit','Gupta','Admin','P1','Delhi','1979/12/2','Male')
insert into EmployeeInfo values(2,'Rahul','Mahajan','Admin','P2','Mumbai','1986/10/10','Male')
insert into EmployeeInfo values(3,'Sonia','Banerjee','HR','P3','Pune','1983/6/5','Female')
insert into EmployeeInfo values(4,'Anikta','Kapoor','HR','P4','Chennai','1983/11/28','Female')
insert into EmployeeInfo values(5,'Swati','Garg','HR','P5','Delhi','1991/4/6','Female')

drop table EmployeePosition
create table EmployeePosition
(
Empid int primary key,
EmpPostion varchar(26),
dateofjoining date,
salary numeric(29)
)
select *from EmployeeInfo
select *from EmployeePosition
insert into EmployeePosition values(1,'Executive','2020/4/1',75000)
insert into EmployeePosition values(2,'Manager','2020/4/3',50000)
insert into EmployeePosition values(3,'Manager','2020/4/2',150000)
insert into EmployeePosition values(2,'Officer','2020/4/2',90000)
insert into EmployeePosition values(1,'Manager','2020/4/3',300000)


--Create a query to generate the first records from the EmployeeInfo table.
select top 1*from EmployeeInfo
-- Create a query to generate the last records from the EmployeeInfo table.
select top 1*from EmployeeInfo order by Empid desc
-- Create a query to fetch the third-highest salary from the EmpPosition table.
select *from EmployeePosition order by salary desc 
offset 2 row
fetch next 1 rows only
-- Write a query to find duplicate records from a table.
select empid,count(empid)as'count'from employeePosition
group by empid
having count(empid)>1
-- Create an SQL query to fetch EmpPostion and the total salary paid for each employee position.
select EmployeePosition,sum(salary)from EmployeePosition
group by EmployeePosition
--find the employee who has max salary
select top 1*from EmployeePosition order by salary desc
--find the employee who has max salary from HR department

--find the age of each employee
--display only female employee details
-- display employee whos position is executive
-- display count of employee in each city