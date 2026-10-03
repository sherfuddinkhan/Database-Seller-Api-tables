CREATE TABLE [dbo].[StockMovement](
	[StockMovementId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[MovementType] [nvarchar](50) NULL,
	[Quantity] [decimal](18, 2) NULL,
	[ReferenceTable] [nvarchar](100) NULL,
	[ReferenceId] [int] NULL,
	[MovementDate] [datetime] NULL,
	[Remarks] [nvarchar](500) NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StockMovementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
