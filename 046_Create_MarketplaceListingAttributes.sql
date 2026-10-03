CREATE TABLE [dbo].[MarketplaceListingAttributes](
	[MarketplaceListingAttributeId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceListingId] [int] NOT NULL,
	[AttributeName] [nvarchar](150) NULL,
	[AttributeValue] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceListingAttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
