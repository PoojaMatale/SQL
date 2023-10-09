create table trainer
(
triner_id int primary key,
trainer_name varchar(30),
joindate date,
email varchar(25),
experiance_in_year int

create table course
(
course_id int primary key,
course_name varchar(20),
duration varchar(15),
trainer_id int,
total_fees int
)

insert into course values(1,'BCA','6-month',11,30000),
(2,'BCS','3-month',12,25000),
(3,'BCOM','4-month',13,27000),
(4,'BBA','5-month',14,20000),
(5,'BSC','8-month',15,12000),
(6,'BSC-IT','12-month',16,29000)


create table student
(
rollno int primary key,
sname varchar(20),
degree varchar(25),
bithdate int,
course_id int,
batch_id int,
fees_paid numeric(12,2),
remark varchar(30),
place varchar(20)
)





