CREATE TABLE [dbo].[MarketplaceTypes](
	[MarketplaceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[MarketplaceName] [nvarchar](100) NOT NULL,
	[MarketplaceCode] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[ApiBaseUrl] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketplaceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
