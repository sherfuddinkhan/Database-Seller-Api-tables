CREATE TABLE [dbo].[AmazonListings](
	[AmazonListingId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[ProductId] [int] NULL,
	[SKU] [nvarchar](100) NOT NULL,
	[ASIN] [nvarchar](30) NULL,
	[MarketplaceId] [nvarchar](50) NULL,
	[ListingStatus] [nvarchar](100) NULL,
	[FulfillmentChannel] [nvarchar](100) NULL,
	[ItemCondition] [nvarchar](100) NULL,
	[Price] [decimal](18, 2) NULL,
	[CurrencyCode] [nvarchar](10) NULL,
	[Quantity] [int] NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AmazonListingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
