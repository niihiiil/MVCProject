USE [DBMVC]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 23/11/2022 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[IDClient] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[Company] [nvarchar](50) NULL,
	[Purchased_Product] [nvarchar](50) NULL,
	[Quantity] [decimal](10, 2) NULL,
	[TotalPrice] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[IDClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 23/11/2022 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IDProduct] [int] IDENTITY(1,1) NOT NULL,
	[NameProduct] [nvarchar](50) NULL,
	[SupplierID] [int] NULL,
	[Stock] [nvarchar](50) NULL,
	[UnitPrice] [money] NULL,
	[State] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IDProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seller]    Script Date: 23/11/2022 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seller](
	[IDSeller] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[City] [nvarchar](50) NULL,
	[Cellphone] [nvarchar](20) NULL,
	[State] [nchar](10) NULL,
 CONSTRAINT [PK_Seller] PRIMARY KEY CLUSTERED 
(
	[IDSeller] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 23/11/2022 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[IDSupplier] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](70) NULL,
	[Company] [nvarchar](50) NULL,
	[Address] [nvarchar](80) NULL,
	[Phone] [nvarchar](40) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[IDSupplier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([IDClient], [Name], [Company], [Purchased_Product], [Quantity], [TotalPrice]) VALUES (1, N'Benedict L. Mccarthy', N'Posuere Consulting', N'Pantallas LCD', CAST(30.00 AS Decimal(10, 2)), CAST(7789.00 AS Decimal(10, 2)))
INSERT [dbo].[Clients] ([IDClient], [Name], [Company], [Purchased_Product], [Quantity], [TotalPrice]) VALUES (2, N'Aristotle O. Wyatt', N'Sem PC', N'AMD Ryzen', CAST(12.00 AS Decimal(10, 2)), CAST(6789.00 AS Decimal(10, 2)))
INSERT [dbo].[Clients] ([IDClient], [Name], [Company], [Purchased_Product], [Quantity], [TotalPrice]) VALUES (3, N'Dara N. Hayden', N'Per Inc.', N'Tropigas Tanque', CAST(10.00 AS Decimal(10, 2)), CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[Clients] ([IDClient], [Name], [Company], [Purchased_Product], [Quantity], [TotalPrice]) VALUES (4, N'Ivana D. TillmanNULL', N'Suspendisse Limited', N'Delta 9', CAST(500.00 AS Decimal(10, 2)), CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[Clients] ([IDClient], [Name], [Company], [Purchased_Product], [Quantity], [TotalPrice]) VALUES (5, N'Channing J. Conway', N'Aliquam Inc.', N'Moon Rocks', CAST(100.00 AS Decimal(10, 2)), CAST(2915.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([IDProduct], [NameProduct], [SupplierID], [Stock], [UnitPrice], [State]) VALUES (1, N'OCB', 2, N'1000', 234.0000, 1)
INSERT [dbo].[Product] ([IDProduct], [NameProduct], [SupplierID], [Stock], [UnitPrice], [State]) VALUES (2, N'Camel', 3, N'15234', 3.0000, 0)
INSERT [dbo].[Product] ([IDProduct], [NameProduct], [SupplierID], [Stock], [UnitPrice], [State]) VALUES (3, N'King Crimson', 2, N'103', 50.0000, 0)
INSERT [dbo].[Product] ([IDProduct], [NameProduct], [SupplierID], [Stock], [UnitPrice], [State]) VALUES (4, N'Woven Web', 1, N'347', 100.0000, 1)
INSERT [dbo].[Product] ([IDProduct], [NameProduct], [SupplierID], [Stock], [UnitPrice], [State]) VALUES (5, N'HO99O9', 4, N'748', 347.0000, 1)
INSERT [dbo].[Product] ([IDProduct], [NameProduct], [SupplierID], [Stock], [UnitPrice], [State]) VALUES (6, N'DopeDealerz', 5, N'534', 420.0000, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Seller] ON 

INSERT [dbo].[Seller] ([IDSeller], [Name], [City], [Cellphone], [State]) VALUES (1, N'Iggy Pop', N'Michigan', N'07) 2013 3714', N'1         ')
INSERT [dbo].[Seller] ([IDSeller], [Name], [City], [Cellphone], [State]) VALUES (2, N'Chino Moreno', N'Mexico DF', N'078-242-5660', N'0         ')
INSERT [dbo].[Seller] ([IDSeller], [Name], [City], [Cellphone], [State]) VALUES (3, N'Cedric Bixler-Xavala', N'California', N'072-972-4388', N'1         ')
INSERT [dbo].[Seller] ([IDSeller], [Name], [City], [Cellphone], [State]) VALUES (4, N'Oliverto Sykes', N'Ashford', N'(05) 9327 9716', N'0         ')
INSERT [dbo].[Seller] ([IDSeller], [Name], [City], [Cellphone], [State]) VALUES (5, N'Mitch Lucker', N'California', N'1-708-552-5264', N'1         ')
SET IDENTITY_INSERT [dbo].[Seller] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([IDSupplier], [Name], [Company], [Address], [Phone]) VALUES (1, N'Guthrie Govan', N'The Aristocrats', N'Ap #252-8007 Purus. Rd.', N'(446) 548-8462')
INSERT [dbo].[Suppliers] ([IDSupplier], [Name], [Company], [Address], [Phone]) VALUES (2, N'Mikael Akerfeldt', N'Opeth inc.', N'887 Parturient St.', N'06 32 71 92 36')
INSERT [dbo].[Suppliers] ([IDSupplier], [Name], [Company], [Address], [Phone]) VALUES (3, N'Matt Gartska', N'Leader Animals', N'6443 Nunc Rd', N'061-485-2541')
INSERT [dbo].[Suppliers] ([IDSupplier], [Name], [Company], [Address], [Phone]) VALUES (4, N'Syd Barret', N'Smashing Pumpkins', N'86-7305 Maecenas Street', N'021-388-3634')
INSERT [dbo].[Suppliers] ([IDSupplier], [Name], [Company], [Address], [Phone]) VALUES (5, N'MF Doom', N'Madvillain', N'P.O. Box 836, 3758 Aliquet, St.', N'069-777-6883')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([IDSupplier])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Suppliers]
GO
