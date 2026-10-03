CREATE TABLE [dbo].[MarketplaceListingPrices](
	[MarketplaceListingPriceId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceListingId] [int] NOT NULL,
	[SellingPrice] [decimal](18, 2) NOT NULL,
	[MRP] [decimal](18, 2) NULL,
	[Currency] [nvarchar](20) NULL,
	[EffectiveFrom] [datetime] NULL,
	[EffectiveTo] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceListingPriceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
