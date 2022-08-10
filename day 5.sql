use  employee
select *from sample1 where eid=1
 

 select *from sample1
 create clustered index ix_eid on  sample1(eid)

 create index ix_ename on sample1(ename)

  create table students
  (
  sid int not null,
  sname varchar(25),
  sdept varchar(25),

  )

  insert into students values(1,'sowmiya','CSE'),
              (2,'daisy','ECE'),
			  (3,'sharmi','EEE'),
			  (4,'sangeetha','IT')


	select *from students



	
create unique index ix_sname on students(sname)

select * from sample1 where ename='gayathri'

create index ix_ename on students(sname) where sname='sangeetha '


select *from students
create trigger trg_insert
on students
FOR INSERT
as
begin
	print 'You cannot insert data'
	rollback transaction --undo the insert query
end



drop trigger trg_insert

insert into  students values(4,'jaisri','MBA')

create trigger trg_dml
on students
FOR INSERT,UPDATE,DELETE                  -- DML operatin its used in insert ,delete ,update
as
begin
	print 'You cannot perform DML Operations'
	rollback transaction --undo the DML Statements
end


insert into  students values(5,'AJISHA','ME')
update students set sid=5 where sid=4
delete from students where sid=4
select * from students


drop trigger trg_dml

disable trigger trg_dml on students
enable trigger trg_dml on students

INSERT INTO  students VALUES(6,'Jancy','BBA')
delete from students where SNAME='jaisri'

update students set sid=4 where sid=5

update students set sid=5 where sid=6
delete from students where sname='ajisha'

select * from students

create trigger trg_inserted
on sample1
for insert
as 
begin 
	
	 -- trigger table
end

select * from sample1


create trigger trg_deleted
on  sample1
for delete
as 
begin 
	 select * from deleted -- trigger table
end


create trigger trg_update
on sample1
for update
as 
begin 
    select * from inserted
	select * from deleted -- trigger table
end


create trigger trg_ddl
on database
for CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS
	begin
		print 'You cannot perform DDL Operations on sqlbatch db'
		rollback transaction --undo the DML Statements
	end

disable trigger trg_ddl on database

use workertable

create  table demo
(
  sid int 
  )
  drop table demo

create trigger trg_ddlserver
on ALL SERVER
for CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS
	begin
		print 'You cannot perform DDL Operations on SERVER'
		rollback transaction --undo the DML Statements
	end

select *from workerstable


BEGIN TRANSACTION
	insert into workerstable values(7,'hema','aji',39000,'cse',09-08-2022,SYSDATETIME()) -- gets commited
	SAVE TRANSACTION insert_stmt
	delete from  workerstable where worker_id =7 --rollback
ROLLBACK TRANSACTION insert_stmt
COMMIT TRANSACTION

--IMPLICIT TRANSACTION
SET IMPLICIT_TRANSACTIONS OFF








