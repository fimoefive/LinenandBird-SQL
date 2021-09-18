CREATE DATABASE [LinenandBird]

CREATE TABLE dbo.Birds
(
	Id uniqueidentifier NOT NULL Primary Key,
	Type int NOT NULL,
	Color varchar(20) NOT NULL,
	Size varchar(10) NOT NULL,
	Name varchar(50) NULL
) 

-- drop table dbo.Hats

CREATE TABLE dbo.Hats
(
	Id uniqueidentifier NOT NULL Primary Key default(newid()),
	Designer varchar(200) NULL,
	Color varchar(20) Not Null,
	Style int Not Null default(0)
) 

create table dbo.Orders (
Id uniqueidentifier NOT NULL Primary Key default(newid()),
BirdId uniqueidentifier NOT NULL,
HatId uniqueidentifier NOT NULL,
Price decimal(18, 2),
CONSTRAINT FK_BirdId_BirdsID FOREIGN KEY (BirdId)
	REFERENCES dbo.Birds (Id),
CONSTRAINT FK_HatId_HatsID FOREIGN KEY (HatId)
	REFERENCES dbo.Hats (Id)
)

select *
from Orders o
	join Hats h
		on h.Id = o.HatId
	join 
