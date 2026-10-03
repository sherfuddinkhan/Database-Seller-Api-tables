CREATE TABLE [dbo].[GoodsReceiptItems](
	[GoodsReceiptItemId] [int] IDENTITY(1,1) NOT NULL,
	[GoodsReceiptNoteId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ReceivedQuantity] [decimal](18, 2) NOT NULL,
	[AcceptedQuantity] [decimal](18, 2) NOT NULL,
	[RejectedQuantity] [decimal](18, 2) NULL,
	[Remarks] [nvarchar](500) NULL,
	[SellerId] [int] NULL,
	[CustomerId] [int] NULL,
	[PurchaseOrderItemId] [int] NULL,
	[SupplierId] [int] NULL,
	[LineNumber] [int] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[Status] [nvarchar](100) NULL,
	[SkuCode] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[Mrp] [decimal](18, 2) NULL,
	[AdditionalCost] [decimal](18, 2) NULL,
	[ManufacturingDate] [datetime] NULL,
	[ExpiryDate] [datetime] NULL,
	[BatchCode] [varchar](50) NULL,
	[VendorBatchNumber] [varchar](50) NULL,
	[VendorCode] [varchar](50) NULL,
	[Cost] [decimal](18, 2) NULL,
	[SerialCodesJson] [nvarchar](max) NULL,
	[ItemDetailCode] [varchar](100) NULL,
	[BinCode] [nvarchar](50) NULL,
	[ChannelCode] [nvarchar](50) NULL,
	[FacilityCode] [nvarchar](50) NULL,
	[ShelfCode] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[GoodsReceiptItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
