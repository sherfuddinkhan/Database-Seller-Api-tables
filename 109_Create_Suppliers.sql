CREATE TABLE [dbo].[Suppliers](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[SupplierCode] [nvarchar](50) NOT NULL,
	[SupplierName] [nvarchar](200) NOT NULL,
	[ContactPerson] [nvarchar](150) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](150) NULL,
	[GSTIN] [nvarchar](20) NULL,
	[AddressLine1] [nvarchar](250) NULL,
	[AddressLine2] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[PaymentTerms] [nvarchar](100) NULL,
	[CreditLimit] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
	[tin] [varchar](50) NULL,
	[cstNumber] [varchar](50) NULL,
	[stNumber] [varchar](50) NULL,
	[website] [varchar](255) NULL,
	[purchaseExpiryPeriod] [int] NULL,
	[acceptsCForm] [bit] NULL,
	[taxExempted] [bit] NULL,
	[enabled] [bit] NULL,
	[registeredDealer] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
