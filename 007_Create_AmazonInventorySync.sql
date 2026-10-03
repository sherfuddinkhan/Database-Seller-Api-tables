CREATE TABLE [dbo].[AmazonInventorySync](
	[InventorySyncId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[ProductId] [int] NULL,
	[SKU] [nvarchar](100) NULL,
	[ASIN] [nvarchar](30) NULL,
	[MarketplaceId] [nvarchar](50) NULL,
	[AvailableQuantity] [int] NULL,
	[ReservedQuantity] [int] NULL,
	[InboundQuantity] [int] NULL,
	[UnfulfillableQuantity] [int] NULL,
	[LastSyncDate] [datetime] NULL,
	[JsonData] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[InventorySyncId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
