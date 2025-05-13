Create Table RentOrSold
(
ROSId serial primary key,
RentorSold varchar(100) not null
)

Create Table KitapciBilgiSistemi
(
CustomerId serial primary key,
CustomerName varchar(100) not null,
CustomerSurname varchar(100) not null,
BookName varchar(100) not null,
BookId int not null,
RentalPeriodOrDayOfSale varchar(100) not null,
PaidAmountTL int not null,
ROSId int,
Foreign Key (ROSId) references RentOrSold(ROSId) on delete cascade
)

Insert into RentOrSold (RentorSold) values ('Kiralandı')
Insert into RentOrSold (RentorSold) values ('Satıldı')