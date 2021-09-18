-- insert rows into a table

USE [LinenandBird]
GO

select *  from Orders

INSERT INTO [dbo].[Orders]
           ([BirdId]
           ,[HatId]
           ,[Price])

output inserted. * -- output command that only shows what is being inserted into the table

     VALUES
           ('f9ffafee-a95d-443d-b547-fefa7ffa2c89'
           ,'5d1a5e75-1265-41d5-809f-3451ccd27edc'
           ,450)
GO

select *  from Orders
