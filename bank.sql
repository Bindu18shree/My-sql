create database bank;
use bank;
create table AccountHolderDetails(

AccountHolderId char(5) primary key,
AccountNumber bigint unique,
AccountHolderName varchar(30) not null,
AcoountHolderAge int check(AcoountHolderAge > 18),
Gender varchar(50)
);

desc AccountHolderDetails;

insert into AccountHolderDetails values
('AH01', 012345678, 'Asha BK', 38, 'Female'),
('AH02', 0230101088057, 'Usha', 22, 'Female'),
('AH03', 2832500100045001, 'Sri Ram', 56, 'Male'),
('AH04', 36384180646, 'Asha BK', 38, 'Female');

select * from AccountHolderDetails;

create table BankDetails(

Id char(5) primary key,
BankName varchar(30) not null,
noOfBranches int check(noOfBranches > 0),
branchName varchar(20),
AccountNumber bigint unique, foreign key(AccountNumber) references AccountHolderDetails(AccountNumber)
);

insert into BankDetails values
('BD01', 'Canara Bank', 20, 'Bidadi', 012345678),
('BD02', 'Karnataka Bank', 12, '-', 0230101088057),
('BD03', 'Indian Bank', 23, 'Ramnagar', 36384180646),
('BD04', 'SBI Bank', 10, 'Rajajinagar', 2832500100045001);

insert into BankDetails values
('BD05', 'Kotak', 20, 'Bidadi', 4578387467834);

select * from BankDetails;