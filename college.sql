create database college;
use college;

create table StudentInfo(

id char(5) primary key,
StudentUSIN char(12) unique,
StudentName varchar(30) not null,
specialization varchar(20) not null
);

desc StudentInfo;

insert into StudentInfo values 
('SD01', '21MPBS408001', 'Garima', 'Computer Science'),
('SD02', '21MPBS408002', 'Kalash', 'Information Science'),
('SD03', '21MPBS408003', 'Kavin', 'Computer Science'),
('SD04', '21MPBS408005', 'Adithya', 'AIML');

select * from StudentInfo;

create table RamaiahCollege(

id char(5) primary key,
pincode int not null,
collegeType varchar(20) not null,
noOfDept int check(noOfDept > 1),
StudentUSIN char(12) unique, foreign key(StudentUSIN) references StudentInfo(StudentUSIN)
);

drop table RamaiahCollege;
insert into RamaiahCollege values 
('RC01', 562109, 'VTU', 8, '21MPBS408001'),
('RC02', 562109, 'VTU', 8, '21MPBS408004'),
('RC03', 562109, 'VTU', 8, '21MPBS408002'),
('RC04', 562109, 'VTU', 8, '21MPBS408003');