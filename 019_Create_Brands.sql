CREATE TABLE [dbo].[Brands](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[BrandCode] [nvarchar](100) NULL,
	[ChannelBrandId] [nvarchar](200) NULL,
	[ChannelCode] [nvarchar](100) NULL,
	[LogoUrl] [nvarchar](1000) NULL,
	[WebsiteUrl] [nvarchar](1000) NULL,
	[BatchId] [nvarchar](100) NULL,
	[SellerId] [int] NULL,
	[IsChannelSynced] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
