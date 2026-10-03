CREATE TABLE [dbo].[MarketplaceCustomers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sellerId] [int] NOT NULL,
	[customerId] [int] NOT NULL,
	[marketplaceCustomerId] [nvarchar](max) NULL,
	[marketplaceName] [nvarchar](max) NULL,
	[companyName] [nvarchar](250) NOT NULL,
	[gstin] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
	[phone] [nvarchar](20) NULL,
	[address] [nvarchar](max) NULL,
	[city] [nvarchar](100) NULL,
	[state] [nvarchar](100) NULL,
	[stateCode] [nvarchar](10) NULL,
	[pincode] [nvarchar](10) NULL,
	[createdAt] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
