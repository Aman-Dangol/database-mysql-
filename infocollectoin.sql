create database info;
use info
create table details(
	id int not null primary key identity(1,1),
	name nvarchar(255) not null,
	age int not null,
 )
 insert into details(name,age,contact) values ('alina','25','98400')
 alter table details add contact nvarchar(15);
 select * from details
