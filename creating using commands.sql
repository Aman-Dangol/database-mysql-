create database store_db;
-- seting default
use store_db;
-- creating table named customer
create table customer ( cid int auto_increment not null , name varchar(45) not null, contact int not null ,address varchar(50),primary key(cid) );
-- max value(5,2) 
create table product (proID int, name varchar(45), price decimal(5,2),primary key(proID));
insert into customer(`name`,`contact`,`address`) values ("aman",9841000,"london") ;
insert into customer(`name`,`contact`,`address`) values ("adsad",8888,"london") ;
insert into customer(`name`,`contact`,`address`) values ("qwe",95420,"london");


