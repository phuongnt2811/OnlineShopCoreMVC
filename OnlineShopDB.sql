USE [master]
GO
/****** Object:  Database [OnlineShopDB]    Script Date: 9/23/2022 10:09:30 AM ******/
CREATE DATABASE [OnlineShopDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineShopDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\OnlineShopDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OnlineShopDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\OnlineShopDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OnlineShopDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineShopDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OnlineShopDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OnlineShopDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OnlineShopDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OnlineShopDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OnlineShopDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [OnlineShopDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [OnlineShopDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnlineShopDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnlineShopDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnlineShopDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OnlineShopDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OnlineShopDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnlineShopDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OnlineShopDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnlineShopDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [OnlineShopDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnlineShopDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnlineShopDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnlineShopDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnlineShopDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnlineShopDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [OnlineShopDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnlineShopDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OnlineShopDB] SET  MULTI_USER 
GO
ALTER DATABASE [OnlineShopDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnlineShopDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnlineShopDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnlineShopDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OnlineShopDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OnlineShopDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OnlineShopDB] SET QUERY_STORE = OFF
GO
USE [OnlineShopDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blogs]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blogs](
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[blog_title] [nvarchar](max) NOT NULL,
	[blog_author] [nvarchar](max) NOT NULL,
	[blog_createdate] [datetime2](7) NOT NULL,
	[blog_createBy] [nvarchar](max) NULL,
	[blog_modifydate] [datetime2](7) NULL,
	[blog_modifyby] [nvarchar](max) NOT NULL,
	[blog_backlink] [nvarchar](max) NOT NULL,
	[blog_image] [nvarchar](max) NOT NULL,
	[blog_detail] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_blogs] PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](max) NOT NULL,
	[category_description] [nvarchar](max) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[colors]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[colors](
	[color_id] [int] IDENTITY(1,1) NOT NULL,
	[color_name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_colors] PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderDetails]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderDetails](
	[orderId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[product_quantity] [int] NOT NULL,
	[product_total_money] [real] NOT NULL,
 CONSTRAINT [PK_orderDetails] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC,
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[order_status_id] [int] NOT NULL,
	[order_created_date] [datetime2](7) NOT NULL,
	[total_money] [real] NOT NULL,
	[ship_id] [int] NOT NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderStatuses]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderStatuses](
	[order_status_id] [int] IDENTITY(1,1) NOT NULL,
	[order_status_details] [nvarchar](max) NULL,
 CONSTRAINT [PK_orderStatuses] PRIMARY KEY CLUSTERED 
(
	[order_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productColors]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productColors](
	[ProductId] [int] NOT NULL,
	[colorId] [int] NOT NULL,
	[product_quantity] [int] NOT NULL,
 CONSTRAINT [PK_productColors] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[colorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](100) NOT NULL,
	[product_price] [real] NOT NULL,
	[product_description] [nvarchar](1000) NULL,
	[product_quantity] [int] NOT NULL,
	[product_image] [nvarchar](max) NOT NULL,
	[category_id] [int] NOT NULL,
	[product_status_id] [int] NOT NULL,
	[product_backlink] [nvarchar](max) NULL,
	[product_selldate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productSizes]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productSizes](
	[ProductId] [int] NOT NULL,
	[sizeId] [int] NOT NULL,
	[product_quantity] [int] NOT NULL,
 CONSTRAINT [PK_productSizes] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[sizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productsStatus]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productsStatus](
	[product_status_id] [int] IDENTITY(1,1) NOT NULL,
	[product_status_name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_productsStatus] PRIMARY KEY CLUSTERED 
(
	[product_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](max) NOT NULL,
	[role_description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ships]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ships](
	[ship_id] [int] IDENTITY(1,1) NOT NULL,
	[ship_name] [nvarchar](max) NOT NULL,
	[ship_email] [nvarchar](max) NOT NULL,
	[ship_phone] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ships] PRIMARY KEY CLUSTERED 
(
	[ship_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sizes]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sizes](
	[size_id] [int] IDENTITY(1,1) NOT NULL,
	[size_name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_sizes] PRIMARY KEY CLUSTERED 
(
	[size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slides]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slides](
	[slide_id] [int] IDENTITY(1,1) NOT NULL,
	[slide_title] [nvarchar](max) NOT NULL,
	[slide_createdate] [datetime2](7) NOT NULL,
	[slide_createBy] [nvarchar](max) NOT NULL,
	[silde_modifydate] [datetime2](7) NULL,
	[slide_modifyby] [nvarchar](max) NULL,
	[slide_image] [nvarchar](max) NOT NULL,
	[slide_description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_slides] PRIMARY KEY CLUSTERED 
(
	[slide_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 9/23/2022 10:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](100) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[fullname] [nvarchar](max) NOT NULL,
	[user_gender] [bit] NOT NULL,
	[user_email] [nvarchar](50) NOT NULL,
	[user_phone] [nvarchar](10) NOT NULL,
	[user_address] [nvarchar](max) NOT NULL,
	[user_role_id] [int] NOT NULL,
	[user_image] [nvarchar](max) NULL,
	[user_dob] [datetime2](7) NULL,
	[user_createdate] [datetime2](7) NOT NULL,
	[user_isactive] [bit] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220915105033_CreateInitial', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220916103316_updateV2', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220919042832_updateV3', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220919044609_updatev4', N'6.0.9')
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([category_id], [category_name], [category_description]) VALUES (1, N'NIKE', N'Đây là một trong những hãng giày thể thao số 1 toàn cầu tin dùng bởi cầu thủ thể thao nổi tiếng như Ronaldo, Tiger Woods, Neymar…')
INSERT [dbo].[categories] ([category_id], [category_name], [category_description]) VALUES (2, N'ADIDAS', N'Adidas – Ông trùm trong ngành giày thể thao. Adidas là thương hiệu được nhiều người sử dụng nhất hiện nay.')
INSERT [dbo].[categories] ([category_id], [category_name], [category_description]) VALUES (3, N'VANS', N'Nhắc đến các hãng giày sneaker nổi tiếng, chúng ta không thể bỏ qua thương hiệu giày Vans đình đám gây sốt giới trẻ. Tương tự Adidas và Nike, Vans cũng thuộc hãng giày nổi tiếng trong ngành thời trang thể thao.')
INSERT [dbo].[categories] ([category_id], [category_name], [category_description]) VALUES (4, N'BALENCIAGA', N'Balenciaga là một hãng giày nổi tiếng mang thương hiệu độc đáo và khác biệt. Khởi đầu của Balenciaga không phải xuất phát từ dòng sneaker nên việc phát triển dường như không được suôn sẻ cho lắm.')
INSERT [dbo].[categories] ([category_id], [category_name], [category_description]) VALUES (5, N'CONVERSE', N'Theo khảo sát, hơn 70% giới trẻ Châu u đều sở hữu cho mình ít nhất một đôi Converse trong tủ. Điều này chứng tỏ sức hút mạnh mẽ của dòng sneaker truyền thống này.')
INSERT [dbo].[categories] ([category_id], [category_name], [category_description]) VALUES (6, N'NEW BALANCE', N' Thương hiệu giày New Balance rất được yêu thích tại các quốc gia Châu Á như Hàn Quốc, Nhật Bản, Việt Nam…')
INSERT [dbo].[categories] ([category_id], [category_name], [category_description]) VALUES (7, N'REEBOK', N'Reebok – hãng sneaker lâu đời nhất tại Anh Quốc. Dòng thể thao số 1 này thuộc công ty con của thương hiệu Adidas. Chính về thế, chất lượng của đôi giày mà Reebok mang lại là điều không thể bàn cãi.')
INSERT [dbo].[categories] ([category_id], [category_name], [category_description]) VALUES (8, N'PUMA', N'Puma là một hãng giày nổi tiếng lâu đời có nguồn gốc tại Đức, với logo hình con báo săn mang dấu ấn đặc biệt. Từ xưa, Puma được biết đến rộng rãi qua sự lăng xê bởi những cái tên cầu thủ bóng đá như: Diego Maradona, Sergio, Francescoli…')
INSERT [dbo].[categories] ([category_id], [category_name], [category_description]) VALUES (9, N'ASICS', N'Thương hiệu giày thể thao Nhật Bản xếp hàng đầu thế giới thuộc về Asics. Đây là hãng giày nổi tiếng mang một nét văn hóa đặc trưng lâu đời của đất nước hoa anh đào Nhật Bản. Không chỉ dừng lại ở những đôi giày mà Asics cũng sản xuất nhiều loại mặt hàng khác như cầu vợt, bóng tennis, điền kinh…')
INSERT [dbo].[categories] ([category_id], [category_name], [category_description]) VALUES (10, N'SUPREME', N'Là một trong các thương hiệu giày nổi tiếng xa xỉ, Supreme thuộc top những đôi giày đắt đỏ nhất thế giới. Vì thế khách hàng của họ đa phần là người có điều kiện khá giả và chịu chi số tiền lớn lên tới triệu đô.')
INSERT [dbo].[categories] ([category_id], [category_name], [category_description]) VALUES (11, N'VALENTINO', N'Nhắc đến thương hiệu giày nữ nổi tiếng không thể bỏ qua được hãng Valentino đình đám. Được xuất xứ từ Ý, phong cách của Valentino mang lại là một nét thanh lịch cổ điển tập trung vào những đôi cao gót tôn lên vẻ đẹp của người phụ nữ.')
INSERT [dbo].[categories] ([category_id], [category_name], [category_description]) VALUES (12, N'ALEXANDER MCQUEEN', N'Alexander McQueen – hãng giày nổi tiếng của Anh Quốc là thương hiệu giày có mặt tiếp theo trong danh sách này. Sẽ là một thiếu sót nếu không nhắc đến Alexander McQueen, hãng giày thời trang thể hiện sự đẳng cấp thời thượng.')
INSERT [dbo].[categories] ([category_id], [category_name], [category_description]) VALUES (13, N'CHRISTIAN LOUBOUTIN', N'Christian Louboutin thuộc top các hãng giày nổi tiếng dành cho phái nữ. Nếu Valentino mang lại một nét hơi hướng cổ điển thì Christian Louboutin để lại ấn tượng sâu sắc bởi thiết kế mũi nhọn thanh lịch vô cùng hiện đại.')
INSERT [dbo].[categories] ([category_id], [category_name], [category_description]) VALUES (14, N'FILA', N'Fila là một thương hiệu vô cùng nổi tiếng trên toàn cầu phù hợp với mọi đối tượng. Hơn 90 năm hình thành và phát triển, Fila hiện nay đã trở thành thương hiệu giày hàng đầu nước Ý nói riêng và thế giới nói chung.')
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
SET IDENTITY_INSERT [dbo].[colors] ON 

INSERT [dbo].[colors] ([color_id], [color_name]) VALUES (1, N'Goldenrod')
INSERT [dbo].[colors] ([color_id], [color_name]) VALUES (2, N'Green')
INSERT [dbo].[colors] ([color_id], [color_name]) VALUES (3, N'Blue')
INSERT [dbo].[colors] ([color_id], [color_name]) VALUES (4, N'black')
INSERT [dbo].[colors] ([color_id], [color_name]) VALUES (5, N'Silence')
INSERT [dbo].[colors] ([color_id], [color_name]) VALUES (6, N'Maroon')
INSERT [dbo].[colors] ([color_id], [color_name]) VALUES (7, N'Red')
INSERT [dbo].[colors] ([color_id], [color_name]) VALUES (8, N'Puce')
INSERT [dbo].[colors] ([color_id], [color_name]) VALUES (9, N'Clear Salmon')
INSERT [dbo].[colors] ([color_id], [color_name]) VALUES (10, N'Navy Green')
INSERT [dbo].[colors] ([color_id], [color_name]) VALUES (11, N'Overcast')
INSERT [dbo].[colors] ([color_id], [color_name]) VALUES (12, N'Pearly Beige')
INSERT [dbo].[colors] ([color_id], [color_name]) VALUES (13, N'American Red')
INSERT [dbo].[colors] ([color_id], [color_name]) VALUES (14, N'Diamond Soft Blue')
INSERT [dbo].[colors] ([color_id], [color_name]) VALUES (15, N'Polar Blue')
SET IDENTITY_INSERT [dbo].[colors] OFF
GO
INSERT [dbo].[orderDetails] ([orderId], [productId], [product_quantity], [product_total_money]) VALUES (1, 10, 3, 8)
INSERT [dbo].[orderDetails] ([orderId], [productId], [product_quantity], [product_total_money]) VALUES (2, 6, 3, 6)
INSERT [dbo].[orderDetails] ([orderId], [productId], [product_quantity], [product_total_money]) VALUES (2, 7, 3, 500000)
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([order_id], [user_id], [order_status_id], [order_created_date], [total_money], [ship_id]) VALUES (1, 1, 4, CAST(N'2020-06-15T00:00:00.0000000' AS DateTime2), 5722, 7)
INSERT [dbo].[orders] ([order_id], [user_id], [order_status_id], [order_created_date], [total_money], [ship_id]) VALUES (2, 1, 2, CAST(N'2021-07-09T00:00:00.0000000' AS DateTime2), 8327, 3)
INSERT [dbo].[orders] ([order_id], [user_id], [order_status_id], [order_created_date], [total_money], [ship_id]) VALUES (3, 1, 1, CAST(N'2022-07-11T00:00:00.0000000' AS DateTime2), 150000, 3)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[orderStatuses] ON 

INSERT [dbo].[orderStatuses] ([order_status_id], [order_status_details]) VALUES (1, N'Chờ xác nhận')
INSERT [dbo].[orderStatuses] ([order_status_id], [order_status_details]) VALUES (2, N'Chờ lấy hàng')
INSERT [dbo].[orderStatuses] ([order_status_id], [order_status_details]) VALUES (3, N'Đang giao')
INSERT [dbo].[orderStatuses] ([order_status_id], [order_status_details]) VALUES (4, N'Đã giao hàng')
INSERT [dbo].[orderStatuses] ([order_status_id], [order_status_details]) VALUES (5, N'Hủy đơn hàng')
INSERT [dbo].[orderStatuses] ([order_status_id], [order_status_details]) VALUES (6, N'Ðơn hàng đang hoàn lại')
SET IDENTITY_INSERT [dbo].[orderStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (1, N'Adidas EQT Bask ADV', 1566666, N'Êm chân, chắc chắn, đàn hồi tốt và không quá cứng gây phồng rộp, chai chân khi mang lâu ngày', 100, N'Reebok Kung Fu Panda Pump Fury.jpg', 2, 1, N'posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit', CAST(N'2022-05-30T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (2, N'at vulputate ', 1, N'eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in', 1, N'adidas eqt bask adv.jpg', 1, 1, N'maecenas tristique est et tempus semper est quam pharetra magna ac consequat', CAST(N'2022-06-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (3, N'volutpat erat ', 3, N'tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque', 3, N'Adidas Stan Smith All Black.jpg', 3, 3, N'nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum', CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (4, N'lacus morbi quis', 4, N'non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu', 4, N'Adidas Superstar.jpg', 4, 4, N'aliquam non mauris morbi non lectus aliquam sit amet diam in magna', CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (5, N'sed accumsan felis ut at dolor quis odio consequat varius integer ac leo', 5, N'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id', 5, N'Converse 1970s Sunflower.jpg', 5, 1, N'ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis', CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (6, N'mi pede malesuada in imperdiet et commodo vulputate justo in blandit', 6, N'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus', 6, N'Converse Chuck Taylor All Star.jpg', 6, 2, N'justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut', CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (7, N'luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus', 7, N'nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor', 7, N'Converse Chuck Taylor II.jpg', 7, 3, N'turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci', CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (10, N'bus et magnis', 10, N'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam', 10, N'a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula', 10, 2, N'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer', CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (11, N'Adidas EQT Bask ADV', 150, N'Êm chân, chắc chắn, đàn hồi tốt và không quá cứng gây phồng rộp, chai chân khi mang lâu ngày', 100, N'https://giayxshop.vn/wp-content/uploads/2019/03/MG_6034.jpg', 1, 1, N'posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit', CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (12, N'at vulputate ', 1, N'eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in', 1, N'posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed', 1, 1, N'maecenas tristique est et tempus semper est quam pharetra magna ac consequat', CAST(N'2022-06-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (13, N'volutpat erat ', 3, N'tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque', 3, N'amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim', 3, 3, N'nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum', CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (14, N'lacus morbi quis', 4, N'non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu', 4, N'cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit', 4, 4, N'aliquam non mauris morbi non lectus aliquam sit amet diam in magna', CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (15, N'sed accumsan felis ut at dolor quis odio consequat varius integer ac leo', 5, N'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id', 5, N'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing', 5, 1, N'ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis', CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (16, N'mi pede malesuada in imperdiet et commodo vulputate justo in blandit', 6, N'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus', 6, N'mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit', 6, 2, N'justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut', CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (17, N'luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus', 7, N'nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor', 7, N'pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac', 7, 3, N'turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci', CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (18, N'nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', 8, N'integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at', 8, N'id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis', 8, 4, N'non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus', CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (19, N'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est', 9, N'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet', 9, N'mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus', 9, 1, N'pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget', CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (20, N'bus et magnis', 10, N'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam', 10, N'a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula', 10, 2, N'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer', CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (22, N'This is the best type I have', 55555556, N'1', 3, N'4', 3, 3, N'1', CAST(N'2022-10-01T21:57:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (23, N'Nike A1', 55555556, N'nike ', 5, N'Adidas Superstar.jpg', 3, 2, N'4', CAST(N'2022-09-21T23:32:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([product_id], [product_name], [product_price], [product_description], [product_quantity], [product_image], [category_id], [product_status_id], [product_backlink], [product_selldate]) VALUES (24, N'balenciaga', 55555556, N'1', 4, N'Adidas Stan Smith All Black.jpg', 8, 3, N'4', CAST(N'2022-09-29T11:02:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[products] OFF
GO
SET IDENTITY_INSERT [dbo].[productsStatus] ON 

INSERT [dbo].[productsStatus] ([product_status_id], [product_status_name]) VALUES (1, N'Còn hàng')
INSERT [dbo].[productsStatus] ([product_status_id], [product_status_name]) VALUES (2, N'Hết hàng')
INSERT [dbo].[productsStatus] ([product_status_id], [product_status_name]) VALUES (3, N'Hàng bán chạy')
INSERT [dbo].[productsStatus] ([product_status_id], [product_status_name]) VALUES (4, N'Đang sale')
INSERT [dbo].[productsStatus] ([product_status_id], [product_status_name]) VALUES (5, N'Nam')
INSERT [dbo].[productsStatus] ([product_status_id], [product_status_name]) VALUES (6, N'Nữ')
INSERT [dbo].[productsStatus] ([product_status_id], [product_status_name]) VALUES (7, N'Trẻ em')
INSERT [dbo].[productsStatus] ([product_status_id], [product_status_name]) VALUES (8, N'Hàng limmited')
SET IDENTITY_INSERT [dbo].[productsStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([role_id], [role_name], [role_description]) VALUES (1, N'Customer', N'Customer')
INSERT [dbo].[roles] ([role_id], [role_name], [role_description]) VALUES (2, N'Admin', N'Customer')
INSERT [dbo].[roles] ([role_id], [role_name], [role_description]) VALUES (3, N'Marketing', N'Customer')
INSERT [dbo].[roles] ([role_id], [role_name], [role_description]) VALUES (4, N'Sale', N'Customer')
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
SET IDENTITY_INSERT [dbo].[ships] ON 

INSERT [dbo].[ships] ([ship_id], [ship_name], [ship_email], [ship_phone]) VALUES (1, N'Jaxnation', N'kstraker0@comcast.net', N'9054056655')
INSERT [dbo].[ships] ([ship_id], [ship_name], [ship_email], [ship_phone]) VALUES (2, N'Mynte', N'mharpham1@webs.com', N'3752075938')
INSERT [dbo].[ships] ([ship_id], [ship_name], [ship_email], [ship_phone]) VALUES (3, N'Twitterworks', N'lcocci2@hhs.gov', N'6248005668')
INSERT [dbo].[ships] ([ship_id], [ship_name], [ship_email], [ship_phone]) VALUES (4, N'Latz', N'bscotchford3@spiegel.de', N'3541911923')
INSERT [dbo].[ships] ([ship_id], [ship_name], [ship_email], [ship_phone]) VALUES (5, N'Skiba', N'glafaye4@booking.com', N'1656485694')
INSERT [dbo].[ships] ([ship_id], [ship_name], [ship_email], [ship_phone]) VALUES (6, N'Innotype', N'gweins5@java.com', N'7358612208')
INSERT [dbo].[ships] ([ship_id], [ship_name], [ship_email], [ship_phone]) VALUES (7, N'Zazio', N'sdunlea6@woothemes.com', N'8454936794')
INSERT [dbo].[ships] ([ship_id], [ship_name], [ship_email], [ship_phone]) VALUES (8, N'Meemm', N'coldam7@youtube.com', N'4538716086')
INSERT [dbo].[ships] ([ship_id], [ship_name], [ship_email], [ship_phone]) VALUES (9, N'Skibox', N'wmagenny8@timesonline.co.uk', N'4001474364')
INSERT [dbo].[ships] ([ship_id], [ship_name], [ship_email], [ship_phone]) VALUES (10, N'Nlounge', N'ecage9@odnoklassniki.ru', N'1991594644')
SET IDENTITY_INSERT [dbo].[ships] OFF
GO
SET IDENTITY_INSERT [dbo].[sizes] ON 

INSERT [dbo].[sizes] ([size_id], [size_name]) VALUES (1, N'30')
INSERT [dbo].[sizes] ([size_id], [size_name]) VALUES (2, N'35')
INSERT [dbo].[sizes] ([size_id], [size_name]) VALUES (3, N'36')
INSERT [dbo].[sizes] ([size_id], [size_name]) VALUES (4, N'37')
INSERT [dbo].[sizes] ([size_id], [size_name]) VALUES (5, N'38')
INSERT [dbo].[sizes] ([size_id], [size_name]) VALUES (6, N'39')
INSERT [dbo].[sizes] ([size_id], [size_name]) VALUES (7, N'40')
INSERT [dbo].[sizes] ([size_id], [size_name]) VALUES (8, N'41')
INSERT [dbo].[sizes] ([size_id], [size_name]) VALUES (9, N'42')
INSERT [dbo].[sizes] ([size_id], [size_name]) VALUES (10, N'43')
INSERT [dbo].[sizes] ([size_id], [size_name]) VALUES (11, N'44')
INSERT [dbo].[sizes] ([size_id], [size_name]) VALUES (12, N'45')
SET IDENTITY_INSERT [dbo].[sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [username], [password], [fullname], [user_gender], [user_email], [user_phone], [user_address], [user_role_id], [user_image], [user_dob], [user_createdate], [user_isactive]) VALUES (1, N'Kieu', N'123456789', N'Nguyễn Kiều Tuấn Anh', 1, N'anhnkthe151369@fpt.edu.vn', N'0987582761', N'Sơn Tây', 1, NULL, NULL, CAST(N'2022-06-15T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[users] ([user_id], [username], [password], [fullname], [user_gender], [user_email], [user_phone], [user_address], [user_role_id], [user_image], [user_dob], [user_createdate], [user_isactive]) VALUES (2, N'KhanhVy', N'123789456', N'Trần Khánh Vy', 0, N'TranKhanhVy@gmai.com', N'013316464', N'Nghệ An', 2, NULL, NULL, CAST(N'2022-05-05T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[users] ([user_id], [username], [password], [fullname], [user_gender], [user_email], [user_phone], [user_address], [user_role_id], [user_image], [user_dob], [user_createdate], [user_isactive]) VALUES (3, N'Kieu3', N'123456789', N'Trần Thị Khánh Vy', 1, N'anhnkthe151369@fpt.edu.vn ', N'0329328124', N'Sơn Tây', 1, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[users] ([user_id], [username], [password], [fullname], [user_gender], [user_email], [user_phone], [user_address], [user_role_id], [user_image], [user_dob], [user_createdate], [user_isactive]) VALUES (5, N'Kieu4', N'1234567890', N'Nguyễn Tuấn Anh', 1, N'anhnkthe151369@fpt.edu.vn ', N'0329328124', N'Hà Nội', 2, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[users] ([user_id], [username], [password], [fullname], [user_gender], [user_email], [user_phone], [user_address], [user_role_id], [user_image], [user_dob], [user_createdate], [user_isactive]) VALUES (6, N'Kieu66', N'1234567890', N'Lê Thị Lan', 1, N'anhnkthe151369@fpt.edu.vn ', N'0329328124', N'Hà Nội', 2, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[users] ([user_id], [username], [password], [fullname], [user_gender], [user_email], [user_phone], [user_address], [user_role_id], [user_image], [user_dob], [user_createdate], [user_isactive]) VALUES (7, N'Kieu666', N'1234567890', N'Nguyễn Văn Khánh', 1, N'anhnkthe151369@fpt.edu.vn ', N'0329328124', N'Hà Nội', 2, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[users] ([user_id], [username], [password], [fullname], [user_gender], [user_email], [user_phone], [user_address], [user_role_id], [user_image], [user_dob], [user_createdate], [user_isactive]) VALUES (8, N'Phuong', N'123456789', N'Nguyễn Thị Phương', 1, N'anhnkthe151369@fpt.edu.vn', N'0329328124', N'Hà Nội', 3, NULL, NULL, CAST(N'2022-07-14T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[users] ([user_id], [username], [password], [fullname], [user_gender], [user_email], [user_phone], [user_address], [user_role_id], [user_image], [user_dob], [user_createdate], [user_isactive]) VALUES (10, N'VanAnh', N'1234567890', N'Lê Thị Vân Anh', 1, N'anhnkthe151369@fpt.edu.vn', N'0329328124', N'Thái Bình', 4, NULL, NULL, CAST(N'2022-06-13T00:00:00.0000000' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
/****** Object:  Index [IX_orderDetails_productId]    Script Date: 9/23/2022 10:09:31 AM ******/
CREATE NONCLUSTERED INDEX [IX_orderDetails_productId] ON [dbo].[orderDetails]
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_orders_order_status_id]    Script Date: 9/23/2022 10:09:31 AM ******/
CREATE NONCLUSTERED INDEX [IX_orders_order_status_id] ON [dbo].[orders]
(
	[order_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_orders_ship_id]    Script Date: 9/23/2022 10:09:31 AM ******/
CREATE NONCLUSTERED INDEX [IX_orders_ship_id] ON [dbo].[orders]
(
	[ship_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_orders_user_id]    Script Date: 9/23/2022 10:09:31 AM ******/
CREATE NONCLUSTERED INDEX [IX_orders_user_id] ON [dbo].[orders]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_productColors_colorId]    Script Date: 9/23/2022 10:09:31 AM ******/
CREATE NONCLUSTERED INDEX [IX_productColors_colorId] ON [dbo].[productColors]
(
	[colorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_products_category_id]    Script Date: 9/23/2022 10:09:31 AM ******/
CREATE NONCLUSTERED INDEX [IX_products_category_id] ON [dbo].[products]
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_products_product_status_id]    Script Date: 9/23/2022 10:09:31 AM ******/
CREATE NONCLUSTERED INDEX [IX_products_product_status_id] ON [dbo].[products]
(
	[product_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_productSizes_sizeId]    Script Date: 9/23/2022 10:09:31 AM ******/
CREATE NONCLUSTERED INDEX [IX_productSizes_sizeId] ON [dbo].[productSizes]
(
	[sizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_user_role_id]    Script Date: 9/23/2022 10:09:31 AM ******/
CREATE NONCLUSTERED INDEX [IX_users_user_role_id] ON [dbo].[users]
(
	[user_role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[orderDetails]  WITH CHECK ADD  CONSTRAINT [FK_orderDetails_orders_orderId] FOREIGN KEY([orderId])
REFERENCES [dbo].[orders] ([order_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orderDetails] CHECK CONSTRAINT [FK_orderDetails_orders_orderId]
GO
ALTER TABLE [dbo].[orderDetails]  WITH CHECK ADD  CONSTRAINT [FK_orderDetails_products_productId] FOREIGN KEY([productId])
REFERENCES [dbo].[products] ([product_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orderDetails] CHECK CONSTRAINT [FK_orderDetails_products_productId]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_orderStatuses_order_status_id] FOREIGN KEY([order_status_id])
REFERENCES [dbo].[orderStatuses] ([order_status_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_orderStatuses_order_status_id]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_ships_ship_id] FOREIGN KEY([ship_id])
REFERENCES [dbo].[ships] ([ship_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_ships_ship_id]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_users_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_users_user_id]
GO
ALTER TABLE [dbo].[productColors]  WITH CHECK ADD  CONSTRAINT [FK_productColors_colors_colorId] FOREIGN KEY([colorId])
REFERENCES [dbo].[colors] ([color_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[productColors] CHECK CONSTRAINT [FK_productColors_colors_colorId]
GO
ALTER TABLE [dbo].[productColors]  WITH CHECK ADD  CONSTRAINT [FK_productColors_products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[products] ([product_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[productColors] CHECK CONSTRAINT [FK_productColors_products_ProductId]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_categories_category_id] FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([category_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_categories_category_id]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_productsStatus_product_status_id] FOREIGN KEY([product_status_id])
REFERENCES [dbo].[productsStatus] ([product_status_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_productsStatus_product_status_id]
GO
ALTER TABLE [dbo].[productSizes]  WITH CHECK ADD  CONSTRAINT [FK_productSizes_products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[products] ([product_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[productSizes] CHECK CONSTRAINT [FK_productSizes_products_ProductId]
GO
ALTER TABLE [dbo].[productSizes]  WITH CHECK ADD  CONSTRAINT [FK_productSizes_sizes_sizeId] FOREIGN KEY([sizeId])
REFERENCES [dbo].[sizes] ([size_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[productSizes] CHECK CONSTRAINT [FK_productSizes_sizes_sizeId]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_roles_user_role_id] FOREIGN KEY([user_role_id])
REFERENCES [dbo].[roles] ([role_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_roles_user_role_id]
GO
USE [master]
GO
ALTER DATABASE [OnlineShopDB] SET  READ_WRITE 
GO
