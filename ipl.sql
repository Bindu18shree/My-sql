
create database ipl;
use ipl;
create table CSK(

id char(5) primary key,
team_name varchar(20),
team_caption varchar(20) unique,
no_Of_team_members int check(no_Of_team_members > 11),
owner_name varchar(20),
budget double,
sponser_name varchar(30)
);

desc CSK;

insert into CSK values

('CSK01', 'Chennai Super Kings', 'M S Dhoni', 12, 'N Srinivasan', 65747379.094, 'Indian cement'),
('CSK02', 'Chennai Super Kings', 'Ruturaj Gaikwad', 12, 'N Srinivasan', 65747379.094, 'Indian cement'),
('CSK03', 'Chennai Super Kings', 'Suresh Raina', 12, 'N Srinivasan', 65747379.094, 'Indian cement'),
('CSK04', 'Chennai Super Kings', 'Ravindra Jadeja', 12, 'N Srinivasan', 65747379.094, 'Indian cement'),
('CSK05', 'Chennai Super Kings', 'Shivam Dube', 12, 'N Srinivasan', 65747379.094, 'Indian cement'),
('CSK06', 'Chennai Super Kings', 'Rahul Tripati', 12, 'N Srinivasan', 65747379.094, 'Indian cement'),
('CSK07', 'Chennai Super Kings', 'R Ashwin', 12, 'N Srinivasan', 65747379.094, 'Indian cement'),
('CSK08', 'Chennai Super Kings', 'Khaleel Ahmed', 12, 'N Srinivasan', 65747379.094, 'Indian cement'),
('CSK09', 'Chennai Super Kings', 'Noor Ahmed', 12, 'N Srinivasan', 65747379.094, 'Indian cement'),
('CSK10', 'Chennai Super Kings', 'Deepak Hooda', 12, 'N Srinivasan', 65747379.094, 'Indian cement');

select * from CSK;

alter table CSK drop budget;
alter table CSK add column extraPlayers int;
alter table CSK modify column no_Of_team_members bigint;
alter table CSK rename column owner_name to Owner;

update RCB set team_name = 'Mumbai Indians' where id= 'CSK10';
delete from RCB where id= 'CSK09';

create table RCB(

id char(5) primary key,
team_name varchar(30),
team_caption varchar(20) unique,
no_Of_team_members int check(no_Of_team_members > 11),
owner_name varchar(20),
budget double,
sponser_name varchar(30)
);

insert into RCB values

('RCB01', 'Royal Challenges Bangalore', 'Virat Kohli', 12, 'United Spirits', 65747379.094, 'Jio'),
('RCB02', 'Royal Challenges Bangalore', 'Rajat Patidar', 15, 'United Spirits', 65747379.094, 'Jio'),
('RCB03', 'Royal Challenges Bangalore', 'Yash Dayal', 13, 'United Spirits', 65747379.094, 'Jio'),
('RCB04', 'Royal Challenges Bangalore', 'Liam Livingstone', 25, 'United Spirits', 65747379.094, 'Jio'),
('RCB05', 'Royal Challenges Bangalore', 'Phil Salt', 12, 'United Spirits', 65747379.094, 'Jio'),
('RCB06', 'Royal Challenges Bangalore', 'Jitesh Sharma', 12, 'United Spirits', 65747379.094, 'Jio'),
('RCB07', 'Royal Challenges Bangalore', 'Jacob Bethell', 12, 'United Spirits', 65747379.094, 'Jio'),
('RCB08', 'Royal Challenges Bangalore', 'Rasikh Dar', 12, 'United Spirits', 65747379.094, 'Jio'),
('RCB09', 'Royal Challenges Bangalore', 'Krunal Pandya', 12, 'United Spirits', 65747379.094, 'Jio'),
('RCB10', 'Royal Challenges Bangalore', 'Manoj Bhandage', 12, 'United Spirits', 65747379.094, 'Jio');

select * from RCB;

alter table RCB drop budget;
alter table RCB add column extraPlayers int;
alter table RCB modify column no_Of_team_members bigint;
alter table RCB rename column owner_name to Owner;

create table DC(

id char(5) primary key,
team_name varchar(30),
team_caption varchar(20) unique,
no_Of_team_members int check(no_Of_team_members > 11),
owner_name varchar(20),
budget double,
sponser_name varchar(30)
);

insert into DC values

('DC01', 'Delhi Capitals', 'Ashutosh Sharma', 12, 'GMR Group', 65747379.094, 'Puma'),
('DC02', 'Delhi Capitals', 'Faf du Plessis', 15, 'GMR Group', 65747379.094, 'Puma'),
('DC03', 'Delhi Capitals', 'Harry Brook', 13, 'GMR Group', 65747379.094, 'Puma'),
('DC04', 'Delhi Capitals', 'Jake Fraser-McGurk', 25, 'GMR Group', 65747379.094, 'Puma'),
('DC05', 'Delhi Capitals', 'Karun Nair', 12, 'GMR Group', 65747379.094, 'Puma'),
('DC06', 'Delhi Capitals', 'Sameer Rizvi', 12, 'GMR Group', 65747379.094, 'Puma'),
('DC07', 'Delhi Capitals', 'Ajay Mandal', 12, 'GMR Group', 65747379.094, 'Puma'),
('DC08', 'Delhi Capitals', 'Axar Patel', 12, 'GMR Group', 65747379.094, 'Puma'),
('DC09', 'Delhi Capitals', 'Madhav Tiwari', 12, 'GMR Group', 65747379.094, 'Puma'),
('DC10', 'Delhi Capitals', 'Manvath Kumar', 12, 'GMR Group', 65747379.094, 'Puma');

select * from DC;

alter table DC drop budget;
alter table DC add column extraPlayers int;
alter table DC modify column no_Of_team_members bigint;
alter table DC rename column owner_name to Owner;

create table GT(

id char(5) primary key,
team_name varchar(30),
team_caption varchar(20) unique,
no_Of_team_members int check(no_Of_team_members > 11),
owner_name varchar(20),
budget double,
sponser_name varchar(30)
);

insert into GT values

('GT01', 'Gujarat Titans', 'Shubman Gill', 12, 'GMR Group', 65747379.094, 'Puma'),
('GT02', 'Gujarat Titans', 'Joss Buttler', 15, 'GMR Group', 65747379.094, 'Puma'),
('GT03', 'Gujarat Titans', 'Kumar Kushagra', 13, 'GMR Group', 65747379.094, 'Puma'),
('GT04', 'Gujarat Titans', 'Anuj Rawat', 25, 'GMR Group', 65747379.094, 'Puma'),
('GT05', 'Gujarat Titans', 'Glen Philips', 12, 'GMR Group', 65747379.094, 'Puma'),
('GT06', 'Gujarat Titans', 'Sameer Rizvi', 12, 'GMR Group', 65747379.094, 'Puma'),
('GT07', 'Gujarat Titans', 'Ajay Mandal', 12, 'GMR Group', 65747379.094, 'Puma'),
('GT08', 'Gujarat Titans', 'Axar Patel', 12, 'GMR Group', 65747379.094, 'Puma'),
('GT09', 'Gujarat Titans', 'Madhav Tiwari', 12, 'GMR Group', 65747379.094, 'Puma'),
('GT10', 'Gujarat Titans', 'Nishanth Sindhu', 12, 'GMR Group', 65747379.094, 'Puma');

select * from GT;

alter table GT drop budget;
alter table GT add column extraPlayers int;
alter table GT modify column no_Of_team_members bigint;
alter table GT rename column owner_name to Owner;
