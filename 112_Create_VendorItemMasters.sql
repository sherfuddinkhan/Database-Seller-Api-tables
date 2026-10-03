CREATE TABLE [dbo].[VendorItemMasters](
	[VendorItemMasterId] [int] IDENTITY(1,1) NOT NULL,
	[VendorId] [int] NOT NULL,
	[VendorSkuCode] [varchar](100) NOT NULL,
	[ItemSkuCode] [varchar](100) NOT NULL,
	[CostPrice] [decimal](18, 2) NOT NULL,
	[SellerId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[ProductId] [int] NULL,
	[vendorCode] [varchar](50) NULL,
	[inventory] [int] NULL,
	[unitPrice] [decimal](18, 2) NULL,
	[priority] [int] NULL,
	[enabled] [bit] NULL,
	[VendorItemCode] [nvarchar](100) NULL,
	[LeadTime] [int] NOT NULL,
	[ItemCode] [varchar](100) NULL,
	[SKU] [varchar](100) NULL,
	[ItemSku] [varchar](100) NULL,
	[MRP] [decimal](18, 2) NULL,
	[SellingPrice] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[VendorItemMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
