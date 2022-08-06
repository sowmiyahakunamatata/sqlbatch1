 
create database sqlbatch
use sqlbatch
create table batch2
(
EID int,
EName varchar(15),
EContact varchar(10),
EDesignation varchar(20)
)

insert into batch2 values(1,'augustus','123456789','software engineer')
insert into batch2 values(2,'Thair','123456719','full stack developer')
insert into batch2 values(3,'gayathri','789654321','full stack developer')
insert into batch2 values(4,'sowmiya','231456789','dot net developer') 
select * from batch2
alter table batch2 add salary varchar(20)
update batch2 set salary='20000' where EID=1;
update batch2 set salary='2000' where EID=2;
update batch2 set salary='200' where EID=4;
delete from  batch2 where eid=3

select * from batch2

truncate table batch1
select * from batch2 where Salary>2000
select* from batch2 where Salary<20000

select * from batch2 where Salary between 200 and 20000

select * from batch2 WHERE EID in (1,2)


update batch2 set EDesignation='Designer' where EID=2 


create table demo
(
id int,
name varchar(10)
)


alter table demo add designation varchar(10)
alter table demo add contactnumber varchar(10)
insert into demo values(1,'augustus','developer','9876543210'),(2,'thair','ui','9876543212')
select *from demo

drop table demo

select * from employees

insert into batch2(EID,ENAME) values(3,'apple')
select * from batch2
select * from dept
select * from dept
create table dept2
(
did int PRIMARY KEY,
dname varchar(20) NOT NULL
)

insert into dept2 values(1,'Admin')
insert into dept2 values(2,'Developer')
insert into dept2 values(6,'Designer')
insert into dept2 values(4,'Tester')


select * from dept2
select *from parent

select * from child
create table emp
(
eid int PRIMARY KEY,
ename varchar(25) NOT NULL,
salary MONEY,
dno int FOREIGN KEY REFERENCES dept(did)
)

insert into emp values(100,'John',25000,1)
insert into emp values(101,'Jancy',25000,2)
insert into emp values(102,'Joanna',28000,1)
insert into emp values(103,'Jamie',35000,3)

select * from emp

alter table child drop constraint FK__child__pno__6D0D32F4

alter table child add constraint FK__child__pno foreign key(pno) references parent(pid) on delete set null on update set null


create table child
(
cid int primary key,
cname varchar(20) not null,
pno int default 1 foreign key references parent(pid) on delete set default on update set default
)
insert into child values(100,'c1',1)
insert into child values(101,'c2',2)
insert into child values(102,'c3',1)
insert into child values(103,'c4',3)

update parent set pid=20 where pid=2
select * from parent
select * from child
delete from parent where pid=3
