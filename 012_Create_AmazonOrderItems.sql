CREATE TABLE [dbo].[AmazonOrderItems](
	[AmazonOrderItemId] [int] IDENTITY(1,1) NOT NULL,
	[AmazonOrderId] [int] NOT NULL,
	[ProductId] [int] NULL,
	[OrderItemId] [nvarchar](100) NULL,
	[SKU] [nvarchar](100) NULL,
	[ASIN] [nvarchar](30) NULL,
	[ProductName] [nvarchar](500) NULL,
	[QuantityOrdered] [int] NULL,
	[QuantityShipped] [int] NULL,
	[ItemPrice] [decimal](18, 2) NULL,
	[CurrencyCode] [nvarchar](10) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AmazonOrderItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
