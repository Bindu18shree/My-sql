create database student;
use student;
create table student_details(

id int,
USIN char(12),
Student_Name varchar(30),
DOB date,
Contact_Number bigint,
Course_Name varchar(20),
CGPA float
);

desc student_details;

insert into student_details values(1, "21MPBS408003", "Bindu", '2002-08-18', 9876545678, "B.Sc(Hons) CS", 7.20);

select * from student_details;

