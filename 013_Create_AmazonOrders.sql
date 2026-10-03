CREATE TABLE [dbo].[AmazonOrders](
	[AmazonOrderId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[AmazonOrderNumber] [nvarchar](50) NULL,
	[MarketplaceId] [nvarchar](50) NULL,
	[PurchaseDate] [datetime] NULL,
	[OrderStatus] [nvarchar](100) NULL,
	[FulfillmentChannel] [nvarchar](100) NULL,
	[SalesChannel] [nvarchar](100) NULL,
	[OrderTotal] [decimal](18, 2) NULL,
	[CurrencyCode] [nvarchar](10) NULL,
	[BuyerEmail] [nvarchar](250) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AmazonOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
