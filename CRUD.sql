-- Insert Rows into a Table
begin transaction

USE [LinenandBird] -- Database Reference for file
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

rollback -- rollsback the transaction just inserted so it is not added to the DB.
-- commit -- this commit command commits the transaction to the DB.

-- Remove Rows from a Table

Delete 
From Orders
output deleted. * -- outputs the deleted row or data
where price = 120 -- filters the Delete command to specific ID's.
-- where id = '3BCF41CC-4BF3-4579-95DE-464A9DAEB9DD'