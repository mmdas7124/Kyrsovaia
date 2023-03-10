USE [barbershop]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 26.12.2022 15:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[IDClient] [int] NOT NULL,
	[Phone] [varchar](50) NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[IDClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 26.12.2022 15:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[IDClient] [int] NOT NULL,
	[FullName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[FullName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 26.12.2022 15:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[IDPosition] [int] NOT NULL,
	[Title] [varchar](50) NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[IDPosition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 26.12.2022 15:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] NOT NULL,
	[RoleName] [varchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 26.12.2022 15:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[IDService] [int] NOT NULL,
	[Title] [varchar](50) NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[IDService] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 26.12.2022 15:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[IDEmployee] [int] NOT NULL,
	[SurName] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[MidleName] [varchar](50) NULL,
	[Post] [int] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[IDEmployee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26.12.2022 15:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] NOT NULL,
	[Login] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visits]    Script Date: 26.12.2022 15:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visits](
	[IDVisitor] [int] NOT NULL,
	[FullName] [varchar](50) NULL,
	[Service] [int] NULL,
	[Employee] [int] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Visits] PRIMARY KEY CLUSTERED 
(
	[IDVisitor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Positions] ([IDPosition], [Title]) VALUES (1, N'Барбер ученик')
INSERT [dbo].[Positions] ([IDPosition], [Title]) VALUES (2, N'Барбер стажер')
INSERT [dbo].[Positions] ([IDPosition], [Title]) VALUES (3, N'Младший барбер')
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'User')
GO
INSERT [dbo].[Services] ([IDService], [Title], [Price]) VALUES (1, N'Стрижка', 500)
INSERT [dbo].[Services] ([IDService], [Title], [Price]) VALUES (2, N'Стрижка бороды', 300)
INSERT [dbo].[Services] ([IDService], [Title], [Price]) VALUES (3, N'Укладка', 200)
GO
INSERT [dbo].[Users] ([UserID], [Login], [Password], [RoleID]) VALUES (1, N'Admin', N'Admin', 1)
INSERT [dbo].[Users] ([UserID], [Login], [Password], [RoleID]) VALUES (2, N'Test', N'Test', 2)
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Contacts] FOREIGN KEY([IDClient])
REFERENCES [dbo].[Contacts] ([IDClient])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Contacts]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Positions] FOREIGN KEY([Post])
REFERENCES [dbo].[Positions] ([IDPosition])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Positions]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
ALTER TABLE [dbo].[Visits]  WITH CHECK ADD  CONSTRAINT [FK_Visits_Customers] FOREIGN KEY([FullName])
REFERENCES [dbo].[Customers] ([FullName])
GO
ALTER TABLE [dbo].[Visits] CHECK CONSTRAINT [FK_Visits_Customers]
GO
ALTER TABLE [dbo].[Visits]  WITH CHECK ADD  CONSTRAINT [FK_Visits_Services] FOREIGN KEY([Service])
REFERENCES [dbo].[Services] ([IDService])
GO
ALTER TABLE [dbo].[Visits] CHECK CONSTRAINT [FK_Visits_Services]
GO
ALTER TABLE [dbo].[Visits]  WITH CHECK ADD  CONSTRAINT [FK_Visits_Staff] FOREIGN KEY([Employee])
REFERENCES [dbo].[Staff] ([IDEmployee])
GO
ALTER TABLE [dbo].[Visits] CHECK CONSTRAINT [FK_Visits_Staff]
GO
