CREATE TABLE [dbo].[StockLedger](
	[StockLedgerId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[TransactionType] [nvarchar](50) NOT NULL,
	[ReferenceNumber] [nvarchar](100) NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[BalanceQuantity] [decimal](18, 2) NOT NULL,
	[Remarks] [nvarchar](500) NULL,
	[TransactionDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StockLedgerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
