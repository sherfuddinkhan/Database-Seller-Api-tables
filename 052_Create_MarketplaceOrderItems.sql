CREATE TABLE [dbo].[MarketplaceOrderItems](
	[MarketplaceOrderItemId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceOrderId] [int] NOT NULL,
	[MarketplaceListingId] [int] NULL,
	[ProductId] [int] NULL,
	[MarketplaceOrderItemNumber] [nvarchar](150) NULL,
	[ExternalOrderItemId] [nvarchar](200) NULL,
	[ProductTitle] [nvarchar](500) NULL,
	[SKU] [nvarchar](150) NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[TaxAmount] [decimal](18, 2) NULL,
	[ShippingAmount] [decimal](18, 2) NULL,
	[DiscountAmount] [decimal](18, 2) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
	[Status] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceOrderItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
