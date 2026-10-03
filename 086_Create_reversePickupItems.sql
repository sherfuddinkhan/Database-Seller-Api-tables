CREATE TABLE [dbo].[reversePickupItems](
	[id] [int] NOT NULL,
	[reversePickupId] [int] NULL,
	[saleOrderItemCode] [varchar](50) NULL,
	[reason] [varchar](255) NULL,
	[itemSku] [varchar](50) NULL,
	[totalPrice] [decimal](18, 2) NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
	[SellingPrice] [decimal](18, 2) NULL,
	[Discount] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
