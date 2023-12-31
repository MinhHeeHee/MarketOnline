USE [dbMarkets]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [varchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Salt] [nchar](10) NULL,
	[Active] [bit] NOT NULL,
	[Avatar] [nvarchar](255) NULL,
	[FullName] [nvarchar](150) NULL,
	[RoleID] [int] NULL,
	[LastLogin] [datetime] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Advertisements]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertisements](
	[AdvertisementsID] [int] IDENTITY(1,1) NOT NULL,
	[SubTitle] [nvarchar](150) NULL,
	[Title] [nvarchar](150) NULL,
	[ImageBG] [nvarchar](250) NULL,
	[ImageProduct] [nvarchar](250) NULL,
	[UrlLink] [nvarchar](250) NULL,
	[Active] [bit] NOT NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_QuangCaos] PRIMARY KEY CLUSTERED 
(
	[AdvertisementsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attributes]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attributes](
	[AttributeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Attributes] PRIMARY KEY CLUSTERED 
(
	[AttributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttributesPrices]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributesPrices](
	[AttributesPriceID] [int] IDENTITY(1,1) NOT NULL,
	[AttributeID] [int] NULL,
	[ProductID] [int] NULL,
	[Price] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_AttributesPrices] PRIMARY KEY CLUSTERED 
(
	[AttributesPriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[Levels] [int] NULL,
	[Ordering] [int] NULL,
	[Published] [bit] NOT NULL,
	[Thumb] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Alias] [nvarchar](250) NULL,
	[SchemaMarkup] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](255) NULL,
	[Birthday] [datetime] NULL,
	[Avatar] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Email] [nchar](150) NULL,
	[Phone] [varchar](12) NULL,
	[LocationID] [int] NULL,
	[District] [int] NULL,
	[Ward] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Password] [nvarchar](50) NULL,
	[Salt] [nchar](8) NULL,
	[LastLogin] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Parent] [int] NULL,
	[Levels] [int] NULL,
	[Slug] [nvarchar](100) NULL,
	[NameWithType] [nvarchar](100) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[SContents] [nvarchar](255) NULL,
	[Contents] [nvarchar](max) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Published] [bit] NOT NULL,
	[Alias] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[Author] [nvarchar](255) NULL,
	[AccountID] [int] NULL,
	[Tags] [nvarchar](max) NULL,
	[CatID] [int] NULL,
	[isHot] [bit] NOT NULL,
	[isNewfeed] [bit] NOT NULL,
	[Views] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tblTinTucs] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[OrderNumber] [int] NULL,
	[Amount] [int] NULL,
	[Discount] [int] NULL,
	[TotalMoney] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[ShipDate] [datetime] NULL,
	[TransactStatusID] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[Paid] [bit] NOT NULL,
	[PaymentDate] [datetime] NULL,
	[TotalMoney] [int] NOT NULL,
	[PaymentID] [int] NULL,
	[Note] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[LocationID] [int] NULL,
	[District] [int] NULL,
	[Ward] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[PageID] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [nvarchar](250) NULL,
	[Contents] [nvarchar](max) NULL,
	[Thumb] [nvarchar](250) NULL,
	[Published] [bit] NOT NULL,
	[Title] [nvarchar](250) NULL,
	[Alias] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Ordering] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[ShortDesc] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CatID] [int] NULL,
	[Price] [int] NULL,
	[Discount] [int] NULL,
	[Thumb] [nvarchar](255) NULL,
	[Video] [nvarchar](255) NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[BestSellers] [bit] NOT NULL,
	[HomeFlag] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
	[Tags] [nvarchar](max) NULL,
	[Title] [nvarchar](255) NULL,
	[Alias] [nvarchar](255) NULL,
	[UnitsInStock] [int] NULL,
	[SupplierID] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[ShipperID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NULL,
	[ShipperName] [nvarchar](150) NULL,
	[Phone] [nchar](10) NULL,
	[Birthday] [datetime] NULL,
	[Email] [nchar](150) NULL,
	[LocationID] [int] NULL,
	[District] [int] NULL,
	[Ward] [int] NULL,
	[Avatar] [nvarchar](255) NULL,
	[ShipDate] [datetime] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NULL,
	[EmailContact] [nchar](150) NULL,
	[Companyname] [nvarchar](255) NULL,
	[ContactTitle] [nvarchar](255) NULL,
	[Addresss] [nvarchar](255) NULL,
	[PostalCode] [nchar](15) NULL,
	[Fax] [nchar](20) NULL,
	[PaymentMethods] [nvarchar](150) NULL,
	[LocationID] [int] NULL,
	[District] [int] NULL,
	[Ward] [int] NULL,
	[DiscountType] [nchar](10) NULL,
	[Notes] [nvarchar](max) NULL,
	[CurrentOrder] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Logo] [nvarchar](255) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK__Supplier__4BE66694AB596B6E] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactStatus]    Script Date: 24-Dec-23 1:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactStatus](
	[TransactStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_TransactStatus] PRIMARY KEY CLUSTERED 
(
	[TransactStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([AccountID], [Phone], [Email], [Password], [Salt], [Active], [Avatar], [FullName], [RoleID], [LastLogin], [CreateDate]) VALUES (1, N'094-2344-233', N'admin@gmail.com', N'123456', N'1         ', 1, N'test.jpg', N'Huy Võ', 1, CAST(N'2023-12-24T12:07:14.930' AS DateTime), NULL)
INSERT [dbo].[Accounts] ([AccountID], [Phone], [Email], [Password], [Salt], [Active], [Avatar], [FullName], [RoleID], [LastLogin], [CreateDate]) VALUES (3, N'094-2344-233', N'nhanvien', N'123', N'1         ', 0, NULL, N'test', 1, NULL, CAST(N'2022-03-26T23:13:40.510' AS DateTime))
INSERT [dbo].[Accounts] ([AccountID], [Phone], [Email], [Password], [Salt], [Active], [Avatar], [FullName], [RoleID], [LastLogin], [CreateDate]) VALUES (4, N'29192', N'0210210', N'12234', N'1         ', 1, NULL, N'test', 2, CAST(N'2022-01-01T00:00:00.000' AS DateTime), CAST(N'2022-03-26T23:14:38.163' AS DateTime))
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Attributes] ON 

INSERT [dbo].[Attributes] ([AttributeID], [Name]) VALUES (1, N'Kg')
INSERT [dbo].[Attributes] ([AttributeID], [Name]) VALUES (2, N'Lít')
INSERT [dbo].[Attributes] ([AttributeID], [Name]) VALUES (3, N'390ml')
INSERT [dbo].[Attributes] ([AttributeID], [Name]) VALUES (4, N'gram')
INSERT [dbo].[Attributes] ([AttributeID], [Name]) VALUES (5, N'quả')
SET IDENTITY_INSERT [dbo].[Attributes] OFF
GO
SET IDENTITY_INSERT [dbo].[AttributesPrices] ON 

INSERT [dbo].[AttributesPrices] ([AttributesPriceID], [AttributeID], [ProductID], [Price], [Active]) VALUES (2, 1, 36, 220000, 1)
SET IDENTITY_INSERT [dbo].[AttributesPrices] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [SchemaMarkup]) VALUES (3, N'Rau củ', N'Rau, củ', NULL, 1, 1, N'rau-cu.png', N'Danh mục rau củ', N'dn-rau-cu', NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [SchemaMarkup]) VALUES (4, N'Trái cây', N'Trái cây', NULL, 1, 1, N'trai-cay.png', N'Danh mục trái cây', N'trai-cay', NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [SchemaMarkup]) VALUES (5, N'Thịt/ Hải sản', N'Thịt', NULL, 1, 1, N'thit.png', N'Danh mục thịt', N'thit', NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [SchemaMarkup]) VALUES (1010, N'Bột lúa mì', N'Tổng hợp các sản phẩm thuộc Bột lúa mì', NULL, NULL, 1, N'bot-lua-mi.png', NULL, N'bot-lua-mi', NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (1, N'Nguyễn Văn Test', NULL, NULL, NULL, N'huy.vohoangminh@gmail.com                                                                                                                             ', N'123', NULL, NULL, NULL, CAST(N'2023-12-24T12:12:30.317' AS DateTime), N'', N'        ', NULL, 1)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (2, N'Nguyễn Văn Test', NULL, NULL, N'123xcvb', N'hoanghuy4203@gmail.com                                                                                                                                ', N'123', 1, 2, 7, CAST(N'2023-12-24T12:16:35.693' AS DateTime), N'', N'        ', NULL, 1)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (1, N'Thành Phố Chí Minh', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (2, N'Quận 1', 1, 2, NULL, NULL, 1)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (3, N'Quận 2', 1, 2, NULL, NULL, 1)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (4, N'Quận 3', 1, 2, NULL, NULL, 1)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (5, N'Hà Nội', NULL, 1, NULL, NULL, 1)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (6, N'Đống Đa', 5, 2, NULL, NULL, 1)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (7, N'Phường 1', 2, 3, NULL, NULL, 1)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (8, N'Phường 2', 3, 3, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Locations] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Amount], [Discount], [TotalMoney], [CreateDate], [Price]) VALUES (1, 1, 43, 1, 1, NULL, 20000, CAST(N'2023-12-24T12:18:53.960' AS DateTime), 20000)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [TotalMoney], [PaymentID], [Note], [Address], [LocationID], [District], [Ward]) VALUES (1, 2, CAST(N'2023-12-24T12:18:13.193' AS DateTime), NULL, 14, 0, 1, CAST(N'2023-12-24T12:18:53.197' AS DateTime), 20000, 4, NULL, N'123xcvb', 1, 2, 7)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Pages] ON 

INSERT [dbo].[Pages] ([PageID], [PageName], [Contents], [Thumb], [Published], [Title], [Alias], [CreatedDate], [Ordering], [Active]) VALUES (1, N'Hướng dẫn mua hàng', N'abc', N'huong-dan-mua-hang.jpg', 1, N'abc1111', N'abc', NULL, 1, NULL)
INSERT [dbo].[Pages] ([PageID], [PageName], [Contents], [Thumb], [Published], [Title], [Alias], [CreatedDate], [Ordering], [Active]) VALUES (2, N'test', N'<p>aaaaa</p>', N'default.jpg', 1, N'a', N'a', CAST(N'2022-04-01T00:07:35.760' AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[Pages] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (36, N'Thịt Bò', N'Thịt bò hảo hạn', NULL, 5, 15000, NULL, N'thit-bo.jpg', NULL, CAST(N'2022-05-15T11:35:02.497' AS DateTime), CAST(N'2022-05-15T11:35:02.387' AS DateTime), 0, 1, 1, N'ThitBo', NULL, N'thit-bo', 50, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (37, N'Chuối', N'Chuối', NULL, 4, 30000, NULL, N'chuoi.jpg', NULL, CAST(N'2022-05-15T11:36:32.477' AS DateTime), CAST(N'2022-05-15T11:36:32.470' AS DateTime), 0, 1, 1, N'Chuoi', NULL, N'chuoi', 50, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (39, N'Tôm', N'Tôm', NULL, 5, 70000, NULL, N'tom.jpg', NULL, CAST(N'2022-05-15T11:37:31.987' AS DateTime), CAST(N'2022-05-15T11:37:31.980' AS DateTime), 1, 1, 1, N'Tom', NULL, N'tom', 50, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (40, N'Bơ', N'Bơ', NULL, 4, 50000, NULL, N'bo.jpg', NULL, CAST(N'2022-05-15T11:38:22.853' AS DateTime), CAST(N'2022-05-15T11:38:22.847' AS DateTime), 1, 1, 1, NULL, NULL, N'bo', 50, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (42, N'Ớt Đỏ', N'Ớt đỏ', NULL, 3, 30000, NULL, N'ot-do.jpg', NULL, CAST(N'2022-05-22T15:14:01.450' AS DateTime), CAST(N'2022-05-22T15:14:01.377' AS DateTime), 0, 1, 1, NULL, NULL, N'ot-do', 100, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (43, N'Dừa', N'Trái dừa', NULL, 4, 20000, NULL, N'dua.jpg', NULL, CAST(N'2022-05-22T15:14:38.600' AS DateTime), CAST(N'2022-05-22T15:14:38.590' AS DateTime), 0, 1, 1, NULL, NULL, N'dua', 100, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (44, N'Đậu Hà Lan', N'Đậu hà lan', NULL, 1010, 20000, NULL, N'dau-ha-lan.jpg', NULL, CAST(N'2022-05-22T15:15:20.410' AS DateTime), CAST(N'2022-05-22T15:15:20.400' AS DateTime), 0, 1, 1, NULL, NULL, N'dau-ha-lan', 100, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (45, N'Hành Tây', N'Hành tây', NULL, 3, 10000, NULL, N'hanh-tay.jpg', NULL, CAST(N'2022-05-22T15:15:58.060' AS DateTime), CAST(N'2022-05-22T15:15:58.057' AS DateTime), 0, 1, 1, NULL, NULL, N'hanh-tay', 100, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (46, N'Đu Đủ', N'Trái Đu đủ', NULL, 4, 30000, NULL, N'du-du.jpg', NULL, CAST(N'2022-05-22T15:32:14.580' AS DateTime), CAST(N'2022-05-22T15:32:14.537' AS DateTime), 0, 1, 1, NULL, NULL, N'du-du', 50, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (47, N'Lựu Đỏ', N'Trái lựu đỏ', NULL, 4, 20000, NULL, N'luu-do.jpg', NULL, CAST(N'2022-05-22T15:32:45.437' AS DateTime), CAST(N'2022-05-22T15:32:45.430' AS DateTime), 0, 1, 1, NULL, NULL, N'luu-do', 100, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description]) VALUES (1, N'Admin', N'Admin')
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description]) VALUES (2, N'Staff', N'Nhân viên')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierID], [AccountID], [EmailContact], [Companyname], [ContactTitle], [Addresss], [PostalCode], [Fax], [PaymentMethods], [LocationID], [District], [Ward], [DiscountType], [Notes], [CurrentOrder], [CreateDate], [Logo], [Active]) VALUES (2, NULL, NULL, N'Hệ thống rau xanh', NULL, N'265 Lê lợi', N'123            ', N'123456              ', N'2', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-23T13:43:21.757' AS DateTime), NULL, 1)
INSERT [dbo].[Suppliers] ([SupplierID], [AccountID], [EmailContact], [Companyname], [ContactTitle], [Addresss], [PostalCode], [Fax], [PaymentMethods], [LocationID], [District], [Ward], [DiscountType], [Notes], [CurrentOrder], [CreateDate], [Logo], [Active]) VALUES (3, NULL, NULL, N'Trái cây xanh', NULL, N'11 nguyễn Lộ Trạch', N'123            ', N'123456              ', N'2', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-23T13:45:05.497' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[TransactStatus] ON 

INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (13, N'Chờ lấy hàng', N'Đã xác nhận và chuẩn bị hàng')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (14, N'Chờ xác nhận', N'Đang được người bán xác nhận với người mua')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (15, N'Đang giao', N'Đơn hàng được giao tới người mua')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (16, N'Đã giao thành công', N'Đơn hàng đã được giao thành công tới người mua')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (17, N'Đã hủy', N'Đơn hàng đã khách hàng được hủy thành công')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (18, N'Trả hàng', N'Đơn hàng đã được trả hàng thành công')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (1002, N'Đã từ chối', N'Đơn hàng được nhà cung cấp từ chối')
SET IDENTITY_INSERT [dbo].[TransactStatus] OFF
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Accounts_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Advertisements] ADD  CONSTRAINT [DF_QuangCaos_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_TinDangs_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_OrderDetails_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Pages] ADD  CONSTRAINT [DF_Pages_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Video]  DEFAULT (NULL) FOR [Video]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Suppliers] ADD  CONSTRAINT [DF_Suppliers_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Roles]
GO
ALTER TABLE [dbo].[AttributesPrices]  WITH CHECK ADD  CONSTRAINT [FK_AttributesPrices_Attributes] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[Attributes] ([AttributeID])
GO
ALTER TABLE [dbo].[AttributesPrices] CHECK CONSTRAINT [FK_AttributesPrices_Attributes]
GO
ALTER TABLE [dbo].[AttributesPrices]  WITH CHECK ADD  CONSTRAINT [FK_AttributesPrices_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[AttributesPrices] CHECK CONSTRAINT [FK_AttributesPrices_Products]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Locations] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Locations]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers1] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_TransactStatus] FOREIGN KEY([TransactStatusID])
REFERENCES [dbo].[TransactStatus] ([TransactStatusID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_TransactStatus]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CatID])
REFERENCES [dbo].[Categories] ([CatID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
ALTER TABLE [dbo].[Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Suppliers_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [FK_Suppliers_Accounts]
GO
ALTER TABLE [dbo].[Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Suppliers_Locations] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [FK_Suppliers_Locations]
GO
