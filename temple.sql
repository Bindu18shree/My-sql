create database temple;
use temple;
create table malleshwaram(
id char(05) primary key,
templeNames varchar(50) unique,
noOfVisitors int check(noOfVisitors>10),
templeOpensAt time not null,
noOfPujari int check(noOfPujari >0 )
);

drop table malleshwaram;

insert into malleshwaram values
('MT01', 'Om Sri Gangamma Temple', 200, '09:30', 5 ),
('MT02', 'Sri Dhakshinamukha kalyaani Kshetra', 500, '07:30', 3 ),
('MT03', 'Maramma Tayi Temple', 150, '10:00', 6 ),
('MT04', 'Sri Lakshmi Narasimha Swami Temple', 200, '11:00', 10 ),
('MT05', 'Mahaganapathi Temple', 200, '09:30', 3 ),
('MT06', 'Sri Kanyakaparameshwari Temple', 150, '08:30', 3 ),
('MT07', 'Eshwara Temple', 100, '07:30', 2 ),
('MT08', 'Sri Kadu MaliliKarjuna Temple', 300, '06:30', 6 ),
('MT09', 'Sri Venugopalakrishna Temple', 180, '10:30', 2 );

select * from malleshwaram;
select * from malleshwaram where templeNames like '%e';
select * from malleshwaram where templeNames not like 'S%';
select * from malleshwaram where templeNames like '_a%';
select * from malleshwaram where templeOpensAt like '___30%';
select * from malleshwaram where templeNames like 'Sri_%';
select * from malleshwaram where templeNames like '%y%';

select * from malleshwaram order by templeNames;
select * from malleshwaram order by templeNames desc;
select count(*) as totalRows from malleshwaram;
select count(*) as templeNames from malleshwaram  where templeNames like 'Sri%';

select sum(noOfVisitors) from malleshwaram;
select avg(noOfVisitors) from malleshwaram;
select min(noOfVisitors) from malleshwaram;

select min( noOfVisitors ) from malleshwaram where noOfVisitors > ( select min( noOfVisitors ) from malleshwaram );

select noOfVisitors from malleshwaram order by noOfVisitors limit 1 offset 0;
select noOfVisitors from malleshwaram order by noOfVisitors limit 1 offset 1;

select noOfVisitors from malleshwaram order by noOfVisitors desc limit 1 offset 0;
select noOfVisitors from malleshwaram order by noOfVisitors desc limit 1 offset 1;
select noOfVisitors from malleshwaram order by noOfVisitors desc limit 1 offset 2;

select min( noOfVisitors ) from malleshwaram where noOfVisitors > ( select min( noOfVisitors ) from malleshwaram where noOfVisitors > ( select min( noOfVisitors ) from malleshwaram where noOfVisitors > ( select min( noOfVisitors ) from malleshwaram )));
AA
select max( noOfVisitors ) from malleshwaram where noOfVisitors < ( select max( noOfVisitors ) from malleshwaram where noOfVisitors < ( select max( noOfVisitors ) from malleshwaram ));


select max(noOfVisitors) from malleshwaram;

select min(templeOpensAt) from malleshwaram;
select max(templeOpensAt) from malleshwaram;

select noOfVisitors, count(*) from malleshwaram group by noOfVisitors;
select templeOpensAt, count(*) from  malleshwaram group by templeOpensAt;

select noOfPujari, count(*) from malleshwaram group by noOfPujari having noOfPujari > 4;

create table majestic(
id char(05) primary key,
templeNames varchar(50) unique,
noOfVisitors int check(noOfVisitors>10),
templeOpensAt time not null,
noOfPujari int check(noOfPujari >0 )
);

insert into majestic values
('MJ01', 'Sri Anamma Devi Mahasamasthana', 200, '09:30', 5 ),
('MJ02', 'SriVeer Anjaneya Devastana', 500, '07:30', 3 ),
('MJ03', 'Prasanna Veeranjaneya Devastana', 150, '10:00', 6 ),
('MJ04', 'Sri Ayappa Swami Temple', 200, '11:00', 10 ),
('MJ05', 'Shiva, Ganesha, Markanedya Temple', 200, '09:30', 3 ),
('MJ06', 'Sri Lakshmi Hayagreeva Sannidhi', 150, '08:30', 3 ),
('MJ07', 'Sri Omkareshwara Temple', 100, '07:30', 2 );

select * from majestic;

 -- cross join
 select * from majestic cross join malleshwaram;
 
 
select * from majestic where templeNames like '%e';
select * from majestic where templeNames not like 'S%';
select * from majestic where templeNames like '_a%';
select * from majestic where templeOpensAt like '___30%';
select * from majestic where templeNames like 'Sri_%';
select * from majestic where templeNames like '%y%';

select * from majestic order by templeNames;
select * from majestic order by templeNames desc;
select count(*) as totalRows from majestic;
select count(*) as templeNames from majestic  where templeNames like 'Sri%';

select sum(noOfVisitors) from majestic;
select avg(noOfVisitors) from majestic;
select min(noOfVisitors) from majestic;
select max(noOfVisitors) from majestic;

select min(templeOpensAt) from majestic;
select max(templeOpensAt) from majestic;

select noOfVisitors, count(*) from majestic group by noOfVisitors;
select templeOpensAt, count(*) from  majestic group by templeOpensAt;

select noOfPujari, count(*) from majestic group by noOfPujari having noOfPujari > 4;


create table banshankri(
id char(05) primary key,
templeNames varchar(50) unique,
noOfVisitors int check(noOfVisitors>10),
templeOpensAt time not null,
noOfPujari int check(noOfPujari >0 )
);

drop table banshankri;
insert into banshankri values
('BT01', 'Srinivasa Temple', 200, '09:30', 5 ),
('BT02', 'Banashankri Devi Temple', 500, '07:30', 3 ),
('BT03', 'Shrikanteshwara Swamy Temple', 150, '10:00', 6 ),
('BT04', 'Sri Shaneshwara Swami Temple', 200, '11:00', 10 ),
('BT05', 'Umamaheshwara Devalaya', 200, '09:30', 3 ),
('BT06', 'Sri Banagiri Varasiddhi Vinayaka Temple', 150, '08:30', 3 );

select * from banshankri;

select * from banshankri where templeNames like '%e';
select * from banshankri where templeNames not like 'S%';
select * from banshankri where templeNames like '_a%';
select * from banshankri where templeOpensAt like '___30%';
select * from banshankri where templeNames like 'Sri_%';
select * from banshankri where templeNames like '%y%';

select * from banshankri order by templeNames;
select * from banshankri order by templeNames desc;
select count(*) as totalRows from banshankri;
select count(*) as templeNames from banshankri  where templeNames like 'Sri%';

select sum(noOfVisitors) from banshankri;
select avg(noOfVisitors) from banshankri;
select min(noOfVisitors) from banshankri;
select max(noOfVisitors) from banshankri;

select min(templeOpensAt) from banshankri;
select max(templeOpensAt) from banshankri;

select noOfVisitors, count(*) from banshankri group by noOfVisitors;
select templeOpensAt, count(*) from  banshankri group by templeOpensAt;

select noOfPujari, count(*) from banshankri group by noOfPujari having noOfPujari > 4;

create table kengeri(
id char(05) primary key,
templeNames varchar(50) unique,
noOfVisitors int check(noOfVisitors>10),
templeOpensAt time not null,
noOfPujari int check(noOfPujari >0 )
);

insert into kengeri values
('KT01', 'Gangabhavani Temple', 200, '09:30', 5 ),
('KT02', 'Sri Someshwara Temple', 500, '07:30', 3 ),
('KT03', 'Kote Anjaneya Swami Temple', 150, '10:00', 6 ),
('KT04', 'Ishtarthasiddhi Ganapathi Temple', 200, '11:00', 10 ),
('KT05', 'Muneshwara Temple', 200, '09:30', 3 ),
('KT06', 'Aai Maatha Mandir', 150, '08:30', 3 ),
('KT07', 'Sri Peta Basweshwara Temple', 100, '07:30', 2 ),
('KT08', 'Karagadhamma Temple', 300, '06:30', 6 ),
('KT09', 'Kempamma Temple', 180, '10:30', 2 ),
('KT10', 'Shankaracharya Temple', 180, '10:30', 2 );

select * from kengeri;

select * from kengeri where templeNames like '%e';
select * from kengeri where templeNames not like 'S%';
select * from kengeri where templeNames like '_a%';
select * from kengeri where templeOpensAt like '___30%';
select * from kengeri where templeNames like 'Sri_%';
select * from kengeri where templeNames like '%y%';

select * from kengeri order by templeNames;
select * from kengeri order by templeNames desc;
select count(*) as totalRows from kengeri;
select count(*) as templeNames from kengeri  where templeNames like 'Sri%';

select sum(noOfVisitors) from kengeri;
select avg(noOfVisitors) from kengeri;
select min(noOfVisitors) from kengeri;
select max(noOfVisitors) from kengeri;

select min(templeOpensAt) from kengeri;
select max(templeOpensAt) from kengeri;

select noOfVisitors, count(*) from kengeri group by noOfVisitors;
select templeOpensAt, count(*) from  kengeri group by templeOpensAt;

select noOfPujari, count(*) from kengeri group by noOfPujari having noOfPujari > 5;