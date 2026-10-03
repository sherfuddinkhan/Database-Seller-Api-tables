CREATE TABLE [dbo].[ProductPrices](
	[ProductPriceId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SellerId] [int] NOT NULL,
	[PriceType] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Currency] [nvarchar](10) NULL,
	[EffectiveFrom] [datetime] NULL,
	[EffectiveTo] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
	[invoiceDiscountType] [int] NULL,
	[invoiceDiscountValue] [decimal](18, 2) NULL,
	[invoiceDiscountAmount] [decimal](18, 2) NULL,
	[totalRateBeforeDiscount] [decimal](18, 2) NULL,
	[Mrp] [decimal](18, 2) NULL,
	[NotionalValueAmount] [decimal](18, 2) NULL,
	[NotionalValueCurrency] [nvarchar](10) NULL,
	[Barcode] [nvarchar](100) NULL,
	[BatchId] [nvarchar](100) NULL,
	[ChannelCode] [nvarchar](100) NULL,
	[ChannelPrice] [decimal](18, 2) NULL,
	[IsBulkUpload] [bit] NULL,
	[IsChannelCodeMatch] [bit] NULL,
	[SKU] [nvarchar](100) NULL,
	[WarehouseCode] [nvarchar](100) NULL,
	[WarehouseId] [int] NULL,
	[FacilityCode] [nvarchar](100) NULL,
	[IsFacilityCodeMatch] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductPriceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
