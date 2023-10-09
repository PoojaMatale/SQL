
select *from customer
select *from department 
create table department
(
did int primary key,
dname varchar(20)
)
insert into department values(101,'manager'),(102,'HR'),(103,'testing'),(104,'development')
alter table customer add did int
alter table customer add constraint pk_fk_dept_emp 
foreign key(did) references Dept(did)

update customer set did=101 where id in (1,2)
update customer set did=102 where id in (3,4)
update customer set did=103 where id in (4,5)
update customer set did=104 where id in (3,5)

select c.*,d.dname
from customer c
inner join department d on d.did=c.did
