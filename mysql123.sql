
use bit3rdsem
create table student
(
 id int not null primary key identity(1,1),
 name nvarchar(255) not null,
 address nvarchar(25) not null,
 contact nvarchar(25) not null,
 
 )
 alter table student add phone int not null 
 insert student( name,address,contact,phone)values ('robert downey jr.','USA','rdj@gmail.com',3000)
 select * from student
 delete from student where name='chor' 
 update student set name = 'sudarshan' where name ='suddu'
 update student set name ='chor' where name ='SANDESH'
 

 
