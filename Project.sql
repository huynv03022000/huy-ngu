USE [master]
GO
/****** Object:  Database [WebBanhang]    Script Date: 3/30/2021 7:03:02 PM ******/
CREATE DATABASE [WebBanhang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebBanhang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WebBanhang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebBanhang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WebBanhang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WebBanhang] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebBanhang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebBanhang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebBanhang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebBanhang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebBanhang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebBanhang] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebBanhang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebBanhang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebBanhang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebBanhang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebBanhang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebBanhang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebBanhang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebBanhang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebBanhang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebBanhang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebBanhang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebBanhang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebBanhang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebBanhang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebBanhang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebBanhang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebBanhang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebBanhang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebBanhang] SET  MULTI_USER 
GO
ALTER DATABASE [WebBanhang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebBanhang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebBanhang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebBanhang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebBanhang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebBanhang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WebBanhang] SET QUERY_STORE = OFF
GO
USE [WebBanhang]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 3/30/2021 7:03:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[username] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AoDong]    Script Date: 3/30/2021 7:03:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AoDong](
	[ID] [varchar](6) NOT NULL,
	[name] [nvarchar](30) NULL,
	[image] [nvarchar](30) NULL,
	[price] [float] NULL,
	[color] [nvarchar](30) NULL,
	[size] [nvarchar](5) NULL,
	[describe] [nvarchar](50) NULL,
	[status] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aoHe]    Script Date: 3/30/2021 7:03:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aoHe](
	[ID] [varchar](6) NOT NULL,
	[name] [nvarchar](30) NULL,
	[image] [nvarchar](30) NULL,
	[price] [float] NULL,
	[color] [nvarchar](30) NULL,
	[size] [nvarchar](5) NULL,
	[describe] [nvarchar](50) NULL,
	[status] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 3/30/2021 7:03:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pid] [nvarchar](6) NULL,
	[size] [nvarchar](5) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[numberPhone] [int] NULL,
	[address] [nvarchar](250) NULL,
	[username] [nvarchar](50) NULL,
	[dateBuy] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/30/2021 7:03:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pid] [nvarchar](6) NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
	[size] [nchar](10) NULL,
	[img] [nvarchar](50) NULL,
	[date] [nvarchar](50) NULL,
	[buy] [bit] NULL,
	[username] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/30/2021 7:03:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[fullname] [nvarchar](255) NULL,
	[username] [nvarchar](255) NOT NULL,
	[email] [varchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[repassword] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dongHo]    Script Date: 3/30/2021 7:03:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dongHo](
	[id] [nvarchar](6) NOT NULL,
	[name] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL,
	[price] [float] NULL,
	[color] [nvarchar](30) NULL,
	[size] [nchar](10) NULL,
	[describe] [nvarchar](50) NULL,
	[status] [nvarchar](255) NULL,
 CONSTRAINT [PK_dongHo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/30/2021 7:03:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pid] [nvarchar](6) NULL,
	[size] [nvarchar](5) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[numberPhone] [int] NULL,
	[address] [nvarchar](250) NULL,
	[username] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quanAu]    Script Date: 3/30/2021 7:03:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quanAu](
	[ID] [varchar](6) NOT NULL,
	[name] [nvarchar](30) NULL,
	[image] [nvarchar](30) NULL,
	[price] [float] NULL,
	[color] [nvarchar](30) NULL,
	[size] [nvarchar](5) NULL,
	[describe] [nvarchar](50) NULL,
	[status] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quanBo]    Script Date: 3/30/2021 7:03:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quanBo](
	[ID] [varchar](6) NOT NULL,
	[name] [nvarchar](30) NULL,
	[image] [nvarchar](30) NULL,
	[price] [float] NULL,
	[color] [nvarchar](30) NULL,
	[size] [nvarchar](5) NULL,
	[describe] [nvarchar](50) NULL,
	[status] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[soMi]    Script Date: 3/30/2021 7:03:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[soMi](
	[id] [varchar](6) NOT NULL,
	[name] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL,
	[price] [float] NULL,
	[color] [nvarchar](30) NULL,
	[size] [nchar](10) NULL,
	[describe] [nvarchar](50) NULL,
	[status] [nchar](40) NULL,
 CONSTRAINT [PK_soMi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([username], [password]) VALUES (N'anh', N'123')
GO
INSERT [dbo].[Admin] ([username], [password]) VALUES (N'huy', N'123')
GO
INSERT [dbo].[Admin] ([username], [password]) VALUES (N'van', N'123')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h10', N'Áo Phông', N'img/ao/h10.jpg', 300000, N'trắng,vàng xanh', N'đủ', N'chất đẹp', N'còn hàng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h11', N'Phông có cổ ', N'img/ao/h11.jpg', 300002, N'hồng', N'đủ', N'chất ok', N'còn hàng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h12', N'ao phÃ´ng Äáº¹p', N'img/ao/h12.jpg', 1400000, N'xanh Äá»', N'Äá»§', N'hÃ ng Äáº¹p', N'CÃ²n HÃ ng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h2', N'Áo Phông', N'img/ao/h2.jpg', 230000, N'trắng', N'đủ', N'rất đẹp', N'Còn Hàng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h3', N' Áo Phông', N'img/ao/h3.jpg', 230000, N' đủ  ', N'trắng', N'', N'H?t Hàng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h4', N'Áo Phông', N'img/ao/h4.jpg', 230000, N'trắng', N'đủ ', N'rất đẹp', N'Còn Hàng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h5', N'Áo Phông', N'img/ao/h5.jpg', 230000, N'trắng', N'đủ ', N'rất đẹp', N'H?t Hàng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h6', N'Áo Phông', N'img/ao/h6.jpg', 230000, N'trắng', N'đủ ', N'rất đẹp', N'H?t Hàng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h7', N'Áo Phông', N'img/ao/h7.jpg', 230000, N'trắng', N'đủ ', N'rất đẹp', N'h?t hàng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h8', N'Áo Phông', N'img/ao/h8.jpg', 230000, N'trắng', N'đủ ', N'rất đẹp', N'còn hàng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h9', N'Áo Phông', N'img/ao/h9.jpg', 230000, N'trắng', N'đủ ', N'rất đẹp', NULL)
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 
GO
INSERT [dbo].[Bill] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username], [dateBuy]) VALUES (1, NULL, N's', 14000000, 1, 943189438, N' háº¡ Má» -Äan PhÆ°á»£ng', N'huynv', CAST(N'2021-03-11' AS Date))
GO
INSERT [dbo].[Bill] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username], [dateBuy]) VALUES (2, N'', N's', 320000, 1, 987654321, N'12 - háº¡ má»', N'huynv', CAST(N'2021-03-11' AS Date))
GO
INSERT [dbo].[Bill] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username], [dateBuy]) VALUES (3, N'sm3', N'm', 320000, 2, 365642632, N'LiÃªn Trung -Äan PhÆ°á»£ng', N'huynv', CAST(N'2021-03-11' AS Date))
GO
INSERT [dbo].[Bill] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username], [dateBuy]) VALUES (4, N'qb3', N's', 200000, 1, 123456677, N'ha noi', N'anh', CAST(N'2021-03-12' AS Date))
GO
INSERT [dbo].[Bill] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username], [dateBuy]) VALUES (5, NULL, N'xl', 2222222, 2, 987654321, N'nam dinh', N'huy', CAST(N'2021-03-12' AS Date))
GO
INSERT [dbo].[Bill] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username], [dateBuy]) VALUES (6, N'qb2', N'm', 300000, 2, 987654321, N' hạ Mỗ -Đan Phượng', N'huynv', CAST(N'2021-03-12' AS Date))
GO
INSERT [dbo].[Bill] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username], [dateBuy]) VALUES (7, N'sm3', N's', 320000, 1, 943189438, N' hạ Mỗ -Đan Phượng', N'huynv', CAST(N'2021-03-12' AS Date))
GO
INSERT [dbo].[Bill] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username], [dateBuy]) VALUES (8, N'h11', N'n', 300002, 2, 12345678, N' hạ Mỗ -Đan Phượng', N'huynv', CAST(N'2021-03-12' AS Date))
GO
INSERT [dbo].[Bill] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username], [dateBuy]) VALUES (9, N'sm11', N'm', 14000000, 4, 123, N' hạ Mỗ -Đan Phượng', N'huynv', CAST(N'2021-03-15' AS Date))
GO
INSERT [dbo].[Bill] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username], [dateBuy]) VALUES (10, N'sm11', N's', 14000000, 121, 123, N' hạ Mỗ -Đan Phượng', N'', CAST(N'2021-03-16' AS Date))
GO
INSERT [dbo].[Bill] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username], [dateBuy]) VALUES (11, N'h3', N'm', 230000, 1, 12345667, N'Liên Trung -Đan Phượng', N'huynv', CAST(N'2021-03-22' AS Date))
GO
INSERT [dbo].[Bill] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username], [dateBuy]) VALUES (12, N'h4', N'm', 230000, 1, 12345667, N' hạ Mỗ -Đan Phượng', N'huynv', CAST(N'2021-03-22' AS Date))
GO
INSERT [dbo].[Bill] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username], [dateBuy]) VALUES (13, N'sm1', N'm', 320000, 1, 12345667, N' hạ Mỗ -Đan Phượng', N'huynv', CAST(N'2021-03-23' AS Date))
GO
INSERT [dbo].[Bill] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username], [dateBuy]) VALUES (14, N'h11', N'm', 300002, 1, 12345667, N' hạ Mỗ -Đan Phượng', N'huynv', CAST(N'2021-03-23' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (1, N'sm11', 14000000, 2, N's         ', N'img/ao/sm11.jpg', N'03-17-2021', 0, N'huynv')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (10, N'h11', 600004, 2, N'm         ', N'img/ao/h11.jpg', N'03-18-2021', 0, N'anh')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (3, N'qb2', 300000, 1, N's         ', N'img/quan/qb2.jpg', N'03-17-2021', 0, N'anh')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (11, N'sm11', 28000000, 2, N's         ', N'img/ao/sm11.jpg', N'03-18-2021', 0, N'anh')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (13, N'sm11', 14000000, 1, N's         ', N'img/ao/sm11.jpg', N'03-19-2021', 0, N'huynv')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (14, N'sm3', 640000, 2, N's         ', N'img/ao/sm3.jpg', N'03-19-2021', 0, N'huynv')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (15, N'h11', 300002, 1, N's         ', N'img/ao/h11.jpg', N'03-19-2021', 0, N'huynv')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (16, N'sm1', 320000, 1, N's         ', N'img/ao/sm1.jpg', N'03-22-2021', 0, N'huynv')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (19, N'h11', 300002, 1, N's         ', N'img/ao/h11.jpg', N'03-22-2021', 0, N'huynv')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (20, N'h11', 300002, 1, N's         ', N'img/ao/h11.jpg', N'03-22-2021', 0, N'huynv')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (26, N'h12', 1400000, 1, N's         ', N'img/ao/h12.jpg', N'03-22-2021', 0, N'huynv')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (25, N'qb6', 300000, 1, N's         ', N'img/quan/qb6.jpg', N'03-22-2021', 0, N'huynv')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (27, N'sm2', 640000, 2, N's         ', N'img/ao/sm2.jpg', N'03-22-2021', 0, N'huynv')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (28, N'h2', 230000, 1, N's         ', N'img/ao/h2.jpg', N'03-22-2021', 0, N'huynv')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (29, N'sm1', 320000, 1, N's         ', N'img/ao/sm1.jpg', N'03-23-2021', 0, N'huynv')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (5, N'h11', 300002, 1, N's         ', N'img/ao/h11.jpg', N'03-17-2021', 0, N'anh')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (17, N'sm12', 2000000, 1, N's         ', N'img/ao/sm12.jpg', N'03-22-2021', 0, N'huynv')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (6, N'h11', 300002, 1, N's         ', N'img/ao/h11.jpg', N'03-17-2021', 0, N'anh')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (7, N'h10', 300000, 1, N's         ', N'img/ao/h10.jpg', N'03-17-2021', 0, N'anh')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (18, N'h11', 300002, 1, N's         ', N'img/ao/h11.jpg', N'03-22-2021', 0, N'huynv')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (21, N'sm5', 320000, 1, N's         ', N'img/ao/sm5.jpg', N'03-22-2021', 0, N'huynv')
GO
INSERT [dbo].[Cart] ([id], [pid], [price], [quantity], [size], [img], [date], [buy], [username]) VALUES (23, N'h11', 300002, 1, N's         ', N'img/ao/h11.jpg', N'03-22-2021', 0, N'huynv')
GO
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
INSERT [dbo].[Customer] ([fullname], [username], [email], [password], [repassword]) VALUES (N'nguyá»
n vÄn huy', N'123', N'huynvhe141080@fpt.edu.vn', N'123', N'123')
GO
INSERT [dbo].[Customer] ([fullname], [username], [email], [password], [repassword]) VALUES (N'nguyễn thị ngọc ánh', N'anh', N'anhntn', N'16082000', N'16082000')
GO
INSERT [dbo].[Customer] ([fullname], [username], [email], [password], [repassword]) VALUES (N'nguyễn van huy', N'huynv', N'huy465773@gmail.com', N'123', N'03022000')
GO
INSERT [dbo].[Customer] ([fullname], [username], [email], [password], [repassword]) VALUES (N'nguyá»
n vÄn huy', N'huynvhe', N'huynvhe141080@fpt.edu.vn', N'123', N'123')
GO
INSERT [dbo].[Customer] ([fullname], [username], [email], [password], [repassword]) VALUES (N'quang', N'quang123', N'quangdn@fpt.edu.vn', N'123', N'123')
GO
INSERT [dbo].[Customer] ([fullname], [username], [email], [password], [repassword]) VALUES (N'nguyá»
n vÄn huy', N'sa', N'huynvhe141080@fpt.edu.vn', N'123', N'123')
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh1', N'Đồng Hồ Hublot', N'/img/Phukien/dh1.jpg', 1200000, N'Vàng Trắng', NULL, N'Hàng Việt Nam Chất Lượng Cao', NULL)
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh2', N'Đồng Hồ Hublot', N'/img/Phukien/dh2.jpg', 1200000, N'Vàng Trắng', NULL, N'Hàng Việt Nam Chất Lượng Cao', NULL)
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh3', N'Đồng Hồ Hublot', N'/img/Phukien/dh3.jpg', 1200000, N'Vàng Trắng', NULL, N'Hàng Việt Nam Chất Lượng Cao', NULL)
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh4', N'Đồng Hồ Hublot', N'/img/Phukien/dh4.jpg', 1200000, N'Vàng Trắng', NULL, N'Hàng Việt Nam Chất Lượng Cao', NULL)
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh5', N'Đồng Hồ Hublot', N'/img/Phukien/dh5.jpg', 1200000, N'Vàng Trắng', NULL, N'Hàng Việt Nam Chất Lượng Cao', NULL)
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh6', N'Đồng Hồ Hublot', N'/img/Phukien/dh6.jpg', 1200000, N'Vàng Trắng', NULL, N'Hàng Việt Nam Chất Lượng Cao', NULL)
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh7', N'Đồng Hồ Hublot', N'/img/Phukien/dh7.jpg', 1200000, N'Vàng Trắng', NULL, N'Hàng Việt Nam Chất Lượng Cao', NULL)
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh8', N'Đồng Hồ Hublot', N'/img/Phukien/dh8.jpg', 1200000, N'Vàng Trắng', NULL, N'Hàng Việt Nam Chất Lượng Cao', NULL)
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username]) VALUES (5, N'sm11', N's', 14000000, 2, 123456789, NULL, N'huynvhe')
GO
INSERT [dbo].[Order] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username]) VALUES (6, N'qb2', N'm', 300000, 2, 987654321, NULL, N'huynv')
GO
INSERT [dbo].[Order] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username]) VALUES (7, N'sm3', N's', 320000, 1, 943189438, N' hạ Mỗ -Đan Phượng', N'huynv')
GO
INSERT [dbo].[Order] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username]) VALUES (8, N'h11', N'n', 300002, 2, 12345678, N' hạ Mỗ -Đan Phượng', N'huynv')
GO
INSERT [dbo].[Order] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username]) VALUES (9, N'sm11', N'm', 14000000, 4, 123, N' hạ Mỗ -Đan Phượng', N'huynv')
GO
INSERT [dbo].[Order] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username]) VALUES (11, N'h3', N'm', 230000, 1, 12345667, N'Liên Trung -Đan Phượng', N'huynv')
GO
INSERT [dbo].[Order] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username]) VALUES (13, N'sm1', N'm', 320000, 1, 12345667, N' hạ Mỗ -Đan Phượng', N'huynv')
GO
INSERT [dbo].[Order] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username]) VALUES (14, N'h11', N'm', 300002, 1, 12345667, N' hạ Mỗ -Đan Phượng', N'huynv')
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa1', N'Quần Âu Nam', N'img/quan/qa1.jpg', 400000, N'Xanh Đen ', N'27-35', N'Quần Âu dáng đẹp', NULL)
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa2', N'Quần Âu Nam', N'img/quan/qa2.jpg', 400000, N'Xanh Đen ', N'27-35', N'Quần Âu dáng đẹp', NULL)
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa3', N'Quần Âu Nam', N'img/quan/qa3.jpg', 400000, N'Xanh Đen ', N'27-35', N'Quần Âu dáng đẹp', NULL)
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa4', N'Quần Âu Nam', N'img/quan/qa4.jpg', 400000, N'Xanh Đen ', N'27-35', N'Quần Âu dáng đẹp', NULL)
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa5', N'Quần Âu Nam', N'img/quan/qa5.jpg', 400000, N'Xanh Đen ', N'27-35', N'Quần Âu dáng đẹp', NULL)
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa6', N'Quần Âu Nam', N'img/quan/qa6.jpg', 400000, N'Xanh Đen ', N'27-35', N'Quần Âu dáng đẹp', NULL)
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa7', N'Quần Âu Nam', N'img/quan/qa7.jpg', 400000, N'Xanh Đen ', N'27-35', N'Quần Âu dáng đẹp', NULL)
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa8', N'Quần Âu Nam', N'img/quan/qa8.jpg', 400000, N'Xanh Đen ', N'27-35', NULL, NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb1', N'Quần Bò Nam ', N'img/quan/qb1.jpg', 300000, N'Xanh Đen ', N'Đủ', N'Quần Bò rách gối phong cách ', NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb2', N'Quần Bò Nam ', N'img/quan/qb2.jpg', 300000, N'Xanh Đen ', N'28-34', N'Quần Bò rách gối phong cách ', NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb3', N'Quần Bò Nam ', N'img/quan/qb3.jpg', 300000, N'Xanh Đen ', N'28-34', N'Quần Bò rách gối phong cách ', NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb4', N'Quần Bò Nam ', N'img/quan/qb4.jpg', 300000, N'Xanh Đen ', N'28-34', N'Quần Bò rách gối phong cách ', NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb5', N'Quần Bò Nam ', N'img/quan/qb5.jpg', 300000, N'Xanh Đen ', N'28-34', N'Quần Bò rách gối phong cách ', NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb6', N'Quần Bò Nam ', N'img/quan/qb6.jpg', 300000, N'Xanh Đen ', N'28-34', N'Quần Bò rách gối phong cách ', NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb7', N'Quần Bò Nam ', N'img/quan/qb7.jpg', 300000, N'Xanh Đen ', N'28-34', N'Quần Bò rách gối phong cách ', NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb8', N'Quần Bò Nam ', N'img/quan/qb8.jpg', 300000, N'Trắng', N'28-30', N'Quần Bò rách gối phong cách ', NULL)
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm1', N'Sơ mi burberry', N'img/ao/sm1.jpg', 320000, N'đỏ', N'xl        ', N'mặc thoải mái', N'còn hàng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm11', N'so mi', N'img/ao/sm11.jpg', 14000000, N'xanh Äo', N'xl        ', N'good', N's                                       ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm12', N'so mi', N'img/ao/sm12.jpg', 2000000, N'đủ', N'xanh đỏ   ', N'dep', N'Còn Hàng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm13', N'sơ mi đẹp ', N'img/ao/sm13.jpg', 3000000, N'đủ', N'Xanh      ', N'dep', N'Còn Hàng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm15', N'sơ mi đẹp ', N'img/ao/sm15.jpg', 14000000, N'đủ', N'xanh đỏ   ', N'đẹp vl', N'Còn Hàng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm19', N'  sơ mi đẹp ', N'img/ao/sm19.jpg', 140000011, N' đủ       ', N' xanh đỏ  ', N'', N'Còn Hàng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm2', N'Sơ mi burberry', N'img/ao/sm2.jpg', 320000, N'trắng', N's         ', N'mặc thoải mái', N'còn hàng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm3', N'Sơ mi burberry', N'img/ao/sm3.jpg', 320000, N'đỏ', N'm         ', N'mặc thoải mái', N'còn hàng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm4', N'Sơ mi burberry', N'img/ao/sm4.jpg', 320000, N'trắng', N'đủ        ', N'mặc thoải mái', N'hết hàng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm5', N'Sơ mi burberry', N'img/ao/sm5.jpg', 320000, N'đỏ', N'đủ        ', N'mặc thoải mái', N'hết hàng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm6', N'Sơ mi burberry', N'img/ao/sm6.jpg', 320000, N'trắng', N'xl        ', N'mặc thoải mái', N'còn hàng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm7', N'Sơ mi burberry', N'img/ao/sm7.jpg', 320000, N'trắng', N'l         ', N'mặc thoải mái', N'hết hàng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm8', N'sơ mi ', N'img/ao/sm8.jpg', 200000, N'xanh', N'đ         ', N'mặc thoải mái', N'còn hàng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm91', N'SQL1234', N'img/ao/sm20.jpg', 2300111, N'đủ', N'xanh đỏ   ', N'111', N'Còn Hàng                                ')
GO
USE [master]
GO
ALTER DATABASE [WebBanhang] SET  READ_WRITE 
GO
