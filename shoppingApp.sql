create database shoppingApp;
use shoppingApp;
create table products(

id char(5),
product_id int,
product_Name varchar(30),
product_description varchar(100),
category_id int,
quantity int,
brand varchar(50),
model varchar(20),
price double,
mfd date
);

drop table products;

insert into products values
("NY01", 00023, "Headphones", "Clip-On-fit", 311, 1, "SONY", "Airpods 311", 3245.905, "2021-12-06" ),
("NY02", 00046, "Water Heater", "-", 456, 1, "Crompton", "crompton 456", 7809.67, "2021-02-06" ),
("NY03", 00079, "Headphones", "Clip-On-fit, Air conduction technology...", 345, 1, "SONY", "Airpods 345", 3245.905, "2022-11-06" ),
("NY04", 00052, "Mixer grinders", "-", 5321, 1, "Prestige", "Prestige 5321", 98766.676, "2012-09-06" ),
("NY05", 00029, "Water purifiers", "-", 231, 5, "Aquaguard", "231LM32", 46859.0595, "2024-08-18" ),
("NY06", 00032, "Gas stoves", "-", 843, 3, "Prestige", "prestige gas 843", 85495.89, "2021-12-06" ),
("NY07", 00003, "Headphones", "Clip-On-fit, Air conduction technology...", 354, 1, "BOAT", "Airpods 354", 3245.905, "2022-11-06" ),
("NY08", 00064, "Water Heater", "-", 456, 1, "Crompton", "crompton 456", 7809.67, "2021-02-06" ),
("NY09", 00052, "Mixer grinders", "-", 5321, 1, "Prestige", "Prestige 5321", 98766.676, "2012-09-06" ),
("NY10", 00032, "Gas stoves", "-", 843, 3, "Prestige", "prestige gas 843", 85495.89, "2021-12-06");

desc products;

select * from products;

create table items(

id char(5),
product_id int,
product_Name varchar(30),
product_description varchar(100),
category_id int,
quantity int,
brand varchar(50),
model varchar(20),
price double,
mfd date
);

insert into items values
("NY01", 00023, "Headphones", "Clip-On-fit", 311, 1, "SONY", "Airpods 311", 3245.905, "2021-12-06" ),
("NY02", 00046, "Water Heater", "-", 456, 1, "Crompton", "crompton 456", 7809.67, "2021-02-06" ),
("NY03", 00079, "Headphones", "Clip-On-fit, Air conduction technology...", 345, 1, "SONY", "Airpods 345", 3245.905, "2022-11-06" ),
("NY04", 00052, "Mixer grinders", "-", 5321, 1, "Prestige", "Prestige 5321", 98766.676, "2012-09-06" ),
("NY05", 00029, "Water purifiers", "-", 231, 5, "Aquaguard", "231LM32", 46859.0595, "2024-08-18" ),
("NY06", 00032, "Gas stoves", "-", 843, 3, "Prestige", "prestige gas 843", 85495.89, "2021-12-06" ),
("NY07", 00003, "Headphones", "Clip-On-fit, Air conduction technology...", 354, 1, "BOAT", "Airpods 354", 3245.905, "2022-11-06" ),
("NY08", 00064, "Water Heater", "-", 456, 1, "Crompton", "crompton 456", 7809.67, "2021-02-06" ),
("NY09", 00052, "Mixer grinders", "-", 5321, 1, "Prestige", "Prestige 5321", 98766.676, "2012-09-06" ),
("NY10", 00032, "Gas stoves", "-", 843, 3, "Prestige", "prestige gas 843", 85495.89, "2021-12-06");

select * from items;

create table available_items(

id char(5),
product_id int,
product_Name varchar(30),
product_description varchar(100),
category_id int,
quantity int,
brand varchar(50),
model varchar(20),
price double,
mfd date
);

insert into available_items values
("NY01", 00023, "Headphones", "Clip-On-fit", 311, 1, "SONY", "Airpods 311", 3245.905, "2021-12-06" ),
("NY02", 00046, "Water Heater", "-", 456, 1, "Crompton", "crompton 456", 7809.67, "2021-02-06" ),
("NY03", 00079, "Headphones", "Clip-On-fit, Air conduction technology...", 345, 1, "SONY", "Airpods 345", 3245.905, "2022-11-06" ),
("NY04", 00052, "Mixer grinders", "-", 5321, 1, "Prestige", "Prestige 5321", 98766.676, "2012-09-06" ),
("NY05", 00029, "Water purifiers", "-", 231, 5, "Aquaguard", "231LM32", 46859.0595, "2024-08-18" ),
("NY06", 00032, "Gas stoves", "-", 843, 3, "Prestige", "prestige gas 843", 85495.89, "2021-12-06" ),
("NY07", 00003, "Headphones", "Clip-On-fit, Air conduction technology...", 354, 1, "BOAT", "Airpods 354", 3245.905, "2022-11-06" ),
("NY08", 00064, "Water Heater", "-", 456, 1, "Crompton", "crompton 456", 7809.67, "2021-02-06" ),
("NY09", 00052, "Mixer grinders", "-", 5321, 1, "Prestige", "Prestige 5321", 98766.676, "2012-09-06" ),
("NY10", 00032, "Gas stoves", "-", 843, 3, "Prestige", "prestige gas 843", 85495.89, "2021-12-06");

select * from available_items;

create table available_products(

id char(5),
product_id int,
product_Name varchar(30),
product_description varchar(100),
category_id int,
quantity int,
brand varchar(50),
model varchar(20),
price double,
mfd date
);

insert into available_products values
("NY01", 00023, "Headphones", "Clip-On-fit", 311, 1, "SONY", "Airpods 311", 3245.905, "2021-12-06" ),
("NY02", 00046, "Water Heater", "-", 456, 1, "Crompton", "crompton 456", 7809.67, "2021-02-06" ),
("NY03", 00079, "Headphones", "Clip-On-fit, Air conduction technology...", 345, 1, "SONY", "Airpods 345", 3245.905, "2022-11-06" ),
("NY04", 00052, "Mixer grinders", "-", 5321, 1, "Prestige", "Prestige 5321", 98766.676, "2012-09-06" ),
("NY05", 00029, "Water purifiers", "-", 231, 5, "Aquaguard", "231LM32", 46859.0595, "2024-08-18" ),
("NY06", 00032, "Gas stoves", "-", 843, 3, "Prestige", "prestige gas 843", 85495.89, "2021-12-06" ),
("NY07", 00003, "Headphones", "Clip-On-fit, Air conduction technology...", 354, 1, "BOAT", "Airpods 354", 3245.905, "2022-11-06" ),
("NY08", 00064, "Water Heater", "-", 456, 1, "Crompton", "crompton 456", 7809.67, "2021-02-06" ),
("NY09", 00052, "Mixer grinders", "-", 5321, 1, "Prestige", "Prestige 5321", 98766.676, "2012-09-06" ),
("NY10", 00032, "Gas stoves", "-", 843, 3, "Prestige", "prestige gas 843", 85495.89, "2021-12-06");


create table product_details(

id char(5),
product_id int,
product_Name varchar(30),
product_description varchar(100),
category_id int,
quantity int,
brand varchar(50),
model varchar(20),
price double,
mfd date
);

insert into product_details values
("NY01", 00023, "Headphones", "Clip-On-fit", 311, 1, "SONY", "Airpods 311", 3245.905, "2021-12-06" ),
("NY02", 00046, "Water Heater", "-", 456, 1, "Crompton", "crompton 456", 7809.67, "2021-02-06" ),
("NY03", 00079, "Headphones", "Clip-On-fit, Air conduction technology...", 345, 1, "SONY", "Airpods 345", 3245.905, "2022-11-06" ),
("NY04", 00052, "Mixer grinders", "-", 5321, 1, "Prestige", "Prestige 5321", 98766.676, "2012-09-06" ),
("NY05", 00029, "Water purifiers", "-", 231, 5, "Aquaguard", "231LM32", 46859.0595, "2024-08-18" ),
("NY06", 00032, "Gas stoves", "-", 843, 3, "Prestige", "prestige gas 843", 85495.89, "2021-12-06" ),
("NY07", 00003, "Headphones", "Clip-On-fit, Air conduction technology...", 354, 1, "BOAT", "Airpods 354", 3245.905, "2022-11-06" ),
("NY08", 00064, "Water Heater", "-", 456, 1, "Crompton", "crompton 456", 7809.67, "2021-02-06" ),
("NY09", 00052, "Mixer grinders", "-", 5321, 1, "Prestige", "Prestige 5321", 98766.676, "2012-09-06" ),
("NY10", 00032, "Gas stoves", "-", 843, 3, "Prestige", "prestige gas 843", 85495.89, "2021-12-06");

select * from product_details;