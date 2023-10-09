
drop table product
create table product
(
id int ,
name varchar(30),
price int,
remark varchar(20)
)
select *from product
insert into product values(1,'sakshi',400,'expensive')
insert into product values(1,'sakshi',200,'not expensive')
insert into product values(1,'sakshi',300,'avreage')
insert into product values(1,'sakshi',500,'avreage')

select name,price,
case
when price>300 then 'expensive'
when price<300 the 'not expensive'
else 'average'
end as 'remark'

--employee salary 40k to 90k->high salary
--salary between 25k to 40k->average
--salary <25 is low salary
select *from employee
select name,salary,
case
when salary>4000 and salary<90000 then 'high salary'
when salary>25000 and salary<40000 then 'avreage salary'
else 'low salary'
end as 'avreage'




