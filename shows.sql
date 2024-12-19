create database shows;
use shows;
create table movies(

Movie_Name varchar(30),
Languages varchar(30),
Rating float
);

desc movies;

insert into movies values("Bagheera", "Kannada, Tamil", 9.1);

select * from movies;

rename table movies to Movie_info;

drop table Movie_info;

alter table movies add column Casting varchar(60);
alter table movies add column Release_Date date;
alter table movies add column Movie_Type varchar(30);

alter table movies rename column Movie_Type to Movie_Genre;

alter table movies drop Movie_Genre;
alter table movies drop column Casting;

alter table movies modify Rating double;



