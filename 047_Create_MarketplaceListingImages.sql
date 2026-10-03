CREATE TABLE [dbo].[MarketplaceListingImages](
	[MarketplaceListingImageId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceListingId] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[DisplayOrder] [int] NULL,
	[IsPrimary] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceListingImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
