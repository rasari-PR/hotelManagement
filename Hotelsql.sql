create database Hotels;

use Hotels;

create table Room(Room_ID int identity(1,1) primary key,
Room_NO varchar(250) not null unique,
Room_Type varchar(250) not null,
Bed varchar (250) not null,
Price bigint not null,
Booked varchar(50) default'NO');

insert into Room(Room_NO,Room_Type,Bed,Price,Booked)
values(456,'AC','Single',5000,'YES');
insert into Room values(123,'AC','Double',10000,'NO');
insert into Room values(417,'Non AC','Double',7500,'NO');
insert into Room values(521,'AC','Triple',20000,'YES');

select * from Room;

create table Customer(CID int not null primary key,Cname varchar(250) not null,Mobile bigint not null,
Nationality varchar(250) not null,Gender varchar(50) not null,DOB varchar(50) not null,
IDProof varchar(250) not null,CAddress varchar(350) not null,CheckIn varchar(250) not null,
CheckOut varchar(250),ChekOut varchar(250) not null default 'NO',
RoomID int not null, foreign key(RoomID) references Room(Room_ID));

select*from Customer;



create table Employee(EID int identity(1,1) primary key,EName varchar(250) not null,
Mobile bigint not null, Gender varchar(50) not null,Email varchar(150) not null,
Username varchar(150) not null,Pass varchar(150) not null);



insert into Employee(EName,Mobile,Gender,Email,Username,Pass)
values('Hashara Perera',0714561231,'Female','hashara123@gmail.com','hasha','haperera');
insert into Employee values('Dinuka Udara',0775861230,'Male','dinuka456@gmail.com','dinu','dinuka');

select* from Employee;

