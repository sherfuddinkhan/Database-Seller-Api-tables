CREATE TABLE [dbo].[AmazonMarketplaceParticipations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AmazonAccountId] [int] NOT NULL,
	[MarketplaceId] [nvarchar](50) NULL,
	[MarketplaceName] [nvarchar](200) NULL,
	[CountryCode] [nvarchar](20) NULL,
	[DefaultCurrency] [nvarchar](20) NULL,
	[DefaultLanguage] [nvarchar](20) NULL,
	[JsonData] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
