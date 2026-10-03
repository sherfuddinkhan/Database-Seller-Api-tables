CREATE TABLE [dbo].[StockAdjustments](
	[StockAdjustmentId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[AdjustmentType] [nvarchar](50) NULL,
	[Quantity] [decimal](18, 2) NULL,
	[Reason] [nvarchar](500) NULL,
	[AdjustedBy] [nvarchar](150) NULL,
	[AdjustmentDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StockAdjustmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
