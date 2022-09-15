create database details;

use details;

create table products(
product_id  int primary key,
product_name varchar(40) not null,
SupplierID int,
CategoryID int,
QuantityPerUnit varchar(20),
UnitPrice int,
UnitInStock smallint,
UnitOnStock smallint,
RecorderLevel smallint
-- foreign key(catergory_id) references categories(category_id)
);

desc products;




drop table products;

create table orders(
order_id int primary key,
customer_id char(5),
employee_id int,
order_date datetime,
required_date datetime,
shipvia int ,
foreign key(shipvia) references shippers(shipperid),
foreign key(employee_id) references employee(EmployeeID)
);

drop table orders;

create table employees(
EmployeeID int not null,
LastName nvarchar(20) not null,
FirstName nvarchar(10) not null,
BirthDate datetime,
Address nvarchar(60),
reportsto int
);

drop table employees;

create table customers(
customer_id char(5) primary key,
companyname varchar(40) not null,
contactname varchar(30),
contacttitle varchar(30),
address varchar(50),
phone varchar(24) not null,
Country nvarchar(15)
);


drop table customers;

create table suppliers(
supplier_id int primary key,
companyname varchar(40) not null,
contactname varchar(40),
contacttitle varchar(40),
address varchar(60)
);

drop table suppliers;


create table orderdetails(
orderid int primary key,
productid int not null,
unitprice int not null,
quantity int not null,
discount int 
);

drop table orderdetails;

create table employeeterritories(
employee_id int not null,
territory_id varchar(20) not null
);

create table region(
regionid int not null,
regiondescription char(50) not null
);

create table categories(
categoryid int not null,
categoryname varchar(15) not null, 
description varchar(60)
);

create table territories(
territory varchar(50) not null,
territorydescription nchar(50) not null,
region int not null
);

create table customerdemo(
customerid nchar(5) not null,
customertype nchar(10) not null,
primary key(customerid,customertype)
);

create table customerdemographics(
customerID nchar(10) not null,
custoemerDescription char(20) not null,
primary key(customer_id,customerDescription),
foreign key(customerID) references customers(customer_id)
);

create table Shippers(
ShipperID int primary key,
CompanyName nvarchar(40) not null,
Phone nvarchar(24)
);

drop table Shippers;












