CREATE TABLE [dbo].[ShelfwiseInventories](
	[ShelfwiseInventoryId] [int] NOT NULL,
	[FacilityCode] [varchar](50) NULL,
	[ShelfCode] [varchar](50) NULL,
	[ItemSkuCode] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[BatchCode] [varchar](50) NULL,
	[ExpiryDate] [datetime] NULL,
	[InventoryType] [varchar](20) NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[LocationCode] [nvarchar](100) NULL,
	[Mrp] [decimal](18, 2) NULL,
	[Mfd] [bigint] NULL,
	[VendorCode] [varchar](50) NULL,
	[VendorBatchNumber] [varchar](50) NULL,
	[LotNumber] [varchar](50) NULL,
	[TransferToShelfCode] [varchar](50) NULL,
	[Sla] [int] NULL,
	[Remarks] [varchar](255) NULL,
	[WarehouseId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ShelfwiseInventoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
