CREATE TABLE [dbo].[SellerCustomers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[CustomerCode] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](200) NOT NULL,
	[ContactPerson] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[Phone] [nvarchar](20) NULL,
	[GSTIN] [nvarchar](20) NULL,
	[AddressLine1] [nvarchar](250) NULL,
	[AddressLine2] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[CreditLimit] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[TradeName] [nvarchar](200) NULL,
	[LegalName] [nvarchar](200) NULL,
	[BuildingName] [nvarchar](200) NULL,
	[Location] [nvarchar](200) NULL,
	[StateCode] [nvarchar](10) NULL,
	[FloorNo] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
