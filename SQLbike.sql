drop table model
create table model
(
mid int primary key,
mname varchar(25),
cost int
)
select *from model
insert into model values(1,'hero',250000),
(2,'bajaj',30000),
(3,'royal enfield',450000),
(4,'mahindra',350000)

drop table customer
create table customer
(
cust_id int primary key,
first_name varchar(20),
last_name varchar(30),
gender varchar(25),
email varchar(35)
)
select *from customer
insert into customer values(11,'payal','salve','female','payalsalvel@gmail.com'),
(12,'sayali','khamkar','female','sayalikhamkar@gmailcom'),
(13,'avi','zaware','male','avizaware@gmail.com'),
(14,'shubzz','patil','male','shubzzpatil@gmail.com'),
(15,'kavita','punde','female','kavitapunde@gmailcom')


drop table payment_mode
create table payment_mode
(
payment_id int primary key,
payment_type varchar(20)
)
select *from payment_mode
insert into payment_mode values(111,'cash'),
(222,'online'),
(333,'check')

create table feedback_rating
(
rating_id int primary key,
rating varchar(15)
)
select *from feedback_rating
insert into feedback_rating values(101,'good'),
(102,'excellent'),
(103,'bad'),
(104,'average')
drop table purchase
create table purchase
(
purchase_id int primary key,
cust_id int,
mid int,
booking_amount numeric(12,2),
payment_id int,
purchase_date date,
rating_id int,

constraint fk_cust_id foreign key(cust_id)references customer(cust_id),
constraint fk_model_id foreign key(mid)references model(mid),
constraint fk_payment_id foreign key(payment_id)references payment_mode(payment_id),
constraint fk_rating_id foreign key(rating_id)references feedback_rating(rating_id)
)
insert into purchase values(55,14,3,110000,10,'2022/04/12',103),
(66,15,4,22000,20,'2000/03/14',102),
(77,11,2,45000,30,'2002/02/15',101),
(88,13,5,24000,40,'2005/07/12',102),
(99,12,1,21000,50,'2012/05/21',101)



select *from model
select *from customer
select *from payment_mode
select *from feedback_rating
select *from purchase

