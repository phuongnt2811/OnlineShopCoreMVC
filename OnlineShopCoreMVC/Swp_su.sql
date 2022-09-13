Create Database Project_SU22
Go
USE [Project_SU22]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[account_username] [nvarchar](50) NOT NULL,
	[account_password] [nvarchar](30) NOT NULL,
	[account_email] [nvarchar](50) NOT NULL,
	[account_name] [nvarchar](30) NOT NULL,
	[account_phone] [nvarchar](10) NOT NULL,
	[account_address] [nvarchar](100) NOT NULL,
	[account_role_id] [int] NOT NULL,
	[account_gender] [bit] NULL,
	[account_status] [bit] NOT NULL,
	[account_createdate] [date] NULL,
	account_image nvarchar(200),
	account_DOB date
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[blog_title] [nvarchar](200) NOT NULL,
	[blog_author] [nvarchar](100) NOT NULL,
	[blog_descriptions] [nvarchar](500) NULL,
	[blog_createdate] [datetime] NOT NULL,
	[blog_createby] [nvarchar](100) NOT NULL,
	[blog_images] [nvarchar](100) NOT NULL,
	[blog_modifydate] [datetime] NULL,
	[blog_modifyby] [nvarchar](100) NULL,
	[blog_detail] [nvarchar](max) NOT NULL,
	[blog_back_link] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[color_id] [int] IDENTITY(1,1) NOT NULL,
	[color_name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Function]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Function](
	[function_id] [int] NOT NULL,
	[function_name] [varchar](100) NOT NULL,
	[function_description] [nvarchar](200) NOT NULL,
	[function_ordernumber] [int] NOT NULL,
	[function_createday] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[function_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Order_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[Order_note] [nvarchar](50) NULL,
	[Order_status_id] [int] NOT NULL,
	[Order_total_money] [float] NOT NULL,
	[Order_Date] [date] NULL,
	[shipping_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[Order_Details_id] [int] IDENTITY(1,1) NOT NULL,
	[Order_id] [int] NULL,
	[product_id] [int] NULL,
	[Order_Details_price] [money] NULL,
	[Order_Details_num] [int] NULL,
	[Order_Details_total_number] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_Details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_status]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_status](
	[Order_status_id] [int] IDENTITY(1,1) NOT NULL,
	[Order_status_status] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](50) NOT NULL,
	[product_price] [money] NOT NULL,
	[color_id] [int] NULL,
	[product_quantity] [int] NOT NULL,
	[product_image] [nvarchar](50) NOT NULL,
	[category_id] [int] NULL,
	[status_product_id] [int] NOT NULL,
	[product_description] [nvarchar](2000) NULL,
	[product_code] [nvarchar](10) NOT NULL,
	[product_create_date] [datetime] NOT NULL,
	[product_backlink] [nvarchar](1000) NULL,
 CONSTRAINT [PK__product__47027DF5BC30168A] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productsize]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productsize](
	[product_id] [int] NULL,
	[size_id] [int] NULL,
	[product_quantity] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Role_id] [int] IDENTITY(1,1) NOT NULL,
	[Role_name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_function]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_function](
	[Role_function_id] [int] NOT NULL,
	[function_id] [int] NULL,
	[role_id] [int] NULL,
	[Role_function_view] [int] NOT NULL,
	[Role_function_insert] [int] NOT NULL,
	[Role_function_update] [int] NOT NULL,
	[Role_function_delete] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Role_function_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shipping]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shipping](
	[shipping_id] [int] IDENTITY(1,1) NOT NULL,
	[shipping_name] [nvarchar](50) NOT NULL,
	[shipping_email] [nvarchar](100) NOT NULL,
	[shipping_phone] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[shipping_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[size_id] [int] IDENTITY(1,1) NOT NULL,
	[size_names] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[slide_id] [int] IDENTITY(1,1) NOT NULL,
	[slide_title] [nvarchar](500) NOT NULL,
	[slide_createdate] [date] NOT NULL,
	[slide_createby] [nvarchar](50) NOT NULL,
	[slide_modifydate] [date] NULL,
	[slide_modifyby] [nvarchar](50) NULL,
	[slide_imageslide] [nvarchar](50) NOT NULL,
	[slide_descriptions] [nvarchar](500) NULL,
	[slide_status_id] [bit] NOT NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[slide_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status_product]    Script Date: 7/20/2022 11:33:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status_product](
	[status_product_id] [int] IDENTITY(1,1) NOT NULL,
	[status_product_status] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[status_product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 
INSERT [dbo].[Account] ([account_id], [account_username], [account_password], [account_email], [account_name], [account_phone], [account_address], [account_role_id], [account_gender], [account_status], [account_createdate], [account_image], [account_DOB]) VALUES (1, N'Kieu', N'123456789', N'anhnkthe151369@fpt.edu.vn', N'Nguyễn Kiều Tuấn Anh', N'0987582761', N'Sơn Tây', 1, 1, 1, CAST(N'2022-06-15' AS Date), NULL, NULL)
INSERT [dbo].[Account] ([account_id], [account_username], [account_password], [account_email], [account_name], [account_phone], [account_address], [account_role_id], [account_gender], [account_status], [account_createdate], [account_image], [account_DOB]) VALUES (2, N'KhanhVy', N'123789456', N'TranKhanhVy@gmai.com', N'Trần Khánh Vy', N'013316464', N'Nghệ An', 2, 0, 1, CAST(N'2022-05-05' AS Date), NULL, NULL)
INSERT [dbo].[Account] ([account_id], [account_username], [account_password], [account_email], [account_name], [account_phone], [account_address], [account_role_id], [account_gender], [account_status], [account_createdate], [account_image], [account_DOB]) VALUES (3, N'Kieu3', N'123456789', N'Hello ', N'aaaaaaaa', N'1223333333', N'aaa333333333', 1, 1, 1, CAST(N'2022-02-02' AS Date), NULL, NULL)
INSERT [dbo].[Account] ([account_id], [account_username], [account_password], [account_email], [account_name], [account_phone], [account_address], [account_role_id], [account_gender], [account_status], [account_createdate], [account_image], [account_DOB]) VALUES (5, N'Kieu4', N'1234567890', N'Hello ', N'aaaaaaaa', N'1223333333', N'aaa333333333', 2, 1, 1, CAST(N'2022-02-02' AS Date), NULL, NULL)
INSERT [dbo].[Account] ([account_id], [account_username], [account_password], [account_email], [account_name], [account_phone], [account_address], [account_role_id], [account_gender], [account_status], [account_createdate], [account_image], [account_DOB]) VALUES (6, N'Kieu66', N'1234567890', N'Hello ', N'aaaaaaaa', N'1223333333', N'aaa333333333', 2, 1, 1, CAST(N'2022-02-02' AS Date), NULL, NULL)
INSERT [dbo].[Account] ([account_id], [account_username], [account_password], [account_email], [account_name], [account_phone], [account_address], [account_role_id], [account_gender], [account_status], [account_createdate], [account_image], [account_DOB]) VALUES (7, N'Kieu666', N'1234567890', N'Hello ', N'aaaaaaaa', N'1223333333', N'aaa333333333', 2, 1, 0, CAST(N'2022-02-02' AS Date), NULL, NULL)
INSERT [dbo].[Account] ([account_id], [account_username], [account_password], [account_email], [account_name], [account_phone], [account_address], [account_role_id], [account_gender], [account_status], [account_createdate], [account_image], [account_DOB]) VALUES (8, N'Phuong', N'123456789', N'nguyen', N'phuong', N'0111115544', N'Ha noi', 3, 1, 1, CAST(N'2022-07-14' AS Date), NULL, NULL)
INSERT [dbo].[Account] ([account_id], [account_username], [account_password], [account_email], [account_name], [account_phone], [account_address], [account_role_id], [account_gender], [account_status], [account_createdate], [account_image], [account_DOB]) VALUES (10, N'VanAnh', N'1234567890', N'Vananh', N'van anh', N'0329328124', N'Thai Binh1', 4, 1, 1, CAST(N'2022-06-13' AS Date), NULL, NULL)
INSERT [dbo].[Account] ([account_id], [account_username], [account_password], [account_email], [account_name], [account_phone], [account_address], [account_role_id], [account_gender], [account_status], [account_createdate], [account_image], [account_DOB]) VALUES (11, N'Kieu88', N'1234567890', N'phuong', N'phuong', N'phuong', N'phuong', 1, 0, 1, CAST(N'2022-07-16' AS Date), NULL, NULL)
INSERT [dbo].[Account] ([account_id], [account_username], [account_password], [account_email], [account_name], [account_phone], [account_address], [account_role_id], [account_gender], [account_status], [account_createdate], [account_image], [account_DOB]) VALUES (12, N'customer', N'1234567890', N'phuong', N'phuong', N'phuong', N'phuong', 1, 0, 1, CAST(N'2022-07-16' AS Date), NULL, NULL)
INSERT [dbo].[Account] ([account_id], [account_username], [account_password], [account_email], [account_name], [account_phone], [account_address], [account_role_id], [account_gender], [account_status], [account_createdate], [account_image], [account_DOB]) VALUES (13, N'Kieu1245', N'1234567890', N'phuong', N'phuong', N'0329328124', N'phuong', 1, 1, 1, CAST(N'2022-07-19' AS Date), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([blog_id], [blog_title], [blog_author], [blog_descriptions], [blog_createdate], [blog_createby], [blog_images], [blog_modifydate], [blog_modifyby], [blog_detail], [blog_back_link]) VALUES (1, N'10 ?i?u thú v? có th? b?n ch?a bi?t v? th??ng hi?u Goyard (Ph?n 1)', N'Tuan Anh', N'T?t c? các th??ng hi?u xa x? ??u rao gi?ng v? s? quý hi?m và ??c quy?n c?a h?, nh?ng r?t ít trong s? h? có ?? can ??m ?? tr? nên khó n?m b?t và kín ?áo theo b?t k? cách nào tron...', CAST(N'2022-05-02T00:00:00.000' AS DateTime), N'Tuan Anh', N'Blog2.png', CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'Tuan Anh', N'<p>T?t c? các th??ng hi?u xa x? ??u rao gi?ng v? s? quý hi?m và ??c quy?n c?a h?, nh?ng r?t ít trong s? h? có ?? can ??m ?? tr? nên khó n?m b?t và kín ?áo theo b?t k? cách nào trong vô s? cách mà Goyard ?ã có trong nhi?u th? k?. Th??ng hi?u không qu?ng cáo, niêm y?t s?n ph?m trên trang web c?a mình ho?c nói chuy?n v?i gi?i truy?n thông, và b?n s? không bao gi? th?y m?t bu?i ti?c ra m?t s?n ph?m hay tu?n l? th?i trang c?a Goyard l?ng l?y. Goyard không mu?n th?c hi?n hành ??ng cân b?ng c?c k? ph? bi?n trong ngành th?i trang khi tuyên b? các s?n ph?m c?a mình là quý hi?m và v?n c? g?ng bán các ch? th? tr? giá 300 ?ô la cho m?i ng??i trên Trái ??t; th??ng hi?u ch? ??n gi?n là không bán các khách hàng bình th??ng.</p>', N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Ftuananh462001%2Fposts%2F822954654996908&amp;show_text=true&amp;width=500&quot; width=&quot;500&quot; height=&quot;202&quot; style=&quot;border:none;overflow:hidden&quot; scrolling=&quot;no&quot; frameborder=&quot;0&quot;
                         allowfullscreen=&quot;true&quot; allow=&quot;autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[Blog] ([blog_id], [blog_title], [blog_author], [blog_descriptions], [blog_createdate], [blog_createby], [blog_images], [blog_modifydate], [blog_modifyby], [blog_detail], [blog_back_link]) VALUES (2, N'Những sự thật bí ẩn đằng sau thương hiệu thời trang nổi tiếng của Đức - Adidas', N'Tuan Anh', N'Adidas - thương hiệu thể thao đã quá nổi của Đức và vẫn hàng ngày tung ra những sản phẩm giày, quần áo và dụng cụ thể thao nâng cấp hơn. Sau hơn bảy thập kỷ tung hoành  trong tr...', CAST(N'2022-07-19T00:00:00.000' AS DateTime), N'Tuan Anh', N'Blog 1.png', CAST(N'2022-07-19T00:00:00.000' AS DateTime), N'Tuan Anh', N'<p style="margin-bottom: 15px; color: rgb(51, 51, 51); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 16px;">Adidas -&nbsp;thương hiệu thể thao đã quá nổi của Đức và&nbsp;vẫn hàng ngày&nbsp;tung ra những sản phẩm giày, quần áo và dụng cụ thể thao nâng cấp hơn. Sau hơn bảy&nbsp;thập kỷ tung hoành&nbsp;&nbsp;trong trò chơi thương hiệu, adidas đã tích lũy được một lịch sử khổng lồ. Ngoài ra&nbsp;với sự hợp tác với những tên tuổi lớn&nbsp;như Pharrell, Kanye và Nigo, thương hiệu ngày càng ghi dấu ấn sâu đậm trong lòng người hâm mộ. Tuy nhiên, với&nbsp;<a target="_blank" href="https://authentic-shoes.com/collections/nike" style="color: rgb(40, 138, 214); text-decoration: none;">Nike</a>,&nbsp;<a target="_blank" href="https://authentic-shoes.com/collections/puma" style="color: rgb(40, 138, 214); text-decoration: none;">Puma</a>&nbsp;hay bất kỳ một thương hiệu lớn nào, Adidas cũng vậy, họ đều có những bí mật chưa từng được bật mí vậy trong bài viết này hãy cũng&nbsp;<a target="_blank" href="https://authentic-shoes.com/" style="color: rgb(40, 138, 214); text-decoration: none;">Authentic Shoes</a>&nbsp;khám phá chúng nhé.</p>', N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Ftuananh462001%2Fposts%2F822954654996908&amp;show_text=true&amp;width=500&quot; width=&quot;500&quot; height=&quot;202&quot; style=&quot;border:none;overflow:hidden&quot; scrolling=&quot;no&quot; frameborder=&quot;0&quot;allowfullscreen=&quot;true&quot; allow=&quot;autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[Blog] ([blog_id], [blog_title], [blog_author], [blog_descriptions], [blog_createdate], [blog_createby], [blog_images], [blog_modifydate], [blog_modifyby], [blog_detail], [blog_back_link]) VALUES (3, N'BST Dior x Travis Scott ra mắt hoành tráng tại tuần lễ thời trang Paris', N'Tuan Anh', N'Dior - đỉnh cao cho sự xa xỉ của thời trang Pháp. Suốt một thời gian dài, Dior cho thấy sức hút không tưởng của một thương hiệu đã trở thành cả đế chế. Nét lãng mạn hiện đại như...', CAST(N'2022-06-25T00:00:00.000' AS DateTime), N'Tuan Anh', N'Blog 3.png', CAST(N'2022-06-25T00:00:00.000' AS DateTime), N'Tuan Anh', N'<p><a target="_blank" href="https://authentic-shoes.com/collections/giay-dior" style="color: rgb(40, 138, 214); text-decoration: none; background-color: rgb(255, 255, 255); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 16px; font-weight: 400;">Dior</a><span style="color: rgb(51, 51, 51); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 16px;">&nbsp;- đỉnh cao cho sự xa xỉ của thời trang Pháp. Suốt một thời gian dài, Dior cho thấy sức hút không tưởng của một thương hiệu đã trở thành cả đế chế. Nét lãng mạn hiện đại nhưng vẫn đầy tối giản là điều không thể tìm thấy ở đâu khác tuy mỗi thời kỳ dưới tay của một nhà thiết kế khác nhau thì Dior lại có những sự thay đổi.&nbsp;Nếu như bạn đang thắc mắc tại sao những thiết kế lại chỉ có một cái tên lại có thể có mức giá trên trời như thế thì bạn đang nhìn thấy một huyền thoại của Shoes Game mang tên&nbsp;</span><a target="_blank" href="https://authentic-shoes.com/collections/travis-scott" style="color: rgb(40, 138, 214); text-decoration: none; background-color: rgb(255, 255, 255); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 16px; font-weight: 400;">Travis Scott</a><span style="color: rgb(51, 51, 51); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 16px;">. Jacques Berman Webster với nghệ danh Travis Scott đã tạo nên những hiện tượng không chỉ là cú nổ mạnh mẽ trong giới rapper mà thành tựu mạnh mẽ đã tạo nên một hiện tượng mà chính những nhà thiết kế giày lâu năm cũng không thể lý giải.</span></p>', N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Flangss.tramss.50%2Fposts%2Fpfbid02v1aEUEoZfGxjjRSDofopgb6jmbGrkPqDKm7vYgHuqwYYM4iCFiemNw2eLiMFuzEZl&show_text=true&width=500" width="500" height="107" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[Blog] ([blog_id], [blog_title], [blog_author], [blog_descriptions], [blog_createdate], [blog_createby], [blog_images], [blog_modifydate], [blog_modifyby], [blog_detail], [blog_back_link]) VALUES (4, N'Những điểm mà người hâm mộ thích ở thương hiệu Goyard', N'Tuan Anh', N'Với những người thực sự yêu thích và liên tục tìm tòi về thời trang thì thương hiệu Goyard chắc chắn không phải một cái tên xa lạ. Thương hiệu đến từ nước Pháp này có gì nổi bật...', CAST(N'2022-06-22T00:00:00.000' AS DateTime), N'Tuan Anh', N'Blog 4.png', CAST(N'2022-06-22T00:00:00.000' AS DateTime), N'Tuan Anh', N'<p><span style="color: rgb(51, 51, 51); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 16px;">Với những người thực sự yêu thích và liên tục tìm tòi về thời trang thì thương hiệu Goyard chắc chắn không phải một cái tên xa lạ. Thương hiệu đến từ nước Pháp này có gì nổi bật? Điều gì khiến thương hiệu này có tiếng nói trong thị trường thời trang tới vậy. Hãy cùng&nbsp;</span><a target="_blank" href="https://authentic-shoes.com/" style="color: rgb(40, 138, 214); text-decoration: none; background-color: rgb(255, 255, 255); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 16px; font-weight: 400;">Authentic Shoes</a><span style="color: rgb(51, 51, 51); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 16px;">&nbsp;tìm hiểu làm thế nào mà Goyard được yêu thích đến vậy nhé!&nbsp;</span></p><h2 style="font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; margin: 0px 0px 0.5em; line-height: normal; font-size: 2em; color: rgb(51, 51, 51);">Hình thức bán hàng đặc biệt</h2><p><span style="color: rgb(51, 51, 51); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 16px;">Mọi người nhìn các chi tiết hình chữ Y lồng có thể dễ nhận biết được thương hiệu, nhiều người nghĩ thương hiệu sẽ hoạt động thương mại trên internet rầm rộ như Gucci, Louis Vuitton,... nhưng không&nbsp;Maison Goyard chọn không quảng cáo mà sử dụng phương pháp truyền miệng để quảng bá rộng rãi. Túi Goyard chỉ được giới thượng lưu công nhận và có tính thời trang cao.</span></p>', N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Flangss.tramss.50%2Fposts%2Fpfbid02CYmT7VYGxn6g4WQg5XnrvXdBNb9KP2NjCd2p5Leud1VxemySQENmpxyFxLLJU92rl&show_text=true&width=500" width="500" height="158" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[Blog] ([blog_id], [blog_title], [blog_author], [blog_descriptions], [blog_createdate], [blog_createby], [blog_images], [blog_modifydate], [blog_modifyby], [blog_detail], [blog_back_link]) VALUES (5, N'Thương hiệu Golden Goose và lý do tại sao chúng lại có giá cao đến vậy?', N'Tuan Anh', N'Được thành lập vào năm 2000 bởi các nhà thiết kế trẻ người Venice là Alessandro Gallo và Francesca Rinaldo, Golden Goose là thương hiệu khởi đầu cho xu hướng “giày thể thao xấu ...', CAST(N'2022-06-28T00:00:00.000' AS DateTime), N'Tuan Anh', N'Blog 4.png', CAST(N'2022-06-28T00:00:00.000' AS DateTime), N'Tuan Anh', N'<h2 style="font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; margin: 0px 0px 0.5em; line-height: normal; font-size: 2em; color: rgb(51, 51, 51);">"Golden Goose" có nghĩa là gì?</h2><h2 style="font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; margin: 0px 0px 0.5em; line-height: normal; font-size: 2em; color: rgb(51, 51, 51);"><span style="font-size: 16px;">"Golden Goose" được định nghĩa là biểu tượng&nbsp;của sự giàu có và thành công. Trong truyện ngụ ngôn “Ngỗng vàng đẻ trứng vàng”, người kể chuyện đến từ Hy Lạp - Aesop viết về một con ngỗng đẻ một quả trứng vàng mỗi ngày. Con ngỗng thần bị giết bởi người chủ tham lam của nó - người hy vọng lấy được tất cả số vàng cùng một lúc. Đạo lý của câu chuyện: "những người có nhiều muốn nhiều hơn, và vì vậy họ mất tất cả những gì họ có".&nbsp;</span></h2>', N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Flangss.tramss.50%2Fposts%2Fpfbid0GnVRtibME4L681udX4mPm88y9EsWBy2277MmrddyRg2pX3aZ8gvmUmXiCo28KzmHl&show_text=true&width=500" width="500" height="107" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[Blog] ([blog_id], [blog_title], [blog_author], [blog_descriptions], [blog_createdate], [blog_createby], [blog_images], [blog_modifydate], [blog_modifyby], [blog_detail], [blog_back_link]) VALUES (6, N'Bạn có thể nhìn thấy tương lai của Gucci trong Metaverse', N'Tuan Anh', N'Đầu tiên Metaverse (một từ ghép của "meta-" và "universe" tức "vũ trụ") là một giả thuyết cải tiến của internet trong đó nó hỗ trợ một môi trường ảo 3 chiều bền vững thông qua m...', CAST(N'2022-07-18T00:00:00.000' AS DateTime), N'Tuan Anh', N'Blog 4.png', CAST(N'2022-07-18T00:00:00.000' AS DateTime), N'Tuan Anh', N'<p><span style="color: rgb(51, 51, 51); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 16px;">Đầu tiên&nbsp;Metaverse&nbsp;(một&nbsp;từ ghép&nbsp;của "meta-" và "universe" tức "vũ trụ") là một giả thuyết cải tiến của&nbsp;internet&nbsp;trong đó nó hỗ trợ một môi trường ảo 3 chiều bền vững&nbsp;thông qua máy tính cá nhân thông thường cũng như&nbsp;thực tế ảo&nbsp;và&nbsp;thực tế ảo tăng cường.&nbsp;Một số phiên bản và nền tảng tương tự mang tính metaverse nhưng hạn chế hơn như&nbsp;VRChat&nbsp;hoặc trò chơi như&nbsp;Second Life. Tham vọng của metaverse hiện tại tập trung chủ yếu vào việc giải quyết các hạn chế về công nghệ của các thiết bị thực tế ảo và thực tế ảo tăng cường hiện đại cũng như mở rộng việc sử dụng không gian metaverse cho các ứng dụng kinh doanh, giáo dục và bán lẻ. Nhiều công ty giải trí và truyền thông xã hội đã đầu tư vào nghiên cứu và phát triển liên quan đến metaverse.</span></p>', N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Flangss.tramss.50%2Fposts%2Fpfbid02v1aEUEoZfGxjjRSDofopgb6jmbGrkPqDKm7vYgHuqwYYM4iCFiemNw2eLiMFuzEZl&show_text=true&width=500" width="500" height="107" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (1, N'Nike')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (2, N'Adidas')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (3, N'Reebook')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (4, N'MLB')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (5, N'Gucci')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (6, N'Vans')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (7, N'Converse')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (8, N'Other')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([color_id], [color_name]) VALUES (1, N'Red')
INSERT [dbo].[Color] ([color_id], [color_name]) VALUES (2, N'Black')
INSERT [dbo].[Color] ([color_id], [color_name]) VALUES (3, N'White')
INSERT [dbo].[Color] ([color_id], [color_name]) VALUES (4, N'Blue')
INSERT [dbo].[Color] ([color_id], [color_name]) VALUES (5, N'Yellow')
INSERT [dbo].[Color] ([color_id], [color_name]) VALUES (6, N'Other')
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Order_id], [account_id], [Order_note], [Order_status_id], [Order_total_money], [Order_Date], [shipping_id]) VALUES (1, 1, N'oke', 4, 5722, CAST(N'2020-06-15' AS Date), 7)
INSERT [dbo].[Order] ([Order_id], [account_id], [Order_note], [Order_status_id], [Order_total_money], [Order_Date], [shipping_id]) VALUES (2, 1, N's?p oke', 2, 8327, CAST(N'2021-07-09' AS Date), 3)
INSERT [dbo].[Order] ([Order_id], [account_id], [Order_note], [Order_status_id], [Order_total_money], [Order_Date], [shipping_id]) VALUES (3, 1, N'aaaaaaaaaaaaaa', 1, 150000, CAST(N'2022-07-11' AS Date), 3)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Details] ON 

INSERT [dbo].[Order_Details] ([Order_Details_id], [Order_id], [product_id], [Order_Details_price], [Order_Details_num], [Order_Details_total_number]) VALUES (1, 2, 3, 6.0000, 10, 7)
INSERT [dbo].[Order_Details] ([Order_Details_id], [Order_id], [product_id], [Order_Details_price], [Order_Details_num], [Order_Details_total_number]) VALUES (2, 1, 1, 8.0000, 3, 8)
INSERT [dbo].[Order_Details] ([Order_Details_id], [Order_id], [product_id], [Order_Details_price], [Order_Details_num], [Order_Details_total_number]) VALUES (3, 2, 1, 500000.0000, 1, 5555555555)
INSERT [dbo].[Order_Details] ([Order_Details_id], [Order_id], [product_id], [Order_Details_price], [Order_Details_num], [Order_Details_total_number]) VALUES (4, 1, 1, 156.0000, 1, 99)
INSERT [dbo].[Order_Details] ([Order_Details_id], [Order_id], [product_id], [Order_Details_price], [Order_Details_num], [Order_Details_total_number]) VALUES (5, 1, 1, 156.0000, 2, 99)
SET IDENTITY_INSERT [dbo].[Order_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_status] ON 

INSERT [dbo].[Order_status] ([Order_status_id], [Order_status_status]) VALUES (1, N'Chờ xác nhận')
INSERT [dbo].[Order_status] ([Order_status_id], [Order_status_status]) VALUES (2, N'Chờ lấy hàng')
INSERT [dbo].[Order_status] ([Order_status_id], [Order_status_status]) VALUES (3, N'Đang giao')
INSERT [dbo].[Order_status] ([Order_status_id], [Order_status_status]) VALUES (4, N'Đã giao hàng')
INSERT [dbo].[Order_status] ([Order_status_id], [Order_status_status]) VALUES (5, N'Hủy đơn hàng')
INSERT [dbo].[Order_status] ([Order_status_id], [Order_status_status]) VALUES (6, N'Ðơn hàng đang hoàn lại')
SET IDENTITY_INSERT [dbo].[Order_status] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (1, N'Adidas EQT Bask ADV', 150.0000, 4, 25, N'Adidas EQT Bask ADV.jpg', 2, 1, N'
This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'N1', CAST(N'2022-06-11T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Ftuananh462001%2Fposts%2F822954654996908&amp;show_text=true&amp;width=500&quot; width=&quot;500&quot; height=&quot;202&quot; style=&quot;border:none;overflow:hidden&quot; scrolling=&quot;no&quot; frameborder=&quot;0&quot;
                         allowfullscreen=&quot;true&quot; allow=&quot;autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (2, N'Adidas Stan Smith All Black', 250.0000, 2, 25, N'Adidas Stan Smith All Black.jpg', 2, 2, N'
This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'N2', CAST(N'2022-06-12T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Ftuananh462001%2Fposts%2F822954654996908&amp;show_text=true&amp;width=500&quot; width=&quot;500&quot; height=&quot;202&quot; style=&quot;border:none;overflow:hidden&quot; scrolling=&quot;no&quot; frameborder=&quot;0&quot;
                         allowfullscreen=&quot;true&quot; allow=&quot;autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (3, N'Adidas Superstar', 214.0000, 1, 25, N'Adidas Superstar.jpg', 2, 2, N'
This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'N2', CAST(N'2022-06-11T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Ftuananh462001%2Fposts%2F822954654996908&amp;show_text=true&amp;width=500&quot; width=&quot;500&quot; height=&quot;202&quot; style=&quot;border:none;overflow:hidden&quot; scrolling=&quot;no&quot; frameborder=&quot;0&quot;
                         allowfullscreen=&quot;true&quot; allow=&quot;autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (4, N'Converse 1970s Sunflower', 155.0000, 5, 6, N'Converse 1970s Sunflower.jpg', 7, 3, N'
This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'Male', CAST(N'2022-06-11T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fbatmann2112%2Fposts%2Fpfbid07ShWN3iKkKLE4AFeQrXP3pgLxkbhvRu3RNxzrmW2zt55eDSfob7quJyHqxpLP1H1l&show_text=true&width=500" width="500" height="533" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (5, N'Converse Chuck Taylor All Star', 124.0000, 2, 6, N'Converse Chuck Taylor All Star.jpg', 7, 3, N'
This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'Green', CAST(N'2022-06-14T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid09UyZ7iHkNPnFSAsiYT4YdXTKbgR8RYJRLpN9vvmbic8kk1GVRzuSLq3CKpX3zZiQl%26id%3D100035113012990&show_text=true&width=500" width="500" height="582" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (6, N'Converse Chuck Taylor II', 111.0000, 4, 12, N'Converse Chuck Taylor II.jpg', 7, 7, N'
This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'N2', CAST(N'2022-06-16T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid0XAriG3KuL3YMKKNuZXmYD7re9wtc3Uk9EdYh5yL3uHEckhRZsN4ftrG8raNShF4Tl%26id%3D100035113012990&show_text=true&width=500" width="500" height="703" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (7, N'Converse Run Star Hike', 99.0000, 6, 5, N'Converse Run Star Hike.jpg', 7, 8, N'
This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'Crimson', CAST(N'2022-06-16T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid036VskS3Ee399r2v2WmrFQFw8baQ4PoMinqGwTP9m4rE1cacW9joMJN54seKCF7ePQl%26id%3D100035113012990&show_text=true&width=500" width="500" height="582" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (9, N'Gucci Tennis 1977', 250.0000, 6, 25, N'Gucci Tennis 1977.jpg', 5, 7, N'
This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'N2', CAST(N'2022-06-17T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid0SvG7tR8o597ASF1wk6eRdC9GWpCxjCW4ABf7un37EhFgdvJunDvPQQosBm9pesFKl%26id%3D100035113012990&show_text=true&width=500" width="500" height="684" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (10, N'MLB Big Ball Chunky', 348.0000, 3, 6, N'MLB Big Ball Chunky.jpg', 4, 7, N'
This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'Green', CAST(N'2022-06-09T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid02AW4Hk8hfBk7e1ZL8BUxpZR1N3jsQVhLUNs9pQ99okh5FNQjnXQiFsYUg1i7PvvTBl%26id%3D100035113012990&show_text=true&width=500" width="500" height="562" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (11, N'MLB LA DODGERS', 148.0000, 3, 6, N'MLB LA DODGERS.jpg', 4, 3, N'
This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'Green', CAST(N'2022-06-16T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid0SvG7tR8o597ASF1wk6eRdC9GWpCxjCW4ABf7un37EhFgdvJunDvPQQosBm9pesFKl%26id%3D100035113012990&show_text=true&width=500" width="500" height="684" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (12, N'Nike Air Force 1 Love Letter', 99.0000, 6, 12, N'Nike Air Force 1 Love Letter.jpg', 1, 6, N'
This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'N2', CAST(N'2022-06-05T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid036VskS3Ee399r2v2WmrFQFw8baQ4PoMinqGwTP9m4rE1cacW9joMJN54seKCF7ePQl%26id%3D100035113012990&show_text=true&width=500" width="500" height="582" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (13, N'Nike Air Force 1 LV8', 129.0000, 3, 5, N'Nike Air Force 1 LV8.png', 1, 6, N'
This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'Crimson', CAST(N'2022-06-04T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid036VskS3Ee399r2v2WmrFQFw8baQ4PoMinqGwTP9m4rE1cacW9joMJN54seKCF7ePQl%26id%3D100035113012990&show_text=true&width=500" width="500" height="582" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (14, N'Nike Air Force 1 Pixel', 83.0000, 3, 18, N'Nike Air Force 1 Pixel.jpg', 1, 6, N'
This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'Fuscia', CAST(N'2022-06-02T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid02AW4Hk8hfBk7e1ZL8BUxpZR1N3jsQVhLUNs9pQ99okh5FNQjnXQiFsYUg1i7PvvTBl%26id%3D100035113012990&show_text=true&width=500" width="500" height="562" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (15, N'Reebok Kung Fu Panda Pump Fury', 150.0000, 6, 25, N'Reebok Kung Fu Panda Pump Fury.jpg', 3, 1, N'
This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'N1', CAST(N'2022-06-23T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid0SvG7tR8o597ASF1wk6eRdC9GWpCxjCW4ABf7un37EhFgdvJunDvPQQosBm9pesFKl%26id%3D100035113012990&show_text=true&width=500" width="500" height="684" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (16, N'Reebok PRINT HER 3.0', 143.0000, 6, 25, N'Reebok PRINT HER 3.0.jpg', 3, 2, N'
This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'N2', CAST(N'2022-06-11T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid0XAriG3KuL3YMKKNuZXmYD7re9wtc3Uk9EdYh5yL3uHEckhRZsN4ftrG8raNShF4Tl%26id%3D100035113012990&show_text=true&width=500" width="500" height="703" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (17, N'Reebok Pump Fury Phoenix Suns', 48.0000, 6, 6, N'Reebok Pump Fury Phoenix Suns.jpg', 3, 6, N'This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'Green', CAST(N'2022-06-02T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid02AW4Hk8hfBk7e1ZL8BUxpZR1N3jsQVhLUNs9pQ99okh5FNQjnXQiFsYUg1i7PvvTBl%26id%3D100035113012990&show_text=true&width=500" width="500" height="562" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (18, N'Vans Old Skool Style 36', 124.0000, 6, 6, N'Vans Old Skool Style 36.jpg', 6, 3, N'This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'Green', CAST(N'2022-06-21T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid02AW4Hk8hfBk7e1ZL8BUxpZR1N3jsQVhLUNs9pQ99okh5FNQjnXQiFsYUg1i7PvvTBl%26id%3D100035113012990&show_text=true&width=500" width="500" height="562" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (19, N'Vans Old Skool', 99.0000, 2, 12, N'Vans Old Skool.jpg', 6, 6, N'This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'N2', CAST(N'2022-06-13T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid0SvG7tR8o597ASF1wk6eRdC9GWpCxjCW4ABf7un37EhFgdvJunDvPQQosBm9pesFKl%26id%3D100035113012990&show_text=true&width=500" width="500" height="684" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"')
INSERT [dbo].[product] ([product_id], [product_name], [product_price], [color_id], [product_quantity], [product_image], [category_id], [status_product_id], [product_description], [product_code], [product_create_date], [product_backlink]) VALUES (20, N'VANS VAULT X SARAH', 199.0000, 6, 5, N'VANS VAULT X SARAH.jpg', 6, 3, N'This product is made with vegan alternatives to animal-derived ingredients or materials. It is also made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.', N'Crimson', CAST(N'2022-06-05T00:00:00.000' AS DateTime), N'https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid0XAriG3KuL3YMKKNuZXmYD7re9wtc3Uk9EdYh5yL3uHEckhRZsN4ftrG8raNShF4Tl%26id%3D100035113012990&show_text=true&width=500" width="500" height="703" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share')
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Role_id], [Role_name]) VALUES (1, N'Customer')
INSERT [dbo].[Role] ([Role_id], [Role_name]) VALUES (2, N'Admin')
INSERT [dbo].[Role] ([Role_id], [Role_name]) VALUES (3, N'Marketing')
INSERT [dbo].[Role] ([Role_id], [Role_name]) VALUES (4, N'Sale')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[shipping] ON 

INSERT [dbo].[shipping] ([shipping_id], [shipping_name], [shipping_email], [shipping_phone]) VALUES (1, N'Jaxnation', N'kstraker0@comcast.net', N'9054056655')
INSERT [dbo].[shipping] ([shipping_id], [shipping_name], [shipping_email], [shipping_phone]) VALUES (2, N'Mynte', N'mharpham1@webs.com', N'3752075938')
INSERT [dbo].[shipping] ([shipping_id], [shipping_name], [shipping_email], [shipping_phone]) VALUES (3, N'Twitterworks', N'lcocci2@hhs.gov', N'6248005668')
INSERT [dbo].[shipping] ([shipping_id], [shipping_name], [shipping_email], [shipping_phone]) VALUES (4, N'Latz', N'bscotchford3@spiegel.de', N'3541911923')
INSERT [dbo].[shipping] ([shipping_id], [shipping_name], [shipping_email], [shipping_phone]) VALUES (5, N'Skiba', N'glafaye4@booking.com', N'1656485694')
INSERT [dbo].[shipping] ([shipping_id], [shipping_name], [shipping_email], [shipping_phone]) VALUES (6, N'Innotype', N'gweins5@java.com', N'7358612208')
INSERT [dbo].[shipping] ([shipping_id], [shipping_name], [shipping_email], [shipping_phone]) VALUES (7, N'Zazio', N'sdunlea6@woothemes.com', N'8454936794')
INSERT [dbo].[shipping] ([shipping_id], [shipping_name], [shipping_email], [shipping_phone]) VALUES (8, N'Meemm', N'coldam7@youtube.com', N'4538716086')
INSERT [dbo].[shipping] ([shipping_id], [shipping_name], [shipping_email], [shipping_phone]) VALUES (9, N'Skibox', N'wmagenny8@timesonline.co.uk', N'4001474364')
INSERT [dbo].[shipping] ([shipping_id], [shipping_name], [shipping_email], [shipping_phone]) VALUES (10, N'Nlounge', N'ecage9@odnoklassniki.ru', N'1991594644')
SET IDENTITY_INSERT [dbo].[shipping] OFF
GO
SET IDENTITY_INSERT [dbo].[size] ON 

INSERT [dbo].[size] ([size_id], [size_names]) VALUES (1, 37)
INSERT [dbo].[size] ([size_id], [size_names]) VALUES (2, 38)
INSERT [dbo].[size] ([size_id], [size_names]) VALUES (3, 39)
INSERT [dbo].[size] ([size_id], [size_names]) VALUES (4, 40)
INSERT [dbo].[size] ([size_id], [size_names]) VALUES (5, 41)
INSERT [dbo].[size] ([size_id], [size_names]) VALUES (6, 42)
INSERT [dbo].[size] ([size_id], [size_names]) VALUES (7, 43)
SET IDENTITY_INSERT [dbo].[size] OFF
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([slide_id], [slide_title], [slide_createdate], [slide_createby], [slide_modifydate], [slide_modifyby], [slide_imageslide], [slide_descriptions], [slide_status_id]) VALUES (1, N'ĐÔI GIÀY ADIDAS FORUM DÀNH CHO CÁC TÍN ĐỒ VINTAGE', CAST(N'2022-06-06' AS Date), N'Tuan Anh', CAST(N'2022-06-06' AS Date), N'Tuan Anh', N'Ronaldo1.png', N'Khi dạo bước qua các gian hàng trong khu chợ flea market tấp nập, bạn không bao giờ biết được mình sẽ tìm thấy những món đồ thú vị nào. Và dù cho bạn đã biết chắc rằng giày adidas Forum là item mới toanh và đậm chất bóng rổ, nhưng phiên bản này cũng ngập tràn hoài niệm và gợi nhớ những trải nghiệm săn đồ thrift.', 1)
INSERT [dbo].[Slide] ([slide_id], [slide_title], [slide_createdate], [slide_createby], [slide_modifydate], [slide_modifyby], [slide_imageslide], [slide_descriptions], [slide_status_id]) VALUES (2, N'ĐÔI GIÀY ULTRABOOST PHONG CÁCH WORKWEAR CÓ SỬ DỤNG SỢI PARLEY OCEAN PLASTIC.', CAST(N'2022-05-06' AS Date), N'Tuan Anh', CAST(N'2022-05-06' AS Date), N'Tuan Anh', N'nike.jpg', N'Không gì bền bỉ bằng trang phục lao động. Nhất là khi bạn vá các lỗ hổng và tiếp tục tiến bước. Đôi giày chạy bộ Ultraboost này có đế giữa BOOST họa tiết graphic ráp nối mô phỏng trang phục lao động denim.', 0)
INSERT [dbo].[Slide] ([slide_id], [slide_title], [slide_createdate], [slide_createby], [slide_modifydate], [slide_modifyby], [slide_imageslide], [slide_descriptions], [slide_status_id]) VALUES (4, N'ĐÔI GIÀY BÓNG RỔ JAMES HARDEN CÓ SỬ DỤNG THÀNH PHẦN TÁI CHẾ.', CAST(N'2022-01-09' AS Date), N'Minh Nhat', CAST(N'2022-07-06' AS Date), N'Minh Nhat', N'nike1.jpg', N'Công nghệ đế giữa in 3D, thiết kế đưa bạn về phía trước. Với mỗi sải bước, đế giữa công nghệ 4DFWD định hướng về phía trước, giảm lực hãm và chuyển đổi năng lượng tác động thành chuyển động thẳng tiến.', 1)
INSERT [dbo].[Slide] ([slide_id], [slide_title], [slide_createdate], [slide_createby], [slide_modifydate], [slide_modifyby], [slide_imageslide], [slide_descriptions], [slide_status_id]) VALUES (6, N'ĐÔI GIÀY TRAINER TÁO BẠO CÓ SỬ DỤNG THÀNH PHẦN TÁI CHẾ.', CAST(N'2022-07-07' AS Date), N'Minh Nhat', CAST(N'2022-06-03' AS Date), N'Minh Nhat', N'nike2.jpg', N'Phá vỡ nguyên tắc. Thách thức chuẩn mực. Dám sống khác biệt. Ấn tượng và độc đáo, đôi giày adidas OZRAH là một đẳng cấp khác với khung bọc nhựa TPU và phong cách cá tính.', 1)
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
SET IDENTITY_INSERT [dbo].[status_product] ON 

INSERT [dbo].[status_product] ([status_product_id], [status_product_status]) VALUES (1, N'Còn hàng')
INSERT [dbo].[status_product] ([status_product_id], [status_product_status]) VALUES (2, N'Đang khuyến mãi')
INSERT [dbo].[status_product] ([status_product_id], [status_product_status]) VALUES (3, N'Bán chạy')
INSERT [dbo].[status_product] ([status_product_id], [status_product_status]) VALUES (4, N'Hết hàng')
INSERT [dbo].[status_product] ([status_product_id], [status_product_status]) VALUES (5, N'Ngưng kinh doanh')
INSERT [dbo].[status_product] ([status_product_id], [status_product_status]) VALUES (6, N'Nam')
INSERT [dbo].[status_product] ([status_product_id], [status_product_status]) VALUES (7, N'Nữ')
INSERT [dbo].[status_product] ([status_product_id], [status_product_status]) VALUES (8, N'Trẻ Em')
SET IDENTITY_INSERT [dbo].[status_product] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([account_role_id])
REFERENCES [dbo].[Role] ([Role_id])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([Order_status_id])
REFERENCES [dbo].[Order_status] ([Order_status_id])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([shipping_id])
REFERENCES [dbo].[shipping] ([shipping_id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([Order_id])
REFERENCES [dbo].[Order] ([Order_id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK__Order_Det__produ__59FA5E80] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK__Order_Det__produ__59FA5E80]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK__product__categor__45F365D3] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK__product__categor__45F365D3]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK__product__color_i__44FF419A] FOREIGN KEY([color_id])
REFERENCES [dbo].[Color] ([color_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK__product__color_i__44FF419A]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK__product__status___4D94879B] FOREIGN KEY([status_product_id])
REFERENCES [dbo].[status_product] ([status_product_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK__product__status___4D94879B]
GO
ALTER TABLE [dbo].[productsize]  WITH CHECK ADD  CONSTRAINT [FK__productsi__produ__49C3F6B7] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[productsize] CHECK CONSTRAINT [FK__productsi__produ__49C3F6B7]
GO
ALTER TABLE [dbo].[productsize]  WITH CHECK ADD FOREIGN KEY([size_id])
REFERENCES [dbo].[size] ([size_id])
GO
ALTER TABLE [dbo].[Role_function]  WITH CHECK ADD FOREIGN KEY([function_id])
REFERENCES [dbo].[Function] ([function_id])
GO
ALTER TABLE [dbo].[Role_function]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([Role_id])
GO
