CREATE TABLE [dbo].[InventoryAdjustments](
	[InventoryAdjustmentId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[WarehouseLocationId] [int] NULL,
	[AdjustmentType] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[PreviousQuantity] [int] NULL,
	[NewQuantity] [int] NULL,
	[Reason] [nvarchar](500) NULL,
	[ReferenceNumber] [nvarchar](100) NULL,
	[Status] [nvarchar](50) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_InventoryAdjustments] PRIMARY KEY CLUSTERED 
(
	[InventoryAdjustmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
