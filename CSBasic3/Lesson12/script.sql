SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Departments](
	[DepartmentID] [uniqueidentifier] NOT NULL,
	[DepartmentName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Students](
	[StudentID] [uniqueidentifier] NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[DepartmentID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [Departments] ([DepartmentID], [DepartmentName]) VALUES (N'024d9a39-3e0e-4452-ab24-00ffbdf34319', N'Math')
INSERT [Departments] ([DepartmentID], [DepartmentName]) VALUES (N'18ea39cb-3a49-4631-b64d-26aae7d0f8e3', N'History')
INSERT [Departments] ([DepartmentID], [DepartmentName]) VALUES (N'8d8f646e-c982-4980-9a75-6c490a1017e1', N'Literature')
INSERT [Departments] ([DepartmentID], [DepartmentName]) VALUES (N'c61c54c7-f688-4be4-af7d-af3e68c10859', N'English')
GO
INSERT [Students] ([StudentID], [LastName], [FirstName], [DateOfBirth], [DepartmentID]) VALUES (N'e31e8202-1bcd-46b9-90b6-6340a28e5a0c', N'Ronaldo', N'Cristiano', CAST(N'1985-02-05T00:00:00.000' AS DateTime), N'024d9a39-3e0e-4452-ab24-00ffbdf34319')
INSERT [Students] ([StudentID], [LastName], [FirstName], [DateOfBirth], [DepartmentID]) VALUES (N'34f14f4c-848a-4e38-babd-8d182ebe40ce', N'Maguire', N'Harry', CAST(N'1993-03-05T00:00:00.000' AS DateTime), N'c61c54c7-f688-4be4-af7d-af3e68c10859')
INSERT [Students] ([StudentID], [LastName], [FirstName], [DateOfBirth], [DepartmentID]) VALUES (N'c56c308a-56fd-46ea-bc13-bc40e23f5428', N'Fernandes', N'Bruno', CAST(N'1994-09-08T00:00:00.000' AS DateTime), N'c61c54c7-f688-4be4-af7d-af3e68c10859')
INSERT [Students] ([StudentID], [LastName], [FirstName], [DateOfBirth], [DepartmentID]) VALUES (N'da290ea8-ff82-42df-9f59-f4e6fd557e00', N'Messi', N'Lionel', CAST(N'1987-06-24T00:00:00.000' AS DateTime), N'024d9a39-3e0e-4452-ab24-00ffbdf34319')
GO
ALTER TABLE [Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Departments] FOREIGN KEY([DepartmentID])
REFERENCES [Departments] ([DepartmentID])
GO
ALTER TABLE [Students] CHECK CONSTRAINT [FK_Students_Departments]
GO
