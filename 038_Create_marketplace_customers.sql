CREATE TABLE [dbo].[marketplace_customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sellerId] [int] NULL,
	[marketplaceCustomerId] [nvarchar](100) NULL,
	[marketplaceName] [nvarchar](50) NULL,
	[companyName] [nvarchar](255) NULL,
	[gstin] [nvarchar](15) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](500) NULL,
	[city] [nvarchar](100) NULL,
	[state] [nvarchar](100) NULL,
	[stateCode] [nvarchar](10) NULL,
	[pincode] [nvarchar](10) NULL,
	[createdAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
