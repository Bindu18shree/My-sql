create database cricket;
use cricket;
create table testMatch(

id char(5) primary key,
playerName varchar(20) unique,
playRole varchar(20) not null,
age int check(age>20),
noOfRunsInTest int check(noOfRunsInTest>10),
DOB date check(DOB >'1980-12-05'),
birthPlace varchar(30) not null
);

desc testMatch;

insert into testMatch values
('TM01', 'Rohith Sharma', 'Batsman', 37, 2000, '1987-05-30', 'Maharashtra'),
('TM02', 'Virat Kohli', 'Batsman', 36, 4000, '1988-11-05', 'Delhi'),
('TM03', 'Rishab Pant', 'Batsman', 27, 2730, '1997-10-04', 'Uttarakhand'),
('TM04', 'KL Rahul', 'Batsman', 32, 3080, '1992-05-18', 'Mangaluru'),
('TM05', 'Dhruv Jurel', 'Batsman', 23, 200, '2001-01-21', 'Agra'),
('TM06', 'Nitish Reddy', 'Batsman', 22, 300, '2003-05-23', 'Andra Pradesh'),
('TM07', 'Harshith Rana', 'Bowler', 22, 15, '2001-01-22', 'New Delhi'),
('TM08', 'Prasidh Krishna', 'Bowler', 27, 22, '1996-02-19', 'Bihar'),
('TM09', 'Shubman Gill', 'Batsman', 25, 1800, '1999-09-08', 'Punjab'),
('TM10', 'Mohammed Siraj', 'Bowler', 30, 108, '1994-03-13', 'Hyderabad');

select * from testMatch;

select * from testMatch where playRole = 'Batsman' and age > 30;
select * from testMatch where id = 'TM10' or age = 22 and noOfRunsInTest > 10;
select * from testMatch where id = 'TM03' and playername = 'Rishab Pant' or playrole = 'Batsman';
select * from testMatch where not age > 30;
select * from testMatch where playRole = 'Bowler' and age > 20;
select * from testMatch where playRole = 'Bowler' or noOfRunsInTest > 1000;

select * from testMatch where id ='TM02' or noOfRunsInTest > 1000;

select playerName, age from testMatch;

select playerName, age from testMatch where playerName = 'Virat Kohli';

select playerName from testMatch where playerName = 'Virat Kohli';

select distinct playRole from testMatch;

select distinct  playRole, age from testMatch;

select distinct age from testMatch;

select playerName as teamMember, age as ageGroup from testMatch;

select playerName  teamMember, age  ageGroup from testMatch;

select '2024-12-06' - age as BornYear from testMatch;

select '2024-12-06' - '2001-01-01' as age from testMatch;

select * from testMatch where age between 20 and 25;
select * from testMatch where DOB between '2000-01-01' and '2024-01-01';
select * from testMatch where playerName between 'D' and 'R';
select * from testMatch where playerName like 'R%';
select * from testMatch where noOfRunsInTest like '2%0';


select * from testMatch order by DOB;
select * from testMatch order by DOB desc;
select count(*) as cricketMmatch from testMatch;
select count(*) as cricketMmatch from testMatch where playRole = 'Batsman';
select count(*) as cricketMmatch from testMatch where playRole = 'Bowler';

select sum(noOfRunsInTest) from testMatch;
select avg(noOfRunsInTest) from testMatch;
select min(noOfRunsInTest) from testMatch;
select max(noOfRunsInTest) from testMatch;

select min(DOB) from testMatch;
select max(DOB) from testMatch;

select playRole, count(*) from testMatch group by playRole;
select age, count(*) from  testMatch group by age;

select playRole, count(*) from testMatch group by playRole having playRole = 'Batsman';
select age, count(*) from testMatch group by age having age >20;