CREATE TABLE [dbo].[MarketplaceReturns](
	[MarketplaceReturnId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceOrderItemId] [int] NOT NULL,
	[ReturnNumber] [nvarchar](100) NULL,
	[ReturnReason] [nvarchar](300) NULL,
	[ReturnStatus] [nvarchar](100) NULL,
	[QuantityReturned] [int] NULL,
	[RefundAmount] [decimal](18, 2) NULL,
	[ReturnDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
	[ProductId] [int] NULL,
	[SKU] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceReturnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
