insert [dbo].[Categories] ([CategoryId], [CategoryName], [Status], [CreatedDate])
values
(NEWID(), N'Điện thoại', 1, GETDATE())

insert [dbo].[Users] ([UserId], [UserName], [Password], [Email], [Mobile], [Status], [CreatedDate])
values
(NEWID(), N'Trần Văn Tuấn', N'123456', N'tuantv@gmail.com', N'0961399999', 1, GETDATE())

go
select * from [dbo].[Categories];
select * from Users;