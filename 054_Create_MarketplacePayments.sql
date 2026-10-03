CREATE TABLE [dbo].[MarketplacePayments](
	[MarketplacePaymentId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceOrderId] [int] NOT NULL,
	[PaymentReference] [nvarchar](150) NULL,
	[PaymentStatus] [nvarchar](100) NULL,
	[PaymentMethod] [nvarchar](100) NULL,
	[GrossAmount] [decimal](18, 2) NULL,
	[Commission] [decimal](18, 2) NULL,
	[ShippingFee] [decimal](18, 2) NULL,
	[Tax] [decimal](18, 2) NULL,
	[NetAmount] [decimal](18, 2) NULL,
	[PaymentDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplacePaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
