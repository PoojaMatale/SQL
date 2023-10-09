drop table customer
create table customer
(
id int primary key,
city varchar(20)not null,
country varchar(30),
postalcode int,
price numeric(12,2),
product varchar(30)
)
drop table customer 
select*from customer

insert into customer values(1,'london','italy',423321,10,'shoes')
insert into customer values(2,'berlin','USA',23451,20,'bag')
insert into customer values(3,'pune','india',121110,30,'sandal')
insert into customer values(4,'osla','norway',78321,40,'hairdrier')
insert into customer values(5,'hongkong','china',73217,50,'castic')

--select all records where city coloumn has the value london
select *from customer where city='london'
--use the not keyword to select all record where city is not baerlin
select *from customer where city<>'berlin'
--select all records where custid column has value 23
select *from customer where id=3
--select all records where the city column has the value berlin or london
select *from customer where city='berlin' or 'london'
--select all records where city column has the value berlin and postalcode column  has the value 121110
select *from customer where city='berlin' and postalcode=121110
--select all records  from the customer table ,sort alphabetacally by the column city
select *from customer order by city
--select all records  from the customer table ,sort result reversed alphabetalically  by the column city
select *from customer order by city desc
--select all records from the customer table ,sort result alphabetalically first by the column country then by the country city
select *from customer order by country,city
--select all record from customer where postalcode column is empty
select *from customer where postalcode='null'
--select all record from customer where postalcode column not is empty
select *from customer where postalcode<>'null'


alter table customer alter column city varchar(20)not null
select *from customer where country like 'a%'
select *from customer where country like '%a'
select *from customer where country like '%a%'
select *from customer where country like '%[ab]'
select *from customer where country  not like 'a%'
select *from customer where country like '[acs]%'
select *from customer order by city desc
select *from customer where country not like'[acf]%'
--country either india or china 
select *from customer where country in('india','china')
select *from customer where price between 10 and 20
select * from customer where price not between 10 and 20





