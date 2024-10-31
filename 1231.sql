USE [master]
GO
/****** Object:  Database [trade]    Script Date: 31.10.2024 14:10:38 ******/
CREATE DATABASE [trade]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'trade', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\trade.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'trade_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\trade_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [trade] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [trade].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [trade] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [trade] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [trade] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [trade] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [trade] SET ARITHABORT OFF 
GO
ALTER DATABASE [trade] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [trade] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [trade] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [trade] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [trade] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [trade] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [trade] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [trade] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [trade] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [trade] SET  DISABLE_BROKER 
GO
ALTER DATABASE [trade] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [trade] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [trade] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [trade] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [trade] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [trade] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [trade] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [trade] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [trade] SET  MULTI_USER 
GO
ALTER DATABASE [trade] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [trade] SET DB_CHAINING OFF 
GO
ALTER DATABASE [trade] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [trade] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [trade] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [trade] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [trade] SET QUERY_STORE = OFF
GO
USE [trade]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 31.10.2024 14:10:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[indexx] [int] NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KatProd]    Script Date: 31.10.2024 14:10:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KatProd](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nameKatP] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KatProd] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 31.10.2024 14:10:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[manufName] [nvarchar](152) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 31.10.2024 14:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clientId] [int] NULL,
	[dateOrder] [datetime] NOT NULL,
	[DateDostavka] [datetime] NOT NULL,
	[PvzId] [int] NOT NULL,
	[Code] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderCount]    Script Date: 31.10.2024 14:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderCount](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [int] NOT NULL,
	[articulId] [int] NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [PK_orderCount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 31.10.2024 14:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[namePost] [nvarchar](152) NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 31.10.2024 14:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] NOT NULL,
	[articul] [nvarchar](50) NOT NULL,
	[nameProd] [nvarchar](152) NOT NULL,
	[izm] [nvarchar](50) NOT NULL,
	[cost] [int] NOT NULL,
	[skidkaMax] [int] NOT NULL,
	[manufacID] [int] NOT NULL,
	[SuppId] [int] NOT NULL,
	[KatProdId] [int] NOT NULL,
	[SkidkaNow] [int] NOT NULL,
	[count] [int] NOT NULL,
	[Discription] [nvarchar](252) NOT NULL,
	[image] [image] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PVZ]    Script Date: 31.10.2024 14:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PVZ](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[indexId] [int] NOT NULL,
	[TownId] [int] NOT NULL,
	[StreetID] [int] NOT NULL,
	[House] [int] NULL,
 CONSTRAINT [PK_PVZ] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 31.10.2024 14:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 31.10.2024 14:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nameStatus] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 31.10.2024 14:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[streetName] [nvarchar](152) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Town]    Script Date: 31.10.2024 14:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Town](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameTown] [nvarchar](152) NOT NULL,
 CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProd]    Script Date: 31.10.2024 14:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProd](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeProd] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 31.10.2024 14:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[FIO] [nvarchar](152) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Index] ON 

INSERT [dbo].[Index] ([id], [indexx]) VALUES (1, 125061)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (2, 125703)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (3, 125837)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (4, 190949)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (5, 344288)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (6, 394060)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (7, 394242)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (8, 394782)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (9, 400562)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (10, 410172)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (11, 410542)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (12, 410661)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (13, 420151)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (14, 426030)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (15, 443890)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (16, 450375)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (17, 450558)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (18, 450983)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (19, 454311)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (20, 603002)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (21, 603036)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (22, 603379)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (23, 603721)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (24, 614164)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (25, 614510)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (26, 614611)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (27, 614753)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (28, 620839)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (29, 625283)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (30, 625560)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (31, 625590)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (32, 625683)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (33, 630201)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (34, 630370)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (35, 660007)
INSERT [dbo].[Index] ([id], [indexx]) VALUES (36, 660540)
SET IDENTITY_INSERT [dbo].[Index] OFF
GO
SET IDENTITY_INSERT [dbo].[KatProd] ON 

INSERT [dbo].[KatProd] ([id], [nameKatP]) VALUES (1, N'Для животных')
INSERT [dbo].[KatProd] ([id], [nameKatP]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[KatProd] ([id], [nameKatP]) VALUES (3, N'Товары для собак')
SET IDENTITY_INSERT [dbo].[KatProd] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([id], [manufName]) VALUES (1, N'Cat Chow')
INSERT [dbo].[Manufacturer] ([id], [manufName]) VALUES (2, N'Chappy')
INSERT [dbo].[Manufacturer] ([id], [manufName]) VALUES (3, N'Dog Chow')
INSERT [dbo].[Manufacturer] ([id], [manufName]) VALUES (4, N'Dreames')
INSERT [dbo].[Manufacturer] ([id], [manufName]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[Manufacturer] ([id], [manufName]) VALUES (6, N'LIKER')
INSERT [dbo].[Manufacturer] ([id], [manufName]) VALUES (7, N'Nobby')
INSERT [dbo].[Manufacturer] ([id], [manufName]) VALUES (8, N'Pro Plan')
INSERT [dbo].[Manufacturer] ([id], [manufName]) VALUES (9, N'TitBit')
INSERT [dbo].[Manufacturer] ([id], [manufName]) VALUES (10, N'Triol')
INSERT [dbo].[Manufacturer] ([id], [manufName]) VALUES (11, N'trixie')
INSERT [dbo].[Manufacturer] ([id], [manufName]) VALUES (12, N'True Touch')
INSERT [dbo].[Manufacturer] ([id], [manufName]) VALUES (13, N'ZooM')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([id], [clientId], [dateOrder], [DateDostavka], [PvzId], [Code], [StatusId]) VALUES (1, NULL, CAST(N'2022-05-06T00:00:00.000' AS DateTime), CAST(N'2022-05-12T00:00:00.000' AS DateTime), 25, 601, 2)
INSERT [dbo].[order] ([id], [clientId], [dateOrder], [DateDostavka], [PvzId], [Code], [StatusId]) VALUES (2, NULL, CAST(N'2022-05-06T00:00:00.000' AS DateTime), CAST(N'2022-05-12T00:00:00.000' AS DateTime), 20, 602, 2)
INSERT [dbo].[order] ([id], [clientId], [dateOrder], [DateDostavka], [PvzId], [Code], [StatusId]) VALUES (3, 9, CAST(N'2022-05-08T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 22, 603, 1)
INSERT [dbo].[order] ([id], [clientId], [dateOrder], [DateDostavka], [PvzId], [Code], [StatusId]) VALUES (4, NULL, CAST(N'2022-05-08T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 24, 604, 1)
INSERT [dbo].[order] ([id], [clientId], [dateOrder], [DateDostavka], [PvzId], [Code], [StatusId]) VALUES (5, NULL, CAST(N'2022-05-10T00:00:00.000' AS DateTime), CAST(N'2022-05-16T00:00:00.000' AS DateTime), 25, 605, 1)
INSERT [dbo].[order] ([id], [clientId], [dateOrder], [DateDostavka], [PvzId], [Code], [StatusId]) VALUES (6, 7, CAST(N'2022-05-11T00:00:00.000' AS DateTime), CAST(N'2022-05-17T00:00:00.000' AS DateTime), 28, 606, 1)
INSERT [dbo].[order] ([id], [clientId], [dateOrder], [DateDostavka], [PvzId], [Code], [StatusId]) VALUES (7, NULL, CAST(N'2022-05-12T00:00:00.000' AS DateTime), CAST(N'2022-05-18T00:00:00.000' AS DateTime), 36, 607, 2)
INSERT [dbo].[order] ([id], [clientId], [dateOrder], [DateDostavka], [PvzId], [Code], [StatusId]) VALUES (8, NULL, CAST(N'2022-05-13T00:00:00.000' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), 32, 608, 2)
INSERT [dbo].[order] ([id], [clientId], [dateOrder], [DateDostavka], [PvzId], [Code], [StatusId]) VALUES (9, 2, CAST(N'2022-05-15T00:00:00.000' AS DateTime), CAST(N'2022-05-21T00:00:00.000' AS DateTime), 34, 609, 2)
INSERT [dbo].[order] ([id], [clientId], [dateOrder], [DateDostavka], [PvzId], [Code], [StatusId]) VALUES (10, 8, CAST(N'2022-05-15T00:00:00.000' AS DateTime), CAST(N'2022-05-21T00:00:00.000' AS DateTime), 36, 610, 1)
SET IDENTITY_INSERT [dbo].[order] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([id], [namePost]) VALUES (1, N'PetShop')
INSERT [dbo].[Post] ([id], [namePost]) VALUES (2, N'ZooMir')
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[PVZ] ON 

INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (1, 5, 1, 28, 1)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (2, 24, 1, 25, 30)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (3, 7, 1, 7, 43)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (4, 36, 1, 23, 25)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (5, 3, 1, 30, 40)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (6, 2, 1, 16, 49)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (7, 29, 1, 17, 46)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (8, 26, 1, 11, 50)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (9, 19, 1, 14, 19)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (10, 35, 1, 15, 19)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (11, 21, 1, 20, 4)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (12, 18, 1, 8, 26)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (13, 8, 1, 28, 3)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (14, 20, 1, 4, 28)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (15, 17, 1, 12, 30)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (16, 6, 1, 26, 43)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (17, 12, 1, 29, 50)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (18, 31, 1, 7, 20)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (19, 32, 1, 1, NULL)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (20, 9, 1, 5, 32)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (21, 25, 1, 9, 47)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (22, 11, 1, 21, 46)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (23, 28, 1, 27, 8)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (24, 15, 1, 7, 1)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (25, 22, 1, 24, 46)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (26, 23, 1, 3, 41)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (27, 10, 1, 22, 13)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (28, 13, 1, 2, 32)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (29, 1, 1, 18, 8)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (30, 34, 1, 30, 24)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (31, 27, 1, 19, 35)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (32, 14, 1, 9, 44)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (33, 16, 1, 6, 44)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (34, 30, 1, 13, 12)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (35, 33, 1, 8, 17)
INSERT [dbo].[PVZ] ([id], [indexId], [TownId], [StreetID], [House]) VALUES (36, 4, 1, 10, 26)
SET IDENTITY_INSERT [dbo].[PVZ] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([id], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[role] ([id], [RoleName]) VALUES (2, N'Клиент')
INSERT [dbo].[role] ([id], [RoleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[status] ON 

INSERT [dbo].[status] ([id], [nameStatus]) VALUES (1, N'Завершен')
INSERT [dbo].[status] ([id], [nameStatus]) VALUES (2, N'Новый ')
SET IDENTITY_INSERT [dbo].[status] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([id], [streetName]) VALUES (1, N'ул. 8Марта')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (2, N'ул. Вишневая')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (3, N'ул. Гоголя')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (4, N'ул. Дзержинского')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (5, N'ул. Зеленая')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (6, N'ул. Клубная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (7, N'ул. Коммунистическая')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (8, N'ул. Комсомольская')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (9, N'ул. Маяковского')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (10, N'ул. Мичурина')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (11, N'ул. Молодежная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (12, N'ул. Набережная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (13, N'ул. Некрасова')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (14, N'ул. Новая')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (15, N'ул. Октябрьская')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (16, N'ул. Партизанская')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (17, N'ул. Победы')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (18, N'ул. Подгорная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (19, N'ул. Полевая')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (20, N'ул. Садовая')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (21, N'ул. Светлая')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (22, N'ул. Северная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (23, N'ул. Солнечная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (24, N'ул. Спортивная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (25, N'ул. Степная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (26, N'ул. Фрунзе')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (27, N'ул. Цветочная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (28, N'ул. Чехова')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (29, N'ул. Школьная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (30, N'ул. Шоссейная')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[Town] ON 

INSERT [dbo].[Town] ([id], [NameTown]) VALUES (1, N'г. Нефтеюганск')
SET IDENTITY_INSERT [dbo].[Town] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeProd] ON 

INSERT [dbo].[TypeProd] ([id], [NameType]) VALUES (1, N'Игрушка')
INSERT [dbo].[TypeProd] ([id], [NameType]) VALUES (2, N'Клетка')
INSERT [dbo].[TypeProd] ([id], [NameType]) VALUES (3, N'Лакомство')
INSERT [dbo].[TypeProd] ([id], [NameType]) VALUES (4, N'Лежак')
INSERT [dbo].[TypeProd] ([id], [NameType]) VALUES (5, N'Миска')
INSERT [dbo].[TypeProd] ([id], [NameType]) VALUES (6, N'Мячик')
INSERT [dbo].[TypeProd] ([id], [NameType]) VALUES (7, N'Сухой корм')
INSERT [dbo].[TypeProd] ([id], [NameType]) VALUES (8, N'Щетка-варежка')
SET IDENTITY_INSERT [dbo].[TypeProd] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [RoleId], [FIO], [Login], [Password]) VALUES (1, 1, N'Суслов Илья Арсентьевич', N'pixil59@gmail.com', N'2L6KZG')
INSERT [dbo].[user] ([id], [RoleId], [FIO], [Login], [Password]) VALUES (2, 2, N'Волкова Эмилия Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ')
INSERT [dbo].[user] ([id], [RoleId], [FIO], [Login], [Password]) VALUES (3, 3, N'Денисов Михаил Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR')
INSERT [dbo].[user] ([id], [RoleId], [FIO], [Login], [Password]) VALUES (4, 1, N'Игнатьева Алина Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp')
INSERT [dbo].[user] ([id], [RoleId], [FIO], [Login], [Password]) VALUES (5, 3, N'Соловьев Ярослав Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9')
INSERT [dbo].[user] ([id], [RoleId], [FIO], [Login], [Password]) VALUES (6, 3, N'Тимофеев Михаил Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv')
INSERT [dbo].[user] ([id], [RoleId], [FIO], [Login], [Password]) VALUES (7, 2, N'Филимонов Роберт Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos')
INSERT [dbo].[user] ([id], [RoleId], [FIO], [Login], [Password]) VALUES (8, 2, N'Чистякова Виктория Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr')
INSERT [dbo].[user] ([id], [RoleId], [FIO], [Login], [Password]) VALUES (9, 2, N'Шилова Майя Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT')
INSERT [dbo].[user] ([id], [RoleId], [FIO], [Login], [Password]) VALUES (10, 1, N'Яковлева Ярослава Даниэльевна', N'deummecillummu-4992@mail.ru', N'uzWC67')
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_PVZ1] FOREIGN KEY([PvzId])
REFERENCES [dbo].[PVZ] ([id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_PVZ1]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_status1] FOREIGN KEY([StatusId])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_status1]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_user1] FOREIGN KEY([clientId])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_user1]
GO
ALTER TABLE [dbo].[orderCount]  WITH CHECK ADD  CONSTRAINT [FK_orderCount_order] FOREIGN KEY([orderId])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[orderCount] CHECK CONSTRAINT [FK_orderCount_order]
GO
ALTER TABLE [dbo].[orderCount]  WITH CHECK ADD  CONSTRAINT [FK_orderCount_Product] FOREIGN KEY([articulId])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[orderCount] CHECK CONSTRAINT [FK_orderCount_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_KatProd] FOREIGN KEY([KatProdId])
REFERENCES [dbo].[KatProd] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_KatProd]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([manufacID])
REFERENCES [dbo].[Manufacturer] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Post] FOREIGN KEY([SuppId])
REFERENCES [dbo].[Post] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Post]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_TypeProd] FOREIGN KEY([KatProdId])
REFERENCES [dbo].[TypeProd] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_TypeProd]
GO
ALTER TABLE [dbo].[PVZ]  WITH CHECK ADD  CONSTRAINT [FK_PVZ_Index] FOREIGN KEY([indexId])
REFERENCES [dbo].[Index] ([id])
GO
ALTER TABLE [dbo].[PVZ] CHECK CONSTRAINT [FK_PVZ_Index]
GO
ALTER TABLE [dbo].[PVZ]  WITH CHECK ADD  CONSTRAINT [FK_PVZ_Street] FOREIGN KEY([StreetID])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[PVZ] CHECK CONSTRAINT [FK_PVZ_Street]
GO
ALTER TABLE [dbo].[PVZ]  WITH CHECK ADD  CONSTRAINT [FK_PVZ_Town] FOREIGN KEY([TownId])
REFERENCES [dbo].[Town] ([id])
GO
ALTER TABLE [dbo].[PVZ] CHECK CONSTRAINT [FK_PVZ_Town]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_role]
GO
USE [master]
GO
ALTER DATABASE [trade] SET  READ_WRITE 
GO
