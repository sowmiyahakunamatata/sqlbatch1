 
select * from empdetails
use employee

create table demo

(
id int,
name varchar(10)
)
select *from demo
alter table demo add designation varchar(10)
alter table demo add mobile varchar(10)
alter table demo drop column mobile

insert into demo values(1,'Peter','Developer')
 
truncate table demo
drop table demo
create database demo
use demo
create schema sqltrainees
create table demo
(
id int
)
 
create table sqltrainees.demo1
(
id int
)
drop schema if exists sqltrainees
--1st drop the table and then drop the schema
drop table sqltrainees.demo1
drop schema if exists sqltrainees


select *from empdetails
delete from empdetails where eid=5


select EID,EName from empdetails  

select EID as EmpID,EName as 'Employee Name' from empdetails  

select * from empdetails  where EName='john'


select * from empdetails   where EName='Sam' Collate SQL_Latin1_General_CP1_CS_AS;

alter table empdetails add EmpSalary varchar(20)
  select* from empdetails
  alter table empdetails drop column esalary 

  
update empdetails set EmpSalary=344332 where EDesignation='Developer'
update empdetails set EmpSalary=27865 where EDesignation='Designer'
update empdetails set EmpSalary=27865 where EDesignation='tester'


select * from empdetails  where EmpSalary>=25000

select * from empdetails where EmpSalary<30000

select * from empdetails where EmpSalary>25000 AND EDesignation='Designer'
select * from empdetails where EmpSalary>25000 OR EDesignation='developer'

select * from empdetails where EmpSalary between 27865  and 27865



select * from  empdetails WHERE Eid in (1,3,6)

select * from empdetails WHERE Eid not in (1,3,5)

select * from empdetails WHERE EDesignation in ('Designer','tester')

select * from empdetails WHERE EDesignation not in ('Designer','developer')


select * from empdetails where EName like 'd%'
select * from empdetails where EName like '_a%'
select * from empdetails where EName like '%n'
select * from empdetails where EName like 's__'
select * from empdetails where EName like '[dp]%'
select * from empdetails where EName not like '[dp]%'
select * from empdetails where EName like '[a-i]%'
select * from empdetails where EName not like '[o-n]%'