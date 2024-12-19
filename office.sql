create database office;
use office;
create table Employee(

Employee_Id int,
First_Name varchar(30),
Last_Name varchar(25),
Email varchar(30)
);

desc Employee;

rename table Employee to Employee_Details;

alter table Employee_Details add column Phone_Number bigint;
alter table Employee_Details add column Hire_Date date;
alter table Employee_Details add column Salary double;
alter table Employee_Details add column Job_Id int;
alter table Employee_Details add column Department_Id char(10);

desc Employee_Details;

alter table Employee_Details rename column Phone_Number to Mobile_Number;
alter table Employee_Details rename column Email to Email_Id;
alter table Employee_Details rename column job_id to Employee_Job_Id;
alter table Employee_Details rename column salary to Pay_Slip;

alter table Employee_Details drop Employee_Job_Id;
alter table Employee_Details drop Pay_Slip;
alter table Employee_Details drop Email_id;

alter table Employee_Details modify Mobile_Number int;
alter table Employee_Details modify Employee_Id bigint;
alter table Employee_Details modify First_Name varchar(20);
alter table Employee_Details modify Last_Name char(3);







