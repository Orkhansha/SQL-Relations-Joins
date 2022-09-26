create database Company2
use Company2

create table Employees(
Id int primary key identity(1,1),
[Name] nvarchar(50) not null,
Surname nvarchar(50),
Age int,
Salary decimal,
Position nvarchar(100),
IsDeleted bit,
CityId INT FOREIGN KEY REFERENCES Cities(Id)
)

create table Cities(
Id int primary key identity(1,1),
[Name] nvarchar(50) not null,
CountryId INT FOREIGN KEY REFERENCES Countries(Id)
)

select * from Employees

insert into Countries([Name])
values ('Azerbaijan'),('Turkiye'),('Ingiltere'),('Ispaniya'),('Italiya'),('Fransa'),('Portuqaliya')

insert into Cities([Name],CountryId)
values ('Baku',1),('Gence',1),('Ankara',2),('London',3),('Barselona',4),('Paris',6),('Tel-Aviv', null)

select * from Employees
select * from Cities
select * from Countries

insert into Employees([Name],Surname,Age,Salary,Position,IsDeleted,CityId)
values ('Orxan','Akbarov',26,2500.36,'Director',0,1),('Huseyn','Cafarov',23,1250.32,'Teacher',0,2),('Emili','Jordan',21,5250.47,'Developer',0,4),
('Fatih','Deniz',33,4250.43,'Mudur',0,2),('Juan','Fran',27,1750.28,'Reception',0,5),('Romelda','Riamo',23,3247.45,'Reception',0,6),
('Fidan','Mardanli',18,1255.80,'Teacher',0,1)





-----------------------------------------------------------------------------------------------------------------

select em.Name as 'Name', em.Surname as 'Surname', ct.Name as 'City', co.Name as 'Country' from Countries co
inner join Cities ct
on co.Id = ct.CountryId
inner join Employees em
on ct.id = em.CityId

-----------------------------------------------------------------------------------------------------------------

select em.Name as 'Name', co.Name as 'Country' from Countries co
inner join Cities ct
on co.Id = ct.CountryId
inner join Employees em
on ct.id = em.CityId
where em.Salary>2000

-----------------------------------------------------------------------------------------------------------------

select ct.Name as 'Name', co.Name as 'Country' from Countries co
inner join Cities ct
on co.Id = ct.CountryId

-----------------------------------------------------------------------------------------------------------------

select em.Name as 'Name', em.Surname as 'Surname', ct.Name as 'City', co.Name as 'Country', em.Age, em.Salary, em.Position, em.IsDeleted from Countries co
inner join Cities ct
on co.Id = ct.CountryId
inner join Employees em
on ct.id = em.CityId
where em.Position = 'Reception'

-----------------------------------------------------------------------------------------------------------------

select em.Name as 'Name', em.Surname as 'Surname', ct.Name as 'City', co.Name as 'Country' from Countries co
inner join Cities ct
on co.Id = ct.CountryId
inner join Employees em
on ct.id = em.CityId
where em.IsDeleted = 0

-----------------------------------------------------------------------------------------------------------------
