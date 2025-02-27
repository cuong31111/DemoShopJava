 
CREATE TABLE [dbo].[account](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[birth_day] [datetime2](7) NULL,
	[code] [varchar](255) NULL,
	[create_date] [datetime2](7) NULL,
	[email] [varchar](255) NULL,
	[is_non_locked] [bit] NOT NULL,
	[password] [varchar](255) NULL,
	[update_date] [datetime2](7) NULL,
	[customer_id] [bigint] NOT NULL,
	[role_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[address_shipping]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address_shipping](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[customer_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[amount] [float] NULL,
	[billing_address] [nvarchar](255) NULL,
	[code] [varchar](50) NOT NULL,
	[create_date] [datetime2](7) NULL,
	[invoice_type] [varchar](255) NULL,
	[promotion_price] [float] NOT NULL,
	[return_status] [bit] NULL,
	[status] [varchar](255) NULL,
	[update_date] [datetime2](7) NULL,
	[customer_id] [bigint] NULL,
	[discount_code_id] [bigint] NULL,
	[payment_method_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[moment_price] [float] NULL,
	[quantity] [int] NULL,
	[return_quantity] [int] NULL,
	[bill_id] [bigint] NULL,
	[product_detail_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_return]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_return](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[is_cancel] [bit] NOT NULL,
	[percent_fee_exchange] [int] NULL,
	[return_date] [datetime2](7) NULL,
	[return_money] [float] NULL,
	[return_reason] [nvarchar](255) NULL,
	[return_status] [int] NOT NULL,
	[bill_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[status] [int] NOT NULL,
	[delete_flag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime2](7) NULL,
	[quantity] [int] NOT NULL,
	[update_date] [datetime2](7) NULL,
	[account_id] [bigint] NULL,
	[product_detail_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[status] [int] NOT NULL,
	[delete_flag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[color]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[delete_flag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[phone_number] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discount_code]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discount_code](
	[id] [bigint] NOT NULL,
	[code] [nvarchar](255) NULL,
	[delete_flag] [bit] NOT NULL,
	[detail] [nvarchar](255) NULL,
	[discount_amount] [float] NULL,
	[end_date] [datetime2](7) NULL,
	[maximum_amount] [int] NULL,
	[maximum_usage] [int] NULL,
	[minimum_amount_in_cart] [float] NULL,
	[percentage] [int] NULL,
	[start_date] [datetime2](7) NULL,
	[status] [int] NOT NULL,
	[type] [int] NOT NULL,
 CONSTRAINT [PK__discount__3213E83F23371E16] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime2](7) NULL,
	[file_type] [varchar](255) NULL,
	[link] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[update_date] [datetime2](7) NULL,
	[product_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[material]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[status] [int] NOT NULL,
	[delete_flag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[amount] [varchar](255) NULL,
	[order_id] [varchar](255) NULL,
	[order_status] [varchar](255) NULL,
	[payment_date] [datetime2](7) NULL,
	[status_exchange] [int] NULL,
	[bill_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_method]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_method](
	[id] [bigint] NOT NULL,
	[name] [varchar](255) NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[create_date] [datetime2](7) NULL,
	[delete_flag] [bit] NOT NULL,
	[describe] [nvarchar](255) NULL,
	[gender] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[price] [float] NOT NULL,
	[status] [int] NOT NULL,
	[updated_date] [datetime2](7) NULL,
	[brand_id] [bigint] NULL,
	[category_id] [bigint] NULL,
	[material_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_detail]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_detail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[barcode] [varchar](255) NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[color_id] [bigint] NULL,
	[product_id] [bigint] NULL,
	[size_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_discount]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_discount](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[closed] [bit] NOT NULL,
	[discounted_amount] [float] NULL,
	[end_date] [datetime2](7) NULL,
	[start_date] [datetime2](7) NULL,
	[product_detail_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[return_detail]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[return_detail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[moment_price_refund] [float] NULL,
	[quantity_return] [int] NULL,
	[return_id] [bigint] NULL,
	[product_detail_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime2](7) NULL,
	[name] [varchar](50) NOT NULL,
	[update_date] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[delete_flag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[verification_code]    Script Date: 12/26/2023 7:56:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[verification_code](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[expiry_time] [datetime2](7) NULL,
	[account_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([id], [birth_day], [code], [create_date], [email], [is_non_locked], [password], [update_date], [customer_id], [role_id]) VALUES (3, CAST(N'2002-12-12T00:00:00.0000000' AS DateTime2), N'TK0001', CAST(N'2023-12-11T00:00:00.0000000' AS DateTime2), N'abc@gmail.com', 1, N'$2a$10$CcaM8/VIeTNaitpd0N43zuIvJC4cv1OVkVQMsgIsocifmRaQM14xe', CAST(N'2002-12-12T00:00:00.0000000' AS DateTime2), 4, 1)
INSERT [dbo].[account] ([id], [birth_day], [code], [create_date], [email], [is_non_locked], [password], [update_date], [customer_id], [role_id]) VALUES (4, CAST(N'2002-12-12T00:00:00.0000000' AS DateTime2), N'TK0004', CAST(N'2023-11-12T00:00:00.0000000' AS DateTime2), N'Huy@gmail.com', 1, N'$2a$10$Ro2M2xmFAxSrQ.cC5XsFUe9sboYpBcwqUt9.xVeyKaWFqjwJ1UAhG', NULL, 5, 1)
INSERT [dbo].[account] ([id], [birth_day], [code], [create_date], [email], [is_non_locked], [password], [update_date], [customer_id], [role_id]) VALUES (5, CAST(N'2002-12-12T00:00:00.0000000' AS DateTime2), N'TK0005', CAST(N'2023-12-22T00:00:00.0000000' AS DateTime2), N'admin@gmail.com', 1, N'$2a$10$Yv./46kS8OoWUdZsFvxFYOchNqGJ/ZNGf55sPrSFXwksHKrnZ5eIG', NULL, 6, 1)
INSERT [dbo].[account] ([id], [birth_day], [code], [create_date], [email], [is_non_locked], [password], [update_date], [customer_id], [role_id]) VALUES (12, CAST(N'2002-12-12T00:00:00.0000000' AS DateTime2), N'TK0006', CAST(N'2023-12-11T00:00:00.0000000' AS DateTime2), N'nhanvien@gmail.com', 1, N'$2a$10$Yv./46kS8OoWUdZsFvxFYOchNqGJ/ZNGf55sPrSFXwksHKrnZ5eIG', CAST(N'2022-12-12T00:00:00.0000000' AS DateTime2), 8, 2)
INSERT [dbo].[account] ([id], [birth_day], [code], [create_date], [email], [is_non_locked], [password], [update_date], [customer_id], [role_id]) VALUES (13, CAST(N'2002-12-12T00:00:00.0000000' AS DateTime2), N'TK0013', CAST(N'2023-10-12T00:00:00.0000000' AS DateTime2), N'sangnnph28386@fpt.edu.vn', 1, N'$2a$10$VE7ki07ZmZtaQSz22HEPI.XrN8/xUy4S73.LILmPWHxaCMdTPhQIu', NULL, 9, 1)
INSERT [dbo].[account] ([id], [birth_day], [code], [create_date], [email], [is_non_locked], [password], [update_date], [customer_id], [role_id]) VALUES (14, CAST(N'2002-12-12T00:00:00.0000000' AS DateTime2), N'TK0014', CAST(N'2023-02-14T21:02:52.4441863' AS DateTime2), N'Kevynsang1@gmail.com', 1, N'$2a$10$9SxA3no.KGRx6n12yjN1PunEEIvsdSqJQB23gYCe/2D/38U9rq8m.', NULL, 11, 3)
INSERT [dbo].[account] ([id], [birth_day], [code], [create_date], [email], [is_non_locked], [password], [update_date], [customer_id], [role_id]) VALUES (16, NULL, N'TK0015', CAST(N'2023-12-18T20:36:04.9429261' AS DateTime2), N'Kevynsang292003@gmail.com', 1, N'$2a$10$/Qu8dmEaJcOOy6LIV8RX5O3QkjYKb05cCLIiJjtOb4BoHfhw2po8a', NULL, 16, 2)
SET IDENTITY_INSERT [dbo].[account] OFF
GO
SET IDENTITY_INSERT [dbo].[address_shipping] ON 

INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (1, N'So  1, Xã Đông Hiệp, Huyện Cờ Đỏ, Thành phố Cần Thơ', 1)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (2, N'So  1, Xã Hòa Bắc, Huyện Hòa Vang, Thành phố Đà Nẵng', 4)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (3, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', 4)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (4, N'số 101, Xã Cổ Loa, Huyện Đông Anh, Thành phố Hà Nội', 9)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (5, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', 9)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (6, N'số 101, Xã Bắc Hồng, Huyện Đông Anh, Hà Nội', 11)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (7, N'số 101, Xã Đại Yên, Huyện Chương Mỹ, Hà Nội', 11)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (8, N'So  1, Thị trấn Tây Đằng, Huyện Ba Vì, Hà Nội', 11)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (9, N'So  1, Xã Ba Trại, Huyện Ba Vì, Hà Nội', 9)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (10, N'số 4, Xã Ba Vì, Huyện Ba Vì, Hà Nội', 6)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (11, N'So  4, Thị trấn Chúc Sơn, Huyện Chương Mỹ, Hà Nội', 9)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (12, N'số 101, Thị trấn Phúc Thọ, Huyện Phúc Thọ, Hà Nội', 16)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (13, N'số 101, Thị trấn Sóc Sơn, Huyện Sóc Sơn, Hà Nội', 16)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (14, N'so 3, Thị trấn Chúc Sơn, Huyện Chương Mỹ, Hà Nội', 16)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (15, N'số 4, Xã Ba Vì, Huyện Ba Vì, Hà Nội', 16)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (16, N'số 4, Xã Ba Trại, Huyện Ba Vì, Hà Nội', 11)
INSERT [dbo].[address_shipping] ([id], [address], [customer_id]) VALUES (17, N'số 4, Thị trấn Tây Đằng, Huyện Ba Vì, Hà Nội', 11)
SET IDENTITY_INSERT [dbo].[address_shipping] OFF
GO
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (1, 2050000, N'', N'HD001', CAST(N'2022-12-05T00:07:26.0407552' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T00:07:26.0407552' AS DateTime2), 1, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (2, 2950000, N'', N'HD002', CAST(N'2022-11-05T00:07:40.7191845' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T00:07:40.7191845' AS DateTime2), 1, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (3, 2430000, N'', N'HD003', CAST(N'2023-01-05T00:08:16.1920567' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T00:08:16.1920567' AS DateTime2), 2, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (4, 5890000, N'', N'HD004', CAST(N'2023-02-05T18:03:14.2491331' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:03:14.2491331' AS DateTime2), 3, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (5, 1850000, N'', N'HD005', CAST(N'2023-03-05T18:03:33.2350189' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:03:33.2350189' AS DateTime2), 3, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (6, 5890000, N'', N'HD005', CAST(N'2023-04-05T18:03:33.2417583' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:03:33.2417583' AS DateTime2), 3, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (7, 1850000, N'', N'HD006', CAST(N'2023-05-05T18:03:38.9069166' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:03:38.9069166' AS DateTime2), 3, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (8, 5890000, N'', N'HD006', CAST(N'2023-06-05T18:03:38.9069166' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:03:38.9069166' AS DateTime2), 3, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (9, 4490000, N'', N'HD007', CAST(N'2023-07-05T18:04:36.1735651' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:04:36.1735651' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (10, 2840000, N'', N'HD008', CAST(N'2023-08-05T18:05:34.4242106' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:05:34.4242106' AS DateTime2), 2, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (11, 7600000, N'So  1, Xã Đông Hiệp, Huyện Cờ Đỏ, Thành phố Cần Thơ', N'HD009', CAST(N'2023-09-05T18:11:34.0953644' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T18:11:34.0953644' AS DateTime2), 1, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (12, 5600000, N'So  1, Xã Hòa Bắc, Huyện Hòa Vang, Thành phố Đà Nẵng', N'HD010', CAST(N'2023-09-06T23:18:36.0267091' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T23:18:36.0267091' AS DateTime2), 4, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (13, 2920000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD011', CAST(N'2023-10-05T23:19:16.3744272' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-05T23:19:16.3744272' AS DateTime2), 4, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (14, 4600000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD012', CAST(N'2023-10-06T23:19:49.2210924' AS DateTime2), N'ONLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-05T23:19:49.2210924' AS DateTime2), 4, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (15, 6000000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD013', CAST(N'2023-11-05T23:24:20.4668319' AS DateTime2), N'ONLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-05T23:24:20.4668319' AS DateTime2), 4, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (16, 10500000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD014', CAST(N'2023-11-07T23:31:12.0874149' AS DateTime2), N'ONLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-05T23:31:12.0874149' AS DateTime2), 4, 1, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (17, 5400800, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD015', CAST(N'2023-12-02T23:37:27.5328109' AS DateTime2), N'ONLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-05T23:37:27.5328109' AS DateTime2), 4, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (18, 8300000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD016', CAST(N'2023-12-03T23:50:54.5965628' AS DateTime2), N'ONLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-05T23:50:54.5965628' AS DateTime2), 4, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (19, 9360000, N'So  1, Xã Hòa Bắc, Huyện Hòa Vang, Thành phố Đà Nẵng', N'HD017', CAST(N'2023-12-05T23:51:55.3350579' AS DateTime2), N'ONLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-05T23:51:55.3350579' AS DateTime2), 4, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (20, 1680000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD018', CAST(N'2023-12-06T00:29:26.5939326' AS DateTime2), N'ONLINE', 0, 0, N'CHO_LAY_HANG', CAST(N'2023-12-06T00:29:26.5939326' AS DateTime2), 4, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (21, 1700000, N'', N'HD019', CAST(N'2023-12-06T06:52:55.0076061' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T06:52:55.0076061' AS DateTime2), 1, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (22, 959200, N'', N'HD020', CAST(N'2023-12-06T13:40:02.8598207' AS DateTime2), N'OFFLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-06T13:40:02.8598207' AS DateTime2), 9, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (23, 900000, N'số 101, Xã Cổ Loa, Huyện Đông Anh, Thành phố Hà Nội', N'HD021', CAST(N'2023-12-06T13:45:26.6063156' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-06T13:45:26.6063156' AS DateTime2), 9, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (24, 3280000, N'', N'HD022', CAST(N'2023-12-06T13:52:07.2312187' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-06T13:52:07.2312187' AS DateTime2), 9, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (25, 1360000, N'', N'HD023', CAST(N'2023-12-06T14:21:10.2232849' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-06T14:21:10.2232849' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (26, 475200, N'số 101, Xã Cổ Loa, Huyện Đông Anh, Thành phố Hà Nội', N'HD024', CAST(N'2023-12-06T14:46:22.3577981' AS DateTime2), N'ONLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T14:46:22.3577981' AS DateTime2), 9, 1, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (27, 1780000, N'', N'HD025', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (28, 1780000, N'', N'HD025', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (29, 1780000, N'', N'HD025', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (30, 1780000, N'', N'HD025', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (31, 1780000, N'', N'HD025', CAST(N'2023-12-06T18:16:05.9868106' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T18:16:05.9868106' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (32, 1780000, N'', N'HD025', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T18:16:05.9857459' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (33, 1780000, N'', N'HD026', CAST(N'2023-12-06T18:16:06.0679578' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-06T18:16:06.0679578' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (34, 1780000, N'', N'HD026', CAST(N'2023-12-06T18:16:06.0541227' AS DateTime2), N'OFFLINE', 300000, 1, N'TRA_HANG', CAST(N'2023-12-06T18:16:06.0541227' AS DateTime2), 10, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (35, 2570000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD027', CAST(N'2023-12-06T18:18:22.1016501' AS DateTime2), N'ONLINE', 300000, 1, N'TRA_HANG', CAST(N'2023-12-06T18:18:22.1016501' AS DateTime2), 9, 1, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (36, 5065600, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD028', CAST(N'2023-12-09T18:19:03.7632334' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-09T18:19:03.7643308' AS DateTime2), 9, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (37, 3091200, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD029', CAST(N'2023-12-09T20:19:54.2954644' AS DateTime2), N'ONLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-09T20:19:54.2954644' AS DateTime2), 9, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (38, 3282000, N'số 101, Xã Cổ Loa, Huyện Đông Anh, Thành phố Hà Nội', N'HD030', CAST(N'2023-12-09T20:20:48.8840019' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-09T20:20:48.8840019' AS DateTime2), 9, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (39, 1545600, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD031', CAST(N'2023-12-10T22:00:32.4429285' AS DateTime2), N'ONLINE', 0, 0, N'HUY', CAST(N'2023-12-10T22:00:32.4429285' AS DateTime2), 9, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (40, 2240000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD032', CAST(N'2023-12-11T21:16:40.1147292' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-11T21:16:40.1147292' AS DateTime2), 9, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (41, 450000, N'số 101, Xã Cổ Loa, Huyện Đông Anh, Thành phố Hà Nội', N'HD033', CAST(N'2023-12-12T21:34:20.3142494' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-12T21:34:20.3142494' AS DateTime2), 9, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (42, 560000, N'số 101, Xã Cổ Loa, Huyện Đông Anh, Thành phố Hà Nội', N'HD034', CAST(N'2023-12-14T20:12:06.1210182' AS DateTime2), N'ONLINE', 0, 0, N'HUY', CAST(N'2023-12-14T20:12:41.2492371' AS DateTime2), 9, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (43, 560000, N'số 101, Xã Đại Yên, Huyện Chương Mỹ, Hà Nội', N'HD035', CAST(N'2023-12-14T21:04:14.8575641' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-14T21:06:34.2987157' AS DateTime2), 11, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (44, 3174000, N'', N'HD036', CAST(N'2023-12-14T21:07:44.7674140' AS DateTime2), N'OFFLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-14T21:07:44.7674140' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (45, 3174000, N'', N'HD036', CAST(N'2023-12-14T21:07:44.7674140' AS DateTime2), N'OFFLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-14T21:07:44.7674140' AS DateTime2), 11, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (46, 560000, N'', N'HD037', CAST(N'2023-12-14T21:08:17.7832706' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-14T21:08:17.7832706' AS DateTime2), 11, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (47, 3174000, N'', N'HD037', CAST(N'2023-12-14T21:08:17.7842707' AS DateTime2), N'OFFLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-14T21:08:17.7842707' AS DateTime2), 11, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (48, 3174000, N'', N'HD037', CAST(N'2023-12-14T21:08:17.7853059' AS DateTime2), N'OFFLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-14T21:08:17.7853059' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (49, 1384000, N'', N'HD038', CAST(N'2023-12-14T21:09:10.2568611' AS DateTime2), N'OFFLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-14T21:09:10.2568611' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (50, 2540000, N'', N'HD039', CAST(N'2023-12-14T21:09:24.6558963' AS DateTime2), N'OFFLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-14T21:09:24.6558963' AS DateTime2), 11, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (51, 3580000, N'', N'HD040', CAST(N'2023-12-14T21:11:00.5413808' AS DateTime2), N'OFFLINE', 300000, 1, N'TRA_HANG', CAST(N'2023-12-14T21:11:00.5413808' AS DateTime2), 2, 2, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (52, 3480000, N'số 101, Xã Đại Yên, Huyện Chương Mỹ, Hà Nội', N'HD041', CAST(N'2023-12-16T20:04:53.5005974' AS DateTime2), N'ONLINE', 300000, 1, N'TRA_HANG', CAST(N'2023-12-16T20:05:37.5630181' AS DateTime2), 11, 2, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (53, 980000, N'', N'HD042', CAST(N'2023-12-16T22:32:33.8249016' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-16T22:32:33.8249016' AS DateTime2), 7, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (54, 2040000, N'', N'HD043', CAST(N'2023-12-17T10:56:01.4338606' AS DateTime2), N'OFFLINE', 204000, 1, N'TRA_HANG', CAST(N'2023-12-17T10:56:01.4338606' AS DateTime2), 6, 2, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (55, 680000, N'số 101, Xã Đại Yên, Huyện Chương Mỹ, Hà Nội', N'HD044', CAST(N'2023-12-17T10:56:55.9019960' AS DateTime2), N'ONLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-17T10:59:41.6054027' AS DateTime2), 11, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (56, 5180000, N'So  1, Thị trấn Tây Đằng, Huyện Ba Vì, Hà Nội', N'HD045', CAST(N'2023-12-17T11:03:29.4226240' AS DateTime2), N'ONLINE', 0, 0, N'CHO_XAC_NHAN', CAST(N'2023-12-17T11:03:29.4226240' AS DateTime2), 11, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (57, 1460000, N'số 101, Xã Đại Yên, Huyện Chương Mỹ, Hà Nội', N'HD046', CAST(N'2023-12-17T11:04:26.0113490' AS DateTime2), N'ONLINE', 0, 0, N'HUY', CAST(N'2023-12-17T11:09:21.7537714' AS DateTime2), 11, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (58, 560000, N'số 101, Xã Cổ Loa, Huyện Đông Anh, Thành phố Hà Nội', N'HD047', CAST(N'2023-12-17T11:05:09.5580844' AS DateTime2), N'ONLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:07:10.5497006' AS DateTime2), 9, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (59, 3360000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD048', CAST(N'2023-12-17T11:09:47.7389374' AS DateTime2), N'ONLINE', 0, 0, N'CHO_XAC_NHAN', CAST(N'2023-12-17T11:09:47.7389374' AS DateTime2), 9, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (60, 1287500, N'số 101, Xã Cổ Loa, Huyện Đông Anh, Thành phố Hà Nội', N'HD049', CAST(N'2023-12-17T11:10:14.7941290' AS DateTime2), N'ONLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-17T11:11:11.6653229' AS DateTime2), 9, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (61, 10440000, N'số 101, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', N'HD050', CAST(N'2023-12-17T11:10:46.4103157' AS DateTime2), N'ONLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:10:59.2957210' AS DateTime2), 9, 2, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (62, 1455200, N'', N'HD051', CAST(N'2023-12-17T11:12:15.0687299' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:12:15.0687299' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (63, 1455200, N'', N'HD052', CAST(N'2023-12-17T11:12:25.9946904' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:12:25.9946904' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (64, 1680000, N'', N'HD052', CAST(N'2023-12-17T11:12:25.9946904' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:12:25.9946904' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (65, 1680000, N'', N'HD053', CAST(N'2023-12-17T11:12:36.3857990' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:12:36.3857990' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (66, 1455200, N'', N'HD053', CAST(N'2023-12-17T11:12:36.3857990' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:12:36.3857990' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (67, 1540000, N'', N'HD053', CAST(N'2023-12-17T11:12:36.3867956' AS DateTime2), N'OFFLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-17T11:12:36.3867956' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (68, 1455200, N'', N'HD054', CAST(N'2023-12-17T11:12:48.1481234' AS DateTime2), N'OFFLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-17T11:12:48.1481234' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (69, 1540000, N'', N'HD054', CAST(N'2023-12-17T11:12:48.1481234' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:12:48.1481234' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (70, 1260000, N'', N'HD054', CAST(N'2023-12-17T11:12:48.1481234' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:12:48.1481234' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (71, 1680000, N'', N'HD054', CAST(N'2023-12-17T11:12:48.1501243' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:12:48.1501243' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (72, 1260000, N'', N'HD055', CAST(N'2023-12-17T11:12:53.7541442' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:12:53.7541442' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (73, 1455200, N'', N'HD055', CAST(N'2023-12-17T11:12:53.7541442' AS DateTime2), N'OFFLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-17T11:12:53.7541442' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (74, 1680000, N'', N'HD055', CAST(N'2023-12-17T11:12:53.7541442' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:12:53.7541442' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (75, 1540000, N'', N'HD055', CAST(N'2023-12-17T11:12:53.7541442' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:12:53.7541442' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (76, 1790000, N'', N'HD056', CAST(N'2023-12-17T11:13:25.4583010' AS DateTime2), N'OFFLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-17T11:13:25.4583010' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (77, 1570000, N'', N'HD057', CAST(N'2023-12-17T11:13:49.0504264' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:13:49.0504264' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (78, 1650000, N'', N'HD058', CAST(N'2023-12-17T11:15:52.8027130' AS DateTime2), N'OFFLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-17T11:15:52.8027130' AS DateTime2), 1, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (79, 1570000, N'', N'HD059', CAST(N'2023-12-17T11:16:09.4115538' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:16:09.4115538' AS DateTime2), 2, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (80, 1570000, N'', N'HD060', CAST(N'2023-12-17T11:16:27.2668508' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:16:27.2668508' AS DateTime2), 2, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (81, 965200, N'', N'HD061', CAST(N'2023-12-17T11:16:27.2668508' AS DateTime2), N'OFFLINE', 96520, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:16:27.2668508' AS DateTime2), 4, 2, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (82, 890000, N'', N'HD062', CAST(N'2023-12-17T11:19:43.1880200' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:19:43.1880200' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (83, 2430000, N'', N'HD063', CAST(N'2023-12-17T11:20:15.5135238' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:20:15.5135238' AS DateTime2), 5, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (84, 1010000, N'', N'HD064', CAST(N'2023-12-17T11:20:50.0501143' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:20:50.0501143' AS DateTime2), 8, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (85, 1610000, N'', N'HD065', CAST(N'2023-12-17T11:25:59.9044666' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:25:59.9044666' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (86, 2470000, N'', N'HD066', CAST(N'2023-12-17T11:26:23.9960103' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:26:23.9960103' AS DateTime2), 7, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (87, 2540000, N'', N'HD067', CAST(N'2023-12-17T11:27:20.0197102' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:27:20.0197102' AS DateTime2), 2, 2, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (88, 1568000, N'', N'HD068', CAST(N'2023-12-17T11:27:31.9769980' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:27:31.9769980' AS DateTime2), 1, 2, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (89, 1450000, N'', N'HD069', CAST(N'2023-12-17T11:27:43.1450705' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:27:43.1450705' AS DateTime2), 7, 2, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (90, 1650000, N'', N'HD070', CAST(N'2023-12-17T11:29:35.5779480' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:29:35.5779480' AS DateTime2), 7, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (91, 1210000, N'', N'HD071', CAST(N'2023-12-17T11:29:43.0484282' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:29:43.0484282' AS DateTime2), 1, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (92, 1900000, N'', N'HD072', CAST(N'2023-12-17T11:29:49.9199149' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:29:49.9199149' AS DateTime2), 2, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (93, 33920000, N'', N'HD073', CAST(N'2023-12-17T11:31:25.9061255' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T11:31:25.9061255' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (94, 965200, N'', N'HD074', CAST(N'2023-12-17T13:37:45.8573568' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T13:37:45.8573568' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (95, 962700, N'', N'HD075', CAST(N'2023-12-17T13:38:45.8705225' AS DateTime2), N'OFFLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-17T13:38:45.8705225' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (96, 1680000, N'', N'HD076', CAST(N'2023-12-17T13:40:13.6791538' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T13:40:13.6791538' AS DateTime2), 2, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (97, 1800000, N'So  1, Thị trấn Tây Đằng, Huyện Ba Vì, Hà Nội', N'HD077', CAST(N'2023-12-17T13:42:08.9725390' AS DateTime2), N'ONLINE', 0, 0, N'CHO_XAC_NHAN', CAST(N'2023-12-17T13:42:08.9725390' AS DateTime2), 11, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (98, 1680000, N'', N'HD078', CAST(N'2023-12-17T14:34:46.2907532' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T14:34:46.2907532' AS DateTime2), 2, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (99, 28650000, N'', N'HD079', CAST(N'2023-12-17T14:34:46.2907532' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-17T14:34:46.2907532' AS DateTime2), 12, 3, 3)
GO
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (100, 1540000, N'', N'HD080', CAST(N'2023-12-17T14:37:52.6151380' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T14:37:52.6151380' AS DateTime2), 10, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (101, 1680000, N'', N'HD081', CAST(N'2023-12-17T14:37:52.6161978' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T14:37:52.6161978' AS DateTime2), 2, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (102, 4300000, N'So  1, Xã Ba Trại, Huyện Ba Vì, Hà Nội', N'HD082', CAST(N'2023-12-17T14:44:27.5533187' AS DateTime2), N'ONLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-17T14:47:50.0067197' AS DateTime2), 9, 2, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (103, 360000, N'', N'HD083', CAST(N'2023-12-17T15:17:41.8307331' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T15:17:41.8322635' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (104, 2500000, N'', N'HD084', CAST(N'2023-12-17T15:18:01.5439899' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T15:18:01.5439899' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (105, 360000, N'', N'HD085', CAST(N'2023-12-17T15:18:09.0979952' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T15:18:09.0979952' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (106, 2860000, N'', N'HD085', CAST(N'2023-12-17T15:18:09.0969961' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T15:18:09.0969961' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (107, 3200000, N'', N'HD086', CAST(N'2023-12-17T15:24:46.3405196' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T15:24:46.3405196' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (108, 1944800, N'', N'HD087', CAST(N'2023-12-17T15:24:54.8613206' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T15:24:54.8613206' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (109, 2397600, N'', N'HD088', CAST(N'2023-12-17T15:25:09.7011058' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T15:25:09.7011058' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (110, 1784400, N'', N'HD089', CAST(N'2023-12-17T15:25:16.4682863' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-17T15:25:16.4682863' AS DateTime2), NULL, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (111, 1940000, N'', N'HD090', CAST(N'2023-12-17T16:06:04.0859303' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-17T16:06:04.0859303' AS DateTime2), 13, 3, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (112, 3400600, N'số 4, Xã Ba Vì, Huyện Ba Vì, Hà Nội', N'HD091', CAST(N'2023-12-17T16:12:03.4921540' AS DateTime2), N'ONLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-17T16:14:35.4701360' AS DateTime2), 6, 3, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (113, 1760000, N'', N'HD092', CAST(N'2023-12-17T17:05:29.2277409' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-17T17:05:29.2277409' AS DateTime2), 14, 3, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (114, 2105600, N'So  4, Thị trấn Chúc Sơn, Huyện Chương Mỹ, Hà Nội', N'HD093', CAST(N'2023-12-17T17:09:24.2919340' AS DateTime2), N'ONLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-17T17:11:50.7381399' AS DateTime2), 9, 3, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (115, 2664000, N'số 101, Xã Đại Yên, Huyện Chương Mỹ, Hà Nội', N'HD094', CAST(N'2023-12-17T20:50:27.0555828' AS DateTime2), N'ONLINE', 0, 0, N'CHO_XAC_NHAN', CAST(N'2023-12-17T20:50:27.0555828' AS DateTime2), 11, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (116, 2000000, N'', N'HD095', CAST(N'2023-12-17T21:39:53.8929456' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-17T21:39:53.8929456' AS DateTime2), 7, 3, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (117, 1680000, N'', N'HD096', CAST(N'2023-12-17T21:46:34.9229714' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-17T21:46:34.9229714' AS DateTime2), 9, 3, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (118, 1600000, N'', N'HD097', CAST(N'2023-12-17T21:48:43.7923982' AS DateTime2), N'OFFLINE', 160000, 0, N'HOAN_THANH', CAST(N'2023-12-17T21:48:43.7923982' AS DateTime2), NULL, 2, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (119, 1310000, N'', N'HD098', CAST(N'2023-12-18T20:09:02.8143413' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-18T20:09:02.8143413' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (120, 1350000, N'', N'HD099', CAST(N'2023-12-18T20:10:18.2862979' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-18T20:10:18.2862979' AS DateTime2), 6, 3, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (121, 670000, N'số 101, Thị trấn Sóc Sơn, Huyện Sóc Sơn, Hà Nội', N'HD100', CAST(N'2023-12-18T20:37:21.9069217' AS DateTime2), N'ONLINE', 67000, 0, N'CHO_XAC_NHAN', CAST(N'2023-12-18T20:37:21.9069217' AS DateTime2), 16, 2, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (122, 5400000, N'', N'HD101', CAST(N'2023-12-18T20:41:47.6243527' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-18T20:41:47.6243527' AS DateTime2), 16, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (123, 4910000, N'', N'HD102', CAST(N'2023-12-18T21:48:49.4835697' AS DateTime2), N'OFFLINE', 200000, 0, N'HOAN_THANH', CAST(N'2023-12-18T21:48:49.4835697' AS DateTime2), 17, 6, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (124, 1732000, N'so 3, Thị trấn Chúc Sơn, Huyện Chương Mỹ, Hà Nội', N'HD103', CAST(N'2023-12-18T21:55:04.5759680' AS DateTime2), N'ONLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-18T21:59:05.0252942' AS DateTime2), 16, 3, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (125, 2111500, N'', N'HD104', CAST(N'2023-12-18T23:24:31.8845105' AS DateTime2), N'OFFLINE', 200000, 0, N'HOAN_THANH', CAST(N'2023-12-18T23:24:31.8854920' AS DateTime2), 12, 6, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (126, 2765600, N'số 4, Xã Ba Vì, Huyện Ba Vì, Hà Nội', N'HD105', CAST(N'2023-12-18T23:28:32.0670867' AS DateTime2), N'ONLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-18T23:32:02.2644711' AS DateTime2), 16, 4, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (127, 760000, N'', N'HD106', CAST(N'2023-12-19T08:52:04.5048252' AS DateTime2), N'OFFLINE', 0, 0, N'HOAN_THANH', CAST(N'2023-12-19T08:52:04.5048252' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (128, 1120000, N'số 101, Thị trấn Sóc Sơn, Huyện Sóc Sơn, Hà Nội', N'HD107', CAST(N'2023-12-19T10:51:15.8650717' AS DateTime2), N'ONLINE', 0, 1, N'TRA_HANG', CAST(N'2023-12-19T10:52:06.5507733' AS DateTime2), 16, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (129, 560000, N'số 4, Xã Ba Vì, Huyện Ba Vì, Hà Nội', N'HD108', CAST(N'2023-12-19T11:07:54.0158324' AS DateTime2), N'ONLINE', 0, 0, N'HUY', CAST(N'2023-12-19T11:08:13.3084707' AS DateTime2), 16, NULL, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (130, 2900000, N'', N'HD109', CAST(N'2023-12-19T11:51:51.7834965' AS DateTime2), N'OFFLINE', 200000, 0, N'HOAN_THANH', CAST(N'2023-12-19T11:51:51.7834965' AS DateTime2), 12, 6, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (131, 2720000, N'số 4, Xã Ba Trại, Huyện Ba Vì, Hà Nội', N'HD110', CAST(N'2023-12-19T11:56:06.7619779' AS DateTime2), N'ONLINE', 200000, 0, N'HOAN_THANH', CAST(N'2023-12-19T11:58:47.6046131' AS DateTime2), 11, 6, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (132, 2400000, N'', N'HD111', CAST(N'2023-12-19T13:15:48.7191146' AS DateTime2), N'OFFLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-19T13:15:48.7191146' AS DateTime2), 18, 8, 3)
INSERT [dbo].[bill] ([id], [amount], [billing_address], [code], [create_date], [invoice_type], [promotion_price], [return_status], [status], [update_date], [customer_id], [discount_code_id], [payment_method_id]) VALUES (133, 2440000, N'số 4, Thị trấn Tây Đằng, Huyện Ba Vì, Hà Nội', N'HD112', CAST(N'2023-12-19T13:19:18.8037769' AS DateTime2), N'ONLINE', 300000, 0, N'HOAN_THANH', CAST(N'2023-12-19T13:21:14.2172719' AS DateTime2), 11, 8, 3)
SET IDENTITY_INSERT [dbo].[bill] OFF
GO
SET IDENTITY_INSERT [dbo].[bill_detail] ON 

INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (1, 500000, 3, NULL, 1, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (2, 550000, 1, NULL, 1, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (3, 500000, 1, NULL, 2, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (4, 450000, 1, NULL, 2, 19)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (5, 560000, 1, NULL, 2, 17)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (6, 560000, 1, NULL, 2, 21)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (7, 880000, 1, NULL, 2, 25)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (8, 760000, 1, NULL, 3, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (9, 890000, 1, NULL, 3, 43)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (10, 780000, 1, NULL, 3, 66)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (11, 760000, 1, NULL, 4, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (12, 890000, 4, NULL, 4, 45)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (13, 810000, 1, NULL, 4, 51)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (14, 760000, 1, NULL, 4, 67)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (15, 500000, 1, NULL, 5, 14)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (16, 450000, 2, NULL, 5, 13)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (17, 450000, 1, NULL, 5, 15)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (18, 760000, 1, NULL, 6, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (19, 890000, 4, NULL, 6, 45)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (20, 810000, 1, NULL, 6, 51)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (21, 760000, 1, NULL, 6, 67)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (22, 500000, 1, NULL, 7, 14)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (23, 450000, 2, NULL, 7, 13)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (24, 450000, 1, NULL, 7, 15)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (25, 760000, 1, NULL, 8, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (26, 890000, 4, NULL, 8, 45)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (27, 810000, 1, NULL, 8, 51)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (28, 760000, 1, NULL, 8, 67)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (29, 760000, 3, NULL, 9, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (30, 900000, 1, NULL, 9, 46)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (31, 640000, 1, NULL, 9, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (32, 670000, 1, NULL, 9, 69)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (33, 550000, 1, NULL, 10, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (34, 500000, 1, NULL, 10, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (35, 450000, 1, NULL, 10, 13)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (36, 670000, 2, NULL, 10, 11)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (37, 560000, 3, NULL, 11, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (38, 560000, 5, NULL, 11, 12)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (39, 780000, 4, NULL, 11, 31)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (40, 560000, 4, NULL, 12, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (41, 700000, 4, NULL, 12, 36)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (42, 560000, 1, NULL, 12, 54)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (43, 560000, 2, NULL, 13, 8)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (44, 900000, 2, NULL, 13, 32)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (45, 900000, 2, 1, 14, 32)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (46, 560000, 5, 0, 14, 54)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (47, 450000, 4, 2, 15, 7)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (48, 700000, 6, 1, 15, 36)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (49, 560000, 5, NULL, 16, 8)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (50, 800000, 4, NULL, 16, 28)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (51, 450000, 10, NULL, 16, 63)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (52, 475200, 4, 0, 17, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (53, 700000, 5, 2, 17, 36)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (54, 450000, 10, 1, 18, 63)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (55, 760000, 5, 0, 18, 70)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (56, 780000, 8, 1, 19, 49)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (57, 780000, 4, 0, 19, 26)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (58, 560000, 3, NULL, 20, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (59, 890000, 1, NULL, 21, 45)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (60, 810000, 1, NULL, 21, 51)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (61, 484000, 1, 1, 22, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (62, 475200, 1, 0, 22, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (63, 900000, 1, NULL, 23, 32)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (64, 760000, 2, NULL, 24, 64)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (65, 760000, 1, NULL, 24, 55)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (66, 500000, 1, NULL, 24, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (67, 500000, 1, NULL, 24, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (68, 800000, 1, NULL, 25, 28)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (69, 560000, 1, NULL, 25, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (70, 475200, 1, NULL, 26, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (71, 500000, 1, NULL, 27, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (72, 640000, 2, NULL, 27, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (73, 500000, 1, NULL, 28, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (74, 640000, 2, NULL, 28, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (75, 500000, 1, NULL, 29, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (76, 640000, 2, NULL, 29, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (77, 500000, 1, NULL, 30, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (78, 640000, 2, NULL, 30, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (79, 500000, 1, NULL, 31, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (80, 640000, 2, NULL, 31, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (81, 500000, 1, NULL, 32, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (82, 640000, 2, NULL, 32, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (83, 500000, 1, NULL, 33, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (84, 640000, 2, NULL, 33, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (85, 500000, 1, 1, 34, 20)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (86, 640000, 2, 0, 34, 71)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (87, 650000, 1, 1, 35, 5)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (88, 640000, 3, 0, 35, 6)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (89, 405000, 4, NULL, 36, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (90, 560000, 2, NULL, 36, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (91, 670000, 2, NULL, 36, 11)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (92, 492800, 2, NULL, 36, 12)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (93, 560000, 2, 2, 37, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (94, 492800, 4, 0, 37, 12)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (95, 306000, 2, NULL, 38, 13)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (96, 890000, 3, NULL, 38, 65)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (97, 560000, 1, NULL, 39, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (98, 492800, 2, NULL, 39, 12)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (99, 560000, 2, NULL, 40, 8)
GO
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (100, 560000, 2, NULL, 40, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (101, 450000, 1, NULL, 41, 7)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (102, 560000, 1, NULL, 42, 8)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (103, 560000, 1, NULL, 43, 8)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (104, 484000, 1, 1, 44, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (105, 560000, 4, 0, 44, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (106, 450000, 1, 0, 44, 9)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (107, 484000, 1, 0, 45, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (108, 560000, 4, 1, 45, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (109, 450000, 1, 0, 45, 9)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (110, 560000, 1, NULL, 46, 8)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (111, 484000, 1, 0, 47, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (112, 560000, 4, 1, 47, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (113, 450000, 1, 0, 47, 9)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (114, 484000, 1, 0, 48, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (115, 560000, 4, 1, 48, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (116, 450000, 1, 0, 48, 9)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (117, 450000, 2, 1, 49, 1)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (118, 484000, 1, 0, 49, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (119, 890000, 2, 1, 50, 43)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (120, 760000, 1, 0, 50, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (121, 780000, 2, 1, 51, 31)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (122, 760000, 2, 0, 51, 64)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (123, 500000, 1, 0, 51, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (124, 560000, 3, 1, 52, 8)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (125, 900000, 2, 0, 52, 32)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (126, 490000, 2, NULL, 53, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (127, 340000, 6, 1, 54, 92)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (128, 340000, 2, 1, 55, 92)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (129, 500000, 1, NULL, 56, 93)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (130, 780000, 3, NULL, 56, 31)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (131, 780000, 3, NULL, 56, 26)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (132, 560000, 1, NULL, 57, 21)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (133, 450000, 2, NULL, 57, 63)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (134, 560000, 1, NULL, 58, 8)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (135, 560000, 6, NULL, 59, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (136, 487500, 1, 0, 60, 5)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (137, 800000, 1, 1, 60, 28)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (138, 900000, 9, NULL, 61, 32)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (139, 780000, 3, NULL, 61, 26)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (140, 490000, 2, NULL, 62, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (141, 475200, 1, NULL, 62, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (142, 490000, 2, NULL, 63, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (143, 475200, 1, NULL, 63, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (144, 900000, 1, NULL, 64, 46)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (145, 780000, 1, NULL, 64, 66)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (146, 900000, 1, NULL, 65, 46)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (147, 490000, 2, NULL, 66, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (148, 780000, 1, NULL, 65, 66)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (149, 475200, 1, NULL, 66, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (150, 760000, 1, 0, 67, 67)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (151, 780000, 1, 1, 67, 68)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (152, 490000, 2, 1, 68, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (153, 760000, 1, NULL, 69, 67)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (154, 560000, 1, NULL, 70, 17)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (155, 780000, 1, NULL, 69, 68)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (156, 475200, 1, 0, 68, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (157, 700000, 1, NULL, 70, 16)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (158, 900000, 1, NULL, 71, 46)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (159, 780000, 1, NULL, 71, 66)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (160, 490000, 2, 1, 73, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (161, 560000, 1, NULL, 72, 17)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (162, 900000, 1, NULL, 74, 46)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (163, 475200, 1, 0, 73, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (164, 760000, 1, NULL, 75, 67)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (165, 780000, 1, NULL, 75, 68)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (166, 700000, 1, NULL, 72, 16)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (167, 780000, 1, NULL, 74, 66)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (168, 890000, 1, 1, 76, 45)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (169, 900000, 1, 0, 76, 46)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (170, 760000, 1, NULL, 77, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (171, 810000, 1, NULL, 77, 51)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (172, 760000, 1, 1, 78, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (173, 890000, 1, 0, 78, 45)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (174, 670000, 1, NULL, 79, 74)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (175, 900000, 1, NULL, 79, 79)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (176, 670000, 1, NULL, 80, 74)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (177, 900000, 1, NULL, 80, 79)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (178, 475200, 1, NULL, 81, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (179, 490000, 1, NULL, 81, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (180, 890000, 1, NULL, 82, 45)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (181, 890000, 1, NULL, 83, 45)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (182, 780000, 1, NULL, 83, 49)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (183, 760000, 1, NULL, 83, 48)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (184, 450000, 1, NULL, 84, 9)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (185, 560000, 1, NULL, 84, 8)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (186, 800000, 1, NULL, 85, 50)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (187, 810000, 1, NULL, 85, 51)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (188, 810000, 1, NULL, 86, 51)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (189, 860000, 1, NULL, 86, 52)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (190, 800000, 1, NULL, 86, 50)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (191, 890000, 1, NULL, 87, 43)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (192, 760000, 1, NULL, 87, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (193, 890000, 1, NULL, 87, 45)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (194, 539000, 2, NULL, 88, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (195, 490000, 1, NULL, 88, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (196, 780000, 1, NULL, 89, 73)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (197, 670000, 1, NULL, 89, 74)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (198, 760000, 1, NULL, 90, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (199, 890000, 1, NULL, 90, 45)
GO
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (200, 760000, 1, NULL, 91, 64)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (201, 450000, 1, NULL, 91, 63)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (202, 900000, 1, NULL, 92, 46)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (203, 1000000, 1, NULL, 92, 47)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (204, 640000, 53, NULL, 93, 6)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (205, 490000, 1, NULL, 94, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (206, 475200, 1, NULL, 94, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (207, 475200, 1, 0, 95, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (208, 487500, 1, 1, 95, 5)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (209, 450000, 2, NULL, 96, 9)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (210, 780000, 1, NULL, 96, 68)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (211, 900000, 2, NULL, 97, 32)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (212, 450000, 2, NULL, 98, 9)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (213, 780000, 1, NULL, 98, 68)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (214, 760000, 1, NULL, 99, 70)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (215, 450000, 1, NULL, 99, 7)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (216, 560000, 49, NULL, 99, 8)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (217, 780000, 1, NULL, 100, 49)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (218, 760000, 1, NULL, 100, 48)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (219, 450000, 2, NULL, 101, 9)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (220, 780000, 1, NULL, 101, 68)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (221, 500000, 5, NULL, 102, 96)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (222, 900000, 2, NULL, 102, 32)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (223, 360000, 1, NULL, 103, 1)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (224, 360000, 1, NULL, 104, 1)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (225, 440000, 1, NULL, 104, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (226, 400000, 2, NULL, 104, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (227, 450000, 2, NULL, 104, 7)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (228, 360000, 1, NULL, 105, 1)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (229, 360000, 2, NULL, 106, 1)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (230, 440000, 1, NULL, 106, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (231, 400000, 2, NULL, 106, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (232, 450000, 2, NULL, 106, 7)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (233, 360000, 3, NULL, 107, 1)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (234, 440000, 3, NULL, 107, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (235, 400000, 2, NULL, 107, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (236, 400000, 1, NULL, 108, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (237, 306000, 2, NULL, 108, 13)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (238, 440000, 1, NULL, 108, 14)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (239, 492800, 1, NULL, 108, 12)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (240, 492800, 2, NULL, 109, 12)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (241, 306000, 2, NULL, 109, 13)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (242, 440000, 1, NULL, 109, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (243, 360000, 1, NULL, 109, 1)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (244, 492800, 3, NULL, 110, 12)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (245, 306000, 1, NULL, 110, 13)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (246, 440000, 1, NULL, 111, 3)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (247, 500000, 2, NULL, 111, 95)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (248, 500000, 1, NULL, 111, 96)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (249, 487500, 2, NULL, 112, 5)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (250, 475200, 3, NULL, 112, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (251, 500000, 2, NULL, 112, 96)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (252, 500000, 2, NULL, 113, 96)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (253, 760000, 1, NULL, 113, 64)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (254, 492800, 2, NULL, 114, 12)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (255, 560000, 2, NULL, 114, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (256, 432000, 2, NULL, 115, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (257, 900000, 2, NULL, 115, 32)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (258, 500000, 3, NULL, 116, 86)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (259, 500000, 1, NULL, 116, 87)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (260, 900000, 1, NULL, 117, 79)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (261, 780000, 1, NULL, 117, 80)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (262, 900000, 1, NULL, 118, 35)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (263, 700000, 1, NULL, 118, 36)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (264, 860000, 1, NULL, 119, 52)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (265, 450000, 1, NULL, 119, 63)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (266, 450000, 1, NULL, 120, 75)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (267, 900000, 1, NULL, 120, 79)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (268, 670000, 1, NULL, 121, 11)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (269, 900000, 6, NULL, 122, 42)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (270, 760000, 1, NULL, 123, 55)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (271, 670000, 1, NULL, 123, 74)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (272, 780000, 1, NULL, 123, 80)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (273, 900000, 3, NULL, 123, 79)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (274, 560000, 2, NULL, 124, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (275, 306000, 2, NULL, 124, 13)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (276, 432000, 2, NULL, 125, 4)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (277, 487500, 1, NULL, 125, 5)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (278, 760000, 1, NULL, 125, 55)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (279, 890000, 2, NULL, 126, 43)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (280, 492800, 2, NULL, 126, 12)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (281, 760000, 1, NULL, 127, 44)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (282, 560000, 2, 1, 128, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (283, 560000, 1, NULL, 129, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (284, 500000, 4, NULL, 130, 95)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (285, 900000, 1, NULL, 130, 46)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (286, 800000, 2, NULL, 131, 28)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (287, 560000, 2, NULL, 131, 10)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (288, 500000, 3, NULL, 132, 95)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (289, 900000, 1, NULL, 132, 46)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (290, 440000, 3, NULL, 133, 2)
INSERT [dbo].[bill_detail] ([id], [moment_price], [quantity], [return_quantity], [bill_id], [product_detail_id]) VALUES (291, 560000, 2, NULL, 133, 10)
SET IDENTITY_INSERT [dbo].[bill_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[bill_return] ON 

INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (1, N'DT001', 0, 0, CAST(N'2023-12-05T23:39:13.4551022' AS DateTime2), -1040000, N'', 3, 15)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (2, N'DT002', 0, 0, CAST(N'2023-12-05T23:39:54.3171733' AS DateTime2), -600000, N'', 3, 17)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (3, N'DT003', 0, 0, CAST(N'2023-12-05T23:44:38.9790030' AS DateTime2), 900000, N'', 3, 14)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (4, N'DT004', 0, 0, CAST(N'2023-12-06T18:20:40.5659675' AS DateTime2), 650000, N'', 3, 35)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (5, N'DT005', 0, 0, CAST(N'2023-12-06T18:21:40.1688332' AS DateTime2), 0, N'', 3, 22)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (6, N'DT006', 0, 0, CAST(N'2023-12-06T21:04:47.3003227' AS DateTime2), 0, N'', 3, 18)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (7, N'DT007', 0, 0, CAST(N'2023-12-10T21:48:36.0019840' AS DateTime2), 0, N'', 3, 19)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (8, N'DT008', 0, 0, CAST(N'2023-12-10T21:54:43.5229639' AS DateTime2), 500000, N'', 3, 34)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (9, N'DT009', 0, 0, CAST(N'2023-12-14T20:15:40.3009471' AS DateTime2), 0, N'Đổi màu', 3, 37)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (10, N'DT010', 0, 0, CAST(N'2023-12-16T20:06:32.5811159' AS DateTime2), 0, N'Mặc chật', 3, 52)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (11, N'DT011', 0, 0, CAST(N'2023-12-17T11:00:11.4211721' AS DateTime2), 340000, N'Hàng lỗi', 3, 54)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (12, N'DT012', 0, 0, CAST(N'2023-12-17T11:02:01.2306039' AS DateTime2), 0, N'Mặc chật', 3, 55)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (13, N'DT013', 0, 0, CAST(N'2023-12-17T11:11:44.1236990' AS DateTime2), 800000, N'Mặc chật', 3, 60)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (14, N'DT014', 0, 0, CAST(N'2023-12-17T11:32:24.3287265' AS DateTime2), 0, N'Mặc chật', 3, 67)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (15, N'DT015', 0, 0, CAST(N'2023-12-17T13:48:05.2025306' AS DateTime2), 0, N'Đổi màu', 3, 95)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (16, N'DT016', 0, 0, CAST(N'2023-12-17T14:49:16.0498179' AS DateTime2), 490000, N'Khác', 3, 68)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (17, N'DT017', 0, 0, CAST(N'2023-12-17T14:57:20.3254413' AS DateTime2), 0, N'Mặc chật', 3, 49)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (18, N'DT018', 0, 0, CAST(N'2023-12-17T16:16:19.9998174' AS DateTime2), 484000, N'Đổi màu', 3, 44)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (19, N'DT019', 0, 0, CAST(N'2023-12-17T16:17:36.1415374' AS DateTime2), 0, N'Đổi màu', 3, 48)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (20, N'DT020', 0, 0, CAST(N'2023-12-17T17:12:50.3458110' AS DateTime2), 0, N'Đổi màu', 3, 45)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (21, N'DT021', 0, 0, CAST(N'2023-12-18T22:01:06.4631906' AS DateTime2), 0, N'Mặc chật', 3, 51)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (22, N'DT022', 0, 0, CAST(N'2023-12-18T23:33:31.2169762' AS DateTime2), 0, N'Đổi màu', 3, 73)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (23, N'DT023', 0, 0, CAST(N'2023-12-19T10:53:39.3997467' AS DateTime2), 0, N'Mặc chật', 3, 76)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (24, N'DT024', 0, 0, CAST(N'2023-12-19T10:54:31.1142735' AS DateTime2), 0, N'Mặc chật', 3, 128)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (25, N'DT025', 0, 0, CAST(N'2023-12-19T12:00:40.8485795' AS DateTime2), 0, N'Mặc chật', 3, 50)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (26, N'DT026', 0, 0, CAST(N'2023-12-19T13:22:38.4221721' AS DateTime2), 0, N'Đổi màu', 3, 47)
INSERT [dbo].[bill_return] ([id], [code], [is_cancel], [percent_fee_exchange], [return_date], [return_money], [return_reason], [return_status], [bill_id]) VALUES (27, N'DT027', 0, 0, CAST(N'2023-12-19T13:38:45.8503834' AS DateTime2), 760000, N'Mặc chật', 3, 78)
SET IDENTITY_INSERT [dbo].[bill_return] OFF
GO
SET IDENTITY_INSERT [dbo].[brand] ON 

INSERT [dbo].[brand] ([id], [code], [name], [status], [delete_flag]) VALUES (1, N'LV', N'LuisVuton', 0, NULL)
INSERT [dbo].[brand] ([id], [code], [name], [status], [delete_flag]) VALUES (2, N'NK', N'Necken', 0, NULL)
INSERT [dbo].[brand] ([id], [code], [name], [status], [delete_flag]) VALUES (3, N'SM', N'SLIMFIT', 0, NULL)
INSERT [dbo].[brand] ([id], [code], [name], [status], [delete_flag]) VALUES (4, N'SY', N'SynSex', 0, NULL)
INSERT [dbo].[brand] ([id], [code], [name], [status], [delete_flag]) VALUES (5, N'NH10', N'Dress', 0, NULL)
INSERT [dbo].[brand] ([id], [code], [name], [status], [delete_flag]) VALUES (6, N'NH100', N'JM', 0, NULL)
INSERT [dbo].[brand] ([id], [code], [name], [status], [delete_flag]) VALUES (7, N'NH001', N'Dress', 1, 0)
INSERT [dbo].[brand] ([id], [code], [name], [status], [delete_flag]) VALUES (8, N'NH112', N'Necken', 1, 0)
INSERT [dbo].[brand] ([id], [code], [name], [status], [delete_flag]) VALUES (9, N'NH131', N'Ao dai xua', 1, 0)
SET IDENTITY_INSERT [dbo].[brand] OFF
GO
SET IDENTITY_INSERT [dbo].[cart] ON 

INSERT [dbo].[cart] ([id], [create_date], [quantity], [update_date], [account_id], [product_detail_id]) VALUES (26, CAST(N'2023-12-06T17:04:01.5340864' AS DateTime2), 1, CAST(N'2023-12-06T17:04:01.5340864' AS DateTime2), 3, 7)
INSERT [dbo].[cart] ([id], [create_date], [quantity], [update_date], [account_id], [product_detail_id]) VALUES (27, CAST(N'2023-12-06T17:04:09.0579582' AS DateTime2), 1, CAST(N'2023-12-06T17:04:09.0579582' AS DateTime2), 3, 50)
INSERT [dbo].[cart] ([id], [create_date], [quantity], [update_date], [account_id], [product_detail_id]) VALUES (28, CAST(N'2023-12-06T17:04:17.4566334' AS DateTime2), 1, CAST(N'2023-12-06T17:04:17.4566334' AS DateTime2), 3, 74)
INSERT [dbo].[cart] ([id], [create_date], [quantity], [update_date], [account_id], [product_detail_id]) VALUES (29, CAST(N'2023-12-06T17:04:26.2894678' AS DateTime2), 1, CAST(N'2023-12-06T17:04:26.2894678' AS DateTime2), 3, 54)
INSERT [dbo].[cart] ([id], [create_date], [quantity], [update_date], [account_id], [product_detail_id]) VALUES (30, CAST(N'2023-12-06T17:04:35.6164486' AS DateTime2), 1, CAST(N'2023-12-06T17:04:35.6164486' AS DateTime2), 3, 40)
INSERT [dbo].[cart] ([id], [create_date], [quantity], [update_date], [account_id], [product_detail_id]) VALUES (73, CAST(N'2023-12-17T21:40:28.8312958' AS DateTime2), 1, CAST(N'2023-12-17T21:40:28.8312958' AS DateTime2), 13, 9)
INSERT [dbo].[cart] ([id], [create_date], [quantity], [update_date], [account_id], [product_detail_id]) VALUES (85, CAST(N'2023-12-19T13:30:37.6912835' AS DateTime2), 20, CAST(N'2023-12-19T13:31:27.7642319' AS DateTime2), 14, 7)
SET IDENTITY_INSERT [dbo].[cart] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [code], [name], [status], [delete_flag]) VALUES (1, N'TL1', N'Áo Len', 1, NULL)
INSERT [dbo].[category] ([id], [code], [name], [status], [delete_flag]) VALUES (2, N'TL2', N'Áo Polo', 1, NULL)
INSERT [dbo].[category] ([id], [code], [name], [status], [delete_flag]) VALUES (3, N'TL3', N'Áo Hobbies', 0, NULL)
INSERT [dbo].[category] ([id], [code], [name], [status], [delete_flag]) VALUES (4, N'TL4', N'Váy dài', 0, NULL)
INSERT [dbo].[category] ([id], [code], [name], [status], [delete_flag]) VALUES (5, N'TL5', N'Váy ngắn', 0, NULL)
INSERT [dbo].[category] ([id], [code], [name], [status], [delete_flag]) VALUES (6, N'TL6', N'Quần Bò', 0, NULL)
INSERT [dbo].[category] ([id], [code], [name], [status], [delete_flag]) VALUES (7, N'AD1', N'Áo dài', 0, 0)
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[color] ON 

INSERT [dbo].[color] ([id], [code], [name], [delete_flag]) VALUES (1, N'M1', N'Màu đỏ', NULL)
INSERT [dbo].[color] ([id], [code], [name], [delete_flag]) VALUES (2, N'M2', N'Màu Xanh', NULL)
INSERT [dbo].[color] ([id], [code], [name], [delete_flag]) VALUES (3, N'M3', N'Màu đen', 0)
INSERT [dbo].[color] ([id], [code], [name], [delete_flag]) VALUES (4, N'M4', N'Màu trắng', NULL)
INSERT [dbo].[color] ([id], [code], [name], [delete_flag]) VALUES (5, N'M5', N'Màu Hồng', NULL)
INSERT [dbo].[color] ([id], [code], [name], [delete_flag]) VALUES (6, N'M23', N'Màu Tím', 0)
SET IDENTITY_INSERT [dbo].[color] OFF
GO
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (1, N'KH0001', NULL, N'Nguyễn Sáng ', N'09999999')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (2, N'KH0002', NULL, N'Mai Hoàng Phương Anh', N'0332228003')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (3, N'KH0003', NULL, N'Trương Xuân Phương', N'054329854')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (4, N'KH0004', NULL, N'Nguyễn Trung Tuấn', N'087658787')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (5, N'KH0005', NULL, N'Lê Công Huy', N'093428744')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (6, N'KH0006', NULL, N'Nguyễn Văn Huân', N'054897345')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (7, N'KH0007', NULL, N'Nguyễn Văn Huy', N'095438543')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (8, N'KH0008', NULL, N'Hoàng Chi', N'094387243')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (9, N'KH0009', NULL, N'Nguyễn Ngọc Sáng', N'0862008304')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (10, N'KH0010', NULL, N'Nguyên Văn Tuấn', N'098432435')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (11, N'KH0011', NULL, N'Nguyễn Hồng Ngọc', N'0862008303')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (12, N'KH0012', NULL, N'Nguyen Van Lam', N'0862008309')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (13, N'KH0013', NULL, N'Nguyen Van Trieu', N'023456789')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (14, N'KH0014', NULL, N'Nguyen Van Chung', N'098364832')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (16, N'KH0015', NULL, N'Nguyen Trung Anh', N'03322228003')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (17, N'KH0017', NULL, N'Nguyen Van Trung Anh', N'0123456789')
INSERT [dbo].[customer] ([id], [code], [email], [name], [phone_number]) VALUES (18, N'KH0018', NULL, N'Xuan Phuong', N'0346488538')
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
INSERT [dbo].[discount_code] ([id], [code], [delete_flag], [detail], [discount_amount], [end_date], [maximum_amount], [maximum_usage], [minimum_amount_in_cart], [percentage], [start_date], [status], [type]) VALUES (1, N'Sinh nhật 1 tuổi', 0, NULL, NULL, CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2), 300000, 114, 350000, 100, CAST(N'2023-12-05T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[discount_code] ([id], [code], [delete_flag], [detail], [discount_amount], [end_date], [maximum_amount], [maximum_usage], [minimum_amount_in_cart], [percentage], [start_date], [status], [type]) VALUES (2, N'Noel', 0, NULL, NULL, CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2), 300000, 89, 350000, 10, CAST(N'2023-12-06T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[discount_code] ([id], [code], [delete_flag], [detail], [discount_amount], [end_date], [maximum_amount], [maximum_usage], [minimum_amount_in_cart], [percentage], [start_date], [status], [type]) VALUES (3, N'NOEL VUI VE', 0, NULL, NULL, CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2), 300000, 89, 398000, 30, CAST(N'2023-12-17T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[discount_code] ([id], [code], [delete_flag], [detail], [discount_amount], [end_date], [maximum_amount], [maximum_usage], [minimum_amount_in_cart], [percentage], [start_date], [status], [type]) VALUES (4, N'Tet vui ve', 0, NULL, NULL, CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2), 300000, 97, 350000, 12, CAST(N'2023-12-17T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[discount_code] ([id], [code], [delete_flag], [detail], [discount_amount], [end_date], [maximum_amount], [maximum_usage], [minimum_amount_in_cart], [percentage], [start_date], [status], [type]) VALUES (5, N'Sinh nhat shop 1 tuoi', 0, NULL, NULL, CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2), 200000, 100, 300000, 12, CAST(N'2023-12-17T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[discount_code] ([id], [code], [delete_flag], [detail], [discount_amount], [end_date], [maximum_amount], [maximum_usage], [minimum_amount_in_cart], [percentage], [start_date], [status], [type]) VALUES (6, N'Ngay dac biet', 0, NULL, NULL, CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2), 200000, 6, 250000, 30, CAST(N'2023-12-18T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[discount_code] ([id], [code], [delete_flag], [detail], [discount_amount], [end_date], [maximum_amount], [maximum_usage], [minimum_amount_in_cart], [percentage], [start_date], [status], [type]) VALUES (7, N'black friday', 0, NULL, NULL, CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2), 200000, 10, 350000, 20, CAST(N'2023-12-19T00:00:00.0000000' AS DateTime2), 0, 1)
INSERT [dbo].[discount_code] ([id], [code], [delete_flag], [detail], [discount_amount], [end_date], [maximum_amount], [maximum_usage], [minimum_amount_in_cart], [percentage], [start_date], [status], [type]) VALUES (8, N'Ngay hoi sinh nhat', 0, NULL, NULL, CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2), 300000, 8, 350000, 45, CAST(N'2023-12-19T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[discount_code] ([id], [code], [delete_flag], [detail], [discount_amount], [end_date], [maximum_amount], [maximum_usage], [minimum_amount_in_cart], [percentage], [start_date], [status], [type]) VALUES (9, N'ABC', 0, NULL, NULL, CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2), 10000, 10, 12000, 10, CAST(N'2023-12-19T00:00:00.0000000' AS DateTime2), 1, 1)
GO
SET IDENTITY_INSERT [dbo].[image] ON 

INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (1, CAST(N'2023-12-04T22:56:56.0825068' AS DateTime2), N'image/png', N'uploads/1701705416077_IMG_3145.PNG', N'1701705416077_IMG_3145.PNG', CAST(N'2023-12-04T22:56:56.0825068' AS DateTime2), 1)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (2, CAST(N'2023-12-04T22:56:56.0855070' AS DateTime2), N'image/png', N'uploads/1701705416083_IMG_3146.PNG', N'1701705416083_IMG_3146.PNG', CAST(N'2023-12-04T22:56:56.0855070' AS DateTime2), 1)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (3, CAST(N'2023-12-04T23:05:00.9932664' AS DateTime2), N'image/png', N'uploads/1701705900989_IMG_3147.PNG', N'1701705900989_IMG_3147.PNG', CAST(N'2023-12-04T23:05:00.9932664' AS DateTime2), 2)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (4, CAST(N'2023-12-04T23:05:00.9952488' AS DateTime2), N'image/png', N'uploads/1701705900994_IMG_3148.PNG', N'1701705900994_IMG_3148.PNG', CAST(N'2023-12-04T23:05:00.9952488' AS DateTime2), 2)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (5, CAST(N'2023-12-04T23:05:00.9972655' AS DateTime2), N'image/png', N'uploads/1701705900996_IMG_3149.PNG', N'1701705900996_IMG_3149.PNG', CAST(N'2023-12-04T23:05:00.9972655' AS DateTime2), 2)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (6, CAST(N'2023-12-04T23:05:00.9988457' AS DateTime2), N'image/png', N'uploads/1701705900997_IMG_3150.PNG', N'1701705900997_IMG_3150.PNG', CAST(N'2023-12-04T23:05:00.9988457' AS DateTime2), 2)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (7, CAST(N'2023-12-04T23:14:01.6431279' AS DateTime2), N'image/png', N'uploads/1701706441641_IMG_3151.PNG', N'1701706441641_IMG_3151.PNG', CAST(N'2023-12-04T23:14:01.6431279' AS DateTime2), 3)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (8, CAST(N'2023-12-04T23:14:01.6451376' AS DateTime2), N'image/png', N'uploads/1701706441644_IMG_3152.PNG', N'1701706441644_IMG_3152.PNG', CAST(N'2023-12-04T23:14:01.6451376' AS DateTime2), 3)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (9, CAST(N'2023-12-04T23:16:52.8235050' AS DateTime2), N'image/png', N'uploads/1701706612822_IMG_3153.PNG', N'1701706612822_IMG_3153.PNG', CAST(N'2023-12-04T23:16:52.8235050' AS DateTime2), 4)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (10, CAST(N'2023-12-04T23:16:52.8245042' AS DateTime2), N'image/png', N'uploads/1701706612823_IMG_3154.PNG', N'1701706612823_IMG_3154.PNG', CAST(N'2023-12-04T23:16:52.8245042' AS DateTime2), 4)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (11, CAST(N'2023-12-04T23:19:51.9868994' AS DateTime2), N'image/png', N'uploads/1701706791984_IMG_3157.PNG', N'1701706791984_IMG_3157.PNG', CAST(N'2023-12-04T23:19:51.9868994' AS DateTime2), 5)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (12, CAST(N'2023-12-04T23:19:51.9878991' AS DateTime2), N'image/png', N'uploads/1701706791986_IMG_3158.PNG', N'1701706791986_IMG_3158.PNG', CAST(N'2023-12-04T23:19:51.9878991' AS DateTime2), 5)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (13, CAST(N'2023-12-04T23:22:32.9996664' AS DateTime2), N'image/png', N'uploads/1701706952997_IMG_3175.PNG', N'1701706952997_IMG_3175.PNG', CAST(N'2023-12-04T23:22:32.9996664' AS DateTime2), 6)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (14, CAST(N'2023-12-04T23:22:33.0016595' AS DateTime2), N'image/png', N'uploads/1701706952999_IMG_3176.PNG', N'1701706952999_IMG_3176.PNG', CAST(N'2023-12-04T23:22:33.0016595' AS DateTime2), 6)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (15, CAST(N'2023-12-04T23:24:57.5106092' AS DateTime2), N'image/png', N'uploads/1701707097508_IMG_3167.PNG', N'1701707097508_IMG_3167.PNG', CAST(N'2023-12-04T23:24:57.5106092' AS DateTime2), 7)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (16, CAST(N'2023-12-04T23:24:57.5131671' AS DateTime2), N'image/png', N'uploads/1701707097510_IMG_3168.PNG', N'1701707097510_IMG_3168.PNG', CAST(N'2023-12-04T23:24:57.5131671' AS DateTime2), 7)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (17, CAST(N'2023-12-04T23:26:24.5298629' AS DateTime2), N'image/png', N'uploads/1701707184528_IMG_3169.PNG', N'1701707184528_IMG_3169.PNG', CAST(N'2023-12-04T23:26:24.5298629' AS DateTime2), 8)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (18, CAST(N'2023-12-04T23:26:24.5323676' AS DateTime2), N'image/png', N'uploads/1701707184529_IMG_3170.PNG', N'1701707184529_IMG_3170.PNG', CAST(N'2023-12-04T23:26:24.5323676' AS DateTime2), 8)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (19, CAST(N'2023-12-04T23:30:26.5699323' AS DateTime2), N'image/png', N'uploads/1701707426568_IMG_3179.PNG', N'1701707426568_IMG_3179.PNG', CAST(N'2023-12-04T23:30:26.5699323' AS DateTime2), 9)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (20, CAST(N'2023-12-04T23:30:26.5715915' AS DateTime2), N'image/png', N'uploads/1701707426569_IMG_3180.PNG', N'1701707426569_IMG_3180.PNG', CAST(N'2023-12-04T23:30:26.5715915' AS DateTime2), 9)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (21, CAST(N'2023-12-04T23:33:14.8762270' AS DateTime2), N'image/png', N'uploads/1701707594875_IMG_3182.PNG', N'1701707594875_IMG_3182.PNG', CAST(N'2023-12-04T23:33:14.8762270' AS DateTime2), 10)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (22, CAST(N'2023-12-04T23:33:14.8782284' AS DateTime2), N'image/png', N'uploads/1701707594876_IMG_3183.PNG', N'1701707594876_IMG_3183.PNG', CAST(N'2023-12-04T23:33:14.8782284' AS DateTime2), 10)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (25, CAST(N'2023-12-04T23:36:46.2710172' AS DateTime2), N'image/png', N'uploads/1701707806269_IMG_3177.PNG', N'1701707806269_IMG_3177.PNG', CAST(N'2023-12-04T23:36:46.2710172' AS DateTime2), 11)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (26, CAST(N'2023-12-04T23:36:46.2730152' AS DateTime2), N'image/png', N'uploads/1701707806272_IMG_3178.PNG', N'1701707806272_IMG_3178.PNG', CAST(N'2023-12-04T23:36:46.2730152' AS DateTime2), 11)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (27, CAST(N'2023-12-04T23:40:31.4258486' AS DateTime2), N'image/jpeg', N'uploads/1701708031424_1(1).jpg', N'1701708031424_1(1).jpg', CAST(N'2023-12-04T23:40:31.4258486' AS DateTime2), 12)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (28, CAST(N'2023-12-04T23:40:31.4268224' AS DateTime2), N'image/jpeg', N'uploads/1701708031425_1.jpg', N'1701708031425_1.jpg', CAST(N'2023-12-04T23:40:31.4268224' AS DateTime2), 12)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (29, CAST(N'2023-12-04T23:42:51.0686326' AS DateTime2), N'image/jpeg', N'uploads/1701708171067_4(1).jpg', N'1701708171067_4(1).jpg', CAST(N'2023-12-04T23:42:51.0686326' AS DateTime2), 13)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (30, CAST(N'2023-12-04T23:42:51.0696437' AS DateTime2), N'image/jpeg', N'uploads/1701708171069_4.jpg', N'1701708171069_4.jpg', CAST(N'2023-12-04T23:42:51.0696437' AS DateTime2), 13)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (31, CAST(N'2023-12-04T23:45:35.8651952' AS DateTime2), N'image/jpeg', N'uploads/1701708335864_2(2).jpg', N'1701708335864_2(2).jpg', CAST(N'2023-12-04T23:45:35.8651952' AS DateTime2), 14)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (32, CAST(N'2023-12-04T23:45:35.8661936' AS DateTime2), N'image/jpeg', N'uploads/1701708335866_2.jpg', N'1701708335866_2.jpg', CAST(N'2023-12-04T23:45:35.8661936' AS DateTime2), 14)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (33, CAST(N'2023-12-04T23:47:37.3520790' AS DateTime2), N'image/jpeg', N'uploads/1701708457351_14(1).jpg', N'1701708457351_14(1).jpg', CAST(N'2023-12-04T23:47:37.3520790' AS DateTime2), 15)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (34, CAST(N'2023-12-04T23:47:37.3530781' AS DateTime2), N'image/jpeg', N'uploads/1701708457353_14.jpg', N'1701708457353_14.jpg', CAST(N'2023-12-04T23:47:37.3530781' AS DateTime2), 15)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (35, CAST(N'2023-12-04T23:50:41.0008674' AS DateTime2), N'image/jpeg', N'uploads/1701708640999_19(1).jpg', N'1701708640999_19(1).jpg', CAST(N'2023-12-04T23:50:41.0008674' AS DateTime2), 16)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (36, CAST(N'2023-12-04T23:50:41.0018675' AS DateTime2), N'image/jpeg', N'uploads/1701708641000_19.jpg', N'1701708641000_19.jpg', CAST(N'2023-12-04T23:50:41.0018675' AS DateTime2), 16)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (39, CAST(N'2023-12-04T23:53:01.7229650' AS DateTime2), N'image/jpeg', N'uploads/1701708781721_20(1).jpg', N'1701708781721_20(1).jpg', CAST(N'2023-12-04T23:53:01.7229650' AS DateTime2), 17)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (40, CAST(N'2023-12-04T23:53:01.7239632' AS DateTime2), N'image/jpeg', N'uploads/1701708781722_20.jpg', N'1701708781722_20.jpg', CAST(N'2023-12-04T23:53:01.7239632' AS DateTime2), 17)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (41, CAST(N'2023-12-05T13:01:01.1391759' AS DateTime2), N'image/png', N'uploads/1701756061137_IMG_3151.PNG', N'1701756061137_IMG_3151.PNG', CAST(N'2023-12-05T13:01:01.1391759' AS DateTime2), 18)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (42, CAST(N'2023-12-05T13:01:01.1391759' AS DateTime2), N'image/png', N'uploads/1701756061139_IMG_3152.PNG', N'1701756061139_IMG_3152.PNG', CAST(N'2023-12-05T13:01:01.1391759' AS DateTime2), 18)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (43, CAST(N'2023-12-06T00:05:17.5216170' AS DateTime2), N'image/jpeg', N'uploads/1701795917521_20231109_B2lasGKno5.jpeg', N'1701795917521_20231109_B2lasGKno5.jpeg', CAST(N'2023-12-06T00:05:17.5216170' AS DateTime2), 19)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (44, CAST(N'2023-12-06T00:05:17.5274101' AS DateTime2), N'image/jpeg', N'uploads/1701795917521_20231109_PtEJJ35tmT.jpeg', N'1701795917521_20231109_PtEJJ35tmT.jpeg', CAST(N'2023-12-06T00:05:17.5274101' AS DateTime2), 19)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (45, CAST(N'2023-12-06T00:07:12.0950171' AS DateTime2), N'image/jpeg', N'uploads/1701796032095_20231108_CNjQIKw2p6.jpeg', N'1701796032095_20231108_CNjQIKw2p6.jpeg', CAST(N'2023-12-06T00:07:12.0950171' AS DateTime2), 20)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (46, CAST(N'2023-12-06T00:07:12.0950171' AS DateTime2), N'image/jpeg', N'uploads/1701796032095_20231108_E0AJvtq3aZ.jpeg', N'1701796032095_20231108_E0AJvtq3aZ.jpeg', CAST(N'2023-12-06T00:07:12.0950171' AS DateTime2), 20)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (47, CAST(N'2023-12-06T14:13:27.6139359' AS DateTime2), N'image/png', N'uploads/1701846807611_?nh ch?p màn hình 2023-12-06 140111.png', N'1701846807611_Ảnh chụp màn hình 2023-12-06 140111.png', CAST(N'2023-12-06T14:13:27.6139359' AS DateTime2), 21)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (49, CAST(N'2023-12-06T14:26:13.8024718' AS DateTime2), N'image/png', N'uploads/1701847573801_?nh ch?p màn hình 2023-12-06 140111.png', N'1701847573801_Ảnh chụp màn hình 2023-12-06 140111.png', CAST(N'2023-12-06T14:26:13.8024718' AS DateTime2), 22)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (50, CAST(N'2023-12-06T14:29:16.6284159' AS DateTime2), N'image/jpeg', N'uploads/1701847756627_images (1).jpg', N'1701847756627_images (1).jpg', CAST(N'2023-12-06T14:29:16.6284159' AS DateTime2), 23)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (51, CAST(N'2023-12-06T14:29:16.6294164' AS DateTime2), N'image/jpeg', N'uploads/1701847756628_images.jpg', N'1701847756628_images.jpg', CAST(N'2023-12-06T14:29:16.6294164' AS DateTime2), 23)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (52, CAST(N'2023-12-06T18:10:16.8303891' AS DateTime2), N'image/jpeg', N'uploads/1701861016827_images (1).jpg', N'1701861016827_images (1).jpg', CAST(N'2023-12-06T18:10:16.8303891' AS DateTime2), 24)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (68, CAST(N'2023-12-17T10:52:44.5813031' AS DateTime2), N'image/webp', N'uploads/1702785164578_pro_do_1_0d70ef020ade460db30d74c75ecf4d83_master.webp', N'1702785164578_pro_do_1_0d70ef020ade460db30d74c75ecf4d83_master.webp', CAST(N'2023-12-17T10:52:44.5813031' AS DateTime2), 26)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (71, CAST(N'2023-12-17T16:57:36.9741646' AS DateTime2), N'image/jpeg', N'uploads/1702807056970_57b8a1df-a559-5c01-9511-001925914eda.jpg', N'1702807056970_57b8a1df-a559-5c01-9511-001925914eda.jpg', CAST(N'2023-12-17T16:57:36.9741646' AS DateTime2), 29)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (74, CAST(N'2023-12-17T21:13:58.9911519' AS DateTime2), N'image/webp', N'uploads/1702822438991_pro_cam_2_28058db285464472bd90470778a9d25c_master.webp', N'1702822438991_pro_cam_2_28058db285464472bd90470778a9d25c_master.webp', CAST(N'2023-12-17T21:13:58.9911519' AS DateTime2), 30)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (75, CAST(N'2023-12-17T21:13:58.9931299' AS DateTime2), N'image/webp', N'uploads/1702822438992_pro_cam_3_8629de9fd4794e159474802f70c69ef5_master.webp', N'1702822438992_pro_cam_3_8629de9fd4794e159474802f70c69ef5_master.webp', CAST(N'2023-12-17T21:13:58.9931299' AS DateTime2), 30)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (76, CAST(N'2023-12-17T21:59:39.8756886' AS DateTime2), N'image/webp', N'uploads/1702825179872_4_e9867bc4f55044e1b2c5b5968e112d52_master.webp', N'1702825179872_4_e9867bc4f55044e1b2c5b5968e112d52_master.webp', CAST(N'2023-12-17T21:59:39.8756886' AS DateTime2), 28)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (77, CAST(N'2023-12-17T21:59:39.8789404' AS DateTime2), N'image/webp', N'uploads/1702825179876_ad059421582323020218p1699dt_q059521782353020258p799dt__5__3dacd28a5e3e43d6a7ef79ac552e18c6_master.webp', N'1702825179876_ad059421582323020218p1699dt_q059521782353020258p799dt__5__3dacd28a5e3e43d6a7ef79ac552e18c6_master.webp', CAST(N'2023-12-17T21:59:39.8789404' AS DateTime2), 28)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (79, CAST(N'2023-12-17T22:01:25.3799176' AS DateTime2), N'image/webp', N'uploads/1702825285378_3_2975a37b78a742c3ba2c96bf58fda901_master.webp', N'1702825285378_3_2975a37b78a742c3ba2c96bf58fda901_master.webp', CAST(N'2023-12-17T22:01:25.3799176' AS DateTime2), 27)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (80, CAST(N'2023-12-18T21:28:58.8644435' AS DateTime2), N'image/webp', N'uploads/1702909738857_pro_trang_1_4f58a8c1ee4b412db8e3ee7abc8bf597_master.webp', N'1702909738857_pro_trang_1_4f58a8c1ee4b412db8e3ee7abc8bf597_master.webp', CAST(N'2023-12-18T21:28:58.8644435' AS DateTime2), 31)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (81, CAST(N'2023-12-18T21:28:58.8664641' AS DateTime2), N'image/webp', N'uploads/1702909738864_pro_trang_3_49bd14f1286745d4a89741ef8d567f93_master.webp', N'1702909738864_pro_trang_3_49bd14f1286745d4a89741ef8d567f93_master.webp', CAST(N'2023-12-18T21:28:58.8664641' AS DateTime2), 31)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (82, CAST(N'2023-12-18T23:15:58.3102818' AS DateTime2), N'image/jpeg', N'uploads/1702916158306_cb60aa93-44b9-7600-cf41-0018b1dedc2b.jpg', N'1702916158306_cb60aa93-44b9-7600-cf41-0018b1dedc2b.jpg', CAST(N'2023-12-18T23:15:58.3102818' AS DateTime2), 32)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (83, CAST(N'2023-12-19T13:09:19.0196926' AS DateTime2), N'image/webp', N'uploads/1702966159016_ad059421582323020218p1699dt_q059521782353020258p799dt__5__3dacd28a5e3e43d6a7ef79ac552e18c6_master.webp', N'1702966159016_ad059421582323020218p1699dt_q059521782353020258p799dt__5__3dacd28a5e3e43d6a7ef79ac552e18c6_master.webp', CAST(N'2023-12-19T13:09:19.0196926' AS DateTime2), 33)
INSERT [dbo].[image] ([id], [create_date], [file_type], [link], [name], [update_date], [product_id]) VALUES (84, CAST(N'2023-12-19T13:09:19.0206625' AS DateTime2), N'image/webp', N'uploads/1702966159020_ad085521582324120218p1599dt_q085621782324020218p599dt__4__c031d70b6b3546d9a645967a68cb25ec_master.webp', N'1702966159020_ad085521582324120218p1599dt_q085621782324020218p599dt__4__c031d70b6b3546d9a645967a68cb25ec_master.webp', CAST(N'2023-12-19T13:09:19.0206625' AS DateTime2), 33)
SET IDENTITY_INSERT [dbo].[image] OFF
GO
SET IDENTITY_INSERT [dbo].[material] ON 

INSERT [dbo].[material] ([id], [code], [name], [status], [delete_flag]) VALUES (1, N'CT1', N'Sợi Tằm Bông', 1, NULL)
INSERT [dbo].[material] ([id], [code], [name], [status], [delete_flag]) VALUES (2, N'CT2', N'Kotton', 1, NULL)
INSERT [dbo].[material] ([id], [code], [name], [status], [delete_flag]) VALUES (3, N'CL3', N'Lông cừu', 0, NULL)
INSERT [dbo].[material] ([id], [code], [name], [status], [delete_flag]) VALUES (4, N'CL4', N'Len', 0, NULL)
INSERT [dbo].[material] ([id], [code], [name], [status], [delete_flag]) VALUES (5, N'CL5', N'Vải bò', 0, NULL)
INSERT [dbo].[material] ([id], [code], [name], [status], [delete_flag]) VALUES (6, N'CT04', N'Bông Lụa', 0, 0)
SET IDENTITY_INSERT [dbo].[material] OFF
GO
SET IDENTITY_INSERT [dbo].[payment] ON 

INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (1, N'2050000.0', N'HdzCq1Gg', N'1', CAST(N'2023-12-05T00:07:26.0534457' AS DateTime2), 0, 1)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (2, N'2950000.0', N'VOPnE8OB', N'1', CAST(N'2023-12-05T00:07:40.7317714' AS DateTime2), 0, 2)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (3, N'2430000.0', N'xyHiKrDx', N'1', CAST(N'2023-12-05T00:08:16.1989757' AS DateTime2), 0, 3)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (4, N'5890000.0', N'NJsKkt5s', N'1', CAST(N'2023-12-05T18:03:14.3464582' AS DateTime2), 0, 4)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (5, N'1850000.0', N'itZ7HM2l', N'1', CAST(N'2023-12-05T18:03:33.2555720' AS DateTime2), 0, 5)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (6, N'5890000.0', N'cUhFlsXF', N'1', CAST(N'2023-12-05T18:03:33.2630280' AS DateTime2), 0, 6)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (7, N'1850000.0', N'ZaL9quyS', N'1', CAST(N'2023-12-05T18:03:38.9201566' AS DateTime2), 0, 7)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (8, N'5890000.0', N'wirpVZys', N'1', CAST(N'2023-12-05T18:03:38.9267403' AS DateTime2), 0, 8)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (9, N'4490000.0', N'sV8ZGvUH', N'1', CAST(N'2023-12-05T18:04:36.1812741' AS DateTime2), 0, 9)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (10, N'2840000.0', N'0IAdMlfV', N'1', CAST(N'2023-12-05T18:05:34.4277632' AS DateTime2), 0, 10)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (11, N'7600000', N'51846376', N'1', CAST(N'2023-12-05T18:11:33.9841863' AS DateTime2), 1, 11)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (12, N'5600000.0', N'im7NATUB', N'1', CAST(N'2023-12-05T23:18:36.0750475' AS DateTime2), 0, 12)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (13, N'2920000.0', N'qArBI69H', N'1', CAST(N'2023-12-05T23:19:16.3886846' AS DateTime2), 0, 13)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (14, N'4600000.0', N'SKqOjN5T', N'1', CAST(N'2023-12-05T23:19:49.2291983' AS DateTime2), 1, 14)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (15, N'6000000.0', N'b5spx76M', N'1', CAST(N'2023-12-05T23:24:20.4823196' AS DateTime2), 0, 15)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (16, N'1.05E7', N'TzZ2HgG7', N'1', CAST(N'2023-12-05T23:31:12.1136054' AS DateTime2), 0, 16)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (17, N'5400800', N'17833772', N'1', CAST(N'2023-12-05T23:37:27.4335089' AS DateTime2), 1, 17)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (18, N'8300000', N'53960492', N'1', CAST(N'2023-12-05T23:50:54.4534860' AS DateTime2), 1, 18)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (19, N'9360000', N'27984000', N'1', CAST(N'2023-12-05T23:51:55.2068675' AS DateTime2), 1, 19)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (20, N'1680000.0', N'tONPfbzX', N'1', CAST(N'2023-12-06T00:29:26.6009020' AS DateTime2), 0, 20)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (21, N'1700000.0', N'uAAu9JC8', N'1', CAST(N'2023-12-06T06:52:55.0322488' AS DateTime2), 0, 21)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (22, N'959200.0', N'E4th9Ytq', N'1', CAST(N'2023-12-06T13:40:02.8920710' AS DateTime2), 0, 22)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (23, N'900000', N'52501893', N'1', CAST(N'2023-12-06T13:45:26.4082754' AS DateTime2), 1, 23)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (24, N'3280000.0', N'k9ngc2n8', N'1', CAST(N'2023-12-06T13:52:07.2632190' AS DateTime2), 0, 24)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (25, N'1360000.0', N'pr250yBK', N'1', CAST(N'2023-12-06T14:21:10.2352273' AS DateTime2), 0, 25)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (26, N'475200.0', N'21BOAmRp', N'1', CAST(N'2023-12-06T14:46:22.3818637' AS DateTime2), 0, 26)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (27, N'3360000', N'70681970', N'0', NULL, 0, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (28, N'3360000', N'86729710', N'0', NULL, 0, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (29, N'1780000.0', N'49his0kG', N'1', CAST(N'2023-12-06T18:16:06.0210048' AS DateTime2), 0, 27)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (30, N'1780000.0', N'5htx3Bsl', N'1', CAST(N'2023-12-06T18:16:06.0400653' AS DateTime2), 0, 28)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (31, N'1780000.0', N'U31nPaZS', N'1', CAST(N'2023-12-06T18:16:06.0550942' AS DateTime2), 0, 29)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (32, N'1780000.0', N'xodvj88h', N'1', CAST(N'2023-12-06T18:16:06.0719622' AS DateTime2), 0, 30)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (33, N'1780000.0', N'U04T3nuU', N'1', CAST(N'2023-12-06T18:16:06.0839808' AS DateTime2), 0, 31)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (34, N'1780000.0', N'7b5b3MTD', N'1', CAST(N'2023-12-06T18:16:06.0938009' AS DateTime2), 0, 32)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (35, N'1780000.0', N'qu5OEc9J', N'1', CAST(N'2023-12-06T18:16:06.1098451' AS DateTime2), 0, 33)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (36, N'1780000.0', N'2JNOGaOp', N'1', CAST(N'2023-12-06T18:16:06.1221373' AS DateTime2), 1, 34)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (37, N'2270000', N'98760463', N'0', NULL, 0, 35)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (38, N'2270000', N'31949607', N'1', CAST(N'2023-12-06T18:18:21.9227823' AS DateTime2), 1, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (39, N'5065600.0', N'CV4KxDG3', N'1', CAST(N'2023-12-09T18:19:03.8046487' AS DateTime2), 0, 36)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (40, N'3091200.0', N'SDxRmxBa', N'1', CAST(N'2023-12-09T20:19:54.3154656' AS DateTime2), 0, 37)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (41, N'3282000', N'68966262', N'1', CAST(N'2023-12-09T20:20:48.7320509' AS DateTime2), 1, 38)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (42, N'1545600', N'01436293', N'1', CAST(N'2023-12-10T22:00:32.2446275' AS DateTime2), 1, 39)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (43, N'2240000', N'46177453', N'1', CAST(N'2023-12-11T21:16:40.0032121' AS DateTime2), 0, 40)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (44, N'450000.0', N'iJL77rFM', N'1', CAST(N'2023-12-12T21:34:20.3327523' AS DateTime2), 0, 41)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (45, N'560000', N'14061601', N'1', CAST(N'2023-12-14T20:12:05.9621404' AS DateTime2), 1, 42)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (46, N'560000', N'54883134', N'1', CAST(N'2023-12-14T21:04:14.7545454' AS DateTime2), 0, 43)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (47, N'3174000.0', N'IBx7Drum', N'1', CAST(N'2023-12-14T21:07:44.7946050' AS DateTime2), 0, 44)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (48, N'3174000.0', N'p5ilBzTy', N'1', CAST(N'2023-12-14T21:07:44.8174247' AS DateTime2), 0, 45)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (49, N'560000.0', N'm2ekn1VV', N'1', CAST(N'2023-12-14T21:08:17.7872931' AS DateTime2), 0, 46)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (50, N'3174000.0', N'jH6MDO2s', N'1', CAST(N'2023-12-14T21:08:17.7968419' AS DateTime2), 0, 47)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (51, N'3174000.0', N'8GPSUiRL', N'1', CAST(N'2023-12-14T21:08:17.8096661' AS DateTime2), 0, 48)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (52, N'1384000.0', N'4UUuCTfS', N'1', CAST(N'2023-12-14T21:09:10.2714824' AS DateTime2), 0, 49)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (53, N'2540000.0', N'tPOt2hKY', N'1', CAST(N'2023-12-14T21:09:24.6692766' AS DateTime2), 0, 50)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (54, N'3580000.0', N'LnAfBNIT', N'1', CAST(N'2023-12-14T21:11:00.5715875' AS DateTime2), 0, 51)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (55, N'3180000', N'30522420', N'1', CAST(N'2023-12-16T20:04:53.3491667' AS DateTime2), 0, 52)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (56, N'980000.0', N'lGmtclfW', N'1', CAST(N'2023-12-16T22:32:33.8556285' AS DateTime2), 0, 53)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (57, N'2040000.0', N'PrM2nYTv', N'1', CAST(N'2023-12-17T10:56:01.4480211' AS DateTime2), 0, 54)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (58, N'680000.0', N'0irdGNKs', N'1', CAST(N'2023-12-17T10:56:55.9077011' AS DateTime2), 0, 55)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (59, N'5180000.0', N'eh9eRq7V', N'1', CAST(N'2023-12-17T11:03:29.4373964' AS DateTime2), 0, 56)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (60, N'1460000', N'94589251', N'1', CAST(N'2023-12-17T11:04:25.8883556' AS DateTime2), 1, 57)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (61, N'560000', N'80382730', N'1', CAST(N'2023-12-17T11:05:09.4428564' AS DateTime2), 0, 58)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (62, N'3360000.0', N'Z69EbDZY', N'1', CAST(N'2023-12-17T11:09:47.7441957' AS DateTime2), 0, 59)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (63, N'1287500', N'70767448', N'0', NULL, 0, NULL)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (64, N'1287500.0', N'3X4uqDIs', N'1', CAST(N'2023-12-17T11:10:14.8011509' AS DateTime2), 0, 60)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (65, N'1.044E7', N'jhwtj8jI', N'1', CAST(N'2023-12-17T11:10:46.4208707' AS DateTime2), 0, 61)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (66, N'1455200.0', N'MTavYuX4', N'1', CAST(N'2023-12-17T11:12:15.0742424' AS DateTime2), 0, 62)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (67, N'1455200.0', N'uaIh3M7p', N'1', CAST(N'2023-12-17T11:12:25.9996897' AS DateTime2), 0, 63)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (68, N'1680000.0', N'nAUz6mfR', N'1', CAST(N'2023-12-17T11:12:25.9996897' AS DateTime2), 0, 64)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (69, N'1680000.0', N'48y4nhFw', N'1', CAST(N'2023-12-17T11:12:36.3907926' AS DateTime2), 0, 65)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (70, N'1455200.0', N'bG3k14We', N'1', CAST(N'2023-12-17T11:12:36.3907926' AS DateTime2), 0, 66)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (71, N'1540000.0', N'QETbIDel', N'1', CAST(N'2023-12-17T11:12:36.3907926' AS DateTime2), 0, 67)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (72, N'1540000.0', N'wxFSaSRE', N'1', CAST(N'2023-12-17T11:12:48.1521219' AS DateTime2), 0, 69)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (73, N'1260000.0', N'gXJYZV55', N'1', CAST(N'2023-12-17T11:12:48.1521219' AS DateTime2), 0, 70)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (74, N'1455200.0', N'ZTAJIevo', N'1', CAST(N'2023-12-17T11:12:48.1521219' AS DateTime2), 0, 68)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (75, N'1680000.0', N'zCIz1sDn', N'1', CAST(N'2023-12-17T11:12:48.1541670' AS DateTime2), 0, 71)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (76, N'1455200.0', N'2xOD4uur', N'1', CAST(N'2023-12-17T11:12:53.7591458' AS DateTime2), 0, 73)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (77, N'1540000.0', N'eIFtuBQF', N'1', CAST(N'2023-12-17T11:12:53.7591458' AS DateTime2), 0, 75)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (78, N'1260000.0', N'ePoShJhm', N'1', CAST(N'2023-12-17T11:12:53.7608054' AS DateTime2), 0, 72)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (79, N'1680000.0', N'2EWXtQ53', N'1', CAST(N'2023-12-17T11:12:53.7608054' AS DateTime2), 0, 74)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (80, N'1790000.0', N'NklsSEPQ', N'1', CAST(N'2023-12-17T11:13:25.4638697' AS DateTime2), 0, 76)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (81, N'1570000.0', N'tst67Qrh', N'1', CAST(N'2023-12-17T11:13:49.0569968' AS DateTime2), 0, 77)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (82, N'1650000.0', N'fhefzGIz', N'1', CAST(N'2023-12-17T11:15:52.8087121' AS DateTime2), 0, 78)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (83, N'1570000.0', N'YBO2A9jI', N'1', CAST(N'2023-12-17T11:16:09.4150956' AS DateTime2), 0, 79)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (84, N'1570000.0', N'0MxOtu9M', N'1', CAST(N'2023-12-17T11:16:27.2728271' AS DateTime2), 0, 80)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (85, N'965200.0', N'EeAD2YZ9', N'1', CAST(N'2023-12-17T11:16:27.2768280' AS DateTime2), 0, 81)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (86, N'890000.0', N'tCCZJ3tn', N'1', CAST(N'2023-12-17T11:19:43.1960185' AS DateTime2), 0, 82)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (87, N'2430000.0', N'opnaMg0Q', N'1', CAST(N'2023-12-17T11:20:15.5215320' AS DateTime2), 0, 83)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (88, N'1010000.0', N'eiWQjVEL', N'1', CAST(N'2023-12-17T11:20:50.0561728' AS DateTime2), 0, 84)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (89, N'1610000.0', N'VE1quoTs', N'1', CAST(N'2023-12-17T11:25:59.9215754' AS DateTime2), 0, 85)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (90, N'2470000.0', N'QBR2S1tA', N'1', CAST(N'2023-12-17T11:26:24.0045222' AS DateTime2), 0, 86)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (91, N'2540000.0', N'VRAfL42C', N'1', CAST(N'2023-12-17T11:27:20.0352489' AS DateTime2), 0, 87)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (92, N'1568000.0', N'LU0DyYFQ', N'1', CAST(N'2023-12-17T11:27:31.9850138' AS DateTime2), 0, 88)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (93, N'1450000.0', N'HqLGDEX3', N'1', CAST(N'2023-12-17T11:27:43.1536969' AS DateTime2), 0, 89)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (94, N'1650000.0', N'vVHRDbqD', N'1', CAST(N'2023-12-17T11:29:35.5864782' AS DateTime2), 0, 90)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (95, N'1210000.0', N'0GwnVmRl', N'1', CAST(N'2023-12-17T11:29:43.0554292' AS DateTime2), 0, 91)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (96, N'1900000.0', N'v14tDePz', N'1', CAST(N'2023-12-17T11:29:49.9264194' AS DateTime2), 0, 92)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (97, N'3.392E7', N'tDpz1wU3', N'1', CAST(N'2023-12-17T11:31:25.9096779' AS DateTime2), 0, 93)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (98, N'965200.0', N'Q68biodn', N'1', CAST(N'2023-12-17T13:37:45.9317845' AS DateTime2), 0, 94)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (99, N'962700.0', N'YYxWxeBO', N'1', CAST(N'2023-12-17T13:38:45.8825215' AS DateTime2), 0, 95)
GO
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (100, N'1680000.0', N'1WrAB635', N'1', CAST(N'2023-12-17T13:40:13.6921388' AS DateTime2), 0, 96)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (101, N'1800000', N'62551345', N'1', CAST(N'2023-12-17T13:42:08.8959916' AS DateTime2), 0, 97)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (102, N'1680000.0', N'ufEMQo7R', N'1', CAST(N'2023-12-17T14:34:46.3110470' AS DateTime2), 0, 98)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (103, N'2.865E7', N'lzYNSQkD', N'1', CAST(N'2023-12-17T14:34:46.3130516' AS DateTime2), 0, 99)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (104, N'1540000.0', N'fUlic9VX', N'1', CAST(N'2023-12-17T14:37:52.6325434' AS DateTime2), 0, 100)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (105, N'1680000.0', N'kWu9YInS', N'1', CAST(N'2023-12-17T14:37:52.6345476' AS DateTime2), 0, 101)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (106, N'4000000', N'37584273', N'1', CAST(N'2023-12-17T14:44:27.4224765' AS DateTime2), 0, 102)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (107, N'360000.0', N'i26kk2S3', N'1', CAST(N'2023-12-17T15:17:41.8804349' AS DateTime2), 0, 103)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (108, N'2500000.0', N'eRR55iWt', N'1', CAST(N'2023-12-17T15:18:01.5680632' AS DateTime2), 0, 104)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (109, N'2860000.0', N'fnHS0pB6', N'1', CAST(N'2023-12-17T15:18:09.1177749' AS DateTime2), 0, 106)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (110, N'360000.0', N'OLhnvDTS', N'1', CAST(N'2023-12-17T15:18:09.1272902' AS DateTime2), 0, 105)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (111, N'3200000.0', N'UUWBpuZq', N'1', CAST(N'2023-12-17T15:24:46.3857174' AS DateTime2), 0, 107)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (112, N'1944800.0', N'An4JQTY9', N'1', CAST(N'2023-12-17T15:24:54.8735979' AS DateTime2), 0, 108)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (113, N'2397600.0', N'1y6ZNXUi', N'1', CAST(N'2023-12-17T15:25:09.7146942' AS DateTime2), 0, 109)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (114, N'1784400.0', N'uwGiZiua', N'1', CAST(N'2023-12-17T15:25:16.4745068' AS DateTime2), 0, 110)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (115, N'1940000.0', N'RcppeG2Z', N'1', CAST(N'2023-12-17T16:06:04.1175944' AS DateTime2), 0, 111)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (116, N'3100600', N'37466187', N'1', CAST(N'2023-12-17T16:12:03.3856383' AS DateTime2), 0, 112)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (117, N'1760000.0', N'x4et1MBi', N'1', CAST(N'2023-12-17T17:05:29.2510554' AS DateTime2), 0, 113)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (118, N'1805600', N'82956838', N'1', CAST(N'2023-12-17T17:09:24.1024565' AS DateTime2), 0, 114)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (119, N'2664000.0', N'B3KUEiy4', N'1', CAST(N'2023-12-17T20:50:27.0895339' AS DateTime2), 0, 115)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (120, N'2000000.0', N'1Lo8Hoz4', N'1', CAST(N'2023-12-17T21:39:53.9576264' AS DateTime2), 0, 116)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (121, N'1680000.0', N'93TYx90w', N'1', CAST(N'2023-12-17T21:46:34.9967182' AS DateTime2), 0, 117)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (122, N'1600000.0', N'igr1huYA', N'1', CAST(N'2023-12-17T21:48:43.8116456' AS DateTime2), 0, 118)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (123, N'1310000.0', N'3Tjr1X5E', N'1', CAST(N'2023-12-18T20:09:02.8779635' AS DateTime2), 0, 119)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (124, N'1350000.0', N'LaicwRIC', N'1', CAST(N'2023-12-18T20:10:18.2980515' AS DateTime2), 0, 120)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (125, N'670000.0', N'f1HJVCas', N'1', CAST(N'2023-12-18T20:37:21.9302224' AS DateTime2), 0, 121)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (126, N'5400000.0', N'1WRZPoZB', N'1', CAST(N'2023-12-18T20:41:47.6364399' AS DateTime2), 0, 122)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (127, N'4910000.0', N'KRxuYBA2', N'1', CAST(N'2023-12-18T21:48:49.5104596' AS DateTime2), 0, 123)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (128, N'1432000', N'19107378', N'1', CAST(N'2023-12-18T21:55:04.4747282' AS DateTime2), 0, 124)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (129, N'2111500.0', N'7SbokFkS', N'1', CAST(N'2023-12-18T23:24:31.9054950' AS DateTime2), 0, 125)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (130, N'2465600', N'36008189', N'1', CAST(N'2023-12-18T23:28:31.8662835' AS DateTime2), 0, 126)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (131, N'760000.0', N'6OVLnuca', N'1', CAST(N'2023-12-19T08:52:04.5669236' AS DateTime2), 0, 127)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (132, N'1120000', N'07499968', N'1', CAST(N'2023-12-19T10:51:15.7527096' AS DateTime2), 0, 128)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (133, N'560000', N'32285529', N'1', CAST(N'2023-12-19T11:07:53.8654894' AS DateTime2), 1, 129)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (134, N'2900000.0', N'jpP3Ebzh', N'1', CAST(N'2023-12-19T11:51:51.7968199' AS DateTime2), 0, 130)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (135, N'2520000', N'30061061', N'1', CAST(N'2023-12-19T11:56:06.6343586' AS DateTime2), 0, 131)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (136, N'2400000.0', N'TnBOSCXK', N'1', CAST(N'2023-12-19T13:15:48.7419701' AS DateTime2), 0, 132)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (137, N'2140000', N'43023357', N'1', CAST(N'2023-12-19T13:19:18.6548575' AS DateTime2), 0, 133)
INSERT [dbo].[payment] ([id], [amount], [order_id], [order_status], [payment_date], [status_exchange], [bill_id]) VALUES (138, N'9000000', N'88425920', N'0', NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[payment] OFF
GO
INSERT [dbo].[payment_method] ([id], [name], [status]) VALUES (1, N'TIEN_MAT', 1)
INSERT [dbo].[payment_method] ([id], [name], [status]) VALUES (3, N'CHUYEN_KHOAN', 1)
INSERT [dbo].[payment_method] ([id], [name], [status]) VALUES (4, N'THE', 1)
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (1, N'SP0001', CAST(N'2023-12-04T22:56:56.2352783' AS DateTime2), 0, N'', 3, N'Áo Len Hàn Basic', 450000, 1, CAST(N'2023-12-04T22:56:56.2352783' AS DateTime2), 1, 1, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (2, N'SP0002', CAST(N'2023-12-04T23:05:01.0862855' AS DateTime2), 0, N'', 1, N'Áo polo form đẹp', 540000, 1, CAST(N'2023-12-04T23:05:01.0862855' AS DateTime2), 2, 2, 2)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (3, N'SP0003', CAST(N'2023-12-04T23:14:01.6694339' AS DateTime2), 0, N'', 1, N'Áo Polo In Họa Tiết Form Regular PO117', 450000, 1, CAST(N'2023-12-04T23:14:01.6694339' AS DateTime2), 2, 2, 2)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (4, N'SP0004', CAST(N'2023-12-04T23:16:52.8434426' AS DateTime2), 0, N'', 1, N'Áo polo kẻ sọc họa tiết đẹp', 560000, 1, CAST(N'2023-12-04T23:16:52.8434426' AS DateTime2), 2, 1, 2)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (5, N'SP0005', CAST(N'2023-12-04T23:19:52.0109812' AS DateTime2), 0, N'', 1, N'ÁO POLO RÃ PHỐI THÊU C‘EST LA VIE FORM SLIMFIT PO115', 450000, 1, CAST(N'2023-12-04T23:19:52.0109812' AS DateTime2), 3, 2, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (6, N'SP0006', CAST(N'2023-12-04T23:22:33.0394385' AS DateTime2), 0, N'', 1, N'Áo polo họa tiết siêu đẹp', 450000, 1, CAST(N'2023-12-04T23:22:33.0394385' AS DateTime2), 1, 1, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (7, N'SP0007', CAST(N'2023-12-04T23:24:57.5382884' AS DateTime2), 0, N'', 3, N'Áo len bông form rộng', 450000, 1, CAST(N'2023-12-04T23:24:57.5382884' AS DateTime2), 1, 1, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (8, N'SP0008', CAST(N'2023-12-04T23:26:24.5595940' AS DateTime2), 0, N'', 1, N'Áo len ba lỗi dáng chuẩn', 770000, 1, CAST(N'2023-12-04T23:26:24.5595940' AS DateTime2), 1, 1, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (9, N'SP0009', CAST(N'2023-12-18T20:54:37.6192822' AS DateTime2), 0, N'san pham sieu dep den tu thuong hieu', 3, N'Áo Hobbie form rộng hóa tiết Hàn Quốc', 780000, 1, CAST(N'2023-12-18T20:54:37.6192822' AS DateTime2), 3, 3, 2)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (10, N'SP0010', CAST(N'2023-12-14T21:15:08.9023387' AS DateTime2), 0, N'', 3, N'Áo Hobbie unisix form rộng', 700000, 1, CAST(N'2023-12-14T21:15:08.9023387' AS DateTime2), 4, 3, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (11, N'SP0011', CAST(N'2023-12-04T23:36:46.2920642' AS DateTime2), 0, N'', 3, N'Áo swater basic hàn', 780000, 1, CAST(N'2023-12-04T23:36:46.2920642' AS DateTime2), 1, 3, 3)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (12, N'SP0012', CAST(N'2023-12-18T20:55:54.9324138' AS DateTime2), 0, N'', 2, N'Váy dài công chúa siêu dễ thương', 760000, 1, CAST(N'2023-12-18T20:55:54.9324138' AS DateTime2), 4, 4, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (13, N'SP0013', CAST(N'2023-12-18T20:56:20.7088540' AS DateTime2), 0, N'', 2, N'Váy sinh nhật bánh bèo', 760000, 1, CAST(N'2023-12-18T20:56:20.7088540' AS DateTime2), 3, 4, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (14, N'SP0014', CAST(N'2023-12-04T23:45:35.8832857' AS DateTime2), 0, N'', 2, N'Váy ngắn dã hội mùa xuân', 780000, 1, CAST(N'2023-12-04T23:45:35.8832857' AS DateTime2), 3, 5, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (15, N'SP0015', CAST(N'2023-12-04T23:47:37.3698756' AS DateTime2), 0, N'', 2, N'Đầm Công Sở Tay Lỡ Đính Nút Dễ Thương', 560000, 1, CAST(N'2023-12-04T23:47:37.3698756' AS DateTime2), 4, 4, 3)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (16, N'SP0016', CAST(N'2023-12-04T23:51:38.0865079' AS DateTime2), 0, N'', 2, N'Váy bánh bèo đi tiệc', 450000, 1, CAST(N'2023-12-04T23:51:38.0865079' AS DateTime2), 4, 4, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (17, N'SP0017', CAST(N'2023-12-04T23:53:01.7362789' AS DateTime2), 0, N'', 2, N'Váy tiên nữ dự tiệc siêu đẹp', 640000, 1, CAST(N'2023-12-04T23:53:01.7362789' AS DateTime2), 1, 4, 3)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (18, N'SP0018', CAST(N'2023-12-05T13:01:01.2678181' AS DateTime2), 1, N'', 1, N'Áo kẻ', 100000, 1, CAST(N'2023-12-05T13:01:01.2678181' AS DateTime2), 1, 2, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (19, N'SP0019', CAST(N'2023-12-06T00:05:17.6580886' AS DateTime2), 0, N'', 1, N'Quần bò đùi giáng hàn', 450000, 1, CAST(N'2023-12-06T00:05:17.6580886' AS DateTime2), 1, 6, 5)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (20, N'SP0020', CAST(N'2023-12-06T00:10:19.8146114' AS DateTime2), 0, N'', 1, N'QUẦN JEAN NAM - TOTODAY - STRAIGHT', 670000, 1, CAST(N'2023-12-06T00:10:19.8146114' AS DateTime2), 1, 6, 5)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (21, N'SP0021', CAST(N'2023-12-06T14:13:27.7302493' AS DateTime2), 1, N'', 2, N'Váy Hàn đẹp', 500000, 1, CAST(N'2023-12-06T14:13:27.7302493' AS DateTime2), 5, 5, 2)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (22, N'SP0022', CAST(N'2023-12-06T14:26:13.8154711' AS DateTime2), 1, N'', 1, N'Quần Kaki bò nam siêu đẹp', 560000, 1, CAST(N'2023-12-06T14:26:13.8154711' AS DateTime2), 1, 6, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (23, N'SP0023', CAST(N'2023-12-06T14:29:16.6384345' AS DateTime2), 1, N'', 2, N'Váy siêu đẹp trung', 600000, 1, CAST(N'2023-12-06T14:29:16.6384345' AS DateTime2), 3, 5, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (24, N'SP0024', CAST(N'2023-12-06T18:10:16.8495536' AS DateTime2), 0, N'', 2, N'Váy công chúa', 500000, 1, CAST(N'2023-12-06T18:10:16.8495536' AS DateTime2), 6, 4, 2)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (26, N'SP0025', CAST(N'2023-12-17T10:54:05.5214448' AS DateTime2), 0, N'', 2, N'Bộ đầm và váy siêu đẹp', 340000, 1, CAST(N'2023-12-17T10:54:05.5214448' AS DateTime2), 1, 5, 2)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (27, N'SP0027', CAST(N'2023-12-19T11:44:30.0175995' AS DateTime2), 0, N'', 2, N'Áo dài cách tân', 350000, 1, CAST(N'2023-12-19T11:44:30.0175995' AS DateTime2), 7, 1, 2)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (28, N'SP0028', CAST(N'2023-12-18T20:54:57.5076659' AS DateTime2), 0, N'', 2, N'Áo dài cổ trang', 300000, 1, CAST(N'2023-12-18T20:54:57.5076659' AS DateTime2), 3, 1, 2)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (29, N'SP0029', CAST(N'2023-12-17T21:33:44.8350602' AS DateTime2), 0, N'abv', 3, N'Áo phông siêu hot', 300000, 1, CAST(N'2023-12-17T21:33:44.8350602' AS DateTime2), 4, 2, 1)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (30, N'SP0030', CAST(N'2023-12-17T21:26:27.8083623' AS DateTime2), 0, N'Tủ đựng quần áo Xuân Hòa với những ưu điểm vượt trội. Là sự lựa chọn của nhiều người tiêu dùng. Mẫu nội thất gia đình thiết kế thông minh, lắp đặt dễ dàng độ bền cao. Sản phẩm luôn đứng đầu về chất lượng và kiểu dáng hiện đại độc đáo.', 2, N'Váy ngắn bông tươi', 340000, 1, CAST(N'2023-12-17T21:26:27.8083623' AS DateTime2), 3, 5, 5)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (31, N'SP0031', CAST(N'2023-12-18T21:28:58.8835654' AS DateTime2), 0, N'', 2, N'Vay Ngan Trang', 500000, 1, CAST(N'2023-12-18T21:28:58.8835654' AS DateTime2), 8, 5, 4)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (32, N'SP0032', CAST(N'2023-12-18T23:15:58.3248260' AS DateTime2), 0, N'', 3, N'Quần Đẹp', 500000, 1, CAST(N'2023-12-18T23:15:58.3248260' AS DateTime2), 3, 6, 6)
INSERT [dbo].[product] ([id], [code], [create_date], [delete_flag], [describe], [gender], [name], [price], [status], [updated_date], [brand_id], [category_id], [material_id]) VALUES (33, N'SP0033', CAST(N'2023-12-19T13:09:19.0760631' AS DateTime2), 0, N'', 2, N'Ao dai viet nam', 500000, 1, CAST(N'2023-12-19T13:09:19.0760631' AS DateTime2), 9, 7, 2)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[product_detail] ON 

INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (1, N'950522995873', 450000, 91, 3, 1, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (2, N'818057059244', 550000, 81, 3, 1, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (3, N'255221259599', 500000, 72, 3, 1, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (4, N'602296962379', 540000, 52, 3, 2, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (5, N'332221520568', 650000, 84, 3, 2, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (6, N'560432341599', 640000, 0, 3, 2, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (7, N'994064288939', 450000, 91, 3, 3, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (8, N'406072731055', 560000, 0, 3, 3, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (9, N'420288803302', 450000, 67, 3, 3, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (10, N'194278660180', 560000, 20, 1, 4, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (11, N'323758192911', 670000, 89, 1, 4, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (12, N'898511982932', 560000, 46, 4, 5, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (13, N'540857069659', 450000, 20, 4, 5, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (14, N'823054876622', 500000, 96, 4, 5, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (15, N'463933180202', 450000, 54, 2, 6, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (16, N'891618469558', 700000, 97, 4, 6, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (17, N'281300510387', 560000, 54, 2, 6, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (18, N'669022966101', 600000, 99, 4, 6, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (19, N'748582726527', 450000, 98, 4, 6, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (20, N'116177422811', 500000, 64, 4, 7, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (21, N'329348359263', 560000, 98, 4, 7, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (22, N'270622513523', 560000, 56, 2, 7, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (23, N'892226005733', 450000, 99, 3, 7, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (24, N'274525851680', 800000, 88, 4, 8, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (25, N'389273808719', 880000, 98, 4, 8, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (26, N'474749237562', 780000, 46, 2, 8, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (27, N'638673361445', 770000, 78, 4, 8, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (28, N'168004292866', 800000, 252, 3, 9, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (29, N'337256552447', 800000, 342, 3, 9, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (30, N'258787867221', 880000, 5431, 3, 9, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (31, N'250414018777', 780000, 4544, 4, 9, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (32, N'374970159729', 900000, 67, 3, 10, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (33, N'716449623586', 990000, 78, 3, 10, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (34, N'903830623200', 800000, 77, 3, 10, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (35, N'260797293125', 900000, 344, 2, 10, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (36, N'324811383257', 700000, 54, 2, 10, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (37, N'723317548403', 890000, 78, 2, 10, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (38, N'969473223158', 800000, 99, 3, 11, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (39, N'924865876408', 800000, 78, 3, 11, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (40, N'436061920869', 880000, 89, 3, 11, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (41, N'382506550141', 780000, 888, 4, 11, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (42, N'205674841627', 900000, 39, 4, 11, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (43, N'804122834732', 890000, 71, 4, 12, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (44, N'117863025454', 760000, 164, 4, 12, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (45, N'367590940502', 890000, 156, 4, 12, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (46, N'571883128797', 900000, 167, 4, 12, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (47, N'918868761119', 1000000, 98, 4, 13, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (48, N'594587320981', 760000, 97, 4, 13, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (49, N'659054482458', 780000, 56, 4, 14, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (50, N'926636036178', 800000, 43, 3, 14, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (51, N'789441277767', 810000, 47, 4, 14, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (52, N'475903651723', 860000, 161, 3, 14, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (53, N'622418593675', 780000, 88, 3, 15, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (54, N'951855043089', 560000, 537, 3, 15, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (55, N'224830587417', 760000, 151, 3, 15, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (56, N'875696032903', 890000, 145, 3, 15, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (63, N'472237712458', 450000, 8, 2, 16, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (64, N'219485939510', 760000, 24, 2, 16, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (65, N'730751335505', 890000, 25, 2, 16, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (66, N'741490641794', 780000, 29, 5, 16, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (67, N'999221942650', 760000, 23, 5, 16, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (68, N'403693665490', 780000, 35, 5, 16, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (69, N'330822487451', 670000, 563, 4, 17, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (70, N'404497340990', 760000, 72, 4, 17, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (71, N'102522486505', 640000, 649, 4, 17, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (72, N'959674343295', 100000, 1, 3, 18, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (73, N'546765391238', 780000, 98, 2, 19, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (74, N'384869378337', 670000, 84, 2, 19, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (75, N'374276230827', 450000, 86, 2, 19, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (79, N'378127061471', 900000, 869, 2, 20, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (80, N'798463249625', 780000, 65, 2, 20, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (81, N'481334413830', 670000, 76, 2, 20, 4)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (82, N'606175973230', 500000, 50, 4, 21, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (83, N'794006814378', 500000, 50, 3, 21, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (84, N'146933743059', 560000, 34, 1, 22, 3)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (85, N'926932208221', 600000, 34, 1, 23, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (86, N'624272327953', 500000, 7, 4, 24, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (87, N'969588190261', 500000, 9, 2, 24, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (92, N'441609757073', 340000, 2, 1, 26, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (93, N'478023509732', 500000, 9, 2, 26, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (94, N'453916587545', 570000, 12, 3, 26, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (95, N'375408113723', 500000, 77, 4, 27, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (96, N'433002813119', 500000, 123, 2, 27, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (97, N'453690501626', 300000, 104, 4, 28, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (98, N'553292049799', 300000, 103, 3, 28, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (99, N'362363593966', 300000, 10, 4, 29, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (100, N'859252201835', 300000, 10, 3, 29, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (101, N'741050272377', 350000, 123, 3, 27, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (102, N'213331398959', 340000, 234, 1, 30, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (103, N'104740552363', 500000, 232, 6, 30, 2)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (104, N'662241313487', 500000, 10, 4, 31, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (105, N'955895258241', 500000, 10, 3, 31, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (106, N'959275324025', 500000, 10, 1, 32, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (107, N'372128919942', 500000, 15, 2, 32, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (108, N'689361971879', 500000, 10, 4, 33, 1)
INSERT [dbo].[product_detail] ([id], [barcode], [price], [quantity], [color_id], [product_id], [size_id]) VALUES (109, N'519401751831', 500000, 10, 4, 33, 2)
SET IDENTITY_INSERT [dbo].[product_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[product_discount] ON 

INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (1, 0, 360000, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-19T07:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (2, 0, 440000, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-19T07:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (3, 0, 432000, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-17T07:00:00.0000000' AS DateTime2), 4)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (4, 0, 487500, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-06T07:00:00.0000000' AS DateTime2), 5)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (5, 0, 440000, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-06T07:00:00.0000000' AS DateTime2), 14)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (6, 0, 306000, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-06T07:00:00.0000000' AS DateTime2), 13)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (7, 0, 492800, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-06T07:00:00.0000000' AS DateTime2), 12)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (8, 0, 198000, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-16T07:00:00.0000000' AS DateTime2), 15)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (9, 0, 400000, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-19T07:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (10, 0, 640000, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-16T07:00:00.0000000' AS DateTime2), 24)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (11, 0, 704000, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-16T07:00:00.0000000' AS DateTime2), 25)
INSERT [dbo].[product_discount] ([id], [closed], [discounted_amount], [end_date], [start_date], [product_detail_id]) VALUES (12, 0, 13500, CAST(N'2023-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2023-12-19T07:00:00.0000000' AS DateTime2), 23)
SET IDENTITY_INSERT [dbo].[product_discount] OFF
GO
SET IDENTITY_INSERT [dbo].[return_detail] ON 

INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (1, NULL, 1, 1, 8)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (2, NULL, 1, 2, 34)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (3, NULL, 1, 5, 2)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (4, NULL, 1, 6, 65)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (5, NULL, 2, 7, 52)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (6, NULL, 2, 9, 11)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (7, NULL, 1, 10, 8)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (8, NULL, 1, 12, 93)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (9, NULL, 1, 14, 65)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (10, NULL, 1, 15, 4)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (11, NULL, 1, 17, 2)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (12, NULL, 1, 19, 11)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (13, NULL, 1, 20, 10)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (14, NULL, 1, 21, 30)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (15, NULL, 1, 22, 2)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (16, NULL, 1, 23, 45)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (17, NULL, 1, 24, 11)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (18, NULL, 1, 25, 45)
INSERT [dbo].[return_detail] ([id], [moment_price_refund], [quantity_return], [return_id], [product_detail_id]) VALUES (19, NULL, 1, 26, 11)
SET IDENTITY_INSERT [dbo].[return_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([id], [create_date], [name], [update_date]) VALUES (1, NULL, N'ROLE_ADMIN', NULL)
INSERT [dbo].[role] ([id], [create_date], [name], [update_date]) VALUES (2, NULL, N'ROLE_EMPLOYEE', NULL)
INSERT [dbo].[role] ([id], [create_date], [name], [update_date]) VALUES (3, NULL, N'ROLE_USER', NULL)
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[size] ON 

INSERT [dbo].[size] ([id], [code], [name], [delete_flag]) VALUES (1, N'KC1', N'M', NULL)
INSERT [dbo].[size] ([id], [code], [name], [delete_flag]) VALUES (2, N'KC2', N'XL', NULL)
INSERT [dbo].[size] ([id], [code], [name], [delete_flag]) VALUES (3, N'KC3', N'S', NULL)
INSERT [dbo].[size] ([id], [code], [name], [delete_flag]) VALUES (4, N'KC4', N'XXL', NULL)
SET IDENTITY_INSERT [dbo].[size] OFF
GO
SET IDENTITY_INSERT [dbo].[verification_code] ON 

INSERT [dbo].[verification_code] ([id], [code], [expiry_time], [account_id]) VALUES (1, N'720819', CAST(N'2023-12-14T20:22:15.5485788' AS DateTime2), 13)
SET IDENTITY_INSERT [dbo].[verification_code] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_k9qlqijt38kmryafdhhq04lon]    Script Date: 12/26/2023 7:56:43 PM ******/
ALTER TABLE [dbo].[account] ADD  CONSTRAINT [UK_k9qlqijt38kmryafdhhq04lon] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FKd4vb66o896tay3yy52oqxr9w0] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FKd4vb66o896tay3yy52oqxr9w0]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FKnnwpo0lfq4xai1rs6887sx02k] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FKnnwpo0lfq4xai1rs6887sx02k]
GO
ALTER TABLE [dbo].[address_shipping]  WITH CHECK ADD  CONSTRAINT [FKq133otkfjvualo1uhtdimlsj0] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[address_shipping] CHECK CONSTRAINT [FKq133otkfjvualo1uhtdimlsj0]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FKcdveik90g4pvk7m249scu73pg] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FKcdveik90g4pvk7m249scu73pg]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FKmn36kcnhdokvrm6ueo3raqi9k] FOREIGN KEY([payment_method_id])
REFERENCES [dbo].[payment_method] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FKmn36kcnhdokvrm6ueo3raqi9k]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FKqjtxrp32iyvl31q2cr3l3refa] FOREIGN KEY([discount_code_id])
REFERENCES [dbo].[discount_code] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FKqjtxrp32iyvl31q2cr3l3refa]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK5wgs68xq0wq0ebia10snilq9v] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[product_detail] ([id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK5wgs68xq0wq0ebia10snilq9v]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FKeolgwyayei3o80bb7rj7t207q] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FKeolgwyayei3o80bb7rj7t207q]
GO
ALTER TABLE [dbo].[bill_return]  WITH CHECK ADD  CONSTRAINT [FKmt15w62mdy6k5x6i1a3297egn] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[bill_return] CHECK CONSTRAINT [FKmt15w62mdy6k5x6i1a3297egn]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK4pljlvncf45mr98etwpubxvbt] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK4pljlvncf45mr98etwpubxvbt]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK874r4t3ct18p0rfjwdkn4p0xe] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[product_detail] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK874r4t3ct18p0rfjwdkn4p0xe]
GO
ALTER TABLE [dbo].[image]  WITH CHECK ADD  CONSTRAINT [FKgpextbyee3uk9u6o2381m7ft1] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[image] CHECK CONSTRAINT [FKgpextbyee3uk9u6o2381m7ft1]
GO
ALTER TABLE [dbo].[payment]  WITH CHECK ADD  CONSTRAINT [FKhdc173udjyonn4mt1lgt1x2ce] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[payment] CHECK CONSTRAINT [FKhdc173udjyonn4mt1lgt1x2ce]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK1mtsbur82frn64de7balymq9s] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK1mtsbur82frn64de7balymq9s]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FKs6cydsualtsrprvlf2bb3lcam] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKs6cydsualtsrprvlf2bb3lcam]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FKw04fq456sc4tk26tnbhvr59o] FOREIGN KEY([material_id])
REFERENCES [dbo].[material] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKw04fq456sc4tk26tnbhvr59o]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FK99vj2np1gk1robp8n6htiweii] FOREIGN KEY([color_id])
REFERENCES [dbo].[color] ([id])
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FK99vj2np1gk1robp8n6htiweii]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FKcum8u2vfvebmmc4xo8de3k35s] FOREIGN KEY([size_id])
REFERENCES [dbo].[size] ([id])
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FKcum8u2vfvebmmc4xo8de3k35s]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FKilxoi77ctyin6jn9robktb16c] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FKilxoi77ctyin6jn9robktb16c]
GO
ALTER TABLE [dbo].[product_discount]  WITH CHECK ADD  CONSTRAINT [FK7v5t5uc0v7ww6ro8pxoustui6] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[product_detail] ([id])
GO
ALTER TABLE [dbo].[product_discount] CHECK CONSTRAINT [FK7v5t5uc0v7ww6ro8pxoustui6]
GO
ALTER TABLE [dbo].[return_detail]  WITH CHECK ADD  CONSTRAINT [FK1d0fsi5xn9qokf0vmd0ni28n] FOREIGN KEY([return_id])
REFERENCES [dbo].[bill_return] ([id])
GO
ALTER TABLE [dbo].[return_detail] CHECK CONSTRAINT [FK1d0fsi5xn9qokf0vmd0ni28n]
GO
ALTER TABLE [dbo].[return_detail]  WITH CHECK ADD  CONSTRAINT [FKkgwtlbgm9ho0njhx5nsq0s589] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[product_detail] ([id])
GO
ALTER TABLE [dbo].[return_detail] CHECK CONSTRAINT [FKkgwtlbgm9ho0njhx5nsq0s589]
GO
ALTER TABLE [dbo].[verification_code]  WITH CHECK ADD  CONSTRAINT [FKn1v88epjv0xug2pr7nwamcboh] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[verification_code] CHECK CONSTRAINT [FKn1v88epjv0xug2pr7nwamcboh]
GO
