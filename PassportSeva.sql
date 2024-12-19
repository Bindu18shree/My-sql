create database PassportSeva;
use PassportSeva;
create table Register(

Register_to_apply_at varchar(20),
Passport_Office varchar(30),
Given_Name varchar(30),
Surname varchar(30),
Date_of_birth date,
Email_id varchar(20),
Login_ID int,
Password varchar(10),
Confirm_Password varchar(10)
);

desc Register;