CREATE TABLE [dbo].[MarketplaceListingInventory](
	[MarketplaceListingInventoryId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceListingId] [int] NOT NULL,
	[AvailableQuantity] [decimal](18, 2) NULL,
	[ReservedQuantity] [decimal](18, 2) NULL,
	[InboundQuantity] [decimal](18, 2) NULL,
	[LastInventorySync] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceListingInventoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
