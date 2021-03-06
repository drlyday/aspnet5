USE [aspnet-aspnet5-20160411023355]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[VersionInfo]    Script Date: 7/31/2018 12:14:38 PM ******/
DROP TABLE [dbo].[VersionInfo]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 7/31/2018 12:14:38 PM ******/
DROP TABLE [dbo].[Ratings]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 7/31/2018 12:14:38 PM ******/
DROP TABLE [dbo].[Movies]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 7/31/2018 12:14:38 PM ******/
DROP TABLE [dbo].[Member]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 7/31/2018 12:14:38 PM ******/
DROP TABLE [dbo].[Genres]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/31/2018 12:14:38 PM ******/
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/31/2018 12:14:38 PM ******/
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/31/2018 12:14:38 PM ******/
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/31/2018 12:14:38 PM ******/
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/31/2018 12:14:38 PM ******/
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/31/2018 12:14:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/31/2018 12:14:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/31/2018 12:14:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/31/2018 12:14:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/31/2018 12:14:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Genres]    Script Date: 7/31/2018 12:14:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[Name] [nchar](10) NOT NULL,
	[Value] [smallint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Member]    Script Date: 7/31/2018 12:14:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[memberId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[memberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Movies]    Script Date: 7/31/2018 12:14:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[ReleaseDate] [datetime] NOT NULL,
	[Genre] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[StarRating] [smallint] NULL,
	[Rating] [varchar](20) NULL,
 CONSTRAINT [PK_dbo.Movies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 7/31/2018 12:14:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentalGuidanceRating] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Ratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VersionInfo]    Script Date: 7/31/2018 12:14:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersionInfo](
	[Version] [bigint] NOT NULL,
	[AppliedOn] [datetime] NULL,
	[Description] [nvarchar](1024) NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [StarRating], [Rating]) VALUES (1, N'Cheech and Chong 3', CAST(N'2018-07-31 00:00:00.000' AS DateTime), N'Comedy', CAST(1.96 AS Decimal(18, 2)), 4, N'R')
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [StarRating], [Rating]) VALUES (3, N'Pulp Fiction', CAST(N'1997-01-01 00:00:00.000' AS DateTime), N'Drama', CAST(56.25 AS Decimal(18, 2)), 4, N'R')
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [StarRating], [Rating]) VALUES (4, N'Matrix 2', CAST(N'2001-01-01 00:00:00.000' AS DateTime), N'Action', CAST(78.00 AS Decimal(18, 2)), 2, N'R')
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [StarRating], [Rating]) VALUES (5, N'Star Wars', CAST(N'1973-01-01 00:00:00.000' AS DateTime), N'Action', CAST(0.21 AS Decimal(18, 2)), 4, N'R')
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [StarRating], [Rating]) VALUES (6, N'Sausage Party', CAST(N'2016-10-01 00:00:00.000' AS DateTime), N'Comedy', CAST(0.50 AS Decimal(18, 2)), 1, N'R')
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [StarRating], [Rating]) VALUES (7, N'Cars', CAST(N'2005-01-01 00:00:00.000' AS DateTime), N'Drama', CAST(12.00 AS Decimal(18, 2)), 1, N'R')
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [StarRating], [Rating]) VALUES (8, N'Dustin Gone Cray', CAST(N'2017-01-31 00:00:00.000' AS DateTime), N'Drama', CAST(1.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [StarRating], [Rating]) VALUES (10, N'test', CAST(N'2017-01-31 00:00:00.000' AS DateTime), N'test', CAST(2.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [StarRating], [Rating]) VALUES (11, N'qqqq', CAST(N'2017-01-30 00:00:00.000' AS DateTime), N'qqqq', CAST(222.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[Movies] ([ID], [Title], [ReleaseDate], [Genre], [Price], [StarRating], [Rating]) VALUES (12, N'Get Out', CAST(N'2018-03-05 00:00:00.000' AS DateTime), N'Horror', CAST(19.99 AS Decimal(18, 2)), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Movies] OFF
SET IDENTITY_INSERT [dbo].[Ratings] ON 

INSERT [dbo].[Ratings] ([Id], [ParentalGuidanceRating]) VALUES (1, N'NA')
INSERT [dbo].[Ratings] ([Id], [ParentalGuidanceRating]) VALUES (2, N'G')
INSERT [dbo].[Ratings] ([Id], [ParentalGuidanceRating]) VALUES (3, N'PG')
INSERT [dbo].[Ratings] ([Id], [ParentalGuidanceRating]) VALUES (4, N'PG-13')
INSERT [dbo].[Ratings] ([Id], [ParentalGuidanceRating]) VALUES (5, N'R')
INSERT [dbo].[Ratings] ([Id], [ParentalGuidanceRating]) VALUES (6, N'X')
SET IDENTITY_INSERT [dbo].[Ratings] OFF
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (1, CAST(N'2017-01-20 17:30:14.000' AS DateTime), N'M0001CreateMemberTable')
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (2, CAST(N'2017-01-20 17:30:14.000' AS DateTime), N'Migration0119171604AddRating')
INSERT [dbo].[VersionInfo] ([Version], [AppliedOn], [Description]) VALUES (3, CAST(N'2017-01-20 17:30:14.000' AS DateTime), N'Migration0119171640TestFwdOnly')
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
