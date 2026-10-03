CREATE TABLE [dbo].[MarketplaceCatalogItems](
	[MarketplaceCatalogItemId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceTypeId] [int] NOT NULL,
	[ExternalProductId] [nvarchar](200) NULL,
	[ProductTitle] [nvarchar](500) NULL,
	[Brand] [nvarchar](200) NULL,
	[Manufacturer] [nvarchar](200) NULL,
	[Category] [nvarchar](200) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceCatalogItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
