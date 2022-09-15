create database new;

drop database new;

use new;


create table employee(
	eid int primary key auto_increment,
    ename varchar(10),
    salary int,
    address varchar(20)
);

alter table employee 
add column contact varchar(20);

update employee set ename='pyam' where ename='ram';

drop table employee;

describe employee;

select *from employee;

create table department(
	department_id int primary key auto_increment,
    eid int,
    dname varchar(50),
    dblock varchar(50),
    foreign key(eid) references employee(eid)
);

insert into department(eid,dname,dblock) values(1,'sales',2233);
insert into department(eid,dname,dblock) values(1,'sales',2233);


select *from department;

drop table department;

insert into employee(ename,salary,address) values("ram",10000,'ktm');
insert into employee(ename,salary,address) values("shayam",10000,'bhaktapur');
insert into employee(ename,salary,address) values("ram",10000,'lalitpur');
insert into employee(ename,salary,address) values("ajay",5000,'ktm');
insert into employee(ename,salary,address) values("xyz",7000,'lalitpur');
insert into employee(ename,salary,address) values("laxman",7000,'birgunj');

select *,count(*) from employee group by address;

select ename,address,max(salary) from employee;

select ename,address,salary from employee where salary=(select max(salary) from employee);

select ename,address,min(salary) from employee;

select *from employee e join department d on e.eid=d.department_id;

select ename,eid,salary from employee where address='ktm' and salary>(select avg(salary) from employee where address='ktm');

update employee set salary=10000 where eid=3;

update employee set ename='ram' where eid=1;

select sum(salary) from employee;

select sum(salary) from employee where address='ktm';

Select * from employee  having salary > 10000;


