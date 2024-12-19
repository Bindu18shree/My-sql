create database Automobiles;

use Automobiles;

create table cars(

id char(5) primary key,
brand varchar(30) unique,
price double not null,
mfd date,
no_of_wheels int check(no_of_wheels > 2),
customer_Service bigint,
mileage float,
purchase_Time datetime
);

rename table cars to Vehicle_Info;
desc Vehicle_Info;
insert into vehicle_Info values('XW01', 'Toyota', 2500000.649, '2023-12-23', 4, 0062376237467, 12.56, '2022-09-12 01:12:34');
insert into Vehicle_Info values('Xw02', 'Honda', 7462323.2367, '2002-05-12', 4, 6532876823176, 9.647, '2018-08-08 03:10:56');
insert into Vehicle_Info values('Xw03', 'Suzuki', 9823890.7567, '2003-12-24', 4, 74823846423, 25.654, '2020-09-06 01:20:46');
insert into Vehicle_Info values('Xw04', 'Volkswagen', 2000046.848, '2005-08-23', 4, 6532876823176, 9.647, '2018-08-08 03:10:56');
insert into Vehicle_Info values('Xw05', 'Ford', 7462323.2367, '2002-05-12', 4, 6532876823176, 9.647, '2018-08-08 03:10:56');
insert into Vehicle_Info values('Xw06', 'Audi', 7462323.2367, '2000-04-05', 4, 47646746748, 8.98, '2013-04-07 03:10:56');
insert into Vehicle_Info values('Xw07', 'Mahindra', 79877567.7997, '2008-11-12', 4, 09866544555, 9, '2018-08-08 03:10:56');
insert into Vehicle_Info values('Xw08', 'BMW', 76543688987, '2002-05-12', 4, 6532876823176, 9.647, '2018-08-08 03:10:56');
insert into Vehicle_Info values('Xw09', 'Ferrari', 7462323.2367, '2002-05-12', 4, 6532876823176, 9.647, '2018-08-08 03:10:56');
insert into Vehicle_Info values('Xw10', 'Lamborghini', 6567627832327, '2002-05-12', 4, 6532876823176, 9.647, '2018-08-08 03:10:56');


drop table vehicle_info;
drop table cars;
select * from  vehicle_info;

insert into Vehicle_Info values
('Xw11', 'Porsche', 6567627832327, '2002-05-12', 4, 6532876823176, 9.647, '2018-08-08 03:10:56'),
('Xw12', 'Thar', 754376678.9878, '2003-05-12', 4, 987553456777, 12.87, '2017-08-08 03:10:56'),
('Xw13', 'Fortuner', 76467764.98, '2005-05-12', 4, 8765423445, 10.34, '2016-08-08 03:10:56'),
('Xw14', 'XUV', 76767857.8789, '2005-05-12', 4, 7896543212, 9, '2015-08-08 03:10:56'),
('Xw15', 'Tata Harrier', 6567627832327, '2008-05-12', 4, 987654321778, 14, '2014-08-08 03:10:56');

select * from Vehicle_Info where brand in ('Suzuki', 'Ford');
select * from Vehicle_Info where brand not in ('Suzuki', 'Ford');

select * from Vehicle_Info where brand between 'Ford' and 'Honda';
select * from Vehicle_Info where mileage between 9 and 12;
select * from Vehicle_Info where mfd between '2002-05-12' and '2024-12-12';
select * from Vehicle_Info where brand like 'F%';
select * from Vehicle_Info where brand like 'T%';
select * from Vehicle_Info where brand like '_a%';
select * from Vehicle_Info where customer_Service like '9%';
select * from Vehicle_Info where brand like 'Su_%';
select * from Vehicle_Info where brand like '%o%';
select * from Vehicle_Info where brand not like '%o%';

select * from Vehicle_Info where 

update vehicle_info set price=64723373 where id='xw15';
update vehicle_info set price = 7849756 where brand = 'Suzuki';

update vehicle_info set price = 40000, brand = "activa" where mileage = 9.647;

select * from vehicle_info where brand = 'Honda' and no_of_wheels = 4;
select * from vehicle_info where id = 'XW09' or mileage > 9.647 and no_of_wheels = 4;
select * from vehicle_info where id = 'XW03' and brand = 'Suzuki' or mfd > '2002-05-12';
select * from vehicle_info where not mileage < 10;
select * from vehicle_info where brand = 'Audi' and mfd > '2005-08-23';

select brand, mileage from vehicle_info;

select brand, mileage from vehicle_info where brand = 'Ferrari';

select brand from vehicle_info where brand = 'Audi';

select distinct brand from vehicle_info;

select distinct  brand, mfd from vehicle_info;

select distinct mileage from vehicle_info;

select price as bele, no_of_wheels as chakra from vehicle_info;

select price  bele, no_of_wheels  chakra from vehicle_info;

select mileage + no_of_wheels as example from vehicle_info;

delete from vehicle_info;

