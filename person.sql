create database person;
use person;
create table details(
id char(5) primary key,
personName varchar(30) unique,
age int not null
);

insert into details values
('P01', 'Bindu', 22),
('P02', 'Manasa', 22),
('P03', 'Sneha', 22),
('P04', 'Sujay', 22);

select * from details;
set autocommit = 0;

savepoint fruit;

insert into details values 
('P05', 'Garima', 23),
('P06', 'Kalash', 22);

commit;
rollback;