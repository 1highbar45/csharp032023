
--CREATE DATABASE [Sales]
--GO
--USE  [Sales]
--GO

CREATE TABLE [Categories](
	[CategoryId] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Categories_CategoryId]  DEFAULT (newid()),
	[CategoryName] [nvarchar](100) NOT NULL,
	[Status] [tinyint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Products](
	[ProductId] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_Products_ProductId]  DEFAULT (newid()),
	[ProductName] [nvarchar](100) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[ManufactoringDate] [datetime] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Status] [tinyint] NOT NULL,
	[CategoryId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TagClouds](
	[TagId] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_TagClouds_TagId]  DEFAULT (newid()),
	[TagName] [nvarchar](100) NULL,
 CONSTRAINT [PK_TagClouds] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TagsProducts](
	[TagProductId] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_TagsProducts_TagProductId]  DEFAULT (newid()),
	[ProductId] [uniqueidentifier] NULL,
	[TagId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TagsProducts] PRIMARY KEY CLUSTERED 
(
	[TagProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Users](
	[UserId] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_Users_UserId]  DEFAULT (newid()),
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Status] [tinyint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

INSERT [Categories] ([CategoryId], [CategoryName], [Status], [CreatedDate]) VALUES (N'3a14e4e5-f684-4601-83f0-08982fed470f', N'Điện thoại', 1, CAST(N'2020-06-29 19:49:27.090' AS DateTime))
INSERT [Categories] ([CategoryId], [CategoryName], [Status], [CreatedDate]) VALUES (N'b8aa2e2c-cdaf-4c83-b563-186951ae8d72', N'Ti vi', 1, CAST(N'2020-07-02 15:32:29.513' AS DateTime))
INSERT [Categories] ([CategoryId], [CategoryName], [Status], [CreatedDate]) VALUES (N'cab4b833-fd38-4f35-b827-26535f2c8e70', N'Tủ lạnh', 1, CAST(N'2020-07-02 15:32:52.950' AS DateTime))
INSERT [Categories] ([CategoryId], [CategoryName], [Status], [CreatedDate]) VALUES (N'1ad749ae-fdeb-4145-b7cf-26d5e4e28dda', N'Điều hòa', 1, CAST(N'2020-07-02 15:32:13.377' AS DateTime))
INSERT [Categories] ([CategoryId], [CategoryName], [Status], [CreatedDate]) VALUES (N'78757a1a-ba39-4b93-8d5e-71a9db80a418', N'Laptop', 1, CAST(N'2020-07-02 15:35:59.923' AS DateTime))
INSERT [Categories] ([CategoryId], [CategoryName], [Status], [CreatedDate]) VALUES (N'd4b6a885-9c76-4afe-860f-b8cd0e9f9df2', N'Ô tô', 1, CAST(N'2020-07-02 15:33:26.620' AS DateTime))
INSERT [Categories] ([CategoryId], [CategoryName], [Status], [CreatedDate]) VALUES (N'72d99613-df6b-4116-bc38-e2eefe91c774', N'Xe máy', 1, CAST(N'2020-07-02 15:33:33.190' AS DateTime))
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'9960f6dd-fe5d-46f2-8537-07c2ea02c3db', N'Tủ lạnh Misubishi', CAST(300000 AS Decimal(18, 0)), CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:12:52.183' AS DateTime), N'', 1, N'cab4b833-fd38-4f35-b827-26535f2c8e70', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 300)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'6eccd342-78b7-4374-863c-1d89418a2773', N'Tủ lạnh Aqua', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:11:11.837' AS DateTime), N'', 1, N'cab4b833-fd38-4f35-b827-26535f2c8e70', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 100)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'c5ac662d-3ac2-45cf-83dc-20a3cf8a1fcb', N'Ti vi Sony', CAST(300000 AS Decimal(18, 0)), CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:10:02.803' AS DateTime), N'', 1, N'b8aa2e2c-cdaf-4c83-b563-186951ae8d72', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 300)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'ff534bb5-fa79-404a-8b17-240a91d2b1cf', N'Iphone 8', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 15:54:15.887' AS DateTime), N'', 1, N'3a14e4e5-f684-4601-83f0-08982fed470f', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 200)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'15140fc5-8017-40e4-af01-280cde097260', N'Honda Accord', CAST(300000 AS Decimal(18, 0)), CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:22:14.313' AS DateTime), N'', 1, N'd4b6a885-9c76-4afe-860f-b8cd0e9f9df2', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 300)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'bf068f7b-a02c-4b0a-abc9-2da4d9dbd0c2', N'Suzuki Hayate', CAST(200000 AS Decimal(18, 0)), CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:25:48.583' AS DateTime), N'', 1, N'72d99613-df6b-4116-bc38-e2eefe91c774', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 200)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'508bc176-400a-4de9-8172-2dec0af91e42', N'Điều hòa Daikin', CAST(300000 AS Decimal(18, 0)), CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:14:39.277' AS DateTime), N'', 1, N'1ad749ae-fdeb-4145-b7cf-26d5e4e28dda', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 300)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'9596cb95-222f-4955-8fd7-314bfcf301be', N'Yamaha Grande', CAST(200000 AS Decimal(18, 0)), CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:25:23.373' AS DateTime), N'', 1, N'72d99613-df6b-4116-bc38-e2eefe91c774', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 200)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'24303990-a70d-4a89-a010-321b8ae8df45', N'Laptop LG', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:18:37.443' AS DateTime), N'', 1, N'78757a1a-ba39-4b93-8d5e-71a9db80a418', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 100)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'e0e79f5d-bee7-4353-b04e-33413b19b5dd', N'Laptop Acer', CAST(200000 AS Decimal(18, 0)), CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:18:56.330' AS DateTime), N'', 1, N'78757a1a-ba39-4b93-8d5e-71a9db80a418', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 200)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'7162adb3-6bfd-4d81-a184-370b967bbdbe', N'Yamaha Nouvo', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:25:07.917' AS DateTime), N'', 1, N'72d99613-df6b-4116-bc38-e2eefe91c774', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 100)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'd0aa60aa-be3f-43f8-bf83-482cdb7ef22e', N'Honda Civic', CAST(200000 AS Decimal(18, 0)), CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:21:56.953' AS DateTime), N'', 1, N'd4b6a885-9c76-4afe-860f-b8cd0e9f9df2', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 200)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'd11232b3-3c79-4cfd-9dfe-493196bf1324', N'Honda Airblade', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:24:57.427' AS DateTime), N'', 1, N'72d99613-df6b-4116-bc38-e2eefe91c774', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 100)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'47b0628d-51a8-4342-8924-4eb983d924a3', N'Laptop Macbook', CAST(300000 AS Decimal(18, 0)), CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:19:52.350' AS DateTime), N'', 1, N'78757a1a-ba39-4b93-8d5e-71a9db80a418', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 300)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'd7d8c32c-661b-41c2-8cfe-5a4f448cbf2a', N'Hyundai Accent', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:21:00.883' AS DateTime), N'', 1, N'd4b6a885-9c76-4afe-860f-b8cd0e9f9df2', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 100)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'a8325b2f-7062-40c6-8639-5d56975ef553', N'Ti vi Sharp', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:08:06.520' AS DateTime), N'', 1, N'b8aa2e2c-cdaf-4c83-b563-186951ae8d72', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 100)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'f5558edd-db63-497c-b2dd-694b61a75e68', N'Laptop Asus', CAST(200000 AS Decimal(18, 0)), CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:19:15.507' AS DateTime), N'', 1, N'78757a1a-ba39-4b93-8d5e-71a9db80a418', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 200)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'87e6c55a-64dd-4010-a2bd-6bd5c3c546ae', N'Điều hòa Casper', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:13:42.360' AS DateTime), N'', 1, N'1ad749ae-fdeb-4145-b7cf-26d5e4e28dda', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 100)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'aef604e2-2d67-4424-a262-7fd20f3d57df', N'Sam sung S20', CAST(300000 AS Decimal(18, 0)), CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:06:03.000' AS DateTime), N'', 1, N'3a14e4e5-f684-4601-83f0-08982fed470f', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 300)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'0f6dc8e2-6b84-46a4-baaa-84703e917293', N'Iphone 11 Promax', CAST(300000 AS Decimal(18, 0)), CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:06:34.407' AS DateTime), N'', 1, N'3a14e4e5-f684-4601-83f0-08982fed470f', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 300)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'98bcd4c7-1825-4e3a-9b42-85f8ad37b7a8', N'Samsung Note9', CAST(200000 AS Decimal(18, 0)), CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:00:14.983' AS DateTime), N'', 1, N'3a14e4e5-f684-4601-83f0-08982fed470f', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 200)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'0c031795-8555-4ead-91d0-8c556bbd39d6', N'Laptop Lenovo', CAST(300000 AS Decimal(18, 0)), CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:19:42.737' AS DateTime), N'', 1, N'78757a1a-ba39-4b93-8d5e-71a9db80a418', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 300)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'ce0a8612-13f1-4bf5-aafb-8d73de3336d4', N'Điều hòa Panasonic', CAST(300000 AS Decimal(18, 0)), CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:14:46.593' AS DateTime), N'', 1, N'1ad749ae-fdeb-4145-b7cf-26d5e4e28dda', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 300)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'347470a0-56b0-42fc-915c-98d2968a9d9e', N'Ti vi Toshiba', CAST(300000 AS Decimal(18, 0)), CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:10:10.330' AS DateTime), N'', 1, N'b8aa2e2c-cdaf-4c83-b563-186951ae8d72', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 300)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'bb128d3a-f44c-4405-a4ce-9f684d4a9927', N'Ti vi Asanzo', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:08:20.297' AS DateTime), N'', 1, N'b8aa2e2c-cdaf-4c83-b563-186951ae8d72', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 100)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'c0d0d88d-c4eb-49d9-8ae0-a65da3a03f90', N'Điều hòa Misubishi', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:13:32.700' AS DateTime), N'', 1, N'1ad749ae-fdeb-4145-b7cf-26d5e4e28dda', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 100)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'feed9aab-791d-4ced-b353-a9bdc98d9841', N'Acura MDX', CAST(300000 AS Decimal(18, 0)), CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:22:25.287' AS DateTime), N'', 1, N'd4b6a885-9c76-4afe-860f-b8cd0e9f9df2', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 300)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'991e4f34-ab22-4f1f-a10a-b54cea7f2387', N'Điều hòa Funiki', CAST(200000 AS Decimal(18, 0)), CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:14:11.137' AS DateTime), N'', 1, N'1ad749ae-fdeb-4145-b7cf-26d5e4e28dda', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 200)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'dc26492c-9db1-448f-99d1-b73ba7aa8c73', N'Điều hòa LG', CAST(200000 AS Decimal(18, 0)), CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:13:55.847' AS DateTime), N'', 1, N'1ad749ae-fdeb-4145-b7cf-26d5e4e28dda', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 200)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'8403bcd4-2a12-4b6c-bbcf-ba8f9b959dc0', N'Ti vi LG', CAST(200000 AS Decimal(18, 0)), CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:09:32.110' AS DateTime), N'', 1, N'b8aa2e2c-cdaf-4c83-b563-186951ae8d72', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 200)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'822040e0-d30a-4a7d-a2d4-c7d9e208ff21', N'Iphone X', CAST(200000 AS Decimal(18, 0)), CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:01:07.787' AS DateTime), N'', 1, N'3a14e4e5-f684-4601-83f0-08982fed470f', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 200)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'e05eda53-fbe3-4419-a7a7-c82720936bee', N'Tủ lạnh Electrolux', CAST(300000 AS Decimal(18, 0)), CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:12:37.680' AS DateTime), N'', 1, N'cab4b833-fd38-4f35-b827-26535f2c8e70', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 300)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'c636471c-a53b-4c80-940d-c8755948ed8e', N'Tủ lạnh LG', CAST(200000 AS Decimal(18, 0)), CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:12:06.663' AS DateTime), N'', 1, N'cab4b833-fd38-4f35-b827-26535f2c8e70', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 200)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'cf4dc43b-f7e2-411d-83bb-c8ab1e5cfed8', N'Tủ lạnh Toshiba', CAST(200000 AS Decimal(18, 0)), CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:11:59.847' AS DateTime), N'', 1, N'cab4b833-fd38-4f35-b827-26535f2c8e70', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 200)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'44939ed2-f1a8-4900-802e-d0276fc75d19', N'Honda CBR', CAST(300000 AS Decimal(18, 0)), CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:26:45.043' AS DateTime), N'', 1, N'72d99613-df6b-4116-bc38-e2eefe91c774', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 300)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'016d3ca1-780b-4416-a800-d469a8c0394c', N'Mazda 3', CAST(200000 AS Decimal(18, 0)), CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:21:36.273' AS DateTime), N'', 1, N'd4b6a885-9c76-4afe-860f-b8cd0e9f9df2', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 200)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'8278c1cb-35ba-4e5d-b6ab-dea99f28b3f0', N'Ti vi Samsung', CAST(200000 AS Decimal(18, 0)), CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:09:10.770' AS DateTime), N'', 1, N'b8aa2e2c-cdaf-4c83-b563-186951ae8d72', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 200)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'2ce11881-92e5-48c8-b34d-df7ef57812ea', N'Samsung S7', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 15:53:21.617' AS DateTime), N'', 1, N'3a14e4e5-f684-4601-83f0-08982fed470f', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 100)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'f6dc7cc8-d7b5-4256-b7ca-e7994dfcce79', N'Toyota Vios', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:21:14.427' AS DateTime), N'', 1, N'd4b6a885-9c76-4afe-860f-b8cd0e9f9df2', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 100)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'0a51515c-be3b-4496-aac0-eacfbb8b2a50', N'Laptop Dell', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:18:30.340' AS DateTime), N'', 1, N'78757a1a-ba39-4b93-8d5e-71a9db80a418', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 100)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'7a4a5893-be4b-438d-9799-ee3829e694b6', N'Kawasaki Ninja', CAST(300000 AS Decimal(18, 0)), CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:26:29.140' AS DateTime), N'', 1, N'72d99613-df6b-4116-bc38-e2eefe91c774', N'043362d3-2aa1-401a-be54-3ecea1dd3834', 300)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'8b3eb361-8963-4440-8557-f94825653158', N'Tủ lạnh Sharp', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:11:39.410' AS DateTime), N'', 1, N'cab4b833-fd38-4f35-b827-26535f2c8e70', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 100)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'24D9E8E6-EC15-44FF-8317-4AA8F70D0AC3', N'LG G2', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-07-02 16:11:39.410' AS DateTime), N'', 1, N'3A14E4E5-F684-4601-83F0-08982FED470F', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 50)
INSERT [Products] ([ProductId], [ProductName], [Price], [ManufactoringDate], [CreatedDate], [Description], [Status], [CategoryId], [UserId], [Quantity]) VALUES (N'444f2a54-31aa-464c-811d-7a1e6f706dd0', N'HTC One', CAST(100000 AS Decimal(18, 0)), CAST(N'2018-02-02 00:00:00.000' AS DateTime), CAST(N'2020-06-02 16:11:39.410' AS DateTime), N'', 1, N'3A14E4E5-F684-4601-83F0-08982FED470F', N'0c779398-f39d-4a20-8a0f-48bbea7341c3', 20)
INSERT [TagClouds] ([TagId], [TagName]) VALUES (N'9b669d66-0cb6-4020-bf1f-73222f1c3baa', N'Sản phẩm điện lạnh')
INSERT [TagClouds] ([TagId], [TagName]) VALUES (N'c7826836-d130-42c0-aa49-8233887d8edf', N'Sản phẩm điện tử')
INSERT [TagClouds] ([TagId], [TagName]) VALUES (N'ff0899ec-1458-4464-8d46-adbb82ff41fa', N'Sản phẩm mới')
INSERT [TagClouds] ([TagId], [TagName]) VALUES (N'dfafa1d7-4760-4bb0-8ed0-c2a43e3e9975', N'Sản phẩm khuyến mại')
INSERT [TagClouds] ([TagId], [TagName]) VALUES (N'6c9af5d8-314e-49bf-8e24-d577419e31a3', N'Sản phẩm bán chạy')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'c9fe3934-c344-4d05-bd47-05c58982650e', N'c5ac662d-3ac2-45cf-83dc-20a3cf8a1fcb', N'ff0899ec-1458-4464-8d46-adbb82ff41fa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'b9ed6e68-ef69-45e8-9205-08d6f76e5f46', N'd7d8c32c-661b-41c2-8cfe-5a4f448cbf2a', N'dfafa1d7-4760-4bb0-8ed0-c2a43e3e9975')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'b2bbae7c-2f5d-4f88-b8a9-0c21c5279e8a', N'0c031795-8555-4ead-91d0-8c556bbd39d6', N'ff0899ec-1458-4464-8d46-adbb82ff41fa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'c295a899-d74e-4ec3-b17e-0cc2999eb54d', N'ce0a8612-13f1-4bf5-aafb-8d73de3336d4', N'6c9af5d8-314e-49bf-8e24-d577419e31a3')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'3daf2ac0-9047-4467-b1d3-0d1876a8b0a0', N'47b0628d-51a8-4342-8924-4eb983d924a3', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'f8873cfd-505e-43c0-93ef-1085fc3cfa19', N'24303990-a70d-4a89-a010-321b8ae8df45', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'52aab5af-ad2c-4f5d-a2c0-128950240406', N'016d3ca1-780b-4416-a800-d469a8c0394c', N'6c9af5d8-314e-49bf-8e24-d577419e31a3')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'04509b6e-badf-456d-87fb-13e1451c774e', N'dc26492c-9db1-448f-99d1-b73ba7aa8c73', N'9b669d66-0cb6-4020-bf1f-73222f1c3baa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'fffc6226-197f-4132-a84f-1cd253582aa2', N'0f6dc8e2-6b84-46a4-baaa-84703e917293', N'ff0899ec-1458-4464-8d46-adbb82ff41fa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'0f6d05c6-b722-47ab-ad99-1cda6026542d', N'9596cb95-222f-4955-8fd7-314bfcf301be', N'dfafa1d7-4760-4bb0-8ed0-c2a43e3e9975')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'fe9d76c4-981c-40c1-9b49-1ff2e6eb14b9', N'822040e0-d30a-4a7d-a2d4-c7d9e208ff21', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'e8ab8608-1055-445c-82fe-21a0a0ce5aea', N'44939ed2-f1a8-4900-802e-d0276fc75d19', N'ff0899ec-1458-4464-8d46-adbb82ff41fa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'86969918-b540-4a5b-9e7e-2638593f2c50', N'87e6c55a-64dd-4010-a2bd-6bd5c3c546ae', N'9b669d66-0cb6-4020-bf1f-73222f1c3baa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'034025cf-380b-4f88-8abe-2f2bdf987b02', N'bb128d3a-f44c-4405-a4ce-9f684d4a9927', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'c6133f30-ae8a-4f5c-86f1-3124e94f1e5a', N'8403bcd4-2a12-4b6c-bbcf-ba8f9b959dc0', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'a787bd93-8040-4b72-8c95-3acf57c726f6', N'cf4dc43b-f7e2-411d-83bb-c8ab1e5cfed8', N'9b669d66-0cb6-4020-bf1f-73222f1c3baa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'1f6a174b-a2a6-44fb-aba1-3bf519bde48a', N'2ce11881-92e5-48c8-b34d-df7ef57812ea', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'8cdd7de9-b738-4f9f-b63d-4bd316f13d9a', N'508bc176-400a-4de9-8172-2dec0af91e42', N'ff0899ec-1458-4464-8d46-adbb82ff41fa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'7c32a374-c272-46cf-a93c-4c84fa4d72db', N'6eccd342-78b7-4374-863c-1d89418a2773', N'9b669d66-0cb6-4020-bf1f-73222f1c3baa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'578e4284-7162-4313-b098-4edcfbd98d9e', N'8403bcd4-2a12-4b6c-bbcf-ba8f9b959dc0', N'6c9af5d8-314e-49bf-8e24-d577419e31a3')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'79b7c24e-cc38-4776-8b84-51aee119bec3', N'ce0a8612-13f1-4bf5-aafb-8d73de3336d4', N'ff0899ec-1458-4464-8d46-adbb82ff41fa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'ed0ce955-5a0b-40db-80d7-564c39b5b6fa', N'0c031795-8555-4ead-91d0-8c556bbd39d6', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'd3b3caeb-7bdc-4948-bf20-5f45e35c760c', N'0f6dc8e2-6b84-46a4-baaa-84703e917293', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'a4b3d5a0-ebec-46d8-a343-60668b2dd1a9', N'e0e79f5d-bee7-4353-b04e-33413b19b5dd', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'b1a1e401-ba9a-4544-81a6-635f7be13d91', N'8278c1cb-35ba-4e5d-b6ab-dea99f28b3f0', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'9bbc4241-c5a4-4570-8a7e-642112422317', N'0c031795-8555-4ead-91d0-8c556bbd39d6', N'6c9af5d8-314e-49bf-8e24-d577419e31a3')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'2e66163e-15f9-4c33-921d-6d8939d34fb8', N'aef604e2-2d67-4424-a262-7fd20f3d57df', N'ff0899ec-1458-4464-8d46-adbb82ff41fa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'e8e13fec-cb34-4987-ae0e-6dd3d7cb5381', N'c0d0d88d-c4eb-49d9-8ae0-a65da3a03f90', N'9b669d66-0cb6-4020-bf1f-73222f1c3baa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'afb1d83f-8786-425e-b962-71140f877228', N'0f6dc8e2-6b84-46a4-baaa-84703e917293', N'6c9af5d8-314e-49bf-8e24-d577419e31a3')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'7eaa0c9e-5ed7-41ef-baff-75cdba19ae42', N'feed9aab-791d-4ced-b353-a9bdc98d9841', N'ff0899ec-1458-4464-8d46-adbb82ff41fa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'7aa6582e-94c7-4655-9f66-7988b16e0bbe', N'd7d8c32c-661b-41c2-8cfe-5a4f448cbf2a', N'6c9af5d8-314e-49bf-8e24-d577419e31a3')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'a8062f76-6d21-4ba5-b8fe-799db8828fd8', N'0a51515c-be3b-4496-aac0-eacfbb8b2a50', N'dfafa1d7-4760-4bb0-8ed0-c2a43e3e9975')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'afdcb9c4-ade1-4e09-8ccf-847e62c1b0c1', N'e0e79f5d-bee7-4353-b04e-33413b19b5dd', N'dfafa1d7-4760-4bb0-8ed0-c2a43e3e9975')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'ef826e39-4a95-4865-a774-86c1e2d32dce', N'98bcd4c7-1825-4e3a-9b42-85f8ad37b7a8', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'0b309d02-b9ab-422d-86b9-8787687310ea', N'8b3eb361-8963-4440-8557-f94825653158', N'9b669d66-0cb6-4020-bf1f-73222f1c3baa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'd0be0f04-91ff-4756-860b-88b7d592bcab', N'0a51515c-be3b-4496-aac0-eacfbb8b2a50', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'960d86fe-3605-41e4-9bb8-8f6065122f9a', N'c5ac662d-3ac2-45cf-83dc-20a3cf8a1fcb', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'6bfcb4ff-3ebc-45ef-82d5-8ffa9ffd8d25', N'2ce11881-92e5-48c8-b34d-df7ef57812ea', N'dfafa1d7-4760-4bb0-8ed0-c2a43e3e9975')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'ba91b7ca-110c-4371-b59e-90b34fe563f1', N'016d3ca1-780b-4416-a800-d469a8c0394c', N'dfafa1d7-4760-4bb0-8ed0-c2a43e3e9975')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'8b4a6ef2-cee3-4aab-8f1f-9640dc65f523', N'347470a0-56b0-42fc-915c-98d2968a9d9e', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'8b060d98-1065-4a50-80b5-978b2a3bca65', N'7a4a5893-be4b-438d-9799-ee3829e694b6', N'ff0899ec-1458-4464-8d46-adbb82ff41fa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'eb1b96aa-2002-49f9-aa71-986ed5ca5331', N'ce0a8612-13f1-4bf5-aafb-8d73de3336d4', N'dfafa1d7-4760-4bb0-8ed0-c2a43e3e9975')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'e1e0dfe6-c603-4562-b67c-a3bbf00c3099', N'e05eda53-fbe3-4419-a7a7-c82720936bee', N'9b669d66-0cb6-4020-bf1f-73222f1c3baa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'3a3e7c39-64cb-4836-a29a-b34442d889b8', N'0c031795-8555-4ead-91d0-8c556bbd39d6', N'dfafa1d7-4760-4bb0-8ed0-c2a43e3e9975')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'd77e875b-9f51-4923-ab15-b5c36e3b5d97', N'f5558edd-db63-497c-b2dd-694b61a75e68', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'f6626331-5cdb-4538-8ea3-ba5613ee6118', N'ff534bb5-fa79-404a-8b17-240a91d2b1cf', N'dfafa1d7-4760-4bb0-8ed0-c2a43e3e9975')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'6691975c-872f-4fd2-9cac-c16010cbaa54', N'9960f6dd-fe5d-46f2-8537-07c2ea02c3db', N'ff0899ec-1458-4464-8d46-adbb82ff41fa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'6dd6a65a-7cfd-4335-bf92-c262a8afc6c7', N'd0aa60aa-be3f-43f8-bf83-482cdb7ef22e', N'6c9af5d8-314e-49bf-8e24-d577419e31a3')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'6d2e477d-6a5d-4ba4-9273-c57a8a1bfa9e', N'aef604e2-2d67-4424-a262-7fd20f3d57df', N'6c9af5d8-314e-49bf-8e24-d577419e31a3')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'e4dd8a1b-9164-403e-8330-ca60727a365b', N'47b0628d-51a8-4342-8924-4eb983d924a3', N'ff0899ec-1458-4464-8d46-adbb82ff41fa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'596ccf3a-7969-4767-8009-d393b55252f2', N'822040e0-d30a-4a7d-a2d4-c7d9e208ff21', N'6c9af5d8-314e-49bf-8e24-d577419e31a3')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'a8c61011-4a31-4238-b951-d5fcac813c02', N'a8325b2f-7062-40c6-8639-5d56975ef553', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'd8f56432-19bc-4b03-81ac-dd2877bae2ed', N'9960f6dd-fe5d-46f2-8537-07c2ea02c3db', N'9b669d66-0cb6-4020-bf1f-73222f1c3baa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'c1691726-b60c-4ec1-988b-dd9c62691509', N'991e4f34-ab22-4f1f-a10a-b54cea7f2387', N'9b669d66-0cb6-4020-bf1f-73222f1c3baa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'f2c44a4b-9bc5-494e-a948-de14c8011950', N'ce0a8612-13f1-4bf5-aafb-8d73de3336d4', N'9b669d66-0cb6-4020-bf1f-73222f1c3baa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'946a380e-d3f5-4802-b135-e5565a6b1d5d', N'347470a0-56b0-42fc-915c-98d2968a9d9e', N'ff0899ec-1458-4464-8d46-adbb82ff41fa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'4ed070dc-4e92-4ded-a5c0-e5e2afbef3bd', N'c636471c-a53b-4c80-940d-c8755948ed8e', N'9b669d66-0cb6-4020-bf1f-73222f1c3baa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'2f56eb28-4feb-491b-8228-e7d454a6bd1b', N'15140fc5-8017-40e4-af01-280cde097260', N'ff0899ec-1458-4464-8d46-adbb82ff41fa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'8ebdb6c7-db7c-4663-9e57-e85ac5be50cc', N'e05eda53-fbe3-4419-a7a7-c82720936bee', N'ff0899ec-1458-4464-8d46-adbb82ff41fa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'49d67196-e1a5-419c-8afd-eed332f424cf', N'f6dc7cc8-d7b5-4256-b7ca-e7994dfcce79', N'6c9af5d8-314e-49bf-8e24-d577419e31a3')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'4de88c7c-5113-40b7-9d6d-f0b8b5083c69', N'ff534bb5-fa79-404a-8b17-240a91d2b1cf', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'f8d25572-b3bb-4b02-af43-f50ca0571124', N'c5ac662d-3ac2-45cf-83dc-20a3cf8a1fcb', N'dfafa1d7-4760-4bb0-8ed0-c2a43e3e9975')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'416b20ab-bd41-4b7a-bb0b-f5d6c337edc9', N'aef604e2-2d67-4424-a262-7fd20f3d57df', N'c7826836-d130-42c0-aa49-8233887d8edf')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'91423a2b-5ff1-4ca2-8b56-f8ecefb8365a', N'508bc176-400a-4de9-8172-2dec0af91e42', N'9b669d66-0cb6-4020-bf1f-73222f1c3baa')
INSERT [TagsProducts] ([TagProductId], [ProductId], [TagId]) VALUES (N'e2c8a233-c66e-4d74-b10e-ffdd98a773b5', N'c5ac662d-3ac2-45cf-83dc-20a3cf8a1fcb', N'6c9af5d8-314e-49bf-8e24-d577419e31a3')
INSERT [Users] ([UserId], [UserName], [Password], [Email], [Mobile], [Status], [CreatedDate]) VALUES (N'043362d3-2aa1-401a-be54-3ecea1dd3834', N'Trần Văn Tuấn', N'123456', N'tuantv@gmail.com', N'0961399999', 1, CAST(N'2020-07-02 16:11:39.410' AS DateTime))
INSERT [Users] ([UserId], [UserName], [Password], [Email], [Mobile], [Status], [CreatedDate]) VALUES (N'0c779398-f39d-4a20-8a0f-48bbea7341c3', N'Nguyễn Thu Huyền', N'654321', N'huyennt@gmail.com', N'0961388888', 1, CAST(N'2020-07-02 16:11:39.410' AS DateTime))
ALTER TABLE [Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [Categories] ([CategoryId])
GO
ALTER TABLE [Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Users] FOREIGN KEY([UserId])
REFERENCES [Users] ([UserId])
GO
ALTER TABLE [Products] CHECK CONSTRAINT [FK_Products_Users]
GO
ALTER TABLE [TagsProducts]  WITH CHECK ADD  CONSTRAINT [FK_TagsProducts_Products] FOREIGN KEY([ProductId])
REFERENCES [Products] ([ProductId])
GO
ALTER TABLE [TagsProducts] CHECK CONSTRAINT [FK_TagsProducts_Products]
GO
ALTER TABLE [TagsProducts]  WITH CHECK ADD  CONSTRAINT [FK_TagsProducts_TagClouds] FOREIGN KEY([TagId])
REFERENCES [TagClouds] ([TagId])
GO
ALTER TABLE [TagsProducts] CHECK CONSTRAINT [FK_TagsProducts_TagClouds]
GO
--USE [master]
--GO
--ALTER DATABASE [Sales] SET  READ_WRITE 
--GO
