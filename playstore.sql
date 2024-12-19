create database playstore;
use playstore;
create table companyInfo(

companyId char(5) primary key,
companyName varchar(20) unique,
ceo varchar(30) not null,
departments int not null
);

desc companyInfo;

insert into companyInfo values
('CI01', 'Meta', 'Mark Zuckerberg', 5);
insert into companyInfo values
('CI03', 'threds', 'Mark Zuckerberg', 5);
insert into companyInfo values
('CI04', 'titan', 'Mark Zuckerberg', 5);

select * from companyInfo;

create table ApplicationInfo(

applicationId char(5) primary key,
applicationName varchar(30) unique,
size float check(size>1.5),
ratings float check(ratings <=5),
companyId char(5), foreign key(companyId) references companyInfo(companyId) 
);

drop table companyInfo;
desc ApplicationInfo;

insert into ApplicationInfo values('AI01', 'Instagram', 7.5, 4.3, 'CI01',001);
insert into ApplicationInfo values('AI02', 'Facebook', 4.3, 3.5, 'CI01',001);
insert into ApplicationInfo values('AI03', 'whatsapp', 6.2, 4.8, 'CI01',001);
insert into ApplicationInfo values('AI04', 'threads.net', 6.4, 4.2, 'CI01',001);
insert into ApplicationInfo values('AI05', 'threads', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI06', 'Dell', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI07', 'hp', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI08', 'vivo', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI09', 'apple', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI10', 'suzuki', 6.4, 4.2, 'CI01',001);
insert into ApplicationInfo values('AI11', 'swiggy', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI12', 'zomato', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI13', 'blinkit', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI14', 'nykaa', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI15', 'myntra', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI16', 'bigbasket', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI17', 'ajio', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI18', 'nykaaFashion', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI19', 'amazon', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI20', 'rapido', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI21', 'ola', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI22', 'uber', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI23', 'zepto', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI24', 'flopkart', 6.4, 4.2, 'CI03',001);
insert into ApplicationInfo values('AI25', 'sephora', 6.4, 4.2, 'CI03',001);

select * from ApplicationInfo;

-- cross join
select * from companyInfo c cross join ApplicationInfo a;

-- left join
select * from  companyInfo c left join ApplicationInfo a on c.companyId = a.companyId;

-- right join 
select * from ApplicationInfo a right join companyInfo c  on  a.companyId =c.companyId;

select * from ApplicationInfo where applicationName in ('Instagram', 'threads');
select * from ApplicationInfo where  ratings = 4.2;
select * from ApplicationInfo where applicationName not in ('Instagram', 'threads');
select * from ApplicationInfo;

-- inner join 
select * from companyInfo c, applicationInfo a where c.companyId = a.companyId;

-- natural join
select * from companyInfo natural join applicationInfo;

-- full join
select * from  companyInfo full join applicationInfo;

-- self join
select * from companyInfo c1,  companyInfo c2 where c1.companyId = c2.companyId; 

-- sub-queires

select companyName from companyInfo where companyId in(select companyId from  applicationInfo where companyId = 'CI03');


select c.companyName, c.ceo,  a.applicationName, a.ratings from companyInfo c natural join applicationInfo a;
select c.companyName nameOfTheCompany, c.ceo,  a.applicationName, a.ratings from companyInfo c natural join applicationInfo a;

create table applicationTypeInfo(typeId int primary key, typeName varchar(20));

insert into applicationTypeInfo values(001,'Ecommerce');

alter table applicationInfo add foreign key(typeId) references applicationTypeInfo(typeId);

Alter table applicationInfo add column typeId int;

insert into applicationInfo values
('AI06', 'Insta', 7.5, 4.3, 'CI01',001);

select * from applicationInfo where typeId is null;
select * from applicationInfo where typeId is not null;
select *  from applicationInfo;
use playstore;

select * from applicationInfo where companyId='CI01';

select *  from applicationInfo where applicationId='AI01';

select * from applicationInfo where applicationId='AI01' AND companyId='CI01';

select * from applicationInfo where applicationId='AI01' AND companyId='CI01' AND size =1;

select * from applicationInfo where applicationId='AI30' OR companyId='CI01';

select * from applicationInfo where applicationId='AI01' AND companyId='CI01' or size =1;

select * from applicationInfo where  not applicationId='AI01';

select * from applicationInfo  where applicationName='vivo' AND size=6.4;


select * from applicationInfo  where applicationName='vivo' or typeId=1 and size=7.5;

select size from applicationInfo ;

select * from applicationInfo order by applicationName;
select * from applicationInfo order by applicationName desc;
select * from applicationInfo order by ratings;
select * from applicationInfo order by ratings desc;
select * from applicationInfo order by size;
select * from applicationInfo order by size desc;


