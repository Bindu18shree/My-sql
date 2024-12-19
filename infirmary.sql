create database infirmary;
use infirmary;
create table patientInfo(

patientId char(5) primary key,
patientName varchar(30) not null,
patientGender varchar(10) not null,
patientWardNo int check(patientWardNo > 0),
patientAddress varchar(50)
);

desc patientInfo;

insert into patientInfo values('PI01', 'Aditya', 'Male', 3, "");
insert into patientInfo values('PI02', 'Mouna', 'FEmale', 21, "--");
insert into patientInfo values('PI03', 'Devitha', 'Female', 8, "Bangalore");
insert into patientInfo values('PI04', 'Dru', 'Male', 108, "RT Nagar");

select * from patientInfo;

create table hospitalInfo(

hospitalId char(5) primary key,
hospitalName varchar(30) unique,
hospitalPincode int not null,
patientId char(5), foreign key(patientId) references patientInfo(patientId)
);

desc hospitalInfo;

insert into hospitalInfo values
('HI01', 'Manipal', 560071, 'PI01'),
('HI02', 'Columbasia', 560073, 'PI01'),
('HI03', 'Narayana Nethralaya', 560074, 'PI02');

insert into hospitalInfo values
('HI05', 'Ramchandra', 560078, 'PI03'),
('HI06', 'Apollo', 560075, 'PI03'),
('HI07', 'Prakriya', 560076, 'PI01'),
('HI08', 'Mathrushree', 560077, 'PI02'),
('HI09', 'Citi', 560079, 'PI01');

select * from hospitalInfo;

select * from hospitalInfo where not patientId = 'PI03';

select * from hospitalInfo where hospitalId = 'Hi03' or patientId = 'PI01';

select * from hospitalInfo where hospitalId = 'HI02' and hospitalName = 'Manipal';

select * from hospitalInfo where hospitalId = 'HI05' or hospitalName = 'Apollo' and hospitalpincode = 560075;

