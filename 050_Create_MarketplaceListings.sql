CREATE TABLE [dbo].[MarketplaceListings](
	[MarketplaceListingId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[MarketplaceSKU] [nvarchar](150) NULL,
	[MarketplaceProductId] [nvarchar](200) NULL,
	[ExternalProductId] [nvarchar](200) NULL,
	[ListingTitle] [nvarchar](500) NULL,
	[ListingDescription] [nvarchar](max) NULL,
	[ListingStatus] [nvarchar](50) NULL,
	[FulfillmentChannel] [nvarchar](100) NULL,
	[Currency] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceListingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
