create database workertable
use workertable

drop table details

create table workerstable
 (
 	WORKER_ID INT  PRIMARY KEY,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY varchar(15),
	--JOINING_DATE DATETIME,
	--DEPARTMENT CHAR(25),
)


insert into workerstable values(1,'sowmiya','kajendhiran','50000')
insert into workerstable values(2,'gayathri','saravanan','50000')
insert into workerstable values(3,'amali','bala','50000')

select FIRST_NAME as workername from workerstable
select upper (FIRST_NAME) as workername from workerstable



select * from workerstable

alter table workerstable add department varchar(20)
 update workerstable set  department ='testing' where WORKER_ID=1
 update workerstable set  department ='UI' where WORKER_ID=2
 update workerstable set  department ='developer' where WORKER_ID=3
 select distinct department from workerstable --3rd
 select SUBSTRING(FIRST_NAME, 1,3)from workerstable--4th
 select len(department)from workerstable  --5th

 insert into workerstable values(4,'appu','arun','20000','UI')
   
 select CONCAT(FIRST_NAME,LAST_NAME)AS 'COMPLETE_NAME' FROM Workerstable --6th
 select * from workerstable where FIRST_NAME in('vipul','satish') --7th
  

 
alter table workerstable add joiningdate varchar(20)
 update workerstable set   joiningdate='06-08-2022' where WORKER_ID=1
 update workerstable set   joiningdate='06-08-2022' where WORKER_ID=2
 update workerstable set   joiningdate='06-08-2022' where WORKER_ID=3
 update workerstable set   joiningdate='06-08-2022' where WORKER_ID=4

 
 insert into workerstable values(6,'Vipul','arun','50000','admin','06-08-2022')
 
 insert into workerstable values(5,'sathis','arun','50000','account','06-08-2022')

select * from workerstable  where DEPARTMENT like'admin%';---8th
select * from workerstable  where FIRST_NAME like'%a';--- 9th

select * from workerstable  where FIRST_NAME like'%a%';--- 10th