Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 6
Server version: 5.7.28-log MySQL Community Server (GPL)

Copyright (c) 2000, 2019, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database BidvestBank;
Query OK, 1 row affected (0.01 sec)

mysql> use BidvestBank;
Database changed
mysql> create table BankBranch(branchName varchar(25) not null primary key,
    -> branchCity varchar(25),
    -> assets double);
Query OK, 0 rows affected (0.59 sec)

mysql>  create table Customer(customerName varchar(50) not null primary key,
    -> customerStreet varchar(25) not null,
    -> customerCity varchar(25) not null);
Query OK, 0 rows affected (0.65 sec)

mysql> create table CustomerAccount(accountNumber char(25) not null primary key,
    -> branchName varchar(25) not null,
    -> balance double not null);
Query OK, 0 rows affected (0.51 sec)

mysql> create table Loan(loanNumber varchar(10) not null primary key,
    -> branchName varchar(25) not null,
    -> amount double not null);
Query OK, 0 rows affected (0.53 sec)

mysql> create table Depositor(customerName varchar(50) not null primary key,
    -> accountNumber char(25) not null);
Query OK, 0 rows affected (0.49 sec)

mysql> create table Borrower(customerName varchar(50) not null primary key,
    -> loanNumber varchar(10) not null);
Query OK, 0 rows affected (0.49 sec)

mysql> create table Employee(employeeName varchar(50) not null primary key,
    -> branchName varchar(25),
    -> salary double not null);
Query OK, 0 rows affected (0.40 sec)

mysql> insert into BankBranch values ('Midrand', 'Johannesburg', 7100000) ,
    -> ('Newtown', 'Johannesburg', 9000000),
    -> ('Mabopane', 'Pretoria' , 400000),
    -> ('Belgravia', 'Kimberly', 3700000),
    -> ('Sunnyside ', 'Pretoria', 1700000),
    -> ('Amanzimtoti', 'Durban', 300000),
    -> ('Universitas', 'Bloemfontein', 210000),
    -> ('Mamelodi', 'Pretoria', 8000000);
Query OK, 8 rows affected (0.84 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> insert into customerAccount values ('A-5324', 'Newton', 500),
    -> ('A-5624', 'Sunnyside ', 400),
    -> ('A-7794', 'Midrand', 900),
    -> ('A-4467', 'Mabopane', 700),
    -> ('A-3548', 'Midrand', 750),
    -> ('A-3453', 'Universitas', 700),
    -> ('A-2542', 'Mamelodi', 350);
Query OK, 7 rows affected (0.19 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> insert into Customer values ('Modise', 'Spring', 'George'),
    -> ('Brooks', 'Senator ', 'Johannesburg'),
    -> ('Jooste ','North ', 'Kimberty'),
    -> ('Lombard','Sand Hiu','Netspruit'),
    -> ('Mokwena', 'Walnut', 'Port-Elizabeth'),
    -> ('Johnsen', 'Mmabatho','Mafikeng'),
    -> ('Johnson', 'Alma ', 'Bloemfontein'),
    -> ('Zwane', 'Main','Mafikeng' ),
    -> ('Lindsay', 'Park','George'),
    -> ('Smith','North',  'Kimberly'),
    -> ('Dlamini','Putnam', 'Port-Elizabeth'),
    -> ('Williams', 'Nassau','Giyane');
Query OK, 12 rows affected (0.15 sec)
Records: 12  Duplicates: 0  Warnings: 0

mysql> insert into Loan values ('L-11', 'Mamelodi ', 900),
    -> ('L-14', 'Newtown', 1500),
    -> ('L-15', 'Sunnyside ', 1500),
    -> ('L-16', 'Sunnyside', 1300),
    -> ('L-17', 'Newtown' ,1000),
    -> ('L-23', 'Universitas ', 2000),
    -> ('L-93', 'Mabopane ', 500);
Query OK, 7 rows affected (0.19 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> insert into Depositor values ('Johnson', 'A-5624'),
    -> ('Johnsan', 'A-5624'),
    -> ('Johnsen ', 'A-7794'),
    -> ('Zwane', 'A-3546' ),
    -> ('Lindsay', 'A-3453' ),
    -> ('Smith', 'A-4467'),
    -> ('Dlamini', 'A-2542');
Query OK, 7 rows affected (0.32 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> insert into Borrower values ('Modise', 'L-16'),
    -> ('Jooste', 'L-93'),
    -> ('Johnson', 'L-15'),
    -> ('Jackson', 'L-14'),
    -> ('Zwane', 'L-17'),
    -> ( 'Smith', 'L-11'),
    -> ('Smath', 'L-23 '),
    -> ('Williams', 'L-17');
Query OK, 8 rows affected (0.54 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> insert into Employee values ('Modise', 'Sunnyside', 1500),
    -> ('Brown ', 'Sunnyside', 1300),
    -> ('Gopal', 'Sunnyside ', 5300),
    -> ('Johnson', 'Newtown', 1500),
    -> ('Loreena', 'Newtown', 1300),
    -> ('Peterson ', 'Newtown', 2500),
    -> ('Rao', 'Austin', 1500),
    -> ('Sato', 'Austin', 1600);
Query OK, 8 rows affected (0.81 sec)
Records: 8  Duplicates: 0  Warnings: 0




