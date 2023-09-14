-- creating a database book my show
create database bms;
-- using the database 
use bms;
-- previewing the database
show databases;
-- creating the personal details of customer in table as p_details
create table p_details(
p_id int primary key auto_increment,
name varchar(20) not null,
number	bigint not null default(+91),
dob		date,
gender	varchar(10),
otp		int	not null,
address	varchar(50) not null,
email char(30) not null);
-- descripting the table 
desc p_details;
-- inserting the customer details in the table
insert into p_details values
(131,'Lokesh','8310135318','2001-12-26','male',1234,'HSRlayout','lokesh123@gmail.com');
select * from p_details;
-- sign in 
select ('enter the password')as signin;
select * from p_details where number='8310135318'and otp=1234;
-- previewing dashboard
create table dashboard(
d_id		int primary key,
categories		varchar(10) not null,
description		varchar(100)not null);
select *from dashboard;
desc dashboard;
insert into dashboard values
(10000,'Movies','Tamil movies, Telugu Movies, English Movies,..etc'),
(20000,'Streams','Mid Century, Revoult ,A confession ,..etc'),
(30000,'Events','Sangeet Event, Dance Events, Classical Events,..etc'),
(40000,'Plays','Cant pay wont pay, the crying village, bags of gags..etc'),
(50000,'Sports','Moto Gp Bharat , 5k Marathon, Samurai Sudoku Champions,..etc'),
(60000,'Activities','Planeterium, Amusement park, Discovery Center,...etc');
select * from dashboard;
-- select movies
select * from dashboard where d_id =10000;
-- movie categories
create table movies(
m_id int primary key,
lang varchar(100) not null,
m_list varchar(100) not null);

insert into movies values
(1000,'Tamil','Maamanan, Maaveeran, Kolai, Por Thozhil,..etc'),
(2000,'Kannada','David, Aparoopa, Ambuja, O manase,..etc'),
(3000,'Hindi','Neeyat, 72 Hooran, Satya Prem Ki Katha,..etc'),
(4000,'English','Insidious, The Flash, Past Lives,..etc'),
(5000,'Malayalam','Padmini, Madura Manohara Moham, Valatty,..etc'),
(6000,'Multi Language', 'Mission Impossible, Mahaveerudu, Baby, GudNight,..etc');
 select * from movies;
 -- select Tamil movies
 select * from movies where m_id=1000;
 -- movie details in the list of tamil movies
 create table t_movies
 (t_id int primary key,
 m_name		varchar(20)not null,
 duration	char(10)not null,
 status		varchar(50)not null,
 genre		varchar(50)not null,
 m_format	char(10)not null,
 ratings	float4 not null,
 r_date		date not null);
 desc t_movies;
 drop table t_movies;

 insert into t_movies values
 (100,'Maaveeran','2h 43m','released','action,thriller','2D',8.2,'2023-07-14'),
 (200,'Maamannan','2h 37m','released','drama,politcal,thriller','2D',7.8,'2023-06-29'),
 (300,'Por Thozhil','2h 27m','released','crime,thriller','2D',9.4,'2023-06-09'),
 (400,'Mission Impossible','2h 45m','released','action,adventure','4D',9.2,'2023-07-12');
  select * from t_movies;
  -- show movie in detail
  select * from t_movies where t_id=100;
-- book no of tickets
create table numofticket(
no_of_ticket int primary key,
p_ticket char(50)not null,
t_id int );
drop table numofticket;
insert into numofticket values
(1,'100-200',100),
(2,'200-400',100),
(3,'300-600',100),
(4,'400-800',100),
(5,'500-1000',100),
(6,'600-1200',100),
(7,'700-1400',100),
(8,'800-1600',100),
(9,'900-1800',100),
(10,'1000-2000',100);
select ('select the number of ticket' ) as book_tickets;
select * from numofticket;

create table b_tickets(
b_id	int primary key,
theaters	varchar(100)not null,
b_date		varchar (10)not null,
addr		varchar(50)not null,
timing_slots	char(50)not null,
t_id int);
desc b_tickets;
drop table b_tickets;
insert into b_tickets values
 (10,'felicity cinemall','22','harlur','11:15',100),
(20,'PVR Mall','22','Belandur','4:15',100),
(30,'Imax Mall','22','Kormangala','09:15',100);
select * from b_tickets;

create table s_all(
s_id		int primary key,
seats		char(100),
t_id int);
drop table s_all;


insert into s_all values
(1,'A1', 100),(2,'A1, A2',100),(3,'A1,A2,A3',100),(4,'A1,A2,A3,A4',100),(5,'A1,A2,A3,A4,A5',100),(6,'A1,A2,A3,A4,A5,A6',100),
(7,'A1,A2,A3,A4,A5,A6,A7',100),(8,'A1,A2,A3,A4,A5,A6,A7,A8',100),(9,'A1,A2,A3,A4,A5,A6,A7,A8,A9',100),(10,'A1,A2,A3,A4,A5,A6,A7,A8,A9,A10',100);
select * from s_all;

select * from t_movies;
desc t_movies;

create table booking_summary(
bs_id int primary key auto_increment,
t_id int,
bill_date	date,
price 	int,
base_amount float,
gst	float4);
drop table booking_summary;
select * from b_tickets;
desc booking_summary;
insert into booking_summary values
(1,100,'2023-07-22',150,0.2,0.18);
select *from booking_summary;
select * from b_tickets;
select * from t_movies;
select * from s_all;

create table payment(
m_payment varchar(20),
t_id	int,
ticket varchar(20));

insert into payment values
('card',100,'issued'),
('netbanking',100,'issued'),
('mobile banking',100,'issued'),
('UPI',100,'issued');
select * from payment;

-- -----------------------------------------------------------------------------------------------------------------------
select ('+91 ') as Mobile_number;
select ('+91 8951220332') as Mobile_number;
select ('0 0 0 0')  as Otp;
select * from p_details where number= '8951220332' and otp =0000;
-- enter the personal details
select ('enter the personal details') as p_details;
select ('+91 8310135318') as Mobile_number;
select ('1 2 3 4')  as Otp;
select * from p_details where number= '8310135318' and otp =1234;
select * from dashboard;
select * from movies;
select * from t_movies;
select (' Book tickets') as proceed;
-- no of theaters
select * from b_tickets;
select t.m_name,t.duration,t.status,t.genre,t.m_format,t.ratings,t.r_date,b.theaters,b.b_date,b.addr,b.timing_slots from
  t_movies t  join b_tickets b where t.t_id in( b.t_id )and b.theaters like 'f%' ;
-- select the no of tickets 
select * from numofticket;
-- selected tickets for movie 
select t.m_name,t.duration,t.status,t.genre,t.m_format,t.ratings,t.r_date,n.no_of_ticket from
  t_movies t join numofticket n where t.t_id = n.t_id and no_of_ticket = '9'; 
-- select seats
select * from s_all where s_id order by seats desc limit 1;
-- display no of seats
 select t.m_name,t.duration,t.status,t.genre,t.m_format,t.ratings,t.r_date,n.no_of_ticket,b.theaters,b.b_date,b.addr,b.timing_slots,s.seats from
  t_movies t join numofticket n  join b_tickets b join s_all s where t.t_id in(n.t_id  , b.t_id, s.t_id )and
  b.theaters like 'f%'and n.no_of_ticket ='9' and s.s_id= '9';
-- display the booking summary
-- select * from booking_summary;
-- select  ((base_amount +gst )*price)+price as sub_total from booking_summary;
-- select bill_date,price,base_amount,gst,ceil(((base_amount +gst )*price)+price) as sub_total from booking_summary;
-- booking summrary
 select t.m_name,t.duration,t.status,t.genre,t.m_format,t.ratings,t.r_date,n.no_of_ticket,b.theaters,b.b_date,b.addr,b.timing_slots,s.seats,
 bs.bill_date,(bs.price*s.s_id) as t_price,bs.base_amount, bs.gst,ceil(((bs.base_amount +bs.gst )*(bs.price*s.s_id))+(bs.price*s.s_id)) as sub_total 
 from t_movies t join numofticket n  join b_tickets b join s_all s join booking_summary bs where t.t_id in(n.t_id  , b.t_id, s.t_id, bs.t_id )and
  b.theaters like 'I%'and n.no_of_ticket ='9' and s.s_id= '9';
  select ('Proceed to pay') as Book_ticket ;
-- payment preview
select m_payment from payment;
 select t.m_name,t.duration,t.status,t.genre,t.m_format,t.ratings,t.r_date,n.no_of_ticket,b.theaters,b.b_date,b.addr,b.timing_slots,s.seats,
 bs.bill_date,(bs.price*s.s_id) as t_price,bs.base_amount, bs.gst,ceil(((bs.base_amount +bs.gst )*(bs.price*s.s_id))+(bs.price*s.s_id)) as sub_total 
 ,p.m_payment,p.ticket from t_movies t join numofticket n  join b_tickets b join s_all s join booking_summary bs join payment p
 where t.t_id in(n.t_id ,p.t_id, b.t_id, s.t_id, bs.t_id )and b.theaters like 'I%'and n.no_of_ticket ='9' and s.s_id= '9'
 and p.m_payment ='UPI';
 -- ticket issued 
 select ('Ticket Received') as Payment_Succesful;
 -- ---------------------------------------------------------------------------------------------------------------------















 
 
 







