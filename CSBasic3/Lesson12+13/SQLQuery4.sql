select * from [dbo].[Users];

select * from [dbo].[Categories];

select * from [dbo].[Products]

select ProductName, Quantity, Price from Products where ProductName Like N'%n%' and CategoryId = N'DCCFA870-EDFE-4A21-A250-7AC323424C10'