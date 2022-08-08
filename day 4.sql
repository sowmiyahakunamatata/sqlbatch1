 use employee
 select *from  empdetails
 create table dummy

(
Eid int ,
Ename varchar(25),
salary int(25),
Edesgination varchar(25)
)
select *from dummy
 drop table dummy
  
 create table sample1
 (
Eid int ,
Ename varchar(25),
salary int,
Edesgination varchar(25)
)
select *from sample1


insert into sample1 values(1,'augustus','50000','designer')
insert into sample1 values(2,'Thair',' 52000',' developer')
insert into sample1 values(3,'gayathri',' 40000','admin ')
insert into sample1 values(4,'sowmiya','42000','tester ') 
insert into sample1 values(5,'sagi','48000',' developer')
insert into sample1 values(6,'daisy','45000','admin ')
insert into sample1 values(7,'daisy','46000','developer')

select avg(salary) as 'Average Salary' from sample1 
select min(salary) as 'Minimum Salary' from sample1 
select max(salary) as 'Maximum Salary' from sample1 
select count(salary)as'Count Salary'   from   sample1 
select sum(salary) as 'Sum Salary'     from     sample1 


select avg(salary) as 'Average Salary',Edesgination from   sample1 group by Edesgination


select avg(salary) as 'Average Salary',Edesgination from sample1 group by EDesgination having Edesgination='Developer'


delete from sample1 where Eid=1


delete from sample1 where Eid=2
insert into sample1 values(1,'sachin','49000','developer')
insert into sample1 values(2,'praveen','43000','developer')

select * from  sample1 order by salary 
select * from  sample1 order by salary desc

select * from  sample1 order by salary desc,Eid desc

select *from  empdetails
alter table empdetails  drop column EContact


create synonym e2 for empdetails
select * from empdetails
select * from e2

drop synonym if exists e2


create table students
(
SID int primary key,
SName varchar(25) not null,
SDept int not null,
SClub int not null,
)

select * from students

create table SDept
(
DID int primary key,
DeptName varchar(25) not null
)
select * from SDept

create table SClub
(
CID int primary key,
ClubName varchar(25) not null
)


select * from students
select * from SDept

select SID,SName,SDept,DeptName from students inner join SDept on SDept=DID





















