CREATE TABLE [dbo].[MarketplaceOrders](
	[MarketplaceOrderId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceAccountId] [int] NOT NULL,
	[MarketplaceOrderNumber] [nvarchar](150) NOT NULL,
	[ExternalOrderId] [nvarchar](200) NULL,
	[SellerOrderNumber] [nvarchar](100) NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderStatus] [nvarchar](100) NULL,
	[FulfillmentChannel] [nvarchar](100) NULL,
	[Currency] [nvarchar](20) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[BuyerName] [nvarchar](200) NULL,
	[BuyerEmail] [nvarchar](200) NULL,
	[PurchaseOrderNumber] [nvarchar](100) NULL,
	[LastSyncDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
