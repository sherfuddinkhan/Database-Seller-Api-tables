CREATE TABLE [dbo].[MarketplaceOrderAddresses](
	[MarketplaceOrderAddressId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceOrderId] [int] NOT NULL,
	[AddressType] [nvarchar](30) NULL,
	[Name] [nvarchar](200) NULL,
	[Company] [nvarchar](200) NULL,
	[AddressLine1] [nvarchar](250) NULL,
	[AddressLine2] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[Phone] [nvarchar](30) NULL,
	[Email] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceOrderAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
